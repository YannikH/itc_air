/*
 * Draw TOF to waypoint
 * params: plane, current waypoint
 */
params ["_plane", "_wp"];

if(_wp select 0 != "NO WP" && (vectorMagnitude (velocity _plane) != 0)) then {
    _distToWP = (_wp select 1) distance _plane;
    _tof = _distToWP / (0.01 + (vectorMagnitude (velocity _plane)));
    _tofStr = format["%1:%2",round(_tof / 60), round (_tof % 60)];
    [format["<t color='#00ff00' size = '1'>%1<br/>%2</t>",_wpName, _tofStr],0.8,1,1,0,0, 792] spawn BIS_fnc_dynamicText;
};