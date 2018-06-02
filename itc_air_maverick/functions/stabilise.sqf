if(count ITC_AIR_MAVERICK_LOCK > 0) exitWith {
  ITC_AIR_MAVERICK_LOCK = [];
};

if(ITC_AIR_MAVERICK_GSTAB) exitWith {
  ITC_AIR_MAVERICK_GSTAB = false;
};

private _polar = (vectorDir vehicle player) call CBA_fnc_vect2Polar;
private _polarDir = [
  _polar # 1 + ITC_AIR_MAVERICK_DIR # 0,
  _polar # 2 + ITC_AIR_MAVERICK_DIR # 1
];
private _intersect = [(getPosASL vehicle player), _polarDir # 0, _polarDir # 1] call itc_air_common_fnc_intersectAtPolar;
if(!isNil {_intersect}) then {
  ITC_AIR_MAVERICK_TRACK = ASLtoAGL _intersect;
  ITC_AIR_MAVERICK_GSTAB = true;
};
