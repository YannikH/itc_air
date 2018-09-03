private ["_velocityVec","_pos","_airFriction","_initialVelocity","_gravity", "_timeToLive"];

//All of this is calculated in relation to the firer ASL pos
_velocityVec 		= _this select 0;
_pos 				= _this select 1;
_airFriction 		= _this select 2;
_sideAirFriction 	= _this select 3;
_initialVelocity 	= _this select 4;
_timeToLive 		= _this select 5;

_gravity = 9.80665;

private ["_posX","_posY","_posZ","_totalVelocityX","_totalVelocityY","_totalVelocityZ","_Vmag","_elapsedTime"];

_elapsedTime = 0;

//projectile velocity in meters per second
_velocity = _velocityVec vectorAdd _initialVelocity;
private ["_result","_altPos","_positions","_vectorM","_time"];

_positions = [];

_minResolution = 0.025;
_maxResolution = 0.0125;
_maxIterations = 512;

_result = [0,0,0];

_resultIndex = -1;
_ATLPos = [];
_dt = 0.05;
_maxIterations = ceil (_timeToLive/_dt);
//_maxIterations = _maxIterations max 256;
//
private "_startTime";
_startTime = diag_tickTime;
for "_i" from 1 to _maxIterations do {

	//The idea here is to bias the simulation time so that the start of the trajectory
	//is simulated with a worse resolution than the end. Reason is that the start of the
	//trajectory is relatively flat compared to the end, meaning the impactPos should
	//be accurate with that worse resolution.
	//_time = _maxResolution min (_i^-4);

	//_elapsedTime = _elapsedTime + _dt;
	//Calculate vector magnitude so that velocity vectors are calculated properly
	_vectorM = vectorMagnitude _velocity;
	_vectorM = _vectorM*_airFriction;

	//Recalculate velocity at the current point in time
	_deltaVelocity = _velocity vectorMultiply _vectorM;
	_deltaVelocity = _deltaVelocity vectorAdd  [0,0, -_gravity];
	_deltaVelocity = _deltaVelocity vectorMultiply _dt;
	_velocity = _velocity vectorAdd _deltaVelocity;

	//Add recalculated position to previous position
	_deltaPos = _velocity vectorMultiply _dt;
	_pos = _pos vectorAdd _deltaPos;

	_ATLPos = _pos;
	if(!surfaceIsWater _ATLPos) then {
		_ATLPos = ASLToATL _ATLPos;
	};

	if((_ATLPos select 2 ) < 0) exitWith {
		_resultIndex = _i;
	};

};

_result = _ATLPos;

[_result, _resultIndex, _positions];
