params ["_vehicle"];

private _vehicle = vehicle player;
private _lmavCode = (_vehicle getVariable "itc_air_lmav_code");
(_display displayCtrl 71000) ctrlSetText str _lmavCode;
private _spot = [getPosASL _vehicle, vectorDir _vehicle, 5, 16000, [1500, 1550], _lmavCode] call ace_laser_fnc_seekerFindLaserSpot;
if(!isNil{_spot select 0}) then {
  private _vectToLaser = _vehicle vectorWorldToModel ((getPosASL _vehicle) vectorFromTo (_spot # 0));
  itc_air_lmav_draw_x = ((_vectToLaser # 0) * 1);
  itc_air_lmav_draw_y = ((_vectToLaser # 2) * -1);
  _vehicle setVariable ["itc_air_lmav_target",_spot];
  itc_air_lmav_lock = true;
} else {
  itc_air_lmav_draw_y = 0;
  itc_air_lmav_lock = false;
  if(itc_air_lmav_draw_x > 0.355) then {itc_air_lmav_draw_dir = -1};
  if(itc_air_lmav_draw_x < -0.355) then {itc_air_lmav_draw_dir = 1};
  itc_air_lmav_draw_x = itc_air_lmav_draw_x + (itc_air_lmav_draw_dir * 0.005);
  _vehicle setVariable ["itc_air_lmav_target",nil];
};
