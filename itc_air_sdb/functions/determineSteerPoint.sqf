params ["_projectile", "_steerPoint","_frameTime", "_angleX", "_angleY","_stage","_targetCoordinates","_azimuth"];
//(_this select 0) params ["_projectile", "_ammo", "_position", "_targetCoordinates", "_stage", "_time", "_angle", "_lastFrameTime","_azimuth","_steerPoint"];
private _return = [_stage, _steerPoint];
if(_stage == "SEP") exitWith {
  if(time > _time + 2) then {
    //if(_azimuth > 0) then {
    //  _return set [0, "NAV"];
    //  _return set [1,(_this call itc_air_sdb_fnc_navSteerPoint)];
    //} else {
      _return set [0, "GLIDE"];
    //};
  };
  _return
};
/*
if(_stage == "NAV" || _stage == "INS") then {
  private _navStages = ["NAV","INS","GLIDE"];
  if((_projectile distance2D _steerPoint) < 100 && abs _angleX > 90) then {
    _return set [0,_navStages # ((_navStages find _stage) + 1)];
  };
  _return
};

if(_stage == "INS") then {
  _return set [1,(_this call itc_air_sdb_fnc_insSteerPoint)];
  //[ASLtoAGL (_return # 1), "ColorGreen"] call test_fnc_mark;
};
*/
if(_stage == "GLIDE") then {
  _return set [1,_targetCoordinates];
  //[ASLtoAGL (_return # 1), "ColorYellow"] call test_fnc_mark;
};
_return
