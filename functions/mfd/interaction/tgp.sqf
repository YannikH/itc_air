params ["_namespace","_btn"];
switch (_btn) do {
    case "L1": {
        [vehicle player] call itc_air_ir_laser_fnc_toggle;
    };
    case "L2": {
        [vehicle player] call itc_air_ir_laser_fnc_toggle_pulse;
    };
    case "R1": {
        [_namespace,(vehicle player), "laser_code_xmit", "OWN LASER CODE", [true, {(_this > 1110 && _this < 1688)}]] call itc_air_mfd_fnc_input_start;
    };
    case "R2": {
        [_namespace,(vehicle player), "laser_code_recv", "RECV LASER CODE", [true, {(_this > 1110 && _this < 1688)}]] call itc_air_mfd_fnc_input_start;
    };
    case "B1": {[] call itc_air_mfd_fnc_swap;};
    case "B2": {_namespace setVariable["page","tad"];};
    case "B3": {_namespace setVariable["page","wpn"];};
    case "B4": {_namespace setVariable["page","sms"];};
    case "B5": {_namespace setVariable["page","lst"];};
};
