params ["", "", "", "", "_ammo", "", "_projectile", "_gunner"];
_laserCode = (vehicle player) getVariable "apkws_laser_code";

[{
  (_this select 0) params ["_projectile", "_ammo", "_position", "_laserCode","_launchTime","_lastFrameTime"];
  private _frameTime = time - _lastFrameTime;
  (_this select 0) set [5, time];

  if (!alive _projectile) exitWith {
    [_this select 1] call CBA_fnc_removePerFrameHandler;
  };

  _spot = [getPosASL _projectile, velocity _projectile, 20, 5500, [1500, 1550], _laserCode] call ace_laser_fnc_seekerFindLaserSpot;
  if(!isNil{_spot select 0} && time > _launchTime + 1) then {
    private _targetCoordinates = (_spot select 0) vectorAdd [0,0,1];
    private _position = getPosASL _projectile;
    (_projectile call BIS_fnc_getPitchBank) params ["_pitch", "_bank"];
    private _vectToTarget = _position vectorFromTo _targetCoordinates;
    private _vectToTargetDiff = _vectToTarget vectorDiff (vectorNormalized (velocity _projectile));
    private _vectorModelSpace = _projectile vectorWorldToModel _vectToTargetDiff;
    private _angleX = asin (_vectorModelSpace # 0);
    private _angleY = asin (_vectorModelSpace # 2);
    _turnRate = 4 * _frameTime;
    _projectile setDir (getDir _projectile) + ((_turnRate * _angleX) min _angleX);
    [_projectile, _pitch + ((_turnRate * _angleY) min _angleY), 0] call BIS_fnc_setPitchBank;
  };
}, 0, [_projectile, _ammo, getPosATL _projectile, _laserCode, time, time]] call CBA_fnc_addPerFrameHandler;
