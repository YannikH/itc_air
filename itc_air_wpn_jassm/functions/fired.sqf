params ["", "", "", "", "_ammo", "", "_projectile", "_gunner"];
if (!local _gunner) exitWith {};
(vehicle player) setVariable ["bomb_flying", _projectile];
_this call itc_air_wpn_jassm_fnc_guide;
_this call itc_air_jdam_fnc_fuzing;
