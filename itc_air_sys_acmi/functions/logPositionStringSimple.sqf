params["_object"];
private _latLongAlt = [getPosASL _object] call itc_air_acmi_fnc_getPosLatLongAlt;
private _printStr = format[
  "T=%1|%2|%3",
  _latLongAlt # 1,
  _latLongAlt # 0,
  round (_latLongAlt # 2)
];
_printStr
