/*
 * Draws yardstick
 * params: pod tracking point
 */
params["_trackPoint"];

_gridArea = [worldName] call ace_common_fnc_getMGRSdata;
_grid = [_trackPoint] call ace_common_fnc_getMapGridFromPos;
_str = format ["%1  %2  %3  %4", _gridArea select 0, _gridArea select 1, _grid select 0, _grid select 1];
[format["<t color='#ffffff' size = '1'>%1</t>",_str],-1,1.2,1,0,0, 793] spawn BIS_fnc_dynamicText;