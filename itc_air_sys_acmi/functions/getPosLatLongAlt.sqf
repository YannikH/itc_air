params ["_pos"];

private _newUTM = [
  ITC_AIR_ACMI_MAP_UTM # 0 + round(_pos # 0),
  ITC_AIR_ACMI_MAP_UTM # 1 + round(_pos # 1),
  ITC_AIR_ACMI_MAP_UTM # 2
];
private _newLongLat = [_newUTM # 1, _newUTM # 0, _newUTM # 2] call BIS_fnc_posUTMToDeg;

[_newLongLat # 1, _newLongLat # 0, ITC_AIR_ACMI_MAP_ALT + (_pos # 2)]
