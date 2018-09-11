params ["", "_weapon", "", "", "_ammo", "", "_projectile", "_gunner"];
if(
  !itc_air_fcs_ccrpOn ||
  ((getText (configFile >> "CfgWeapons" >> _weapon >> "cursorAim")) != "bomb") ||
  ((getNumber (configFile >> "CfgAmmo" >> _ammo >> "canLock")) > 0) ||
  ((getText (configFile >> "CfgAmmo" >> _ammo >> "ITC_firedEvent")) != "") ||
  !(local _gunner) ||
  !(isPlayer _gunner)
) exitWith {};
//player sideChat format["fired %1", _ammo];
//player sideChat format["CCRP REL"];
private _impactPos = AGLtoASL ((itc_air_fcs_ccip_impactPos) getPos [random [-10, 0,10], getDir _projectile]);

[{
  (_this select 0) params ["_projectile", "_lastFrameTime", "_impactPos"];
  private _frameTime = time - _lastFrameTime;
  (_this select 0) set [1, time];

  if (!alive _projectile) exitWith {
    [_this select 1] call CBA_fnc_removePerFrameHandler;
  };
  private _position = getPosASL _projectile;
  (_projectile call BIS_fnc_getPitchBank) params ["_pitch", "_bank"];
  if(_pitch > 0) exitWith {};
  private _vectToTarget = _position vectorFromTo _impactPos;
  private _vectToTargetDiff = _vectToTarget vectorDiff (vectorNormalized (velocity _projectile));
  private _vectorModelSpace = _projectile vectorWorldToModel _vectToTargetDiff;
  private _angleY = asin (_vectorModelSpace # 2);
  if ((abs _angleY) > 90) exitWith {
    //systemChat "ANG HI";
    [_this select 1] call CBA_fnc_removePerFrameHandler;
  };
  _turnRate = 4 * _frameTime;
  //systemChat str _angleY;
  [_projectile, _pitch + (_angleY min _turnRate max -_turnRate), 0] call BIS_fnc_setPitchBank;
}, 0, [_projectile, time, _impactPos]] call CBA_fnc_addPerFrameHandler;
