params ["_display", "_btn"];
#include "..\..\..\mfdDefines.hpp"
_vehicle = vehicle player;
switch (_btn) do {
  case "R1": {
    [_display getVariable "displayVariable", "pos", false] call itc_air_ufc_fnc_prepareInput;
  };
  case "R2": {
    [_display getVariable "displayVariable", "elev", true] call itc_air_ufc_fnc_prepareInput;
  };
  case "R3": {
    [-1] call itc_air_wpt_fnc_reorder;
  };
  case "R4": {
    [1] call itc_air_wpt_fnc_reorder;
  };
  case "L3": {
    [] call itc_air_wpt_fnc_import;
  };
  case "L4": {
    [] call itc_air_wpt_fnc_delete;
  };
  case "L5": {
    [[0,0,0],"MISSION"] call itc_air_wpt_fnc_generate;
  };
  case "R5": {
    itc_air_wpt_flt_plan pushBack ([] call itc_air_wpt_fnc_getCurrent);
  };
  case "UFC": {
    params ["_display", "_btn", "_variable", "_value"];
    _curPos = ([false] call itc_air_wpt_fnc_getCurrent) # 2;
    switch(_variable) do {
      case "pos": {
        _pos = [_value, false] call ace_common_fnc_getMapPosFromGrid;
        _pos set [2, _curPos # 2];
        [nil, _pos] call itc_air_wpt_fnc_update;
      };
      case "elev": {
        _curPos set [2, _value];
        [nil, _curPos] call itc_air_wpt_fnc_update;
      };
    };
  };
};
false
