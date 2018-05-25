params ["_plane"];
_existingAmmoProfiles = [];
_existingWeaponProfiles = [];
_profiles = [];
{
  if(_x != "") then {
    _ammo = (configFile >> "CfgMagazines" >> _x >> "ammo") call BIS_fnc_getCfgData;
    if(!(_ammo in _existingAmmoProfiles)) then {
      _existingAmmoProfiles pushBack _ammo;
      _existingWeaponProfiles pushBack ((configFile >> "CfgMagazines" >> _x >> "pylonWeapon") call BIS_fnc_getCfgData);
      _profiles pushBack ([_x] call itc_air_dsms_fnc_generateWeaponProfile);
    };
  };
}forEach (magazines _plane);
{
  if(!(_x in _existingWeaponProfiles)) then {
    _weaponName = (configFile >> "CfgWeapons" >> _x >> "displayName") call BIS_fnc_getCfgData;
    _cursorAim = (configFile >> "CfgWeapons" >> _x >> "cursorAim") call BIS_fnc_getCfgData;
    _index = _profiles pushBack [[_x,_weaponName, "",-1,_cursorAim,false],[]];
    if(_cursorAim == "mg" && isNil{_plane getVariable "gunProfile"}) then {
      _plane setVariable ["gunProfile",_index];
    };
  };
}forEach (weapons _plane);
_profiles
