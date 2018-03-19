
params ["_namespace","_btn"];
switch (_btn) do {
    case "L5": {_namespace setVariable["page","com"];};
    case "R5": {_namespace setVariable["page","tgp"];};

    case "B1": {[] call itc_air_mfd_fnc_swap;};
    case "B2": {_namespace setVariable["page","tad"];};
    case "B3": {_namespace setVariable["page","wpn"];};
    case "B4": {_namespace setVariable["page","sms"];};
    case "B5": {_namespace setVariable["page","lst"];};
};
