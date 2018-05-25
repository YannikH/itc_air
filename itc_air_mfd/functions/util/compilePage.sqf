params ["_app", "_page", "_display"];
_display setVariable ["pageInit", compile preprocessfilelinenumbers format["itc_air_mfd\functions\apps\%1\%2\init.sqf", _app, _page]];
_display setVariable ["pageInteract", compile preprocessfilelinenumbers format["itc_air_mfd\functions\apps\%1\%2\interact.sqf", _app, _page]];
_display setVariable ["pageRender", compile preprocessfilelinenumbers format["itc_air_mfd\functions\apps\%1\%2\render.sqf", _app, _page]];
