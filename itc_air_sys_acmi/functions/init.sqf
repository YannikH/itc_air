_map = worldName;
private _mapArea = getArray (configFile >> "CfgWorlds" >> _map >> "mapArea");
_mapArea params ["_long","_lat"];
private _altitude =  getNumber (configFile >> "CfgWorlds" >> _map >> "elevationOffset");
private _zone =  getNumber (configFile >> "CfgWorlds" >> _map >> "mapZone");

private _mapData = _map call ace_common_fnc_getMapData;
if (!(_mapData isEqualTo [])) then {
    _altitude = _mapData select 1;
};

private _utm = [_long, _lat] call BIS_fnc_posDegToUTM;

ITC_AIR_ACMI_MAP_UTM = _utm;
ITC_AIR_ACMI_MAP_LATLONG = [_lat,_long];
ITC_AIR_ACMI_MAP_ALT = _altitude;
ITC_AIR_ACMI_ID_START = 3000100;

ITC_AIR_ACMI_ID = ITC_AIR_ACMI_ID_START;
ITC_AIR_ACMI_ID_START = ITC_AIR_ACMI_ID_START + 1;
private _recId = profileNamespace getVariable ["ITC_AIR_ACMI_REC_ID",0];
ITC_AIR_ACMI_FILENAME = format["ACMI_%1_%2_%3.acmi",profileName,_recId,missionName];
profileNamespace setVariable ["ITC_AIR_ACMI_REC_ID",_recId + 1];
"itc_acmi" callExtension ["init",[ITC_AIR_ACMI_FILENAME]];
"itc_acmi" callExtension ["log",[ITC_AIR_ACMI_FILENAME,"#" + str CBA_missionTime]];
private _date = date;
{
  if(_x < 10) then {
    _date set[_forEachIndex, "0" + (str _x)];
  };
}forEach _date;
private _refTime = format(["0,ReferenceTime=%1-%2-%3T%4:%5:00Z"] + _date);
"itc_acmi" callExtension ["log",[ITC_AIR_ACMI_FILENAME,"0,DataSource=Arma3,DataRecorder=ITC Air Systems"]];
"itc_acmi" callExtension ["log",[ITC_AIR_ACMI_FILENAME,"0,Author="+profilename]];
if(missionName != "") then {
  "itc_acmi" callExtension ["log",[ITC_AIR_ACMI_FILENAME,"0,Title="+missionName]];
};
"itc_acmi" callExtension ["log",[ITC_AIR_ACMI_FILENAME,_refTime]];
ITC_AIR_ACMI_INITIALIZED = true;
