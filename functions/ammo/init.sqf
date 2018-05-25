["All", "Fired", itc_air_ammo_fnc_fired] call CBA_fnc_addClassEventHandler;
["ITC_AIR_FORCES", "CHECKBOX", "Pylon Drag & Mass", "ITC", [false]] call CBA_Settings_fnc_init;
["ITC_AIR_DRAG", "SLIDER", "Drag modifier", "ITC", [0.1, 1, 0.4, 2]] call CBA_Settings_fnc_init;
["ITC_AIR_MASS", "SLIDER", "Mass modifier", "ITC", [0.1, 1, 0.15, 2]] call CBA_Settings_fnc_init;
