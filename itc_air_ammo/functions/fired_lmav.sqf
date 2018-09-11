params ["", "", "", "", "_ammo", "", "_projectile", "_gunner"];
_laserCode = (vehicle player) getVariable "itc_air_lmav_code";
(vehicle player) setVariable ["itc_air_lmav_code",1111];
[{
  (_this select 0) params ["_projectile", "_ammo", "_position", "_laserCode","_lastFrameTime"];
  private _frameTime = time - _lastFrameTime;
  (_this select 0) set [4, time];

  if (!alive _projectile) exitWith {
    [_this select 1] call CBA_fnc_removePerFrameHandler;
  };

  _spot = [getPosASL _projectile, vectorDir _projectile, 5, 16000, [1500, 1550], _laserCode] call ace_laser_fnc_seekerFindLaserSpot;
  if(!isNil{_spot select 0}) then {
    private _targetCoordinates = (_spot select 0) vectorAdd [0,0,0];
    private _position = getPosASL _projectile;
    (_projectile call BIS_fnc_getPitchBank) params ["_pitch", "_bank"];
    private _vectToTarget = _position vectorFromTo _targetCoordinates;
    private _vectToTargetDiff = _vectToTarget vectorDiff (vectorNormalized (velocity _projectile));
    private _vectorModelSpace = _projectile vectorWorldToModel _vectToTargetDiff;
    private _angleX = asin (_vectorModelSpace # 0);
    private _angleY = asin (_vectorModelSpace # 2);
    _turnRate = 4 * _frameTime;
    _projectile setDir (getDir _projectile) + (_turnRate / 5 * _angleX);
    [_projectile, _pitch + (_turnRate / 5 * _angleY), 0] call BIS_fnc_setPitchBank;
  };
}, 0, [_projectile, _ammo, getPosATL _projectile, _laserCode, time]] call CBA_fnc_addPerFrameHandler;
