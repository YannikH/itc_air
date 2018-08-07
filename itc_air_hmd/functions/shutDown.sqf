params ["_vehicle"];
[_vehicle, "itc_air_hmd_on"] call itc_air_common_fnc_removeOption;
[_vehicle, "HMD"] call itc_air_common_fnc_unregisterHandlers;
103 cutText ["", "PLAIN"];
