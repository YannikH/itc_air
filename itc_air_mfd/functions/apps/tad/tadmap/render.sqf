params ["_display", "_btn"];
private _map = _display displayCtrl 61500;

_fov = _display getVariable "tad_fov";
_output set [0, format["FOV %1", round(_fov * 100)]];
_plane = (vehicle player);

_centerPos = if(_display getVariable "tad_expand" == 0) then [{getPos _plane}, {_display getVariable "tad_pos"}];

_map drawEllipse [getPos _plane, 2500, 2500, 0, [0,1,0,1]];
_map drawEllipse [getPos _plane, 5000, 5000, 0, [0,1,0,1]];

_map drawIcon ["itc_air_mfd\data\UI\WPT_MFD.paa", [1,1,1,1], ((_plane getVariable "tgp_dir") select 1),  15,15, 0,  ".", 0, 0.01];
_map drawIcon [itc_air_ownship_icon, [1,1,1,1], getPos _plane,  45,45, getDir _plane,  ".", 0, 0.01];
_map drawIcon ["itc_air_mfd\data\UI\CURSOR_MFD.paa", [1,1,1,1], (_centerPos vectorAdd ((_display getVariable "tad_cursor") vectorMultiply _fov)),  30,30, 0,  ".", 0, 0.01];

_waypoints = _plane getVariable "stpt_list";
{
    _map drawIcon ["itc_air_mfd\data\UI\WP_MFD.paa", [1,1,1,1], _x select 1,  15,15, 0,  ".", 0, 0.01];
}forEach _waypoints;

_map ctrlMapAnimAdd [0, _fov, _centerPos];
ctrlMapAnimCommit _map;
_map ctrlCommit 0;
