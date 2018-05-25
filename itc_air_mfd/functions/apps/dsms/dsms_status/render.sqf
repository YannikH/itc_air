params ["_display"];

_plane = vehicle player;
_pylonMags = getPylonMagazines _plane;
_curMag = currentMagazine _plane;
/*
for "_i" from 0 to (count _pylonMags) step 1 do {
  if(_pylonMags select _i != "") then {
      if(_pylonMags select _i != "") then {
        _count = _plane ammoOnPylon (_i + 1);
        (_display displayCtrl (11000 + _i)) ctrlSetText str _count;
      };
      _color = if(_pylonMags # _i == _curMag) then [{[0,0,0,1]},{[0,1,0,1]}];
      _backgroundColor = if(_pylonMags # _i == _curMag) then [{[0,1,0,1]},{[0,0,0,1]}];
      (_display displayCtrl (11010 + _i)) ctrlSetTextColor _color;
      (_display displayCtrl (11010 + _i)) ctrlSetBackgroundColor _backgroundColor;
      (_display displayCtrl (11000 + _i)) ctrlSetTextColor _color;
      (_display displayCtrl (11000 + _i)) ctrlSetBackgroundColor _backgroundColor;
  };
};
*/
_inventory = _plane getVariable "inventory";
_curWpn = currentWeapon _plane;
for "_i" from 0 to (((count _inventory) - 1) min 9) step 1 do {
  _hardpoint = _inventory # _i;
  _count = _plane ammoOnPylon (_hardpoint # 0);
  (_display displayCtrl (11000 + _i)) ctrlSetText str (_count max 0);
};

if(_display getVariable "profileChanged") then {
  [_display] call (_display getVariable "pageInit");
  _display setVariable ["profileChanged", false];
};

_cursorAim = (configFile >> "CfgWeapons" >> currentWeapon _plane >> "cursorAim") call BIS_fnc_getCfgData;
if(_cursorAim == "mg") then {
  (_display displayCtrl 11022) ctrlSetText format["%1 RNDS",(_plane ammo (currentWeapon _plane))];
};
/*
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
*/
