itc_air_fcs_releaseKeyDown = true;
itc_air_ccrp_PickleRelease = false;

if(!itc_air_fcs_ccrpOn) then {
  private _vehicle = vehicle player;
  private _currentWeapon = currentWeapon _vehicle;
  private _mode = (getArray (configFile >> "cfgweapons" >> _currentWeapon >> "modes")) select 0;
  if (isNil {_mode} || {_mode == "this"}) then {_mode = _currentWeapon;};
  player forceWeaponFire [_currentWeapon,_mode];
};
