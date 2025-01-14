/*
    Author: Wyqer, veteran29
    Date: 2019-09-16

    Description:
        Fetches and handles VN stamina parameter.

    Parameter(s):
        _paramValue - Value of the parameter [NUMBER, defaults to 0]

    Returns:
        Function reached the end [BOOL]
*/

params [
    ["_paramValue", 1, [0]]
];

if (hasInterface && {_paramValue == 0}) then {
    // Disable stamina, if selected in parameter
    player enableStamina false;

    // Add respawn event handler to reapply disabled stamina
    player addEventHandler ["Respawn", {player enableStamina false;}];
};

true
