params ["_namespace","_btn"];
switch (_btn) do {
    case "L1": {
        [vehicle player] call itc_air_ir_laser_fnc_toggle;
    };
    case "L2": {
        [vehicle player] call itc_air_ir_laser_fnc_toggle_pulse;
    };
    case "L3": {
      _plane = (vehicle player);
      _index = _plane getVariable "tgp_mode";
      _index = if(_index + 1 > 2) then [{0}, {_index + 1}];
      _plane setVariable ["tgp_mode", _index];
    };
    case "R1": {
        [_namespace,(vehicle player), "laser_code_xmit", "OWN LASER CODE", [true, {(_this > 1110 && _this < 1688)}], false] call itc_air_mfd_fnc_input_start;
    };
    case "R2": {
        [_namespace,(vehicle player), "laser_code_recv", "RECV LASER CODE", [true, {(_this > 1110 && _this < 1688)}], false] call itc_air_mfd_fnc_input_start;
    };
    case "R4": {
      _plane = (vehicle player);
      _curStep = _plane getVariable "tgp_fov_index";
      _steps = _plane getVariable "tgp_fov_steps";
      _curStep = if(_curStep + 1 >= count _steps) then [{0}, {_curStep + 1}];
      _plane setVariable ["tgp_fov_index", _curStep];
      _plane setVariable ["tgp_fov", _steps select _curStep];
    };
    case "R5" : {
      _plane = (vehicle player);
      _curStep = _plane getVariable "tgp_fov_index";
      _steps = _plane getVariable "tgp_fov_steps";
      _curStep = if(_curStep - 1 < 0) then [{count _steps - 1}, {_curStep - 1}];
      _plane setVariable ["tgp_fov_index", _curStep];
      _plane setVariable ["tgp_fov", _steps select _curStep];
    };
    case "B1": {[] call itc_air_mfd_fnc_swap;};
    case "B2": {_namespace setVariable["page","tad"];};
    case "B3": {_namespace setVariable["page","wpn"];};
    case "B4": {_namespace setVariable["page","sms"];};
    case "B5": {_namespace setVariable["page","lst"];};
};
