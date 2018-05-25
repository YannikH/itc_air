["All", "Fired", itc_air_ammo_fnc_fired] call CBA_fnc_addClassEventHandler;
["ITC_AIR_FORCES", "CHECKBOX", "Pylon Drag & Mass", "ITC", [false]] call CBA_Settings_fnc_init;
["ITC_AIR_DRAG", "SLIDER", "Drag modifier", "ITC", [0.1, 1, 0.4, 2]] call CBA_Settings_fnc_init;
["ITC_AIR_MASS", "SLIDER", "Mass modifier", "ITC", [0.1, 1, 0.15, 2]] call CBA_Settings_fnc_init;

//["ITC_AIR","ITC_AIR_PICKLE", "Pickle(Weapons Release)", {[] call itc_air_ammo_fnc_pickle;}, "", [57, [false, false, false]]] call CBA_fnc_addKeybind;
//["ITC_AIR","ITC_AIR_GUN", "Gun trigger", {[] call test_gun_fire;}, "", [57, [false, false, false]], true] call CBA_fnc_addKeybind;
