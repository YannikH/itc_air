
params ["_namespace","_btn"];
switch (_btn) do {
    case "L1": {["fuze",1] call itc_air_jdam_fnc_config_bomb;};
    case "L2": {[_namespace,missionNameSpace, "ITC_AIR_IMPANGLE", "IMPACT ANGLE", [true]] call itc_air_mfd_fnc_input_start;};
    case "R1": {[_namespace,missionNameSpace, "ITC_AIR_LASERCODE", "LASER CODE", [true]] call itc_air_mfd_fnc_input_start};
    case "B1": {[] call itc_air_mfd_fnc_swap;};
    case "B2": {_namespace setVariable["page","tad"];};
    case "B3": {_namespace setVariable["page","lst"];};
    case "B4": {_namespace setVariable["page","sms"];};
};