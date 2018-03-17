
params ["_namespace","_btn"];
switch (_btn) do {
    case "B1": {[] call itc_air_mfd_fnc_swap;};
    case "L1": {_namespace setVariable["page","wpn"];};
    case "L2": {_namespace setVariable["page","sms"];};
    case "L4": {_namespace setVariable["page","com"];};
    case "R1": {_namespace setVariable["page","tad"];};
};