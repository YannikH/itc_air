params ["_vehicle", "_system"];
private _pfh = _vehicle getVariable ["itc_air_systems_pfh",[]];
_pfh = _pfh - [_system];
_vehicle setVariable ["itc_air_systems_pfh",_pfh];

private _psh = _vehicle getVariable ["itc_air_systems_psh",[]];
_psh = _psh - [_system];
_vehicle setVariable ["itc_air_systems_psh",_psh];
