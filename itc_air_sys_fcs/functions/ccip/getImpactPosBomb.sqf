private ["_velocityVec","_pos","_airFriction","_initialVelocity","_gravity","_thrust","_thrustTTL","_mass"];
debugVel = [];

//All of this is calculated in relation to the firer ASL pos
_velocityVec 		= _this select 0;
_pos 				= _this select 1;
_airFriction 		= _this select 2;
_sideAirFriction 	= _this select 3;
_initialVelocity 	= _this select 4;
_timeToLive  		= _this select 5;
_thrust 			= _this select 6;
_thrustTTL 			= _this select 7;
_mass 				= _this select 8;

_gravity = 9.80665;

private ["_posX","_posY","_posZ","_totalVelocityX","_totalVelocityY","_totalVelocityZ","_Vmag","_elapsedTime"];

_acceleration = [0,0,0];

//projectile velocity in meters per second
_totalVelocity = _velocityVec vectorAdd _initialVelocity;


private ["_result","_altPos","_positions","_vectorM","_time"];

_positions = [];
_positions = [_positions,  _pos] call BIS_fnc_arrayPush;

_minResolution = 0.01;
_maxResolution = 0.20;
_maxIterations = 512;

_result = _pos;

_resultIndex = -1;

_dt = _minResolution;
_elapsedTime = 0;
_velocity = _totalVelocity;
_vx = _totalVelocityX;              // v begin with initial velocity
_vy = _totalVelocityY;              // y begin with initial position
_vz = _totalVelocityZ;

_posX = _pos select 0;
_posY = _pos select 1;
_posZ = _pos select 2;

_ATLPos = [0,0,0];

private "_startTime";
_startTime = diag_tickTime;

for "_i" from 1 to _maxIterations do {
	_dt = (_i^-0.1)/8 max _minResolution;
	_elapsedTime = _elapsedTime + _dt;
	_a = [0,0,0];

	if(_elapsedTime < _thrustTTL) then {
		_a = _a vectorAdd _accelerationV;
	};

	//http://physics.gmu.edu/~amin/phys251/Topics/NumAnalysis/Odes/projectileMotion.html
	_Vmagnitude = sqrt vectorMagnitude _velocity;
	//0.6 is just a magic number to reduce error in the calculation, todo
	_Vmagnitude = 0.6 * _Vmagnitude*-_airFriction;
	_Fdrag = _velocity vectorMultiply _Vmagnitude;

	//determine the velocity: v  ←  v + Δv = v + a*Δt
	_deltaV = _Fdrag vectorMultiply (1/_mass);
	_deltaV = _a vectorAdd _deltaV;
	_deltaV = _deltaV vectorAdd  [0,0,-_gravity/2];
	_deltaV = _deltaV vectorMultiply _dt;
	_velocity = _velocity vectorAdd _deltaV;

	//determine the position: pos  ←  pos + Δpos = pos + v*Δt
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
[_result, _resultIndex, _positions,_elapsedTime];
