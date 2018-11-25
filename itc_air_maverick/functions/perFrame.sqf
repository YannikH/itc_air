params ["_vehicle"];
if(currentWeapon _vehicle == "itc_air_weapon_maverick_e" && {_vehicle ammo(currentWeapon _vehicle) > 0}) then {
  _this call itc_air_maverick_fnc_laserScan;
};
