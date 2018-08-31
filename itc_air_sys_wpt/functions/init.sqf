["ITC Air","itc_air_stpt_next", "Cycle Steerpoint next", {
  [] call itc_air_wpt_fnc_next; false
}, "", [201, [false, false, false]]] call CBA_fnc_addKeybind;

["ITC Air","itc_air_stpt_prev", "Cycle Steerpoint previous", {
  [] call itc_air_wpt_fnc_prev; false
}, "", [209, [false, false, false]]] call CBA_fnc_addKeybind;
