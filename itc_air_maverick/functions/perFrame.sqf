params ["_vehicle"];
if(currentWeapon (vehicle player) == "itc_air_weapon_maverick_e") then {
  _this call itc_air_maverick_fnc_laserScan;
};
