params ["_plane"];
private ["_functName","_func"];
if(!isNil{ITC_AIR_SOI_SLEW}) then {
  //ITC_AIR_SOI_SLEW call itc_air_mfd_fnc_soi_input;
  _funcName = format["itc_air_%1_fnc_slew", ITC_AIR_SOI];
  _func = (missionNamespace getVariable _funcName);
  if(!isNil {_func}) then {
    //private _mfd = uiNamespace getVariable ((vehicle player) getVariable "SOI");
    [nil, ITC_AIR_SOI_SLEW] call _func;
  };
};

_funcName = format["itc_air_%1_fnc_spi", ITC_AIR_SOI];
_func = (missionNamespace getVariable _funcName);
private _spi = nil;
if(!isNil {_func}) then {
  _spi = [_plane] call _func;
};
if(itc_air_wpt_changed) then {
  itc_air_wpt_changed = false;
  _spi = itc_air_wpt_pos;
};
if(!isNil{_spi}) then {
  if(ITC_AIR_SOI != "tgp") then {
    _plane setPilotCameraTarget _spi;
  };
  if(ITC_AIR_SOI != "maverick") then {
    ITC_AIR_MAVERICK_GSTAB = true;
    ITC_AIR_MAVERICK_TRACK = ASLtoAGL _spi;
  };
  itc_air_spi = _spi;
};
