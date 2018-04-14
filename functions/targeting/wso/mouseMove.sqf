params ["_control"];
_back = _control displayCtrl 1610;
(ctrlPosition _back) params ["_lx", "_ly", "_w", "_h"];
_plane = vehicle player;
getMousePosition params ["_ax", "_ay"];
_inside = (
    (_ax > _lx) &&
    (_ax < _lx + _w) &&
    (_ay > _ly) &&
    (_ay < _ly + _h)
);
if(itc_air_tgp_mouseDown && _inside) then {
    _target = (_plane getVariable "tgp_dir") select 1;
    _dir = _plane getDir _target;
    _addDir = [0.5,0.5,0] getDir [_ax,1 - _ay,0];
    _dir = if(_addDir + _dir > 360) then [{_dir + _addDir - 360}, {_dir + _addDir}];
    _dist = [0.5,0.5,0] distance [_ax,_ay,0];
    _dist = ((_plane getVariable "tgp_fov") * 10);
    _newPos = _target getPos [_dist, _dir];
    _newPos = [_newPos select 0, _newPos select 1, getTerrainHeightASL _newPos];
    //_plane setPilotcameratarget _newPos;
    //_plane setVariable ["tgp_dir", [true, _newPos]];
    [_newPos, _plane] call itc_air_tgp_fnc_target;
};
