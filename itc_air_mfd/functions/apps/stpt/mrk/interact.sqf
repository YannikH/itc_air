params ["_display", "_btn"];
#include "..\..\..\mfdDefines.hpp"
switch (_btn) do {
  case "L4": {
    private _mark = itc_air_wpt_markpoints # itc_air_wpt_markpoints_sel;
    private _name = format ["MRK %1 %2", _mark # 0, _mark # 1];
    [_mark # 2, "MISSION", _name] call itc_air_wpt_fnc_generate;
  };
};
false
