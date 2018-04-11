_waypoints = [] call ace_microdagr_fnc_deviceGetWaypoints;
if(count _waypoints == 0) exitWith {};
[(_waypoints select ITC_AIR_CURRENTWP select 1), _plane] call itc_air_tgp_fnc_target;
