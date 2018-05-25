params ["_app", "_display"];
_display setVariable ["appInit", compile preprocessfilelinenumbers format["itc_air_mfd\functions\apps\%1\init.sqf", _app]];
_display setVariable ["appClear", compile preprocessfilelinenumbers format["itc_air_mfd\functions\apps\%1\clear.sqf", _app]];
_display setVariable ["appInteract", compile preprocessfilelinenumbers format["itc_air_mfd\functions\apps\%1\interact.sqf", _app]];
_display setVariable ["appRender", compile preprocessfilelinenumbers format["itc_air_mfd\functions\apps\%1\render.sqf", _app]];
