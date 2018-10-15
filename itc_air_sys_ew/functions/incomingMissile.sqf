params ["_target", "_ammo", "_vehicle", "_instigator"];
_vehicle setVariable ["itc_air_ew_fired", true];
private _icon = "itc_air_sys_ew\data\UI\SHELL.paa";
private _missile = nearestObject [_vehicle, _ammo];
if(_ammo isKindOf ["MissileBase",(ConfigFile >> "CfgAmmo")]) then {
  _icon = "itc_air_sys_ew\data\UI\MSL.paa";
} else {
  private _initSpeed = getNumber (configFile >> "CfgAmmo" >> _ammo >> "initSpeed");
  _lifeTime = (_vehicle distance _target) / _initSpeed;
};
itc_air_ew_launchEvents pushBack [cba_missionTime, _ammo, _icon, _vehicle, _missile, true];
