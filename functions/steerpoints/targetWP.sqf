_waypoints = [] call ace_microdagr_fnc_deviceGetWaypoints;
if(count _waypoints == 0) exitWith {};
(vehicle player) setPilotCameraTarget (_waypoints select ITC_AIR_CURRENTWP select 1);