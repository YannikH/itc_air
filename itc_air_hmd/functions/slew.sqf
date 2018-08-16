params ["_display","_slewDir"];
//systemChat "HMD SLEW";
_plane = (vehicle player);

private _slewOrigin = ((getPosASL _plane) vectorFromTo (AGLtoASL ITC_AIR_HMD_TRACK)) call CBA_fnc_vect2Polar;

private _slewSPD = ITC_AIR_HMD_SLEWSPD;
private _newDir = [
  (_slewOrigin # 1) + ((_slewDir # 0) * (0.01 * _slewSPD)),
  (_slewOrigin # 2) + ((_slewDir # 1) * (0.01 * _slewSPD))
];

private _intersect = [(getPosASL vehicle player), _newDir # 0, _newDir # 1] call itc_air_common_fnc_intersectAtPolar;
if(!isNil {_intersect}) then {
  ITC_AIR_HMD_TRACK = [_intersect # 0, _intersect # 1, 0];
};
