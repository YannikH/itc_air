(_this select 0) params ["_projectile","_lastFrameTime","_settings","_stage","_launchPos","_target","_lastScan"];
_settings params ["_flyOut","_terminal","_search","_destruct","_bearing","_fxp","_fxpPos","_hptp","_hptpPos"];
private _pitch = [_projectile, 50] call itc_air_harpoon_fnc_getCruisePitch;
//player sideChat str _pitch;
private _bearingToTarget = _projectile getRelDir _target;
_bearingToTarget = [_bearingToTarget] call CBA_fnc_simplifyAngle180;
if((abs _bearingToTarget) > 90) exitWith {
  [0, _pitch, "FLT"]
};
private _distance = _projectile distance2D _target;
if(_distance < 3500 && _terminal == "POP") then {
  _pitch = 45;
};
if((_distance < 2500 && _terminal == "POP") || _distance < 1000) then {
  private _targetPos = (getPosASL _target);
  private _targetVect = (getPosASL _projectile) vectorFromTo (_targetPos vectorAdd [0,0,10]);
  private _polar = _targetVect call CBA_fnc_vect2Polar;
  _pitch = _polar # 2;
};
[_bearingToTarget, _pitch, "TERM"]
