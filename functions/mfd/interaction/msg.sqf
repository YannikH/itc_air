params ["_namespace","_btn"];
switch (_btn) do {
    case "R1": {
      _composing = _namespace getVariable "msg_composing";
      if(_composing) then {
        _to = _namespace getVariable "msg_to";
        _msg = _namespace getVariable "msg_cur";
        [_to, _msg] call itc_air_datalink_fnc_text_send;
        _namespace setVariable ["msg_to", "00-01"];
        _namespace setVariable ["msg_cur", ["","","","","","","","", "", ""]];
      } else {
        _namespace setVariable ["msg_composing",true];
      };
    };
    case "R2": {
      _namespace setVariable ["msg_composing",false];
    };
    case "R3": {
      _composing = _namespace getVariable "msg_composing";
      if(_composing) then {
        _namespace setVariable ["msg_to", "00-01"];
        _namespace setVariable ["msg_cur", ["","","","","","","","", "", ""]];
      };
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
