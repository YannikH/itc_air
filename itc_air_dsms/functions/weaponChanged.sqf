_plane = vehicle player;
_weapon = currentWeapon _plane;

_profiles = _plane getVariable "profiles";
_profileIndex = (_plane getVariable "profiles") findIf {(_x # 0 # 0) == _weapon};
_profile = _profiles # _profileIndex;

_profile params ["_profileSettings","_releaseSettings","_profileVariables"];
_profileSettings params ["_weapon","_profileName","_ammo","_station","_type"];
_releaseSettings params ["_release_mode","_rip_mode","_rip_qty","_rip_dist"];
_plane setVariable ["profileName", _profileName];
(vehicle player) setVariable ["autolaser",false];
if(_type == "bomb") then {
  itc_air_fcs_ccrpOn = (toLower _release_mode == "ccrp");
  _plane setVariable ["rip_mode", _rip_mode];
  _plane setVariable ["rip_qty", _rip_qty];
  _plane setVariable ["rip_dist", _rip_dist];
  [_profileVariables] call itc_air_dsms_fnc_profileSetLegacyVariables;
};
if(_type == "rocket") then {
  itc_air_fcs_ccrpOn = (toLower _release_mode == "ccrp");
  _plane setVariable ["rip_mode", _rip_mode];
  _plane setVariable ["rip_qty", _rip_qty];
  _plane setVariable ["rip_dist", 1];
};
if(_type == "missile") then {
  _plane setVariable ["rip_mode", 1];
  _plane setVariable ["rip_qty", 1];
  {
    _plane setVariable ["prof_" + (_x # 0), (_x # 1)];
    if(_x # 3 == "stpt") then {
      _plane setVariable ["prof_" + (_x # 0) + "_pos", (_x # 4)];
    };
  }forEach _profileVariables;
};
(uiNameSpace getVariable "ITC_AIR_MFD_L") setVariable ["profileChanged",true];
(uiNameSpace getVariable "ITC_AIR_MFD_R") setVariable ["profileChanged",true];
