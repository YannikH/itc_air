params ["_player", "_newVehicle"];

{
  _x cameraEffect ["terminate","Back"];
  _x cameraEffect ["terminate","Back"];
  camDestroy _x;
} forEach ITC_AIR_MFD_CAMS;
ITC_AIR_MFD_CAMS = [];

if (isNull _newVehicle) exitWith {ITC_AIR_INPLANE = false};
if(isClass (configFile >> "CfgVehicles" >> (typeOf _newVehicle) >> "itc_air")) exitWith {
  [_newVehicle] call itc_air_vehicle_fnc_setup;
};
