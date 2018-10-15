private _plane = vehicle player;
private _hasLeft = (_plane getVariable "mfd_l");
private _hasRight = (_plane getVariable "mfd_r");
private _soi = _plane getVariable "SOI";

if(itc_air_soi_provider == "MFD" && _soi == "ITC_AIR_MFD_R") exitWith {//systemChat "NO SOI 1";
  false
};

private _newSOI = if(_soi == "ITC_AIR_MFD_L") then [{"ITC_AIR_MFD_R"},{"ITC_AIR_MFD_L"}];
if(
  (_newSOI == "ITC_AIR_MFD_L" && isNil{uiNameSpace getVariable "ITC_AIR_MFD_L"}) ||
  {((uiNamespace getVariable _newSOI) getVariable "sensor") == ""}
) then {
  _newSOI = "ITC_AIR_MFD_R";
};

if(
  (_newSOI == "ITC_AIR_MFD_R" && isNil{uiNameSpace getVariable "ITC_AIR_MFD_R"}) ||
  {((uiNamespace getVariable _newSOI) getVariable "sensor") == ""}
) exitWith {
  false
};

_mfd = uiNamespace getVariable _newSOI;
private _sensor = _mfd getVariable "sensor";
//systemChat "aslkdfjasdfljladfskfads";
if(isNil{uiNameSpace getVariable [_newSOI,nil]} || isNil {_sensor} || _sensor == "") exitWith {//systemChat "NO SOI 2";
  //systemChat str [_sensor, _newSOI];
  false
};
//systemChat str ["SETTING", _newSOI, _sensor];
_plane setVariable ["SOI",_newSOI];
ITC_AIR_SOI = _sensor;
itc_air_soi_provider = "MFD";
true
