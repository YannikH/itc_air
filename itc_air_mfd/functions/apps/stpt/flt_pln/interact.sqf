params ["_display", "_btn"];
#include "..\..\..\mfdDefines.hpp"
_vehicle = vehicle player;
switch (_btn) do {
  case "R3": {
    [-1] call itc_air_wpt_fnc_reorder;
  };
  case "R4": {
    [1] call itc_air_wpt_fnc_reorder;
  };
  case "L4": {
    [] call itc_air_wpt_fnc_delete;
  };
};
false
