params ["_display"];
#include "..\..\mfdDefines.hpp"

if(currentWeapon (vehicle player) == "itc_air_weapon_maverick_e") exitWith {
  "lmav"
};
if(currentWeapon (vehicle player) == "itc_air_weapon_maverick_h") exitWith {
  _display setVariable ["sensor","maverick"];
  "ccdmav"
};
"mavoff"
