if(!isNil{ITC_AIR_SOI_SLEW}) then {
  //ITC_AIR_SOI_SLEW call itc_air_mfd_fnc_soi_input;
  private _funcName = format["itc_air_%1_fnc_slew", ITC_AIR_SOI];
  private _func = (missionNamespace getVariable _funcName);
  if(!isNil {_func}) then {
    //private _mfd = uiNamespace getVariable ((vehicle player) getVariable "SOI");
    [nil, ITC_AIR_SOI_SLEW] call _func;
  };
};
