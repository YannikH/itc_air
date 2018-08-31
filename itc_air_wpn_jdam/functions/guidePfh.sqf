(_this select 0) params ["_projectile", "_lastFrameTime", "_targetCoordinates","_laserCode","_impactAngle","_stage","_releaseTime"];
//player sideChat _stage;

//start updating the lastFrameTime
private _frameTime = time - _lastFrameTime;
(_this select 0) set [1, time];

if (!alive _projectile) exitWith {
  [_this select 1] call CBA_fnc_removePerFrameHandler;
};

//separation stage
//wait one second after release before guidance starts
if(_stage == "SEP") exitWith {
  if(_releaseTime + 2 < cba_missiontime) then {
    (_this select 0) set [5, "GLIDE"];
  };
};

private _previousTargetCoordinates = _targetCoordinates;
if(_laserCode != -1) then {
  _spot = [getPosASL _projectile, velocity _projectile, 45, 5000, [1500, 1550], _laserCode] call ace_laser_fnc_seekerFindLaserSpot;
  if(!isNil{_spot select 0}) then {
    _targetCoordinates = _spot select 0;
    (_this select 0) set [2, _targetCoordinates];
  };
};

//don't guide if there's no target
if(isNil{_targetCoordinates}) exitWith {};

private _targetDistance = _targetCoordinates distance _projectile;
private _velocity = vectorMagnitude velocity _projectile;
private _tof = _targetDistance / _velocity;
private _shiftDistance = _previousTargetCoordinates distance _targetCoordinates;
//if(_shiftDistance < 10 && _shiftDistance > 0) then {
//  private _shiftSpeed = (1 / _frameTime) * _shiftDistance;
//  private _shiftVect = (_previousTargetCoordinates vectorFromTo _targetCoordinates);
//  private _shiftVelocity = (vectorNormalized _shiftVect) vectorMultiply _shiftSpeed;
//  private _lead = _shiftVelocity vectorMultiply _tof;
//  _targetCoordinates = _targetCoordinates vectorAdd _lead;
//};
//drop ["\a3\data_f\Cl_basic","","Billboard",1,20,ASLtoAGL _targetCoordinates,[0,0,0],1,1.275,1.0,0.0,[1],[[1,0,0,1]],[0],0.0,2.0,"","",""];
//drop ["\a3\data_f\Cl_basic","","Billboard",1,20,getPos _projectile,[0,0,0],1,1.275,1.0,0.0,[1],[[0,1,0,1]],[0],0.0,2.0,"","",""];
//private _targetCoordinates = _targetCoordinates vectorAdd [0,0,1];

private _position = getPosASL _projectile;
(_projectile call BIS_fnc_getPitchBank) params ["_pitch", "_bank"];
private _vectToTarget = _position vectorFromTo _targetCoordinates;
private _vectToTargetDiff = _vectToTarget vectorDiff (vectorNormalized (velocity _projectile));
private _vectorModelSpace = _projectile vectorWorldToModel _vectToTargetDiff;
private _angleX = asin (_vectorModelSpace # 0);
private _angleY = asin (_vectorModelSpace # 2);
_turnRate = 5 * _frameTime;
_diveRate = 30 * _frameTime;
_projectile setDir (getDir _projectile) + (_angleX min _turnRate max -_turnRate);
_projectile setDir (getDir _projectile) + (_turnRate * _frameTime);
//_projectile setDir (getDir _projectile) + (_turnRate * _angleX);

private _dElev = (_position select 2) - (_targetCoordinates select 2);
private _speed = vectorMagnitude (velocity _projectile);
private _distance2D = _projectile distance2D _targetCoordinates;

//player sideChat str [round _angleX,round _angleY, _targetDistance];

if(_stage == "GLIDE" || _stage == "DIVE") then {
  private _turnDistRequired = ((abs _angleY) / 30) * _speed;
  private _diveInitDist = (_dElev / tan(_impactAngle)) + _turnDistRequired;
  if(_distance2D < _diveInitDist || _stage == "DIVE") then {
    //player sideChat "DIVING";
    (_this select 0) set [5, "DIVE"];
    _pitch = _pitch + (_angleY min _diveRate max -_diveRate);
  };
} else {
  if(_pitch < 0) then {
    _pitch = _pitch + _diveRate;
  };
};
[_projectile, _pitch, 0] call BIS_fnc_setPitchBank;
//[_projectile, _pitch + (_turnRate / 5 * _angleY), 0] call BIS_fnc_setPitchBank;
