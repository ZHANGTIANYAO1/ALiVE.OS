#include "\x\alive\addons\x_lib\script_component.hpp"
SCRIPT(spawnComposition);

#define MAP_TYPES_BUILDING          []
#define MAP_TYPES_VEGETATION        ["TREE","SMALL TREE","BUSH"]
#define MAP_TYPES_WALL              []
#define MAP_TYPES_MISC              ["ROCK","ROCKS"]

#define CATEGORY_COMP               [MAP_TYPES_BUILDING,MAP_TYPES_WALL,MAP_TYPES_VEGETATION,MAP_TYPES_MISC]


/* ----------------------------------------------------------------------------
Function: ALIVE_fnc_spawnComposition

Description:
Spawn a composition
Modified version of BIS_fnc_objectMapper to suit Zeus composition configs

Parameters:
Config - group
Array - position
Scalar - direction
String - Faction

Returns:

Examples:
(begin example)
//
_result = [] call ALIVE_fnc_spawnComposition;
(end)

See Also:

Author:
ARJay
---------------------------------------------------------------------------- */

params ["_config","_position","_azi","_faction"];

["Spawning Composition: %1", _this] call ALiVE_fnc_dump;

private ["_posX", "_posY"];
_posX = _position select 0;
_posY = _position select 1;

// Workaround until LSD fixes ZEC compositions
private _brokenCheckpoints = [
    "CheckpointWatchtower",
    "CheckpointBunker",
    "CheckpointSandbags2",
    "CheckpointTower",
    "CheckpointBunkers",
    "CheckpointHBarrier"
];


// Hide Terrain objects around composition
private _hideLocaly = false;
private _flags = 12 call bis_fnc_decodeFlags2;
private _radius = 20;
private _hidingCode = switch (true) do
{
    case (_hideLocaly && isServer):
    {
        {
            _x hideObject true;
            _x allowDamage false;
        };
    };
    case (_hideLocaly && !isServer):
    {
        {_x hideObject true;};
    };
    default
    {
        {
            if (_x isEqualType objNull && {!(_x isKindOf "Logic")} ) then {
                _x hideObjectGlobal true;
                _x allowDamage false;
                //["Removing object: %1", _x] call ALiVE_fnc_dump;
            };
        };
    };

};

{
    if (_x == 1) then
    {
        private _found = nearestTerrainObjects [_position,CATEGORY_COMP select _forEachIndex,_radius,false,true];
        ["Removing objects: %1", CATEGORY_COMP select _forEachIndex] call ALiVE_fnc_dump;
        _found call ALiVE_fnc_inspectArray;
        _hidingCode forEach (_found inAreaArray [_position, _radius, _radius]);
    };
}
forEach _flags;


if (typename _config == "ARRAY") then {
    _config = [_config, configFile] call BIS_fnc_configPath;
};

/*
if (configName _config in _brokenCheckpoints) then {
    _azi = [_azi + 90] call ALiVE_fnc_modDegrees;
};
*/

//Function to multiply a [2, 2] matrix by a [2, 1] matrix
private _multiplyMatrixFunc =
{
    private ["_array1", "_array2", "_result"];
    _array1 = _this select 0;
    _array2 = _this select 1;

    _result =
    [
        (((_array1 select 0) select 0) * (_array2 select 0)) + (((_array1 select 0) select 1) * (_array2 select 1)),
        (((_array1 select 1) select 0) * (_array2 select 0)) + (((_array1 select 1) select 1) * (_array2 select 1))
    ];

    _result
};

private _objects = [];
private _positions = [];
private _azis = [];
private _created = [];
private _isFurniture = false;

if (str(_config) find "Furniture" != -1) then {
    _isFurniture = true;
};

for "_i" from 0 to ((count _config) - 1) do {
    private _item = _config select _i;

    if (isClass _item) then {
        _objects pushback (getText(_item >> "vehicle"));
        _positions pushback (getArray(_item >> "position"));
        _azis pushback (getNumber(_item >> "dir"));
    };
};

