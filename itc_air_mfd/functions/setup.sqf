params ["_vehicle"];

private _mfdApps = (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "itc_air" >> "mfdApps") call BIS_fnc_getCfgData;
_vehicle setVariable ["itc_air_mfd_apps", _mfdApps];
