params ["_unit", "_weapon", "", "", "_ammo", "_magazine", "_projectile", "_gunner"];
if(!ITC_AIR_ACMI_ON) exitWith {};
if((_unit getVariable ["itc_air_acmi_lastFired",0]) + 1 > CBA_missionTime) exitWith {};
_unit setVariable ["itc_air_acmi_lastFired",CBA_missionTime];
private _displayName = getText (configFile >> "CfgMagazines" >> _magazine >> "displayNameShort");
ITC_AIR_ACMI_ID_START = ITC_AIR_ACMI_ID_START + 10;
private _id = ITC_AIR_ACMI_ID_START toFixed 0;

systemChat "fired";

//_projectile addEventhandler ["killed",(compile format["[""%1"", _this select 0] call itc_air_acmi_fnc_killed;",_id])];
private _printStr = [_projectile] call itc_air_acmi_fnc_logPositionStringSimple;
private _createStr = format["%1,%2,Type=Projectile+Shell",_id,_printStr];
[_createStr, true] call itc_air_acmi_fnc_log;

[_projectile,_id] spawn {
  params["_projectile","_id"];
  sleep 1;
  if(alive _projectile && !isNil{_projectile}) then {
    private _printStr = [_projectile] call itc_air_acmi_fnc_logPositionStringSimple;
    private _createStr = format["%1,%2",_id,_printStr];
    [_createStr, true] call itc_air_acmi_fnc_log;
  };
  [["-",_id] joinString "", true] call itc_air_acmi_fnc_log;
};
