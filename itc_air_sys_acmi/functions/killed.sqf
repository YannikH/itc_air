params ["_acmi_id","_unit"];
systemChat format["killed %1",_acmi_id];
private _printStr = [_unit] call itc_air_acmi_fnc_logPositionString;
//systemChat format["%1",_printStr];
[_acmi_id + "," + _printStr, true] call itc_air_acmi_fnc_log;
["-" + _acmi_id, false] call itc_air_acmi_fnc_log;