private _startPos = [0,0,0];
for "_i" from 0 to ((count _objects) - 1) do {
    private _object = _objects select _i;
    private _relPos = _positions select _i;
    private _azimuth = _azis select _i;

    //Rotate the relative position using a rotation matrix
    private _rotMatrix =
    [
        [cos _azi, sin _azi],
        [-(sin _azi), cos _azi]
    ];
    private _newRelPos = [_rotMatrix, _relPos] call _multiplyMatrixFunc;

    //Backwards compatability causes for height to be optional
    private _z = if ((count _relPos) > 2) then {_relPos select 2} else {0};

    private _newPos = [_posX + (_newRelPos select 0), _posY + (_newRelPos select 1), _z];

    //Create the object and make sure it's in the correct location
    private _newObj = _object createVehicle _startPos; // TODO: simpleObject
    if (_isFurniture) then {
        _newObj enableSimulation false;
        _newPos = [_newPos select 0, _newPos select 1, (_newPos select 2) + (_position select 2)];
    };

    // if object is faction-specific
    // and doesn't belong to passed faction
    // delete it
    if (faction _newObj != _faction && {_newObj iskindof "LandVehicle" || {_newObj iskindof "FlagCarrier"}}) then {
        deleteVehicle _newObj;
    } else {
        _newObj setDir (_azi + _azimuth);
        _newObj setPos _newPos;

        _created pushBack _newObj;

    	// If vn trapdoor exists, 50% chance of spawning a tunnel. Random params.
    	if (typeOf _newObj == "Land_vn_o_trapdoor_01") then {
    		private _chance = [1,101] call BIS_fnc_randomInt;
			if (_chance >50) then {
				private _tunnelPosition = position _newObj;
				private _tunneltype = selectRandom [1,2,3,4,5,6];
				private _tunnelsize = selectRandom [2,3,4];
				private _tunnelClassname = selectRandom ["pavn_vc_local","pavn_vc_regional","pavn_vc_main"];
				private _classes = call compile getText(configfile >> "CfgVehicles" >> "vn_module_tunnel_init" >> "Attributes" >> "garrison_classnames_preselection" >> "values" >> _tunnelClassname >> "value");
				private _tunnelmoduleGroup = createGroup sideLogic;
			    private _tunnel = "vn_module_tunnel_init" createUnit [
				  	_tunnelPosition,
				 	 _tunnelmoduleGroup,
				  	format["this setVariable ['tunnel_position', %1, true]; this setVariable ['garrison_classnames_preselection', %2, true]; this setVariable ['garrison_side', 1, true]; this setVariable ['garrison_size', %3, true];  this setVariable ['BIS_fnc_initModules_disableAutoActivation', false, true];", _tunneltype, _classes, _tunnelsize]
				  ];
			 	  ["Placing tunnel entrance for tunnel %1 at %2, enemy are %3 man %4 group", _tunneltype, _tunnelPosition, _tunnelsize * 10, _tunnelClassname] call ALiVE_fnc_dump;
			    [_tunnelPosition] spawn
			    {
			        params["_tunnelPosition"];
			        private _object = objNull;
			        waitUntil { _object = _tunnelPosition nearestObject "Land_vn_o_trapdoor_01"; !isNull _object};
			        private _heightAdjust = random [0.2, 0.4, 0.5];
			        _object setpos [position _object select 0, position _object select 1, (position _object select 2) - _heightAdjust];
			    };

			};
			deleteVehicle _newObj;
		};
    };
};

if (isNil QMOD(PCOMPOSITIONS)) then {
    MOD(PCOMPOSITIONS) = [] call ALiVE_fnc_hashCreate;
};

// Save Compositions to a hash
private _comp = [MOD(PCOMPOSITIONS), "compositions",[[],[]]] call ALiVE_fnc_hashGet;
if !(_position in (_comp select 0)) then {
    (_comp select 0) pushBack _position;

    // Switch back original azi if broken checkpoint
    if (configName _config in _brokenCheckpoints) then {
        _azi = [_azi - 90] call ALiVE_fnc_modDegrees;
    };

    _config = [_config,[]] call BIS_fnc_configPath;

    (_comp select 1) pushBack [_config,_azi,_faction];
    [MOD(PCOMPOSITIONS), "compositions",_comp] call ALiVE_fnc_hashSet;
};

// Save created objects for removal during runtime
_charge = createVehicle ["ALIVE_DemoCharge_Remote_Ammo",_position, [], 0, "CAN_COLLIDE"];
_charge setvariable [QGVAR(COMPOSITION_OBJECTS),_created];
_charge enableSimulation false;
_charge hideObjectGlobal true;



