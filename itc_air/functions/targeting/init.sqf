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

itc_air_ripple_active = false;
itc_air_ripple_dropcount = 0;

ITC_AIR_TGP_SLEWSPD = 1;

["vehicle", {_this call itc_air_vehicle_fnc_changed}, true] call CBA_fnc_addPlayerEventHandler;
//[player, vehicle player] call itc_air_vehicle_fnc_changed;

["ITC","gripen_waypoint_next", "Cycle WP next", {
  [1] remoteExec ["itc_air_steerpoints_fnc_cycle", (crew (vehicle player)), false];
}, "", [201, [false, false, false]]] call CBA_fnc_addKeybind;
["ITC","gripen_waypoint_prev", "Cycle WP previous", {
  [-1] remoteExec ["itc_air_steerpoints_fnc_cycle", (crew (vehicle player)), false];
}, "", [209, [false, false, false]]] call CBA_fnc_addKeybind;
