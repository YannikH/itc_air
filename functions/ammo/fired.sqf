params ["_unit", "", "", "", "_ammo", "", "_projectile", "_gunner"];

if (isNull _projectile) then {
    _projectile = nearestObject [_unit, _ammo];
    _this set [6, _projectile];
};

private _gunner = [_unit, _weapon] call CBA_fnc_getFirer select 0;
_this set [7, _gunner];
if(isNull _gunner) then {
    _this set [7, _unit];
};

_config = configFile >> "CfgAmmo" >> _ammo >> "ITC_firedEvent";

if (isText _config) then {
    _this call (missionNamespace getVariable [getText _config, {}]);
};