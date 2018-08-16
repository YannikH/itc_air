params ["_vehicle"];
itc_air_gcas_time = 0;
[_vehicle, [missionNameSpace,"itc_air_gcas_off",false,"GCAS OFF",{},"cycle",[false, true]]] call itc_air_common_fnc_addOption;

if("AGCAS" in (_vehicle getVariable ["itc_air_systems",[]])) then {
  [_vehicle, [missionNameSpace,"itc_air_agcas_off",false,"AGCAS OFF",{},"cycle",[false, true]]] call itc_air_common_fnc_addOption;
};
