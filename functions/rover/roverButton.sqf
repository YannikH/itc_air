params ["_btn", "_type"];
if(_type == "number") then {
    ITC_ROVER_FREQ_TEMP = ITC_ROVER_FREQ_TEMP + _btn;
};
if(_type == "button") then {
    switch (_btn) do {
        case "ent": {
            ITC_ROVER_FREQ = ITC_ROVER_FREQ_TEMP;
            ITC_ROVER_FREQ_TEMP = "";
            [player, ["itc_rover_freq", ITC_ROVER_FREQ]] remoteExec ["itc_fnc_set_global_variable", 0, true];
        };
        case "z1": {
            player sideChat "z1 hit";
        };
        case "z2": {
            player sideChat "z2 hit";
        };
    };
};