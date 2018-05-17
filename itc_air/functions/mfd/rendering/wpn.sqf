
_plane = vehicle player;
_weapon = (configFile >> "CfgWeapons" >> (currentWeapon _plane) >> "displayName") call BIS_fnc_getCfgData;
_ammo = (configFile >> "CfgMagazines" >> (currentMagazine _plane) >> "ammo") call BIS_fnc_getCfgData;
_ammoCount = _plane ammo (currentWeapon _plane);


_curWP = ["NO WP", [0,0,0]];
if(_hasWP) then {
    _curWP = [_plane getVariable "stpt_name", _plane getVariable "stpt_pos"];
};
_curWP params ["_wpName", "_wpPos"];

_output = ["", "", "", "", "", "", "", "", "", _wpName, _weapon, "", str _ammoCount];
//if the weapon is a canon
if((currentWeapon _plane) isKindOf ["CannonCore", configFile >> "CfgWeapons"]) then {
};

if((currentWeapon _plane) isKindOf ["itc_weap_gbu38", configFile >> "CfgWeapons"]) then {
    _seekers = (configFile >> "CfgAmmo" >> _ammo >> "seekers") call BIS_fnc_getCfgData;
    _output set [0, format["FUZE %1", toUpper ITC_AIR_PROGFUZE]];
    _output set [1, format["IMP %1 deg", ITC_AIR_IMPANGLE]];
    _output set [5, str (_plane getVariable "laser_code_recv")];
    _output set [11, str _seekers];
};

if((currentWeapon _plane) isKindOf ["itc_weap_gbu12", configFile >> "CfgWeapons"]) then {
    _output set [5, str (_plane getVariable "paveway_laser_code")];
};
if((currentWeapon _plane) isKindOf ["ITC_weap_apkws", configFile >> "CfgWeapons"]) then {
    _output set [5, str (_plane getVariable "apkws_laser_code")];
};
if((currentWeapon _plane) isKindOf ["Mk82BombLauncher", configFile >> "CfgWeapons"]) then {
    _output set [6, format["%1",(_plane getVariable "rip_mode")]];
    _output set [7, format["QTY %1",(_plane getVariable "rip_qty")]];
    _output set [8, format["%1 M",(_plane getVariable "rip_dist")]];
    _output set [9, format["CYC %1",if(_plane getVariable "rip_cycle")then[{"ON"},{"OFF"}]]];
};
_output
