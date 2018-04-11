params ["_namespace","_btn"];
_plane = vehicle player;
switch (_btn) do {
    case "L1": {
      [_namespace,_namespace, "stpt_name", "STPT NAME", [false, {_this != ""}], false] call itc_air_mfd_fnc_input_start;
    };
    case "L2": {
      [_namespace,_namespace, "stpt_pos_str", "STPT POS", [false, {_this != ""}], false] call itc_air_mfd_fnc_input_start;
    };
    case "L3": {
      [_namespace,_namespace, "stpt_el", "STPT POS", [true, {_this > 0}], false] call itc_air_mfd_fnc_input_start;
    };
    case "L4": {
      _curWPIndex = _plane getVariable "stpt_index";
      if(_curWPIndex == 0) exitWith {}; //already the first WP
      _wpList = _plane getVariable "stpt_list";
      _prevWP = _wpList select (_curWPIndex - 1);
      [_plane, _curWPIndex - 1, _wpList select _curWPIndex] remoteExec ["itc_air_steerpoints_fnc_update", (crew _plane), false];
      [_plane, _curWPIndex, _prevWP] remoteExec ["itc_air_steerpoints_fnc_update", (crew _plane), false];
      [-1] remoteExec ["itc_air_steerpoints_fnc_cycle", (crew _plane), false];
    };
    case "L5": {
      _curWPIndex = _plane getVariable "stpt_index";
      _wpList = _plane getVariable "stpt_list";
      if(_curWPIndex == (count _wpList) - 1) exitWith {}; //already the last WP
      _nextWP = _wpList select (_curWPIndex + 1);
      [_plane, _curWPIndex + 1, _wpList select _curWPIndex] remoteExec ["itc_air_steerpoints_fnc_update", (crew _plane), false];
      [_plane, _curWPIndex, _nextWP] remoteExec ["itc_air_steerpoints_fnc_update", (crew _plane), false];
      [1] remoteExec ["itc_air_steerpoints_fnc_cycle", (crew _plane), false];
    };
    case "R1": {
      [-1] remoteExec ["itc_air_steerpoints_fnc_cycle", (crew _plane), false];
    };
    case "R2": {
      [1] remoteExec ["itc_air_steerpoints_fnc_cycle", (crew _plane), false];
    };
    case "R4": {
      _curWPIndex = _plane getVariable "stpt_index";
      [_curWPIndex] remoteExec ["itc_air_steerpoints_fnc_delete", (crew _plane), false];
    };
    case "R5": {
      [[0,0,0]] call itc_air_steerpoints_fnc_store;
    };
};
