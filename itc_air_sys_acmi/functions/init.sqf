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
