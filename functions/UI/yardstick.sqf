/*
 * Draws yardstick
 * params: distance to pod target
 */
params["_distToTarget"];

_fovRad = call cba_fnc_getFov select 0;
_fovDeg = _fovRad * 180 / pi;
_ydStick = (tan(_fovDeg / 2) * _distToTarget) / 8.37931034;
if(_fovDeg > 10) then {
    _ydStick = (tan(_fovDeg / 2) * _distToTarget) / 16.2;
};

[format["<t color='#ffffff' size = '1'>%1 M</t>",round _ydStick],0.6,0.485,1,0,0, 792] spawn BIS_fnc_dynamicText;