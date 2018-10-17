params ["_vehicle"];

itc_air_soi_providers pushBack "MFD";

private _mfdApps = (itc_air_seat_config >> "mfdApps") call BIS_fnc_getCfgData;
_vehicle setVariable ["itc_air_mfd_apps", _mfdApps];

private _mfdType = getText (itc_air_seat_config >> "mfdType");
switch(_mfdType) do {
  case "classic": {
    _vehicle setVariable ["mfdButtons","ITC_AIR_MFDButtons"];
  };
  case "touch": {
    _vehicle setVariable ["mfdButtons","ITC_AIR_MFDSTLButtons"];
  };
};
_vehicle setVariable ["mfdType", _mfdType];
