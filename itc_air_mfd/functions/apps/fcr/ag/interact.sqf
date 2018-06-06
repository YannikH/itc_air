params ["_display", "_btn"];
#include "..\..\..\mfdDefines.hpp"
switch(_btn) do {
  case "L1": {
    ITC_AIR_FCR_RNG = (ITC_AIR_FCR_RNG + 1000) min 30000;
  };
  case "L2": {
    ITC_AIR_FCR_RNG = (ITC_AIR_FCR_RNG - 1000) max 1000;
  };
  case "T4": {
    ITC_AIR_FCR_SNOWPLOW = !ITC_AIR_FCR_SNOWPLOW;
  };
  case "T5": {
    ITC_AIR_FCR_FREEZE = !ITC_AIR_FCR_FREEZE;
    if(ITC_AIR_FCR_FREEZE) then {
      ITC_AIR_FCR_FREEZE_POS = getPosASL (vehicle player);
      ITC_AIR_FCR_FREEZE_DIR = getDir (vehicle player);
      ITC_AIR_FCR_FREEZE_RNG = ITC_AIR_FCR_RNG;
    };
  };
  case "R2": {
    private _index = [10, 30, 60, 10] findIf {_x == ITC_AIR_FCR_SCANRNG};
    ITC_AIR_FCR_SCANRNG = [10, 30, 60, 10] # (_index + 1);
  };
};
false
