ITC_AIR_CURRENTWP = 0;
ITC_AIR_DROPNUM = 1;
ITC_AIR_PROGFUZE = "pd";
ITC_AIR_IMPANGLE = 60;
ITC_AIR_WPSWITCH = false;
ITC_AIR_BROADCASTING = false;
ITC_AIR_POI_NUM = 1;
ITC_AIR_IRLAS = false;
ITC_AIR_IRLAS_PLANE = false;

ITC_AIR_INPLANE = false;

ITC_AIR_CURFOV = 0;
ITC_AIR_CURVIS = 0;

ITC_AIR_LINES = [];
ITC_AIR_ICONS = [];

["vehicle", {_this call itc_air_vehicle_fnc_changed}, true] call CBA_fnc_addPlayerEventHandler;
//[player, vehicle player] call itc_air_vehicle_fnc_changed;

["ITC","gripen_waypoint_next", "Cycle WP next", {[1] call itc_air_steerpoints_fnc_cycle;}, "", [201, [false, false, false]]] call CBA_fnc_addKeybind;
["ITC","gripen_waypoint_prev", "Cycle WP previous", {[-1] call itc_air_steerpoints_fnc_cycle;}, "", [209, [false, false, false]]] call CBA_fnc_addKeybind;


["ITC","gripen_fuze_next", "Cycle Fuze next", {["fuze",1] call itc_air_jdam_fnc_config_bomb;}, "", [201, [true, false, false]]] call CBA_fnc_addKeybind;
["ITC","gripen_fuze_prev", "Cycle Fuze previous", {["fuze",-1] call itc_air_jdam_fnc_config_bomb;}, "", [209, [true, false, false]]] call CBA_fnc_addKeybind;

["ITC","gripen_imp_next", "Impact Angle +10", {["imp",10] call itc_air_jdam_fnc_config_bomb;}, "", [201, [false, true, false]]] call CBA_fnc_addKeybind;
["ITC","gripen_imp_prev", "Impact Angle -10", {["imp",-10] call itc_air_jdam_fnc_config_bomb;}, "", [209, [false, true, false]]] call CBA_fnc_addKeybind;

[
    "ITC",
    "gripen_store_POI",
    "Store POI from SOI",
    {[true] call itc_air_mfd_fnc_soi_slew},
    "",
    [207, [false, false, false]]
] call CBA_fnc_addKeybind;


[
    "ITC",
    "gripen_laser_search",
    "Laser Spot Search/Track Enable",
    {[0] call itc_air_tgp_fnc_laser_spot_search_track},
    "",
    [211, [false, false, false]]
] call CBA_fnc_addKeybind;

[
    "ITC",
    "gripen_soi_slew_tgp",
    "SOI Slew TGP",
    {[false] call itc_air_mfd_fnc_soi_slew},
    "",
    [20, [false, false, false]]
] call CBA_fnc_addKeybind;

[
    "ITC",
    "gripen_fcr_slew_tgp",
    "FCR Slew TGP",
    {[0] call itc_air_tgp_fnc_fcr_slew},
    "",
    [20, [true, false, false]]
] call CBA_fnc_addKeybind;
