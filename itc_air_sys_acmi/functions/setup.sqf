params ["_vehicle"];
ITC_AIR_ACMI_FRAME = 0;
ITC_AIR_ACMI_ID = ITC_AIR_ACMI_ID_START;
ITC_AIR_ACMI_ID_START = ITC_AIR_ACMI_ID_START + 1;
ITC_AIR_ACMI_ON = false;
ITC_AIR_ACMI_LASTEXEC = 0;
ITC_AIR_ACMI_DELAY = 0.2;
[_vehicle, [missionNameSpace,"ITC_AIR_ACMI_ON",false,"ACMI ON",{},"cycle",[false, true]]] call itc_air_common_fnc_addOption;

"itc_acmi" callExtension ["init",[]];
private _latLongAlt = [getPosASL _vehicle] call itc_air_acmi_fnc_getPosLatLongAlt;
(_plane call bis_fnc_getPitchBank) params ["_pitch","_bank"];
private _printStr = format[
  "%1,Name=A10C",
  ITC_AIR_ACMI_ID toFixed 0
];
"itc_acmi" callExtension ["log",["arma.txt.acmi","#" + str CBA_missionTime]];
"itc_acmi" callExtension ["log",["arma.txt.acmi",_printStr]];
