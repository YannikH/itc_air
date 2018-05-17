params ["_app"];
itc_air_mfd_fnc_appInit = compile preprocessfilelinenumbers format["itc_air_mfd\functions\apps\%1\init.sqf", _app];
itc_air_mfd_fnc_appClear = compile preprocessfilelinenumbers format["itc_air_mfd\functions\apps\%1\clear.sqf", _app];
itc_air_mfd_fnc_appInteract = compile preprocessfilelinenumbers format["itc_air_mfd\functions\apps\%1\interact.sqf", _app];
itc_air_mfd_fnc_appRender = compile preprocessfilelinenumbers format["itc_air_mfd\functions\apps\%1\render.sqf", _app];
