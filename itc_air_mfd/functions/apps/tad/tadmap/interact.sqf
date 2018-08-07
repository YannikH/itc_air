params ["_display", "_btn"];
#include "..\..\..\mfdDefines.hpp"

switch (_btn) do {
  case "LADJUP": {
    _steps = [0.05,0.2,0.5,1];
    _fov = _display getVariable "tad_fov";
    _i = _steps find _fov;
    _i = (_i - 1) max 0;
    _display setVariable ["tad_fov", _steps select _i];
  };
  case "LADJDN": {
    _steps = [0.05,0.2,0.5,1];
    _fov = _display getVariable "tad_fov";
    _i = _steps find _fov;
    _i = (_i + 1) min (count _steps - 1);
    _display setVariable ["tad_fov", _steps select _i];
  };
  case "L3": {
    ITC_AIR_TAD_HOOKMODE = ITC_AIR_TAD_HOOKMODE + 1;
    if(ITC_AIR_TAD_HOOKMODE == count ITC_AIR_TAD_HOOKMODES) then {
      ITC_AIR_TAD_HOOKMODE = 0;
    };
  };
};


false
