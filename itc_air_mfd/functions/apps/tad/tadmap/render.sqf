params ["_display", "_btn"];
private _map = _display displayCtrl 61500;
(ctrlPosition _map) params ["_x","_y","_w","_h"];
private _radius = ((_map ctrlMapScreenToWorld [_x,_y]) distance (_map ctrlMapScreenToWorld [_x + _w,_y])) / 2;

[_display,_map] call itc_air_tad_fnc_drawHook;

_fov = itc_air_tad_fov;
_output set [0, format["FOV %1", round(_fov * 100)]];
_plane = (vehicle player);

(_display displayCtrl 61003) ctrlSetText str round(_radius * 0.9);
(_display displayCtrl 61002) ctrlSetText str round(_fov * 100);

(_display displayCtrl 1001) ctrlSetText (if(itc_air_tad_map_on)then[{"ON"},{"OFF"}]);

_centerPos = if(itc_air_tad_expand == 0) then [{getPos _plane}, {itc_air_tad_pos}];

_map drawEllipse [getPos _plane, _radius * 0.9, _radius * 0.9, 0, [0,1,0,1]];
_map drawEllipse [getPos _plane, _radius * 0.45, _radius * 0.45, 0, [0,1,0,1]];

if(itc_air_tgp_capable) then {
  _map drawIcon ["itc_air_mfd\data\UI\WPT_MFD.paa", [1,1,1,1], ((_plane getVariable "tgp_dir") select 1),  20,20, 0,  ".", 0, 0.01];
};
_map drawIcon [itc_air_ownship_icon, [1,1,1,1], getPos _plane,  45,45, getDir _plane,  ".", 0, 0.01];
_map drawIcon ["itc_air_mfd\data\UI\CURSOR_MFD.paa", [1,1,1,1], (_centerPos vectorAdd (itc_air_tad_cursor vectorMultiply _fov)),  30,30, 0,  ".", 0, 0.01];

_waypoints = ([] call itc_air_wpt_fnc_getList);
if(count _waypoints > 1) then {_waypoints + [(_waypoints # (count _waypoints - 1))]};
_key = ([] call itc_air_wpt_fnc_getCurrent) # 0;
{
  _icon = if(_key == _x # 0) then [{"itc_air_mfd\data\UI\WP_MFD_CUR.paa"},{"itc_air_mfd\data\UI\WP_MFD.paa"}];
  _map drawIcon [_icon, [1,1,1,1], (_x # 2),  20,20, 0,  _x # 0, 0, 0.08];
  if(itc_air_wpt_steer_pt_mode == "FLT PLAN" && {_forEachIndex > 0}) then {
    _map drawLine [(_x # 2), (_waypoints # (_forEachIndex - 1) # 2), [0,1,0,1]];
  };
}forEach (_waypoints);

if(itc_air_wpt_steer_pt_mode == "MARK" && {itc_air_wpt_markpoints_z # 1 != ""}) then {
  _map drawIcon ["itc_air_sys_tad\data\UI\MRKZ.paa", [1,1,1,1], (itc_air_wpt_markpoints_z # 2),  20,20, 0,  "Z", 0, 0.08];
};

{
  if(_x isKindOf "Air") then {
    _map drawIcon ["itc_air_mfd\data\UI\SADL_D.paa", [1,1,1,1], getPos _x,  15,15, 0, str (round (3.28 * ((getPos _x) # 2) / 1000 )), 0, 0.08];
  } else {
    _map drawIcon ["itc_air_mfd\data\UI\EPLRS.paa", [1,1,1,1], getPos _x,  15,15, 0,  ".", 0, 0.01];
  };
}forEach ITC_AIR_SADL_VEHICLES;

_map ctrlMapAnimAdd [0, _fov, _centerPos];
ctrlMapAnimCommit _map;
_map ctrlCommit 0;
_map ctrlSetAngle [getDir _plane, (0.525 * 0.9 * 0.5),(0.7 * 0.9 * 0.5), true];
