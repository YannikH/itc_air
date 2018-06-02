params ["", "", "", "", "_ammo", "", "_projectile", "_gunner"];

private _lock = ITC_AIR_MAVERICK_LOCK;
if(count _lock == 0) exitWith {};
ITC_AIR_MAVERICK_TRACK = getPosATL (ITC_AIR_MAVERICK_LOCK # 0);
ITC_AIR_MAVERICK_LOCK = [];
ITC_AIR_MAVERICK_CAMSIDE = ITC_AIR_MAVERICK_CAMSIDE * -1;

[{
  (_this select 0) params ["_projectile", "_lastFrameTime", "_targetObject","_targetObjectPosition"];
  private _frameTime = time - _lastFrameTime;
  (_this select 0) set [1, time];

  if (!alive _projectile) exitWith {
    [_this select 1] call CBA_fnc_removePerFrameHandler;
  };
  private _targetCoordinates = _targetObject modelToWorldWorld _targetObjectPosition;
  private _targetDistance = _targetCoordinates distance _projectile;
  private _velocity = vectorMagnitude velocity _projectile;
  private _tof = _targetDistance / _velocity;
  private _lead = (velocity _targetObject) vectorMultiply _tof;
  private _targetCoordinates = _targetCoordinates vectorAdd _lead;
  //drop ["\a3\data_f\Cl_basic","","Billboard",1,20,ASLtoAGL _targetCoordinates,[0,0,0],1,1.275,1.0,0.0,[1],[[1,0,0,1]],[0],0.0,2.0,"","",""];
  //private _targetCoordinates = _targetCoordinates vectorAdd [0,0,1];
  private _position = getPosASL _projectile;
  (_projectile call BIS_fnc_getPitchBank) params ["_pitch", "_bank"];
  private _vectToTarget = _position vectorFromTo _targetCoordinates;
  private _vectToTargetDiff = _vectToTarget vectorDiff (vectorNormalized (velocity _projectile));
  private _vectorModelSpace = _projectile vectorWorldToModel _vectToTargetDiff;
  private _angleX = asin (_vectorModelSpace # 0);
  private _angleY = asin (_vectorModelSpace # 2);
  _turnRate = 4 * _frameTime;
  if(_angleX < 15) then {
    _projectile setDir (getDir _projectile) + (_turnRate / 5 * _angleX);
  };
  if(_angleY < 15) then {
    [_projectile, _pitch + (_turnRate / 5 * _angleY), 0] call BIS_fnc_setPitchBank;
  };
}, 0, [_projectile, time, _lock # 0, _lock # 1]] call CBA_fnc_addPerFrameHandler;
