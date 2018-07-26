(_this select 0) params ["_projectile","_frameTime","_settings","_stage","","","_target"];
_settings params ["_flyOut","_terminal","_search","_destruct","_bearing","_fxp","_fxpPos","_hptp","_hptpPos"];
private _flightAlt = [1500, 4500, 10600] select (["LOW","MED","HIGH"] find _flyOut);
private _pitch = [_projectile, _flightAlt] call itc_air_harpoon_fnc_getCruisePitch;

private _bearingToTarget = _bearing - (getDir _projectile);
_bearingToTarget = [_bearingToTarget] call CBA_fnc_simplifyAngle180;
[_bearingToTarget, _pitch, "FLT"]
