//params ["_mfd", "_dir"];
params ["_display","_slewDir"];
//_addDir = [0,0,0] getDir _dir;
_plane = (vehicle player);

private _slewOrigin = ((getPosASL _plane) vectorFromTo ((_plane getVariable "tgp_dir") select 1)) call CBA_fnc_vect2Polar;
private _slewSPD = ((_plane getVariable "tgp_fov") * (ITC_AIR_TGP_SLEWSPD * 100));
private _newDir = [
  (_slewOrigin # 1) + ((_slewDir # 0) * (0.01 * _slewSPD)),
  (_slewOrigin # 2) + ((_slewDir # 1) * (0.01 * _slewSPD))
];

private _intersect = [(getPosASL vehicle player), _newDir # 0, _newDir # 1] call itc_air_common_fnc_intersectAtPolar;

[_intersect, _plane] call itc_air_tgp_fnc_target;

/*
_target = ((_plane getVariable "tgp_dir") select 1);
_dir = _plane getDir _target;
_dir = if(_addDir + _dir > 360) then [{_dir + _addDir - 360}, {_dir + _addDir}];
_dist = ((_plane getVariable "tgp_fov") * 100);
_newPos = _target getPos [_dist, _dir];
_newPos = [_newPos select 0, _newPos select 1, getTerrainHeightASL _newPos];
*/
