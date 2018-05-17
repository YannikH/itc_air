ITC_ROVER_FREQ = "";
ITC_ROVER_FREQ_TEMP = "";

[
    "ITC",
    "gripen_broadcast_toggle", 
    "Datalink broadcast toggle", 
    {[0] call itc_air_datalink_fnc_broadcast_toggle;}, 
    "", 
    [210, [false, false, false]]
] call CBA_fnc_addKeybind;

["ITC","gripen_rover_up", "Rover Frequency Up", {[1] call itc_air_rover_fnc_cycle_code;}, "", [205, [false, false, false]]] call CBA_fnc_addKeybind;
["ITC","gripen_rover_down", "Rover Frequency Down", {[-1] call itc_air_rover_fnc_cycle_code;}, "", [203, [false, false, false]]] call CBA_fnc_addKeybind;