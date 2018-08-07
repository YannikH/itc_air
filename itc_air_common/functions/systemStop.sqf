params ["_vehicle", "_system"];
private _pfh = _vehicle getVariable ["itc_air_systems_pfh",[]];
_pfh = _pfh - [_system];
_vehicle setVariable ["itc_air_systems_pfh",_pfh];

private _psh = _vehicle getVariable ["itc_air_systems_psh",[]];
_psh = _psh - [_system];
_vehicle setVariable ["itc_air_systems_psh",_psh];

private _active = _vehicle getVariable ["itc_air_systems_active",[]];
_active = _active - [_system];
_vehicle setVariable ["itc_air_systems_active",_active];

private _shutDownFuncName = format["itc_air_%1_fnc_shutDown",toLower _system];
private _shutDownFunc = (missionNamespace getVariable _shutDownFuncName);
if(!isNil {_shutDownFunc}) then {
  [_vehicle] call _shutDownFunc;
};
