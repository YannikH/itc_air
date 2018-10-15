params ["", "", "", "", "_ammo", "", "_projectile", "_gunner"];
_laserCode = (vehicle player) getVariable "itc_air_lmav_code";
(vehicle player) setVariable ["itc_air_lmav_code",1111];
[{
  (_this select 0) params ["_projectile", "_ammo", "_position", "_laserCode","_lastFrameTime","_lastLeadCheck","_lastLaserPos","_leadVect"];
  private _frameTime = time - _lastFrameTime;
  (_this select 0) set [4, time];

  if (!alive _projectile) exitWith {
    [_this select 1] call CBA_fnc_removePerFrameHandler;
  };

  _spot = [getPosASL _projectile, vectorDir _projectile, 5, 16000, [1500, 1550], _laserCode] call ace_laser_fnc_seekerFindLaserSpot;
  if(!isNil{_spot select 0}) then {
    private _targetCoordinates = (_spot select 0) vectorAdd [0,0,0];
    private _position = getPosASL _projectile;

    //LASER LEAD
    if(isNil {_lastLaserPos}) then {
      (_this select 0) set [5,time];
      (_this select 0) set [6,_targetCoordinates];
    } else {
      if(time > _lastLeadCheck + 0.1) then {
        (_this select 0) set [5,time];
        (_this select 0) set [6,_targetCoordinates];
        private _speed = (vectorMagnitude (velocity _projectile));
        private _tof = (_targetCoordinates distance _position) / _speed;
        private _vect = _lastLaserPos vectorFromTo _targetCoordinates;
        private _targSpeed = (_targetCoordinates distance _lastLaserPos) * (1 / (time - _lastLeadCheck));
        private _leadVect = (_vect vectorMultiply (_targSpeed * _tof));
        (_this select 0) set [7,_leadVect];
        _targetCoordinates = _targetCoordinates vectorAdd _leadVect;
      };
    };
    _targetCoordinates = _targetCoordinates vectorAdd _leadVect;
    //drop ["\a3\data_f\Cl_basic","","Billboard",1,20,ASLtoAGL _targetCoordinates,[0,0,0],1,1.275,1.0,0.0,[1],[[1,0,0,1]],[0],0.0,2.0,"","",""];//red fwd

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
}, 0, [_projectile, _ammo, getPosATL _projectile, _laserCode, time,time, nil,[0,0,0]]] call CBA_fnc_addPerFrameHandler;
