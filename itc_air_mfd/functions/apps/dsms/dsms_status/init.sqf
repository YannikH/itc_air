params ["_display"];
(_display displayCtrl 10100) ctrlShow true;
#include "..\..\..\mfdDefines.hpp"
#include "..\dsmsMacros.hpp"
_plane = vehicle player;

//(_display displayCtrl T1) ctrlSetText "";
(_display displayCtrl T2) ctrlSetText "PROF";
(_display displayCtrl T3) ctrlSetText "GUN";
(_display displayCtrl T4) ctrlSetText "INV";
//(_display displayCtrl T5) ctrlSetText "";

_inventory = _plane getVariable "inventory";
for "_i" from 0 to (((count _inventory) - 1) min 9) step 1 do {
  _hardpoint = _inventory # _i;
  _count = _plane ammoOnPylon (_hardpoint # 0);
  (_display displayCtrl (11000 + _i)) ctrlSetText str (_count max 0);
  (_display displayCtrl (11010 + _i)) ctrlSetText (_hardpoint # 1);
  _color = if(_curWpn == _hardpoint # 2) then [{[0,0,0,1]},{[0,1,0,1]}];
  _backgroundColor = if(_curWpn == _hardpoint # 2) then [{[0,1,0,1]},{[0,0,0,1]}];
  (_display displayCtrl (11010 + _i)) ctrlSetTextColor _color;
  (_display displayCtrl (11010 + _i)) ctrlSetBackgroundColor _backgroundColor;
  (_display displayCtrl (11000 + _i)) ctrlSetTextColor _color;
  (_display displayCtrl (11000 + _i)) ctrlSetBackgroundColor _backgroundColor;
};

_profileName = _plane getVariable "profileName";
if(isNil {_profileName} || _profileName == "") exitWith {};
PROFILELOAD(_profileName);

_wpnName = (configFile >> "CfgMagazines" >> _curMag >> "displayNameShort") call BIS_fnc_getCfgData;
_cursorAim = (configFile >> "CfgWeapons" >> currentWeapon _plane >> "cursorAim") call BIS_fnc_getCfgData;

(_display displayCtrl 11020) ctrlSetText "";
(_display displayCtrl 11022) ctrlSetText "";
(_display displayCtrl 11023) ctrlSetText "";
(_display displayCtrl 11024) ctrlSetText "";
switch(_cursorAim) do {
  case "bomb": {
    (_display displayCtrl 11020) ctrlSetText "CCIP";

    (_display displayCtrl 11022) ctrlSetText (_plane getVariable "rip_mode");
    (_display displayCtrl 11023) ctrlSetText format["QTY %1", (_plane getVariable "rip_qty")];
    (_display displayCtrl 11024) ctrlSetText format["%1 M", (_plane getVariable "rip_dist")];
  };
  case "mg": {
    _wpnName = (configFile >> "CfgWeapons" >> currentWeapon _plane >> "displayName") call BIS_fnc_getCfgData;
    (_display displayCtrl 11022) ctrlSetText format["%1 RNDS",(_plane ammo (currentWeapon _plane))];
  };
  case "rocket": {
      (_display displayCtrl 11022) ctrlSetText (_plane getVariable "rip_mode");
      (_display displayCtrl 11023) ctrlSetText format["QTY %1", (_plane getVariable "rip_qty")];
  };
  case "missile": {

  };
};
(_display displayCtrl 11021) ctrlSetText _wpnName;
