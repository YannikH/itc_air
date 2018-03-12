params ["_btn", "_type"];
if(_type == "number") then {
    ITC_ROVER_FREQ_TEMP = ITC_ROVER_FREQ_TEMP + _btn;
};
if(_type == "button") then {
    switch (_btn) do {
        case "ent": {
            ITC_ROVER_FREQ = ITC_ROVER_FREQ_TEMP;
            ITC_ROVER_FREQ_TEMP = "";
            player setVariable ["itc_rover_freq", ITC_ROVER_FREQ, true];
        };
        case "z1": {
            player sideChat "z1 hit";
        };
        case "z2": {
            player sideChat "z2 hit";
        };
    };
};