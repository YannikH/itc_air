
_plane = vehicle player;
_weapon = (configFile >> "CfgWeapons" >> (currentWeapon _plane) >> "displayName") call BIS_fnc_getCfgData;
_ammo = (configFile >> "CfgMagazines" >> (currentMagazine _plane) >> "ammo") call BIS_fnc_getCfgData;
_ammoCount = _plane ammo (currentWeapon _plane);

_waypoints = [] call ace_microdagr_fnc_deviceGetWaypoints;
_hasWP = (count _waypoints > 0);

_curWP = ["NO WP", [0,0,0]];
if(_hasWP) then {
    _curWP = _waypoints select ITC_AIR_CURRENTWP;
};
_curWP params ["_wpName", "_wpPos"];

_output = ["", "", "", "", "", "1111", "", "", "", _wpName, _weapon, "", str _ammoCount,"SWAP","TAD","WPN","SMS",""];
//if the weapon is a canon
if((currentWeapon _plane) isKindOf ["CannonCore", configFile >> "CfgWeapons"]) then {
};

if((currentWeapon _plane) isKindOf ["itc_weap_gbu38", configFile >> "CfgWeapons"]) then {
    _seekers = (configFile >> "CfgAmmo" >> _ammo >> "seekers") call BIS_fnc_getCfgData;
    _output set [0, format["FUZE %1", toUpper ITC_AIR_PROGFUZE]];
    _output set [1, format["IMP %1 deg", ITC_AIR_IMPANGLE]];
    _output set [5, str ITC_AIR_LASERCODE];
    _output set [11, str _seekers];
};
_output