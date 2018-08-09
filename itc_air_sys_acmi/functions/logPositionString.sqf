params["_plane"];
private _latLongAlt = [getPosASL _plane] call itc_air_acmi_fnc_getPosLatLongAlt;
(_plane call bis_fnc_getPitchBank) params ["_pitch","_bank"];
private _printStr = format[
  "T=%1|%2|%3|%4|%5|%9|%7|%8|%6",
  _latLongAlt # 1,
  _latLongAlt # 0,
  round (_latLongAlt # 2),
  round _bank,
  round _pitch,
  round getDir _plane,
  round (getPos _plane # 0),
  round (getPos _plane # 1),
  round getDir _plane
];
_printStr
