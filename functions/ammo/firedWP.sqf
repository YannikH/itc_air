params ["", "", "", "", "_ammo", "", "_projectile", "_gunner"];

if (!local _gunner) exitWith {};
[{
    (_this select 0) params ["_gunner", "_projectile", "_distance", "_ammo", "_position", "_targetIndex"];
    if (alive _projectile) then {
        _position = getPosATL _projectile;
        (_this select 0) set [4, _position];
    };
    if (!alive _projectile) then {
        "rhs_ammo_3d17_shell" createVehicle _position;
        //"SmokeShellArty" createVehicle _position;
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };
}, 0, [_gunner, _projectile, _distance, _ammo, getPosATL _projectile, _targetIndex]] call CBA_fnc_addPerFrameHandler;