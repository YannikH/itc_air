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

//(findDisplay 46) displayAddEventHandler ["KeyDown",{_this select 1 call itc_fnc_targeting_keydown}];

["vehicle", {_this call itc_fnc_targeting_vehicle_changed_handler}, true] call CBA_fnc_addPlayerEventHandler;

["ITC","gripen_waypoint_next", "Cycle WP next", {[1] call itc_fnc_targeting_cycleWp;}, "", [201, [false, false, false]]] call CBA_fnc_addKeybind;
["ITC","gripen_waypoint_prev", "Cycle WP previous", {[-1] call itc_fnc_targeting_cycleWp;}, "", [209, [false, false, false]]] call CBA_fnc_addKeybind;


["ITC","gripen_fuze_next", "Cycle Fuze next", {["fuze",1] call itc_fnc_targeting_config_bomb;}, "", [201, [true, false, false]]] call CBA_fnc_addKeybind;
["ITC","gripen_fuze_prev", "Cycle Fuze previous", {["fuze",-1] call itc_fnc_targeting_config_bomb;}, "", [209, [true, false, false]]] call CBA_fnc_addKeybind;

["ITC","gripen_imp_next", "Impact Angle +10", {["imp",10] call itc_fnc_targeting_config_bomb;}, "", [201, [false, true, false]]] call CBA_fnc_addKeybind;
["ITC","gripen_imp_prev", "Impact Angle -10", {["imp",-10] call itc_fnc_targeting_config_bomb;}, "", [209, [false, true, false]]] call CBA_fnc_addKeybind;


[
    "ITC",
    "gripen_broadcast_toggle", 
    "Datalink broadcast toggle", 
    {[0] call itc_fnc_targeting_broadcastToggle;}, 
    "", 
    [210, [false, false, false]]
] call CBA_fnc_addKeybind;

[
    "ITC",
    "gripen_store_POI", 
    "Store POI from TGP", 
    {[0] call itc_fnc_targeting_store_poi;}, 
    "", 
    [207, [false, false, false]]
] call CBA_fnc_addKeybind;


[
    "ITC",
    "gripen_laser_search", 
    "Laser Spot Search/Track Enable", 
    {[0] call itc_fnc_targeting_laser_spot_search_track}, 
    "", 
    [211, [false, false, false]]
] call CBA_fnc_addKeybind;

[
    "ITC",
    "gripen_hmd_slew_tgp", 
    "HMD Slew TGP", 
    {[0] call itc_fnc_targeting_hmd_tgp_slew}, 
    "", 
    [20, [false, false, false]]
] call CBA_fnc_addKeybind;

[
    "ITC",
    "gripen_laser_ir", 
    "Toggle IR Laser", 
    {[0] call itc_fnc_targeting_laser_ir}, 
    "", 
    [38, [false, true, false]]
] call CBA_fnc_addKeybind;