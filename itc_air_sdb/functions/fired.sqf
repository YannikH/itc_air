params ["", "", "", "", "_ammo", "", "_projectile", "_gunner"];
player sideChat "release";
if (!local _gunner) exitWith {};
(vehicle player) setVariable ["bomb_flying", _projectile];
_this call itc_air_sdb_fnc_guide;
_this call itc_air_jdam_fnc_fuzing;
