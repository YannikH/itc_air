params ["_display", "_btn"];
#include "..\..\..\mfdDefines.hpp"

switch (_btn) do {
  case "L2": {
    itc_air_tad_map_on = !itc_air_tad_map_on;
    (_display displayCtrl 2200) ctrlShow !itc_air_tad_map_on;
  };
  case "LADJUP": {
    [-1] call itc_air_tad_fnc_zoom;
  };
  case "LADJDN": {
    [1] call itc_air_tad_fnc_zoom;
  };
  case "L3": {
    ITC_AIR_TAD_HOOKMODE = ITC_AIR_TAD_HOOKMODE + 1;
    if(ITC_AIR_TAD_HOOKMODE == count ITC_AIR_TAD_HOOKMODES) then {
      ITC_AIR_TAD_HOOKMODE = 0;
    };
  };
  case "L4": {
    _target = [] call itc_air_tad_fnc_cursorPos;
    [_target] call itc_air_wpt_fnc_generate;
  };
};


false
