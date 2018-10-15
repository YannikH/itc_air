params ["_display"];
private _map = _display displayCtrl 61500;
(ctrlPosition _map) params ["_x","_y","_w","_h"];
private _radius = ((_map ctrlMapScreenToWorld [_x,_y]) distance (_map ctrlMapScreenToWorld [_x + _w,_y])) / 2;

private _plane = vehicle player;

private _scale = 40;
private ["_dir", "_pos"];
{
  _dir = (_plane getDir _x) - ((vectorDir _plane) call CBA_fnc_vectDir);
  _pos = [0,0,0] getPos [_radius * 0.8, _dir];
  _map drawIcon [(_x getVariable "itc_rwr_symbol"), [1,1,1,1], _pos,  _scale,_scale, 0,  ".", 0, 0.01];
}forEach itc_air_ew_radars_tracking;

{
  _dir = (_plane getDir _x) - ((vectorDir _plane) call CBA_fnc_vectDir);
  _pos = [0,0,0] getPos [_radius * 0.6, _dir];
  _map drawIcon [(_x getVariable "itc_rwr_symbol"), [1,1,1,1], _pos,  _scale,_scale, 0,  ".", 0, 0.01];
  _map drawIcon ["itc_air_sys_ew\data\UI\LOCK.paa", [1,1,1,1], _pos,  _scale,_scale, 0,  ".", 0, 0.01];
}forEach itc_air_ew_radars_locking;

{
  _dir = (_plane getDir _x) - ((vectorDir _plane) call CBA_fnc_vectDir);
  _pos = [0,0,0] getPos [_radius * 0.3, _dir];
  _map drawIcon [(_x getVariable "itc_rwr_symbol"), [1,1,1,1], _pos,  _scale,_scale, 0,  ".", 0, 0.01];
  _map drawIcon ["itc_air_sys_ew\data\UI\LOCK.paa", [1,1,1,1], _pos,  _scale,_scale, 0,  ".", 0, 0.01];
}forEach itc_air_ew_radars_targeting;

{
  _dir = (_plane getDir (_x # 4)) - ((vectorDir _plane) call CBA_fnc_vectDir);
  _pos = [0,0,0] getPos [_radius * 0.1, _dir];
  if(_x # 5) then {
    _map drawIcon ["itc_air_sys_ew\data\UI\LOCK.paa", [1,1,1,1], _pos,  _scale,_scale, 0,  ".", 0, 0.01];
    _map drawIcon [(_x # 2), [1,1,1,1], _pos,  _scale,_scale, 0,  ".", 0, 0.01];
  } else {
    _map drawIcon [(_x # 2), [1,1,1,1], _pos,  _scale,_scale, 0,  ".", 0, 0.01];
  };
}forEach itc_air_ew_launchEvents;
