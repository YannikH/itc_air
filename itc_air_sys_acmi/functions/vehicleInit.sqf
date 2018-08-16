params["_vehicle",["_specialType",""],["_specialName",""]];
if(!(missionNameSpace getVariable ["ITC_AIR_ACMI_INITIALIZED",false])) exitWith {};
if(_vehicle isKindOf "itc_land_shell_b") exitWith {};
ITC_AIR_ACMI_ID_START = ITC_AIR_ACMI_ID_START + 10;
private _id = ITC_AIR_ACMI_ID_START toFixed 0;
_vehicle setVariable ["acmi_id",_id,true];
_vehicle setVariable ["acmi_pos", getPos _vehicle];
_vehicle setVariable ["acmi_registered",true,true];

private _class = "ground";
if(_vehicle isKindOf "Air") then {
  _class = "Air";
  _vehicle setVariable ["acmi_trackShells",true];
};
if(_vehicle isKindOf "Sea" || _vehicle isKindOf "Ship" || _vehicle isKindOf "Boat") then {_class = "Sea"};
private _type = _class;
if(_vehicle isKindOf "StaticWeapon") then {_type = _type + "+Static"};
if(_vehicle isKindOf "Car") then {_type = _type + "+Light"};
if(_vehicle isKindOf "Plane") then {_type = _type + "+FixedWing"};
if(_vehicle isKindOf "Helicopter") then {_type = _type + "+Rotorcraft"};
if(_vehicle isKindOf "Tank") then {_type = _type + "+Armor"};
if(
  (typeOf _vehicle) find "SAM" > -1 ||
  (typeOf _vehicle) find "_AA" > -1
) then {
  _type = _type + "+AntiAircraft";
  _vehicle setVariable ["acmi_trackShells",true];
};
if(_specialType != "") then {_type = _specialType};

private _displayName = getText (configFile >> "CfgVehicles" >> typeOf _vehicle >> "displayName");
if(_specialName != "") then {_displayName = _specialName};
private _side = getNumber (configFile >> "CfgVehicles" >> typeOf _vehicle >> "side");
private _printStr = [_vehicle] call itc_air_acmi_fnc_logPositionString;
private _color = switch (_side) do {
  case 0: {"Red"};
  case 1: {"Blue"};
  case 2: {"Green"};
  case 3: {"Violet"};
  default {"Orange"};
};
private _createStr = format["%1,%2,Name=%3,Color=%4,Type=%5",_id,_printStr,_displayName,_color,_type];
[_createStr, false] call itc_air_acmi_fnc_log;

_vehicle addEventhandler ["killed",(compile format["[""%1"", _this select 0] call itc_air_acmi_fnc_killed;",_id])];
