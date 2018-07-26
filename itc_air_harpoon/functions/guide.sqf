(_this select 0) params ["_projectile","_lastFrameTime","_settings","_stage","_launchPos","_target","_lastScan"];
_settings params ["","","_search","_destruct","","","","",""];
private _frameTime = time - _lastFrameTime;
(_this select 0) set [1, time];
if(!alive _projectile) exitWith {
  [_this select 1] call CBA_fnc_removePerFrameHandler;
};

private _vel = velocity _projectile;
if(vectorMagnitude _vel > 236) then {
  _projectile setVelocity ((vectorNormalized (_vel)) vectorMultiply 236);
};
private _guidance = _this call itc_air_harpoon_fnc_determineSteeringDirection;
_guidance params ["_xSteer","_ySteer","_stage"];
(_this select 0) set [3, _stage];

private _flightDistance = _projectile distance _launchPos;
if(_flightDistance > _destruct * 1000) exitWith {
  deleteVehicle _projectile;
  [_this select 1] call CBA_fnc_removePerFrameHandler;
};
if(isNil {_target} && {_flightDistance > (_search * 1000) && _stage == "FLT"} && {time - _lastScan > 2}) then {
  player sideChat "seeking";
  (_this select 0) set [6, time];
  _target = _this call itc_air_harpoon_fnc_targetScan;
  (_this select 0) set [5, _target];
};
if(!(isNil {_target}) && {_stage == "FLT"}) then {
  player sideChat "setting stage";
  (_this select 0) set [3, "TERM"];
};
//player sideChat format ["target %1 %2", isNil {_target}, _stage];
_turnRate = 7 * _frameTime;
(_projectile call BIS_fnc_getPitchBank) params ["_pitch", "_bank"];
_projectile setDir (getDir _projectile) + ((_turnRate / 5 * _xSteer) min _turnRate max -_turnRate);
private _pitchDiff = _ySteer - _pitch;
[_projectile, _pitch + ((_turnRate / 5 * _pitchDiff) min _turnRate max -_turnRate), 0] call BIS_fnc_setPitchBank;
