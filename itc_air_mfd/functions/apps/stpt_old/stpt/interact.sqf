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
  case "L1": {
    [-1] remoteExec ["itc_air_steerpoints_fnc_cycle", (crew _vehicle), false];
  };
  case "L2": {
    [1] remoteExec ["itc_air_steerpoints_fnc_cycle", (crew _vehicle), false];
  };
  case "L4": {
    _curWPIndex = _vehicle getVariable "stpt_index";
    [_curWPIndex] remoteExec ["itc_air_steerpoints_fnc_delete", (crew _vehicle), false];
    [0] remoteExec ["itc_air_steerpoints_fnc_cycle", (crew _vehicle), false];
  };
  case "L5": {
    [[0,0,0]] call itc_air_steerpoints_fnc_store;
  };
  case "UFC": {
    params ["_display", "_btn", "_variable", "_value"];
    _curWPIndex = _vehicle getVariable "stpt_index";
    _curPos = _vehicle getVariable "stpt_pos";
    switch(_variable) do {
      case "pos": {
        _pos = [_value, false] call ace_common_fnc_getMapPosFromGrid;
        _pos set [2, _curPos # 2];
        _vehicle setVariable ["stpt_pos", _pos];
        [_vehicle, _curWPIndex, [_vehicle getVariable "stpt_name", _pos]] remoteExec ["itc_air_steerpoints_fnc_update", (crew _vehicle), false];
      };
      case "elev": {
        _curPos set [2, _value];
        _vehicle setVariable ["stpt_pos", _curPos];
        [_vehicle, _curWPIndex, [_vehicle getVariable "stpt_name", _curPos]] remoteExec ["itc_air_steerpoints_fnc_update", (crew _vehicle), false];
      };
    };
  };
};
false
