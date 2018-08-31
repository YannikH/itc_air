params ["_step"];
_steps = [0.05,0.2,0.5,1];
_i = _steps find itc_air_tad_fov;
_i = (_i + _step) max 0 min ((count _steps) - 1);
itc_air_tad_fov = (_steps select _i);
