params ["_vehicle"];
_fovSteps = [_vehicle] call itc_air_common_fnc_get_fov_steps;
_vehicle setVariable ["tgp_dir", [true, [0,0,0]]];
_vehicle setVariable ["tgp_fov", (24 / 120)];
_vehicle setVariable ["tgp_fov_index", 0];
_vehicle setVariable ["tgp_fov_steps", _fovSteps];
_vehicle setVariable ["tgp_mode", 0];
itc_air_tgp_capable = true;
