params ["_display","_slewDir"];
private _plane = vehicle player;
private _planeDir = vectorDir _plane;


if(count ITC_AIR_MAVERICK_LOCK > 0) exitWith {
  ITC_AIR_MAVERICK_TRACK = getPosATL (ITC_AIR_MAVERICK_LOCK # 0);
  ITC_AIR_MAVERICK_LOCK = [];
};

private _slewOrigin = _planeDir call CBA_fnc_vect2Polar;
if(ITC_AIR_MAVERICK_GSTAB) then {
  _slewOrigin = ((getPosASL _plane) vectorFromTo (AGLtoASL ITC_AIR_MAVERICK_TRACK)) call CBA_fnc_vect2Polar;
};

private _newDir = [
  (_slewOrigin # 1) + ((_slewDir # 0) * (0.01 * ITC_AIR_MAVERICK_SLEWSPD)),
  (_slewOrigin # 2) + ((_slewDir # 1) * (0.01 * ITC_AIR_MAVERICK_SLEWSPD))
];

private _dirVect = [1, _newDir # 0, _newDir # 1] call CBA_fnc_polar2vect;
private _ang = acos (_dirVect vectorDotProduct _planeDir);


if(_ang < 30) then {
  if(ITC_AIR_MAVERICK_GSTAB) then {
    private _intersect = [(getPosASL vehicle player), _newDir # 0, _newDir # 1] call itc_air_common_fnc_intersectAtPolar;
    ITC_AIR_MAVERICK_TRACK = ASLtoAGL _intersect;
  } else {
    private _newSlewPos = [
      ITC_AIR_MAVERICK_DIR # 0 + (_slewDir # 0 * 0.01 * ITC_AIR_MAVERICK_SLEWSPD),
      ITC_AIR_MAVERICK_DIR # 1 + (_slewDir # 1 * 0.01 * ITC_AIR_MAVERICK_SLEWSPD)
    ];
    ITC_AIR_MAVERICK_DIR = _newSlewPos;
  };
} else {
  ITC_AIR_MAVERICK_GSTAB = false;
};
