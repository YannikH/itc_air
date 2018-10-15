params ["_plane"];
itc_air_ew_radars_tracking = [];
itc_air_ew_radars_locking = [];
itc_air_ew_radars_targeting = [];
_destinationArrays = [itc_air_ew_radars_tracking, itc_air_ew_radars_locking, itc_air_ew_radars_targeting];
{
  private _status = [vehicle player, _x] call itc_air_ew_fnc_getRadarStatus;
  if(_status == -2) then {
    itc_air_ew_radars deleteAt _foreachIndex;
  } else {
    if(_status > -1) then {
      (_destinationArrays # _status) pushBack _x;
    };
  };
}forEach itc_air_ew_radars;

private _vehiclesToRemove = [];
{
  if(!alive (_x # 4)) then {
    itc_air_ew_launchEvents deleteAt _foreachIndex;
    (_x # 3) setVariable ["itc_air_ew_fired", false];
  };
  _x set [5, false];
  if(abs ((_x # 4) getRelDir _plane) < 90) then {
    _x set [5, true];
  };
}forEach itc_air_ew_launchEvents;
