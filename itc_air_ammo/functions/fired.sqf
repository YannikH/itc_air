params ["_unit", "_weapon", "", "", "_ammo", "", "_projectile", "_gunner"];

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

_cursorAim = (configFile >> "CfgWeapons" >> _weapon >> "cursorAim") call BIS_fnc_getCfgData;
if(_cursorAim == "bomb" || _cursorAim == "rocket") then {
  //player sideChat str format["%1 %2", itc_air_ripple_active, itc_air_ripple_dropcount];
  if(!itc_air_ripple_active && itc_air_ripple_dropcount <= 0) then {
    _this call itc_air_ammo_fnc_ripple;
  };
  itc_air_ripple_dropcount = itc_air_ripple_dropcount - 1;
  if((vehicle player) ammo (currentWeapon (vehicle player)) == 0) then {
    itc_air_ripple_dropcount = 0;
  };
};
