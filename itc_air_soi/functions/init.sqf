["ITC Air","itc_air_soi_cycle", "SOI CYCLE",{call itc_air_soi_fnc_cycle;}, "", [210, [false, false, false]]] call CBA_fnc_addKeybind;

["ITC Air","itc_air_soi_up", "SOI UP",
{[0,1,0] call itc_air_mfd_fnc_soi_down;},
{call itc_air_mfd_fnc_soi_up},[200, [false, false, false]],true] call CBA_fnc_addKeybind;

["ITC Air","itc_air_soi_dn", "SOI DOWN",
{[0,-1,0] call itc_air_mfd_fnc_soi_input;},
{call itc_air_mfd_fnc_soi_up}, [208, [false, false, false]],true] call CBA_fnc_addKeybind;

["ITC Air","itc_air_soi_lf", "SOI LEFT",
{[-1,0,0] call itc_air_mfd_fnc_soi_input;},
{call itc_air_mfd_fnc_soi_up}, [203, [false, false, false]],true] call CBA_fnc_addKeybind;

["ITC Air","itc_air_soi_rt", "SOI RIGHT",
{[1,0,0] call itc_air_mfd_fnc_soi_input;},
call itc_air_mfd_fnc_soi_up{}, [205, [false, false, false]],true] call CBA_fnc_addKeybind;

["ITC Air","itc_air_soi_action", "SOI ACTION",
{call itc_air_mfd_fnc_soi_action;},
{call itc_air_mfd_fnc_soi_up}, [208, [false, true, false]],true] call CBA_fnc_addKeybind;

["ITC Air","itc_air_soi_markpoint","Store markpoint from SPI",
{[true] call itc_air_mfd_fnc_soi_mark},"",[207, [false, false, false]]] call CBA_fnc_addKeybind;

["ITC Air","itc_air_soi_slew","SOI Slew",
{[false] call itc_air_mfd_fnc_soi_slew},"",[20, [false, false, false]]] call CBA_fnc_addKeybind;
