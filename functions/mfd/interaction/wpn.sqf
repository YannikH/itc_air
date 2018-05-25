params ["_namespace","_btn"];
switch (_btn) do {
    case "L1": {["fuze",1] call itc_air_jdam_fnc_config_bomb;};
    case "L2": {[_namespace,missionNameSpace, "ITC_AIR_IMPANGLE", "IMPACT ANGLE", [true, {(_this > 9 && _this < 90)}], false] call itc_air_mfd_fnc_input_start;};
    case "R1": {[_namespace,(vehicle player), "laser_code_recv", "LASER CODE", [true, {[_this] call itc_air_common_fnc_is_laser_code}], false] call itc_air_mfd_fnc_input_start};
    case "B1": {[] call itc_air_mfd_fnc_swap;};
    case "B2": {_namespace setVariable["page","tad"];};
    case "B3": {_namespace setVariable["page","wpn"];};
    case "B4": {_namespace setVariable["page","sms"];};
    case "B5": {_namespace setVariable["page","lst"];};
};
