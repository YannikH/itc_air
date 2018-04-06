params ["_namespace","_btn"];
switch (_btn) do {
    case "R1": {
      _composing = _namespace getVariable "msg_composing";
      if(_composing) then {

      } else {
        _namespace setVariable ["msg_composing",true];
      };
    };
    case "R1": {
      _namespace setVariable ["msg_composing",false];
    };
    case "L2": {
      _scrollStart = _namespace getVariable "msg_index";
      _namespace setVariable ["msg_index",(_scrollStart - 1) max 0];
    };
    case "L3": {
      _scrollStart = _namespace getVariable "msg_index";
      _namespace setVariable ["msg_index",(_scrollStart + 1)];
    };
    case "L4": {
      [_namespace,_namespace, "msg_to", "TO XX-XX", [false, {count _this == 5}], false] call itc_air_mfd_fnc_input_start;
    };
    case "L5": {
      [_namespace,_namespace, "msg_ln", "LINE", [false, {count _this < 25}], false] call itc_air_mfd_fnc_input_start;
    };
};
