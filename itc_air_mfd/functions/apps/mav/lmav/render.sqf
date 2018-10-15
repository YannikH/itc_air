params ["_display"];
if(currentWeapon (vehicle player) != "itc_air_weapon_maverick_e" || ((vehicle player) ammo "itc_air_weapon_maverick_e") == 0) exitWith {
  _display setVariable ["page","mavoff"];
};
private _plane = vehicle player;
private _lmavCode = (_plane getVariable "itc_air_lmav_code");
(_display displayCtrl 71000) ctrlSetText str _lmavCode;
private _lpos = (_display displayCtrl 71202);
if(itc_air_lmav_lock) then {
  _drawX = 0.32175 + itc_air_lmav_draw_x;
  _drawY = 0.459 + itc_air_lmav_draw_y;
  _lpos ctrlSetPosition [_drawX, _drawY];
  _lpos ctrlSetText "#(argb,8,8,3)color(0,1,0,1)";
} else {
  _lpos ctrlSetPosition [0.32175 + (0.9 * itc_air_lmav_draw_x), 0.459 + itc_air_lmav_draw_y];
  _lpos ctrlSetText "itc_air_mfd\data\ui\lmavi.paa";
};
_lpos ctrlCommit 0;
