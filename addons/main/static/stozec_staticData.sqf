private["_worldName"];
 _worldName = tolower(worldName);
 ["ALiVE SETTING UP MAP: stozec"] call ALIVE_fnc_dump;
 ALIVE_Indexing_Blacklist = [];
 ALIVE_airBuildingTypes = [];
 ALIVE_militaryParkingBuildingTypes = [];
 ALIVE_militarySupplyBuildingTypes = [];
 ALIVE_militaryHQBuildingTypes = [];
 ALIVE_militaryAirBuildingTypes = [];
 ALIVE_civilianAirBuildingTypes = [];
 ALiVE_HeliBuildingTypes = [];
 ALIVE_militaryHeliBuildingTypes = [];
 ALIVE_civilianHeliBuildingTypes = [];
 ALIVE_militaryBuildingTypes = [];
 ALIVE_civilianPopulationBuildingTypes = [];
 ALIVE_civilianHQBuildingTypes = [];
 ALIVE_civilianPowerBuildingTypes = [];
 ALIVE_civilianCommsBuildingTypes = [];
 ALIVE_civilianMarineBuildingTypes = [];
 ALIVE_civilianRailBuildingTypes = [];
 ALIVE_civilianFuelBuildingTypes = [];
 ALIVE_civilianConstructionBuildingTypes = [];
 ALIVE_civilianSettlementBuildingTypes = [];
 if(tolower(_worldName) == "stozec") then {
[ALIVE_mapBounds, worldName, 16000] call ALIVE_fnc_hashSet;
ALIVE_Indexing_Blacklist = ALIVE_Indexing_Blacklist + ["a3\structures_f_enoch\military\airfield\servicehangar_01_r_f.p3d","csla\csla_structures\rails\rail_loco\csla_loco_742_blue.p3d","a3\structures_f_enoch\cultural\cemeteries\tombstone_12_f.p3d","csla\csla_structures\rails\railway\csla_rails_18m.p3d","csla\csla_structures\rails\railway\csla_rails_3m.p3d","csla\csla_structures\rails\railway\csla_rails_curver.p3d","csla\csla_structures\rails\railway\csla_rails_curve20deg_r.p3d","csla\csla_structures\rails\railway\csla_rails_curve20deg_l.p3d","csla\csla_structures\rails\railway\csla_rails_9m.p3d","csla\csla_structures\rails\railway\csla_rails_curvel.p3d","csla\csla_structures\rails\railway\csla_norail_18m.p3d","csla\csla_structures\rails\railway\csla_rails_end_01.p3d","csla\csla_structures\rails\rail_misc\csla_rail_30km.p3d","csla\csla_structures\rails\rail_platform\csla_rail_platform_start.p3d","csla\csla_structures\rails\rail_platform\csla_rail_platform_cross.p3d","csla\csla_structures\rails\rail_platform\csla_rail_platform_segment.p3d","csla\csla_structures\rails\rail_wagon\csla_wagon_flat.p3d","csla\csla_structures\rails\rail_wagon\csla_wagon_tanker.p3d","csla\csla_structures\rails\rail_wagon\csla_wagon_box.p3d","a3\structures_f\ind\transmitter_tower\tbox_f.p3d","csla\csla_structures\misc\industrial\csla_metalbarrel_empty.p3d","csla\csla_structures\dominants\tvtower\csla_tvtower_mid.p3d","csla\csla_structures\dominants\tvtower\csla_tvtower_top.p3d","csla\csla_structures\industrial\csla_zavora.p3d","csla\csla_roads\csla_bridgehighway.p3d","csla\csla_roads\csla_bridgehighway_m.p3d","csla\csla_roads\csla_crashbarrier_double2sided_21m.p3d","csla\csla_roads\csla_crashbarrier_double2sided.p3d","csla\csla_structures\airport\csla_runway_path_01_6m.p3d","csla\csla_roads\csla_crashbarrier_double.p3d","a3\structures_f\bridges\bridge_01_f.p3d","a3\structures_f\naval\piers\pier_small_f.p3d","a3\structures_f\bridges\bridge_highway_f.p3d","csla\csla_structures\airport\csla_runway_main_centerline.p3d","csla\csla_structures\airport\csla_runway_main_begin_45.p3d","csla\csla_structures\airport\csla_runway_main_22.p3d","csla\csla_structures\airport\csla_runway_pathcurve_01.p3d","csla\csla_structures\airport\csla_runway_main_touch_0.p3d","csla\csla_structures\airport\csla_runway_path_01_10m.p3d","csla\csla_structures\airport\csla_runway_path_04.p3d","csla\csla_structures\airport\csla_runway_path_02.p3d","csla\csla_structures\airport\csla_runway_path_02_10m.p3d","csla\csla_structures\airport\csla_runway_path_01.p3d","csla\csla_structures\airport\csla_runway_main_touch_30.p3d","csla\csla_structures\airport\csla_runway_path_04_10m.p3d","csla\csla_structures\airport\csla_runway_path_01_4m.p3d","csla\csla_structures\airport\csla_runway_pathcurve_02.p3d","csla\csla_structures\misc\roads\csla_jezek.p3d","csla\csla_structures\misc\sidewalks\csla_sidewalk_dlazba_3m_middle.p3d","csla\csla_structures\misc\sidewalks\csla_sidewalk_dlazba_3m_crossingt.p3d","csla\csla_structures\misc\playground\csla_hriste_cary.p3d","csla\csla_structures\misc\sidewalks\csla_sidewalk_dlazba_3m_long.p3d","csla\csla_structures\misc\sidewalks\csla_sidewalk_dlazba_3m_short.p3d","csla\csla_structures\airport\csla_ul_v1.p3d","csla\csla_structures\misc\sidewalks\csla_sidewalk_dlazba_3m_corner.p3d","csla\csla_structures\airport\csla_runway_main_aiming.p3d","csla\csla_structures\airport\csla_runway_main_touch_6.p3d","csla\csla_structures\rails\rail_misc\csla_rail_lamp.p3d","csla\csla_structures\airport\csla_runway_clear.p3d","a3\structures_f_enoch\military\radar\radar_01_airshaft_f.p3d","csla\csla_structures\airport\csla_runway_main_04.p3d","csla\csla_structures\airport\csla_runway_path_05.p3d"];
ALIVE_Indexing_Blacklist = ALIVE_Indexing_Blacklist + ["csla\csla_structures\airport\csla_runway_pathcurve_03.p3d","a3\structures_f_enoch\military\airfield\servicehangar_01_l_f.p3d","csla\csla_structures\mil\radar_station\csla_radar_station.p3d","csla\csla_structures\dam\csla_dam_wall_waterfall_20.p3d","csla\csla_helpers\csla_pathlod_start.p3d","csla\csla_helpers\csla_pathlod_2m.p3d","csla\csla_helpers\csla_pathlod_4m.p3d","csla\csla_structures\airport\west_navilight_yellow.p3d","csla\csla_structures\airport\west_navilight_redgreen.p3d","csla\csla_structures\airport\west_navilight_white.p3d","csla\csla_structures\airport\west_navilight_blue.p3d","a3\structures_f_enoch\industrial\sawmills\sawmill_01_illuminati_tower_f.p3d","csla\csla_structures\mil\csla_stan_west_mash_heather.p3d","a3\structures_f_enoch\industrial\sheds\i_shed_ind_old_f.p3d","csla\csla_structures\border\csla_border_fence_pole.p3d","csla\csla_structures\border\csla_border_fence_18m.p3d","csla\csla_structures\border\csla_border_fence_gate_wide.p3d","csla\csla_structures\border\csla_border_fence_6m.p3d","csla\csla_structures\border\csla_border_fence_gate.p3d","csla\csla_structures\border\csla_border_fence_corner_45_in.p3d","csla\csla_structures\border\csla_border_fence_corner_45_out.p3d","csla\csla_structures\border\csla_border_fence_corner_90_in.p3d","csla\csla_structures\border\csla_border_fence_corner_90_out.p3d","a3\structures_f_enoch\walls\polewalls\polewall_03_5m_v2_f.p3d","a3\structures_f_enoch\walls\polewalls\polewall_03_end_f.p3d","a3\structures_f_enoch\walls\polewalls\polewall_03_5m_v1_f.p3d","csla\csla_structures\airport\csla_runway_skids_end.p3d","csla\csla_structures\airport\csla_runway_skids.p3d","csla\csla_structures\rails\railway\csla_rails_bridge.p3d","csla\csla_structures\rails\railway\csla_rails_passing_9m.p3d","csla\csla_structures\rails\railway\csla_rails_passing_9m_20degb.p3d","csla\csla_structures\rails\railway\csla_rails_passing_9m_20deg.p3d","a3\structures_f\mil\bunker\bunker_f.p3d","csla\csla_structures\walls\csla_wall_fnc_pole.p3d","csla\csla_structures\walls\csla_wall_fnc_3.p3d","csla\csla_structures\misc\farming\csla_haystack_full.p3d","csla\csla_structures\misc\sidewalks\csla_chodnicek_mud_plane_end.p3d","csla\csla_structures\misc\farming\csla_hutch.p3d","csla\csla_structures\misc\sidewalks\csla_pristupovka_dirt_plane_4m.p3d","csla\csla_structures\misc\farming\csla_chickencoop.p3d","csla\csla_structures\misc\sidewalks\csla_pristupovka_dirt_plane_end.p3d","csla\csla_structures\misc\sidewalks\csla_chodnicek_mud_plane_4m.p3d","csla\csla_structures\misc\sidewalks\csla_pristupovka_mud_plane_4m.p3d","csla\csla_structures\misc\sidewalks\csla_pristupovka_mud_plane_end.p3d","csla\csla_structures\walls\csla_plot_blue_branka.p3d","csla\csla_structures\walls\csla_plot_blue_cihlsloup.p3d","csla\csla_structures\furniture\misc\ps_pivny_set_slnecnika.p3d","csla\csla_structures\walls\csla_plot_blue_2.p3d","csla\csla_structures\walls\csla_plot_blue_vrata.p3d","csla\csla_structures_proxy_buildingparts\addons\csla_susiak_big_300.p3d","csla\csla_structures\furniture\misc\ps_slnecnika.p3d","csla\csla_structures\misc\sidewalks\csla_sidewalk_stone_1m_middle.p3d","csla\csla_structures\misc\industrial\csla_barrelempty.p3d","csla\csla_structures\misc\farming\csla_zahon_01.p3d","csla\csla_structures\misc\farming\csla_sklenik.p3d","csla\csla_structures_proxy_buildingparts\addons\csla_susiak_big_300_v2.p3d","csla\csla_structures\misc\farming\csla_wood_baricade_big.p3d","csla\csla_structures\walls\csla_gate_indvar2b_5.p3d","csla\csla_structures\furniture\misc\ps_slnecnikb.p3d","csla\csla_structures\misc\farming\csla_wood_baricade_small.p3d"];
ALIVE_Indexing_Blacklist = ALIVE_Indexing_Blacklist + ["csla\csla_structures\misc\farming\csla_tractor.p3d","a3\structures_f_enoch\civilian\sheds\shed_12_f.p3d","csla\csla_structures\misc\farming\csla_haystack.p3d","csla\csla_structures_proxy_buildingparts\gates\gateb_300x300_01.p3d","csla\csla_structures\walls\csla_plot_vrata_big_branka_grey.p3d","csla\csla_structures\walls\csla_plot_vrata_big_grey.p3d","csla\csla_structures_proxy_buildingparts\addons\csla_pristresok_w_6x3_01.p3d","csla\csla_structures\walls\csla_wall_brick01_5.p3d","csla\csla_structures\misc\sidewalks\csla_sidewalk_dlazba_1m_middle.p3d","csla\csla_structures\misc\sidewalks\csla_sidewalk_dlazba_1m_corner.p3d","csla\csla_structures\walls\csla_wall_wood_4_pole.p3d","csla\csla_structures\walls\csla_wall_wood_4_5m.p3d","csla\csla_structures\walls\csla_wall_brick01_corner.p3d","csla\csla_structures\walls\csla_wall_brick01_2_75.p3d","csla\csla_structures\walls\csla_wall_wood_4_d_end.p3d","csla\csla_structures\furniture\misc\ps_pivny_set_slnecnike.p3d","csla\csla_structures\walls\csla_gate_village.p3d","csla\csla_structures\furniture\misc\ps_slnecnike.p3d","csla\csla_structures\walls\csla_plot_green_2.p3d","csla\csla_structures\furniture\misc\ps_pivny_set_slnecnikd.p3d","csla\csla_structures\walls\csla_wall_fnc_3_d.p3d","csla\csla_structures_proxy_buildingparts\addons\csla_reklama03w.p3d","csla\csla_structures\furniture\misc\ps_slnecnikd.p3d","csla\csla_structures\misc\sidewalks\csla_sidewalk_dlazba_3m_crossing.p3d","csla\csla_structures_proxy_buildingparts\addons\csla_stojan_prepravky.p3d","csla\csla_structures_proxy_buildingparts\addons\csla_stojan_prepravky2.p3d","csla\csla_structures_proxy_buildingparts\addons\csla_susiak_big_300_empty.p3d","csla\csla_structures\misc\town_equipment\csla_a_advertcolumn.p3d","csla\csla_structures_proxy_buildingparts\addons\csla_pristresok_w_6x3_02.p3d","csla\csla_structures\furniture\misc\ps_pivny_set.p3d","csla\csla_structures\misc\farming\csla_seno_box.p3d","csla\csla_water\csla_river_plane.p3d","csla\csla_structures\tank_obstacles\csla_shootingrange_01.p3d","csla\csla_structures\border\csla_border_fence_gate_wide_opened.p3d","csla\csla_structures\misc\sidewalks\csla_sidewalk_dlazba_1m_long.p3d","csla\csla_structures\industrial\csla_cobblestones_20m.p3d","csla\csla_structures\tank_obstacles\csla_prekazka_3.p3d","csla\csla_structures\tank_obstacles\csla_prekazka_3_tank.p3d","csla\csla_structures\tank_obstacles\csla_range_pole.p3d","csla\csla_structures\tank_obstacles\csla_timber.p3d","a3\structures_f_enoch\military\training\shellcrater_02_large_f.p3d","a3\structures_f_enoch\military\training\shellcrater_02_small_f.p3d","a3\structures_f_enoch\military\training\shellcrater_01_f.p3d","csla\csla_structures\tank_obstacles\csla_vodnibojka_01.p3d","a3\structures_f_enoch\military\training\shootingpos_roof_01_f.p3d","a3\structures_f_enoch\military\training\shellcrater_02_debris_f.p3d","csla\csla_structures\tank_obstacles\csla_prekazka_1.p3d","csla\csla_structures\rails\rail_misc\csla_rail_najazdovarampa.p3d","csla\csla_structures\misc\sidewalks\csla_sidewalk_stone_1m_short.p3d","a3\structures_f_enoch\civilian\accessories\hutch_01_f.p3d","csla\csla_structures\airport\west_runway_straight.p3d","csla\csla_structures\airport\west_runway_main_begin.p3d","csla\csla_structures\airport\west_runway_main_19.p3d","csla\csla_structures\airport\west_runway_main_center.p3d","csla\csla_structures\airport\west_runway_main_touch.p3d","csla\csla_structures\airport\west_runway_main_touch30.p3d","csla\csla_structures\airport\west_runway_main_aim.p3d","csla\csla_structures\airport\west_runway_main_touch6.p3d","csla\csla_structures\airport\west_runway_main_01.p3d","csla\csla_structures\rails\railway\csla_norail_curvel.p3d"];
ALIVE_Indexing_Blacklist = ALIVE_Indexing_Blacklist + ["csla\csla_structures\rails\railway\csla_norail_curver.p3d","a3\structures_f_enoch\ruins\housewallruin_door_01_f.p3d","a3\structures_f_enoch\walls\brick\brickwall_02_l_5m_d_f.p3d","a3\structures_f_enoch\ruins\housewallruin_corner_02_f.p3d","a3\structures_f_enoch\ruins\houseruin_small_01_half_f.p3d","a3\structures_f_enoch\cultural\cemeteries\tombstone_05_f.p3d","a3\structures_f_enoch\ruins\housewallruin_corner_01_f.p3d","a3\structures_f_enoch\cultural\cemeteries\tombstone_11_f.p3d","a3\structures_f_enoch\cultural\cemeteries\tombstone_09_f.p3d","a3\structures_f_enoch\cultural\cemeteries\tombstone_14_f.p3d","a3\structures_f_enoch\cultural\cemeteries\cross_01_small_f.p3d","a3\structures_f_enoch\industrial\garages\garagerow_01_small_ruins_f.p3d","a3\structures_f_enoch\cultural\cemeteries\grave_11_f.p3d","a3\structures_f_enoch\infrastructure\lamps\lampindustrial_02_off_f.p3d","a3\structures_f_enoch\industrial\mines\mine_01_rail_track_end_f.p3d","a3\structures_f_enoch\infrastructure\lamps\lampindustrial_01_f.p3d","a3\structures_f_enoch\industrial\mines\mine_01_rail_track_switch_f.p3d","a3\structures_f_enoch\industrial\mines\mine_01_conveyor_end_f.p3d","a3\structures_f_enoch\industrial\mines\mine_01_minecart_f.p3d","a3\structures_f_enoch\industrial\mines\mine_01_conveyor_begin_f.p3d","a3\structures_f_enoch\infrastructure\lamps\lampindustrial_01_off_f.p3d","a3\structures_f_enoch\industrial\mines\mine_01_conveyor_10m_f.p3d","a3\structures_f\ind\factory\factory_tunnel_f.p3d","a3\structures_f_enoch\industrial\garages\garageoffice_01_ruins_f.p3d","a3\structures_f_enoch\industrial\smokestacks\smokestack_03_ruins_f.p3d","a3\structures_f_enoch\industrial\smokestacks\smokestack_01_factory_ruins_f.p3d","a3\structures_f_enoch\ruins\houseruin_big_05_f.p3d","a3\structures_f_enoch\infrastructure\lamps\lampindustrial_02_f.p3d","a3\structures_f_enoch\industrial\power\substation_01_ruins_f.p3d","a3\structures_f_enoch\industrial\coalplant_01\coalplant_01_loadinghouse_ruins_f.p3d","a3\structures_f_enoch\ruins\houseruin_small_04_f.p3d","a3\structures_f_enoch\ruins\houseruin_small_03_f.p3d","a3\structures_f_enoch\industrial\garages\garagerow_01_large_ruins_f.p3d","a3\structures_f_enoch\cultural\cemeteries\tombstone_11_damaged_f.p3d","a3\structures_f_enoch\cultural\cemeteries\tombstone_04_f.p3d","a3\structures_f_enoch\cultural\cemeteries\tombstone_06_f.p3d","csla\csla_structures\misc\town_equipment\csla_astan.p3d","csla\csla_structures\walls\csla_gate_fnc_5m.p3d","csla\csla_structures\misc\sidewalks\csla_sidewalk_dlazba_1m_short.p3d","csla\csla_structures_proxy_buildingparts\addons\csla_el_murik1.p3d","csla\csla_structures_proxy_buildingparts\addons\csla_el_murik2.p3d","csla\csla_structures\misc\farming\csla_shed_m02.p3d","csla\csla_structures\misc\farming\csla_deerstand.p3d","csla\csla_structures\furniture\misc\ps_pivny_set_slnecnikb.p3d","csla\csla_structures_proxy_buildingparts\addons\csla_el_murik3.p3d","csla\csla_structures\furniture\misc\ps_lavica.p3d","csla\csla_structures\misc\memorials\csla_kriz2.p3d","a3\structures_f_enoch\walls\net\netfence_03_m_9m_f.p3d","a3\structures_f_enoch\walls\net\netfence_03_m_3m_hole_f.p3d","a3\structures_f_enoch\walls\net\netfence_03_m_3m_d_f.p3d","a3\props_f_exp\industrial\heavyequipment\haultruck_01_abandoned_f.p3d","a3\structures_f_enoch\industrial\coalplant_01\coalplant_01_conveyor_f.p3d","csla\csla_structures\industrial\csla_ind_quarry.p3d","a3\structures_f_enoch\industrial\agriculture\feedstorage_01_f.p3d","csla\csla_structures\misc\farming\csla_hutch2.p3d","a3\structures_f_enoch\industrial\farms\barn_04_f.p3d","csla\csla_structures\walls\csla_wall_wood_3.p3d","csla\csla_structures\walls\csla_gate_wood_3_1m.p3d","csla\csla_structures\walls\csla_wall_wood_3_pole.p3d","csla\csla_structures_proxy_buildingparts\addons\csla_pristresok_w_12x6_01.p3d"];
ALIVE_Indexing_Blacklist = ALIVE_Indexing_Blacklist + ["a3\structures_f_enoch\civilian\accessories\stonewell_01_f.p3d","csla\csla_structures\misc\memorials\csla_kriz1.p3d","csla\csla_structures\misc\farming\csla_sklenik_dam.p3d","csla\csla_structures\misc\sidewalks\csla_sidewalk_3m_middle.p3d","csla\csla_structures_proxy_buildingparts\addons\csla_reklama02.p3d","csla\csla_structures\furniture\misc\ps_stol.p3d","a3\props_f_exp\industrial\heavyequipment\combineharvester_01_wreck_f.p3d","csla\csla_structures\misc\farming\csla_tractor_2.p3d","csla\csla_structures\misc\memorials\csla_muka1.p3d","csla\csla_structures\airport\csla_markwhite_03.p3d","csla\csla_structures\airport\west_navilight.p3d","a3\structures_f_enoch\civilian\camps\caravan_01_green_f.p3d","csla\csla_structures\industrial\csla_ind_sawmillpen.p3d","a3\structures_f_enoch\industrial\farms\watertower_02_f.p3d","a3\structures_f_enoch\industrial\houses\waterstation_01_f.p3d","csla\csla_structures\industrial\csla_hlidac_budka.p3d","csla\csla_structures_proxy_buildingparts\addons\csla_pristresok_m_6x2_01.p3d","csla\csla_structures\walls\csla_plot_green_2_10m.p3d","a3\structures_f_enoch\civilian\sheds\shed_09_f.p3d","csla\csla_structures\misc\sidewalks\csla_sidewalk_3m_short.p3d","csla\csla_structures\misc\farming\csla_strasak.p3d","a3\structures_f_enoch\commercial\fuelstation_03\fuelstation_03_pump_f.p3d","csla\csla_structures\misc\sidewalks\csla_sidewalk_dlazba_3m_short_t2.p3d","csla\csla_structures\misc\sidewalks\csla_sidewalk_dlazba_3m_garage.p3d","csla\csla_structures\industrial\csla_cobblestones_45m.p3d","csla\csla_structures\misc\town_equipment\csla_grassfield_8m.p3d","csla\csla_structures\misc\town_equipment\csla_grassfield_end.p3d","csla\csla_structures_proxy_buildingparts\addons\csla_reklama02w.p3d","a3\structures_f_enoch\cultural\statues\statue_03_f.p3d","a3\structures_f_exp\walls\pipe\pipefence_02_s_4m_f.p3d","a3\structures_f_enoch\cultural\statues\monument_02_f.p3d","a3\structures_f_enoch\industrial\farms\greenhouse_01_f.p3d","csla\csla_structures\misc\sidewalks\csla_sidewalk_dlazba_1m_short_t2.p3d","a3\structures_f_enoch\commercial\fuelstation_03\fuelstation_03_prices_f.p3d","a3\structures_f_exp\industrial\sugarcanefactory_01\scf_01_heap_bagasse_f.p3d","csla\csla_structures\misc\town_equipment\csla_a_advertcolumn2.p3d","csla\csla_structures\rails\rail_loco\csla_loco_742_red.p3d","a3\structures_f_enoch\cultural\church_04\church_04_lightyellow_f.p3d","csla\csla_structures\industrial\csla_cobblestones_10m.p3d","csla\csla_structures\walls\csla_plot_blue_2_10m.p3d","a3\structures_f_enoch\industrial\pipes\indpipe3_bigl_r_f.p3d","a3\structures_f_enoch\industrial\pipes\indpipe3_big_18_f.p3d","a3\structures_f_enoch\industrial\pipes\indpipe3_big_ground2_f.p3d","a3\structures_f_enoch\industrial\pipes\indpipe3_bigl_l_f.p3d","a3\structures_f_enoch\industrial\smokestacks\smokestack_02_f.p3d","a3\structures_f_enoch\industrial\pipes\indpipe3_smalll_r_f.p3d","a3\structures_f_enoch\industrial\pipes\indpipe3_small_ground2_f.p3d","a3\structures_f_enoch\industrial\smokestacks\smokestack_03_f.p3d","a3\structures_f_enoch\industrial\pipes\indpipe3_small_9_f.p3d","a3\structures_f_enoch\industrial\pipes\indpipe3_big_ground1_f.p3d","a3\structures_f_enoch\industrial\pipes\indpipe3_big_9_f.p3d","a3\structures_f_enoch\industrial\pipes\indpipe3_small_ground1_f.p3d","a3\structures_f_enoch\industrial\pipes\indpipe3_smalll_l_f.p3d","csla\csla_structures_proxy_buildingparts\gates\gateb_300x300_02.p3d","csla\csla_structures\misc\town_equipment\csla_a_stan01_red.p3d","csla\csla_structures\misc\town_equipment\csla_a_stan01_green.p3d","csla\csla_structures\misc\town_equipment\csla_tentbig_orange.p3d","csla\csla_structures\misc\town_equipment\csla_a_stan01_yellow.p3d","csla\csla_structures\misc\town_equipment\csla_astan_red.p3d","csla\csla_structures\misc\town_equipment\csla_tentbig_blue.p3d"];
ALIVE_Indexing_Blacklist = ALIVE_Indexing_Blacklist + ["csla\csla_structures\misc\town_equipment\csla_astan_blue.p3d","csla\csla_structures\misc\town_equipment\csla_astan_yellow.p3d","csla\csla_structures\misc\town_equipment\csla_astan_orange.p3d","csla\csla_structures\misc\town_equipment\csla_tentbig_yellow.p3d","a3\structures_f_enoch\walls\net\netfence_03_m_pole_f.p3d","a3\structures_f_enoch\civilian\constructions\scaffolding_new_f.p3d","csla\csla_structures\misc\town_equipment\csla_a_stan01_blue.p3d","csla\csla_structures\misc\town_equipment\csla_tentbig.p3d","csla\csla_structures\misc\town_equipment\csla_a_stan01_orange.p3d","csla\csla_structures\misc\memorials\csla_muka2.p3d","csla\csla_structures\misc\sidewalks\csla_sidewalk_3m_long.p3d","csla\csla_structures\misc\sidewalks\csla_sidewalk_3m_corner.p3d","csla\csla_structures\misc\memorials\csla_pamatnik_spice.p3d","a3\structures_f\civ\lamps\lampstadium_f.p3d","csla\csla_structures\misc\sidewalks\csla_sidewalk_3m_crossingt.p3d","csla\csla_structures\misc\sidewalks\csla_sidewalk_3m_45.p3d","csla\csla_structures\dam\csla_stavidlo1.p3d","a3\structures_f_enoch\industrial\smokestacks\smokestack_01_factory_f.p3d","a3\structures_f\ind\fuelstation\fuelstation_feed_f.p3d","a3\structures_f_enoch\military\training\shellcrater_02_decal_f.p3d","a3\props_f_exp\industrial\heavyequipment\excavator_01_abandoned_f.p3d","a3\structures_f_enoch\industrial\mines\mine_01_heap_f.p3d","a3\props_f_exp\industrial\heavyequipment\bulldozer_01_abandoned_f.p3d","a3\structures_f_enoch\industrial\agriculture\haybale_01_f.p3d","a3\structures_f\ind\dieselpowerplant\dp_transformer_f.p3d","a3\structures_f_enoch\industrial\agriculture\haybale_01_decayed_f.p3d","a3\structures_f\ind\crane\crane_f.p3d","csla\csla_houses\houseblock_c\csla_houseblock_c1_ruins.p3d","csla\csla_houses\houseblock_c\csla_houseblock_c4_ruins.p3d","csla\csla_houses\csla_apub_01.p3d","csla\csla_houses\houseblock_c\csla_houseblock_c3_ruins.p3d","csla\csla_structures\misc\memorials\csla_monu1.p3d","csla\csla_structures\airport\csla_runway_path_01_2m.p3d","csla\csla_houses\houseblock_c\csla_houseblock_c5_ruins.p3d","csla\csla_structures\misc\sidewalks\csla_sidewalk_dlazba_3m_short_t.p3d","csla\csla_structures\walls\csla_wall_woodvil_pole.p3d","csla\csla_structures\misc\memorials\csla_pamatnik_kniha.p3d","csla\csla_structures\industrial\csla_cobblestones_10x2_5m.p3d","csla\csla_structures_proxy_buildingparts\addons\csla_reklama03.p3d","csla\csla_structures\misc\sidewalks\csla_pristupovka_mud_3m_middle.p3d","csla\csla_structures\misc\sidewalks\csla_chodnicek_mud_plane_2m.p3d"];
ALIVE_militaryBuildingTypes = ALIVE_militaryBuildingTypes + ["a3\structures_f_enoch\military\barracks\guardbox_01_green_f.p3d","csla\csla_structures\mil\csla_mil_house.p3d","a3\structures_f\mil\barracks\i_barracks_v1_f.p3d","a3\structures_f_enoch\military\airfield\controltower_02_f.p3d","a3\structures_f\mil\barracks\i_barracks_v2_f.p3d","a3\structures_f\ind\shed\shed_big_f.p3d","csla\csla_structures\mil\csla_mil_barracks_i.p3d","a3\structures_f_enoch\military\radar\radar_01_hq_f.p3d","csla\csla_structures\mil\csla_mil_barracks_i_camo.p3d","a3\structures_f_enoch\military\barracks\guardhouse_02_grey_f.p3d","csla\csla_structures\mil\csla_bunker_lovz36_camo.p3d","a3\structures_f_enoch\military\radar\radar_01_cooler_f.p3d","csla\csla_structures\mil\csla_bunker_01.p3d","a3\structures_f_enoch\military\barracks\guardhouse_02_f.p3d","csla\csla_structures\mil\csla_mil_garage_01.p3d","a3\structures_f_enoch\military\radar\radar_01_kitchen_f.p3d","a3\structures_f_enoch\military\barracks\guardbox_01_brown_f.p3d","a3\structures_f_enoch\military\barracks\barracks_05_f.p3d","csla\csla_structures\mil\csla_stan_west_heather.p3d","csla\csla_structures\mil\csla_stan_west.p3d","a3\structures_f_enoch\military\barracks\barracks_03_f.p3d","a3\structures_f_enoch\military\barracks\barracks_04_f.p3d","a3\structures_f_enoch\military\barracks\barracks_02_f.p3d","csla\csla_structures\mil\csla_spak_high.p3d","csla\csla_structures\mil\csla_spak_low.p3d","csla\csla_structures\mil\p37_radar\csla_p37_radar.p3d","csla\csla_structures\mil\camonet\csla_camonet_csla.p3d","csla\csla_structures\mil\camonet\csla_camonetb_csla.p3d","csla\csla_structures\mil\camonet\csla_camonet_var1_csla.p3d","csla\csla_structures\mil\tps43_radar\csla_tps43_radar.p3d","csla\csla_structures\mil\radar_station\csla_s250.p3d","csla\csla_structures\mil\camonet\csla_camonet_var1_nato.p3d","csla\csla_structures\mil\csla_bunker_lovz36.p3d","a3\structures_f_enoch\military\barracks\controltower_01_f.p3d","a3\structures_f_enoch\military\barracks\guardbox_01_smooth_f.p3d","a3\structures_f_enoch\military\barracks\barracks_06_f.p3d","a3\structures_f_enoch\military\barracks\guardhouse_03_f.p3d","a3\structures_f_enoch\military\barracks\guardtower_02_f.p3d","a3\structures_f\mil\bagbunker\bagbunker_small_f.p3d"];
ALIVE_militaryParkingBuildingTypes = ALIVE_militaryParkingBuildingTypes + ["a3\structures_f_enoch\military\barracks\guardbox_01_green_f.p3d","csla\csla_structures\mil\csla_mil_house.p3d","a3\structures_f\mil\barracks\i_barracks_v1_f.p3d","a3\structures_f_enoch\military\airfield\controltower_02_f.p3d","a3\structures_f\mil\barracks\i_barracks_v2_f.p3d","a3\structures_f\ind\shed\shed_big_f.p3d","csla\csla_structures\mil\csla_mil_barracks_i.p3d","a3\structures_f_enoch\military\radar\radar_01_hq_f.p3d","csla\csla_structures\mil\csla_mil_barracks_i_camo.p3d","a3\structures_f_enoch\military\barracks\guardhouse_02_grey_f.p3d","a3\structures_f_enoch\military\airfield\servicehangar_01_r_f.p3d","a3\structures_f_enoch\military\barracks\barracks_06_f.p3d"];
ALIVE_militarySupplyBuildingTypes = ALIVE_militarySupplyBuildingTypes + ["csla\csla_structures\mil\csla_mil_house.p3d","a3\structures_f\mil\barracks\i_barracks_v1_f.p3d","a3\structures_f_enoch\military\airfield\controltower_02_f.p3d","a3\structures_f\mil\barracks\i_barracks_v2_f.p3d","a3\structures_f\ind\shed\shed_big_f.p3d","csla\csla_structures\mil\csla_mil_barracks_i.p3d","a3\structures_f_enoch\military\radar\radar_01_hq_f.p3d","csla\csla_structures\mil\csla_mil_barracks_i_camo.p3d","a3\structures_f_enoch\military\barracks\guardhouse_02_grey_f.p3d","csla\csla_structures\mil\csla_bunker_lovz36_camo.p3d","csla\csla_structures\mil\csla_bunker_01.p3d","a3\structures_f_enoch\military\airfield\servicehangar_01_r_f.p3d","a3\structures_f_enoch\military\barracks\guardhouse_02_f.p3d","csla\csla_structures\mil\csla_mil_garage_01.p3d","a3\structures_f_enoch\military\barracks\barracks_05_f.p3d","csla\csla_structures\mil\csla_stan_west_heather.p3d","a3\structures_f_enoch\military\barracks\barracks_03_f.p3d","a3\structures_f_enoch\military\barracks\barracks_04_f.p3d","a3\structures_f_enoch\military\barracks\barracks_02_f.p3d","csla\csla_structures\mil\camonet\csla_camonet_csla.p3d","csla\csla_structures\mil\camonet\csla_camonetb_csla.p3d","csla\csla_structures\mil\camonet\csla_camonet_var1_csla.p3d","csla\csla_structures\mil\camonet\csla_camonet_var1_nato.p3d","csla\csla_structures\mil\csla_bunker_lovz36.p3d","a3\structures_f_enoch\military\barracks\controltower_01_f.p3d","a3\structures_f_enoch\military\barracks\barracks_06_f.p3d"];
ALIVE_civilianPopulationBuildingTypes = ALIVE_civilianPopulationBuildingTypes + ["a3\structures_f_enoch\infrastructure\railways\rail_station_big_f.p3d","csla\csla_structures\farming\csla_sara_stodola3.p3d","csla\csla_structures\dominants\church_04\csla_church_04.p3d","csla\csla_houses\csla_doma_i2i_01.p3d","csla\csla_houses\csla_doma_i2i_04.p3d","csla\csla_houses\csla_doma_i2i_04_v2.p3d","a3\structures_f_enoch\civilian\houses\house_1w07_f.p3d","a3\structures_f_enoch\civilian\houses\house_2w01_f.p3d","a3\structures_f_enoch\commercial\fuelstation_03\fuelstation_03_shop_f.p3d","a3\structures_f_enoch\commercial\fuelstation_03\fuelstation_03_roof_f.p3d","csla\csla_houses\a_generalstore_01\csla_a_generalstore_01.p3d","a3\structures_f_enoch\industrial\sawmills\sawmill_01_f.p3d","a3\structures_f_enoch\cultural\church_05\church_05_f.p3d","csla\csla_houses\csla_doma_i2i_04_v3.p3d","a3\structures_f_enoch\civilian\camps\camp_house_01_brown_f.p3d","csla\csla_structures\misc\town_equipment\csla_tentbig_red.p3d","a3\structures_f_enoch\civilian\medical\healthcenter_01_f.p3d","a3\structures_f_enoch\civilian\houses\house_2w05_f.p3d","csla\csla_structures\dominants\church_04\csla_church_04b.p3d","a3\structures_f_enoch\civilian\houses\house_2w02_f.p3d","a3\structures_f_enoch\civilian\houses\house_2w04_f.p3d","a3\structures_f_enoch\cultural\church_04\church_04_white_f.p3d","csla\csla_houses\a_office02\csla_a_office02.p3d","csla\csla_houses\a_hospital\csla_hospital.p3d","csla\csla_structures\dominants\hospitalmod\csla_hospital_main.p3d"];
ALIVE_civilianHQBuildingTypes = ALIVE_civilianHQBuildingTypes + ["csla\csla_structures\dominants\office\csla_office01.p3d","a3\structures_f_enoch\ruins\houseruin_big_02_f.p3d","a3\structures_f_enoch\ruins\houseruin_big_01_f.p3d","csla\csla_houses\csla_doma_i2i_03.p3d","csla\csla_houses\csla_doma_i2i_04.p3d","csla\csla_houses\a_office02\csla_a_office02.p3d"];
ALIVE_civilianSettlementBuildingTypes = ALIVE_civilianSettlementBuildingTypes + ["csla\csla_structures\farming\csla_sara_stodola3.p3d","a3\structures_f_enoch\civilian\sheds\shed_13_f.p3d","csla\csla_structures\farming\csla_sara_stodola2.p3d","csla\csla_houses\csla_doma_i2i_02.p3d","csla\csla_structures\misc\farming\csla_shed_w_01.p3d","csla\csla_structures\dominants\office\csla_office01.p3d","csla\csla_structures\dominants\church_04\csla_church_04.p3d","csla\csla_structures\farming\csla_sara_stodola.p3d","a3\structures_f\civ\chapels\chapel_small_v2_f.p3d","a3\structures_f_enoch\industrial\farms\barn_02_f.p3d","a3\structures_f_enoch\ruins\houseruin_small_01_f.p3d","a3\structures_f_enoch\ruins\houseruin_big_02_f.p3d","a3\structures_f_enoch\ruins\houseruin_big_03_f.p3d","a3\structures_f_enoch\ruins\houseruin_big_01_f.p3d","a3\structures_f_enoch\ruins\houseruin_big_03_half_f.p3d","a3\structures_f_enoch\civilian\sheds\shed_14_f.p3d","a3\structures_f_enoch\civilian\sheds\shed_11_f.p3d","a3\structures_f_enoch\ruins\houseruin_big_01_half_f.p3d","a3\structures_f_enoch\ruins\houseruin_small_02_f.p3d","a3\structures_f_enoch\ruins\houseruin_big_02_half_f.p3d","a3\structures_f_enoch\ruins\houseruin_big_04_f.p3d","csla\csla_houses\csla_doma_i2i_03.p3d","a3\structures_f_enoch\industrial\garages\garageoffice_01_f.p3d","a3\structures_f_enoch\industrial\garages\garagerow_01_large_f.p3d","csla\csla_houses\csla_doma_i1i_01.p3d","a3\structures_f_enoch\civilian\sheds\shed_10_f.p3d","a3\structures_f_enoch\industrial\farms\barn_03_small_f.p3d","a3\structures_f_enoch\industrial\farms\barn_03_large_f.p3d","csla\csla_houses\csla_doma_i2i_01.p3d","csla\csla_houses\csla_doma_i2i_04.p3d","a3\structures_f_enoch\industrial\houses\workshop_02_grey_f.p3d","a3\structures_f_enoch\industrial\houses\workshop_01_grey_f.p3d","a3\structures_f_enoch\industrial\garages\garagerow_01_small_f.p3d","a3\structures_f_enoch\cultural\church_04\church_04_red_f.p3d","a3\structures_f_enoch\industrial\farms\cowshed_01_c_f.p3d","a3\structures_f_enoch\industrial\farms\cowshed_01_b_f.p3d","a3\structures_f_enoch\industrial\houses\workshop_01_f.p3d","a3\structures_f_enoch\industrial\farms\cowshed_01_a_f.p3d","a3\structures_f_enoch\industrial\houses\workshop_04_f.p3d","csla\csla_structures\industrial\csla_barn_metal.p3d","csla\csla_houses\csla_doma_i2i_04_v2.p3d","a3\structures_f_enoch\civilian\houses\house_1w07_f.p3d","a3\structures_f_enoch\civilian\houses\house_2w01_f.p3d","a3\structures_f_enoch\industrial\mines\mine_01_warehouse_f.p3d","a3\structures_f_enoch\commercial\fuelstation_03\fuelstation_03_shop_f.p3d","a3\structures_f_enoch\commercial\fuelstation_03\fuelstation_03_roof_f.p3d","a3\structures_f_enoch\industrial\houses\workshop_02_f.p3d","csla\csla_houses\a_generalstore_01\csla_a_generalstore_01.p3d","a3\structures_f_enoch\industrial\houses\workshop_03_f.p3d","a3\structures_f_enoch\industrial\sawmills\sawmill_01_f.p3d","a3\structures_f_enoch\cultural\church_05\church_05_f.p3d","a3\structures_f_enoch\infrastructure\railways\rail_warehouse_small_f.p3d","a3\structures_f_enoch\industrial\dieselpowerplant_01\dp_bigtank_old_f.p3d","csla\csla_houses\csla_doma_i2i_04_v3.p3d","a3\structures_f_enoch\civilian\camps\camp_house_01_brown_f.p3d","a3\structures_f_enoch\civilian\medical\healthcenter_01_f.p3d","a3\structures_f_enoch\civilian\houses\house_2w05_f.p3d","a3\structures_f_enoch\civilian\houses\house_1w12_f.p3d","csla\csla_structures\dominants\church_04\csla_church_04b.p3d","a3\structures_f_enoch\civilian\houses\house_2w02_f.p3d"];
ALIVE_civilianSettlementBuildingTypes = ALIVE_civilianSettlementBuildingTypes + ["a3\structures_f_enoch\civilian\houses\house_2w04_f.p3d","a3\structures_f_enoch\cultural\church_04\church_04_white_f.p3d","a3\structures_f_enoch\commercial\villagestore_01\villagestore_01_f.p3d","a3\structures_f_enoch\civilian\houses\house_1b01_f.p3d","csla\csla_houses\a_office02\csla_a_office02.p3d","csla\csla_houses\a_hospital\csla_hospital.p3d","csla\csla_houses\houseblock_b\csla_houseblock_b3.p3d","csla\csla_houses\houseblock_a\csla_houseblock_a1_1.p3d","csla\csla_houses\houseblock_b\csla_houseblock_b5.p3d","csla\csla_houses\houseblock_a\csla_houseblock_a2.p3d","csla\csla_houses\houseblock_c\csla_houseblock_c5.p3d","csla\csla_houses\houseblock_b\csla_houseblock_b2.p3d","csla\csla_houses\houseblock_a\csla_houseblock_a3.p3d","csla\csla_structures\dominants\hospitalmod\csla_hospital_side1.p3d","csla\csla_structures\dominants\hospitalmod\csla_hospital_main.p3d","csla\csla_structures\dominants\hospitalmod\csla_hospital_side2.p3d","csla\csla_houses\houseblock_c\csla_houseblock_c2.p3d","csla\csla_houses\houseblock_c\csla_houseblock_c3.p3d","csla\csla_houses\houseblock_b\csla_houseblock_b4.p3d","csla\csla_houses\houseblock_c\csla_houseblock_c1.p3d","csla\csla_houses\houseblock_d\csla_houseblock_d1.p3d","csla\csla_houses\houseblock_a\csla_houseblock_a1.p3d","csla\csla_houses\houseblock_b\csla_houseblock_b1.p3d","csla\csla_houses\houseblock_b\csla_houseblock_b6.p3d","a3\structures_f_enoch\civilian\police\policestation_01_f.p3d","csla\csla_houses\houseblock_a\csla_houseblock_a2_1.p3d","a3\structures_f_enoch\cultural\church_04\church_04_lightblue_f.p3d","a3\structures_f_enoch\cultural\church_04\church_04_f.p3d"];
ALIVE_civilianPowerBuildingTypes = ALIVE_civilianPowerBuildingTypes + ["a3\structures_f\ind\solarpowerplant\spp_transformer_f.p3d","a3\structures_f_enoch\industrial\power\powerstation_01_f.p3d","a3\structures_f\ind\dieselpowerplant\dp_mainfactory_f.p3d"];
ALIVE_civilianCommsBuildingTypes = ALIVE_civilianCommsBuildingTypes + ["a3\structures_f\ind\transmitter_tower\ttowerbig_2_f.p3d","a3\structures_f\ind\transmitter_tower\ttowerbig_1_f.p3d","csla\csla_structures\dominants\tvtower\csla_tvtower_base.p3d","csla\csla_structures\misc\town_equipment\csla_rozhladna.p3d"];
ALIVE_civilianRailBuildingTypes = ALIVE_civilianRailBuildingTypes + ["a3\structures_f_enoch\infrastructure\railways\rail_station_big_f.p3d","a3\structures_f_enoch\civilian\houses\house_1b01_f.p3d"];
ALIVE_civilianFuelBuildingTypes = ALIVE_civilianFuelBuildingTypes + ["a3\structures_f_enoch\commercial\fuelstation_03\fuelstation_03_shop_f.p3d","a3\structures_f_enoch\commercial\fuelstation_03\fuelstation_03_roof_f.p3d","a3\structures_f_enoch\industrial\dieselpowerplant_01\dp_bigtank_old_f.p3d","a3\structures_f_enoch\industrial\dieselpowerplant_01\dp_smalltank_old_f.p3d","a3\structures_f\ind\fuelstation\fuelstation_shed_f.p3d","a3\structures_f\ind\fuelstation\fuelstation_build_f.p3d"];
ALIVE_civilianConstructionBuildingTypes = ALIVE_civilianConstructionBuildingTypes + ["a3\structures_f\households\wip\unfinished_building_02_f.p3d","a3\structures_f\households\wip\unfinished_building_01_f.p3d","a3\structures_f\dominants\wip\wip_f.p3d","a3\props_f_exp\industrial\heavyequipment\miningshovel_01_abandoned_f.p3d","a3\structures_f_enoch\industrial\garages\garageoffice_01_f.p3d","a3\structures_f_enoch\industrial\garages\garagerow_01_large_f.p3d","csla\csla_structures\industrial\csla_shed_ind02.p3d","a3\structures_f_enoch\industrial\houses\workshop_01_grey_f.p3d","a3\structures_f_enoch\industrial\garages\garagerow_01_small_f.p3d","a3\structures_f_enoch\industrial\houses\workshop_01_f.p3d","a3\structures_f_enoch\industrial\houses\workshop_04_f.p3d","a3\structures_f_enoch\industrial\houses\workshop_05_f.p3d","a3\structures_f_enoch\industrial\mines\mine_01_warehouse_f.p3d","a3\structures_f_enoch\industrial\houses\workshop_02_f.p3d","a3\structures_f_enoch\industrial\houses\workshop_03_f.p3d","a3\structures_f_enoch\industrial\sawmills\sawmill_01_f.p3d","a3\structures_f_enoch\industrial\cementworks\cementworks_01_brick_f.p3d","a3\structures_f_enoch\industrial\houses\workshop_04_grey_f.p3d","a3\structures_f_enoch\industrial\houses\workshop_03_grey_f.p3d","a3\structures_f_enoch\civilian\houses\house_1w12_f.p3d","a3\structures_f_enoch\industrial\cementworks\cementworks_01_grey_f.p3d","a3\structures_f_enoch\industrial\coalplant_01\coalplant_01_mainbuilding_f.p3d","a3\structures_f_enoch\industrial\coalplant_01\coalplant_01_loadinghouse_f.p3d","a3\structures_f_enoch\industrial\sheds\industrialshed_01_f.p3d","a3\structures_f_enoch\industrial\dieselpowerplant_01\dpp_01_mainfactory_old_f.p3d","a3\structures_f_enoch\industrial\houses\workshop_05_grey_f.p3d"];
};