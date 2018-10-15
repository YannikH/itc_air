params ["", "", "", "", "_ammo", "", "_projectile", "_gunner"];
if (!local _gunner) exitWith {};

private _position = getPos _gunner;

[{
    (_this select 0) params ["_projectile", "_position"];
    if (!alive _projectile) exitWith {
      [_this select 1] call CBA_fnc_removePerFrameHandler;
    };
    if ((_projectile distance _position) > 3000) then {
      "itc_ammo_m257_helper" createVehicle (getPos _projectile);
      deleteVehicle _projectile;
      //"SmokeShellArty" createVehicle _position;
      [_this select 1] call CBA_fnc_removePerFrameHandler;
    };
}, 0.1, [_projectile, _position]] call CBA_fnc_addPerFrameHandler;
