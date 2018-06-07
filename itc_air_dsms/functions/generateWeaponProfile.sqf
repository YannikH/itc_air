params ["_magazine"];
_weapon = (configFile >> "CfgMagazines" >> _x >> "pylonWeapon") call BIS_fnc_getCfgData;
if(isNil {_weapon}) exitWith {};
_profile = [[_weapon,-1],["CCIP","SGL","1","50M"]];
_cursorAim = (configFile >> "CfgWeapons" >> _weapon >> "cursorAim") call BIS_fnc_getCfgData;
_cursorAim = if(_weapon isKindOf ["CMFlareLauncher", configFile >> "CfgWeapons"]) then [{"flare"},{_cursorAim}];
_ammoName = (configFile >> "CfgMagazines" >> _x >> "displayNameShort") call BIS_fnc_getCfgData;
_ammoType = (configFile >> "CfgMagazines" >> _x >> "ammo") call BIS_fnc_getCfgData;
switch(_cursorAim) do {
  case "bomb": {
    _options = [_ammoType] call itc_air_ammo_fnc_getAmmoProfileOptions;
    _profile = [
      [_weapon,_ammoName, _ammoName,-1,_cursorAim,true],
      ["CCIP","SGL",1,50],
      _options
    ];
  };
  case "rocket": {
    _profile = [
      [_weapon,_ammoName, _ammoName,-1,_cursorAim,true],
      ["","SGL",1,0]
    ];
  };
  case "missile": {
    if(_ammoType == "itc_ammo_agm84") then {
      _options = [_ammoType] call itc_air_ammo_fnc_getAmmoProfileOptions;
      _profile = [
        [_weapon,_ammoName, _ammoName,-1,_cursorAim,true],
        ["CCIP","SGL",1,50],
        _options
      ];
    } else {
      _profile = [[_weapon,_ammoName, _ammoName,-1,_cursorAim,false],[]];
    };
  };
  default {
    _profile = [[_weapon,_ammoName, _ammoName,-1,_cursorAim,false],[]];
  };
};
_profile
