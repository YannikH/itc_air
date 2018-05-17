params ["", "", "", "", "_ammo", "", "_projectile", "_gunner"];
if (!local _gunner) exitWith {};
_this call itc_air_jdam_fnc_guidance;
_this call itc_air_jdam_fnc_fuzing;

(vehicle player) setVariable ["bomb_flying", _projectile];
