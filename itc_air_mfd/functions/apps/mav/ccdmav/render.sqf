params ["_display"];
if(
  (currentWeapon (vehicle player) != "itc_air_weapon_maverick_h" || ((vehicle player) ammo "itc_air_weapon_maverick_h") == 0) &&
  (currentWeapon (vehicle player) != "itc_air_weapon_maverick_g" || ((vehicle player) ammo "itc_air_weapon_maverick_g") == 0)
  ) exitWith {
  _display setVariable ["page","mavoff"];
};

private _pointCross = (_display displayCtrl 722204);
private _rangeCaret = (_display displayCtrl 721202);
(_display displayCtrl 722201) ctrlShow false;

_plane = vehicle player;

private _targetVector = [1000,ITC_AIR_MAVERICK_DIR # 0, ITC_AIR_MAVERICK_DIR # 1] call CBA_fnc_polar2vect;
private _cameraTarget = _plane modelToWorld _targetVector;
if(ITC_AIR_MAVERICK_GSTAB) then {
  _cameraTarget = ITC_AIR_MAVERICK_TRACK;
};
if(!isNull (ITC_AIR_MAVERICK_LOCK # 0)) then {
  _cameraTarget = (ITC_AIR_MAVERICK_LOCK # 0) modelToWorld (ITC_AIR_MAVERICK_LOCK # 1);
};

private _vectToTarget = _plane vectorWorldToModel ((getPos _plane) vectorFromTo _cameraTarget);
private _drawX = ((_display getVariable "center") # 0) + ((_vectToTarget # 0) * 1);
private _drawY = ((_display getVariable "center") # 1) + ((_vectToTarget # 2) * -1);
_pointCross ctrlSetPosition [_drawX - (0.04 * 0.75), _drawY - (0.04 * 0.75)];
_pointCross ctrlCommit 0;

if(ITC_AIR_MAVERICK_GSTAB) then {
  private _vectToTarget = _plane vectorWorldToModel ((getPosASL _plane) vectorFromTo _cameraTarget);
  private _range = (_plane distance _cameraTarget);
  (_display displayCtrl 721000) ctrlSetText str round (_range / 1000);
  _rangeCaret ctrlSetPosition [0.155, (0.3 * 0.9) + ((_range max 1000) * 0.000019)];
  _rangeCaret ctrlCommit 0;
  if(!isNull (ITC_AIR_MAVERICK_LOCK # 0)) then {
    (_display displayCtrl 722201) ctrlShow true;
  };
} else {
  (_display displayCtrl 721000) ctrlSetText "XXX";
};
