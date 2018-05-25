params ["_plane"];
private _list = [];
private _pylonMags = getPylonMagazines _plane;
for "_i" from 0 to ((count _pylonMags) - 1) step 1 do {
  private _index = if(_i < 5) then [{4 - _i},{_i}];
  private _mag = (_pylonMags select _index);
  if(_mag != "") then {
    private _ammoName = (configFile >> "CfgMagazines" >> (_pylonMags select _index) >> "displayNameShort") call BIS_fnc_getCfgData;
    private _weapon = (configFile >> "CfgMagazines" >> (_pylonMags select _index) >> "pylonWeapon") call BIS_fnc_getCfgData;
    _list pushBack [_index + 1, _ammoName, _weapon];
  } else {
    _list pushBack [_index + 1, "STA EMPTY", ""];
  };
};
_list
