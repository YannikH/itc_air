params ["_player", "_newVehicle"];

{
  _x cameraEffect ["terminate","Back"];
  _x cameraEffect ["terminate","Back"];
  camDestroy _x;
} forEach ITC_AIR_MFD_CAMS;
ITC_AIR_MFD_CAMS = [];

_newVehicle setVariable ["itc_air_options",[]];
_newVehicle setVariable ["itc_air_systems",[]];

if (isNull _newVehicle) exitWith {ITC_AIR_INPLANE = false};
[_newVehicle] call itc_air_common_fnc_getConfig;
if(!isNil {itc_air_seat_config}) exitWith {
  [_newVehicle] call itc_air_vehicle_fnc_setup;
};
