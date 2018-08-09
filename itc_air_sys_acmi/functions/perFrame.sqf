params ["_plane"];
if(!ITC_AIR_ACMI_ON) exitWith {};
if(ITC_AIR_ACMI_LASTEXEC + ITC_AIR_ACMI_DELAY > CBA_missionTime) exitWith {};
ITC_AIR_ACMI_LASTEXEC = CBA_missionTime;

private _latLongAlt = [getPosASL _plane] call itc_air_acmi_fnc_getPosLatLongAlt;
(_plane call bis_fnc_getPitchBank) params ["_pitch","_bank"];
private _printStr = format[
  "%1,T=%2|%3|%4|%5|%6|%10|%8|%9|%7",
  ITC_AIR_ACMI_ID toFixed 0,
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
[_printstr, true] call itc_air_acmi_fnc_log;
