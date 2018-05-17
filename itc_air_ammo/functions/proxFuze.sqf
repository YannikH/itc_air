params ["", "", "", "", "_ammo", "", "_projectile", "_gunner"];

if (!local _gunner) exitWith {};
private _distance = currentZeroing _gunner + random [-5, 0, 5];
[{
    (_this select 0) params ["_gunner", "_projectile", "_distance", "_ammo", "_position"];

    if (alive _projectile) then {
        _position = getPosATL _projectile;
        (_this select 0) set [4, _position];
    };

    if (!alive _projectile || ((getPosATL _projectile select 2) < 6)) then {
        private _type = getText (configFile >> "CfgAmmo" >> _ammo >> "ITC_subMunition");
        _velocity = velocity _projectile;
        _dir = direction _projectile;
        deleteVehicle _projectile;

        private _canister = createVehicle [_type, _position, [], 0, "FLY"];
        _canister setPosATL _position;
        _canister setDir _dir;
        _canister setVelocity _velocity;
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };
}, 0, [_gunner, _projectile, _distance, _ammo, getPosATL _projectile]] call CBA_fnc_addPerFrameHandler;