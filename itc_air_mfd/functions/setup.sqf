params ["_vehicle"];

private _mfdApps = (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "itc_air" >> "mfdApps") call BIS_fnc_getCfgData;
_vehicle setVariable ["itc_air_mfd_apps", _mfdApps];

private _mfdType = getText (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "itc_air" >> "mfdType");
switch(_mfdType) do {
  case "classic": {
    _vehicle setVariable ["mfdButtons","ITC_AIR_MFDButtons"];
  };
  case "touch": {
    _vehicle setVariable ["mfdButtons","ITC_AIR_MFDSTLButtons"];
  };
};
_vehicle setVariable ["mfdType", _mfdType];
