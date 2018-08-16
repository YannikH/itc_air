params ["_aircraft",["_bufferTime",0]];

(_aircraft call bis_fnc_getPitchBank) params ["_pitch","_bank"];
_bankRate = 15; _pitchRate = 30;

_pitch = _pitch + 0.01;

private _speed = vectorMagnitude (velocity _aircraft);
private _levelTime = if(_bank != 0 && _bankRate != 0)then[{((abs _bank - 45) max 0) / _bankRate},{0}];
private _pitchTime = (20 - _pitch) / _pitchRate;
private _pullDist = ((_levelTime * _speed) + (_pitchTime * _speed) + (_bufferTime * _speed)) max 100;
private _velocityDirDist = ((vectorNormalized (velocity _aircraft)) vectorMultiply _pullDist);
private _intersectPos = (getPosASL _aircraft) vectorAdd _velocityDirDist;
//private _intersectPos = _projectile modelToWorldWorld [0,_pullDist,-50];

//systemChat format["SPD %1, PB %2/%3, PBT %4/%5 PBD %6/%7 INDIST %8",
//  _speed,
//  round _pitch, round _bank,
//  round _pitchTime, round _levelTime,
//  round (_pitchTime * _speed), round (_levelTime * _speed),
//  round _pullDist
//];

private _intersects = lineIntersectsSurfaces [getPosASL _aircraft, _intersectPos, _aircraft];
(count _intersects > 0)
