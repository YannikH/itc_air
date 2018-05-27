params ["_display"];
if(currentWeapon (vehicle player) != "itc_air_weapon_maverick_e" || ((vehicle player) ammo "itc_air_weapon_maverick_e") == 0) exitWith {
  _display setVariable ["page","mavoff"];
};
private _plane = vehicle player;
private _lmavCode = (_plane getVariable "itc_air_lmav_code");
(_display displayCtrl 71000) ctrlSetText str _lmavCode;
private _lpos = (_display displayCtrl 71202);
private _spot = [getPosASL _plane, vectorDir _plane, 5, 16000, [1500, 1550], _lmavCode] call ace_laser_fnc_seekerFindLaserSpot;
if(!isNil{_spot select 0}) then {
  private _vectToLaser = _plane vectorWorldToModel ((getPosASL _plane) vectorFromTo (_spot # 0));
  _drawX = 0.32175 + ((_vectToLaser # 0) * 1);
  _drawY = 0.459 + ((_vectToLaser # 2) * -1);
  _lpos ctrlSetPosition [_drawX, _drawY];
  _lpos ctrlSetText "#(argb,8,8,3)color(0,1,0,1)";
  _plane setVariable ["itc_air_lmav_target",_spot];
} else {
  _lpos ctrlSetText "itc_air_mfd\data\ui\lmavi.paa";
  if(itc_air_lmav_draw_x > 0.55) then {itc_air_lmav_draw_dir = -1};
  if(itc_air_lmav_draw_x < 0.16) then {itc_air_lmav_draw_dir = 1};
  itc_air_lmav_draw_x = itc_air_lmav_draw_x + (itc_air_lmav_draw_dir * 0.005);
  _lpos ctrlSetPosition [0.9 * itc_air_lmav_draw_x, 0.9 * 0.505];
  _plane setVariable ["itc_air_lmav_target",nil];
};
_lpos ctrlCommit 0;
