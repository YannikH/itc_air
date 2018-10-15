params ["_vehicle"];

private _configSources = [];

itc_air_seat_config = nil;

private _turretIndex = [player] call ace_common_fnc_getTurretIndex;
if(count _turretIndex > 0) then {
  _configSources pushBack format["itc_air_turret_%1",(_turretIndex # 0)];
};

if(player == driver _vehicle) then {
  _configSources pushBack "itc_air_driver";
};

if(player == gunner _vehicle) then {
  _configSources pushBack "itc_air_gunner";
};

if(_vehicle getCargoIndex player > -1) then {
  _configSources pushBack "itc_air_cargo";
};

_configSources pushBack "itc_air";

{
  private _config = (configFile >> "cfgVehicles" >> (typeOf _vehicle) >> _x);
  if(isClass _config) exitWith {
    itc_air_seat_config = _config;
  };
}forEach _configSources;

itc_air_seat_config
