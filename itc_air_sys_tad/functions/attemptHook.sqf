private _position = [] call itc_air_tad_fnc_cursorPos;

private _wayPoints = [true] call itc_air_wpt_fnc_getList;

private _dist = itc_air_tad_hookRadius * itc_air_tad_fov;
private _closest = nil;
private _closestDist = _dist;

{
  if((_position distance2D (_x # 2)) < _closestDist) then {
    _closestDist = (_position distance2D (_x # 2));
    _closest = _x;
  };
}forEach _wayPoints;

{
  if((_position distance2D _x) < _closestDist) then {
    _closestDist = (_position distance2D _x);
    _closest = _x;
  };
}forEach ITC_AIR_SADL_VEHICLES;

if(_position distance2D (vehicle player) < _closestDist) then {
  _closest = (vehicle player);
};

itc_air_tad_hook = _closest;
