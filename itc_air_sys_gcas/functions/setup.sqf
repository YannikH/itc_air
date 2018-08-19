params ["_vehicle"];
itc_air_gcas_time = 0;
[_vehicle, [missionNameSpace,"itc_air_gcas_on",true,"GCAS ON",{},"cycle",[false, true]]] call itc_air_common_fnc_addOption;

if("AGCAS" in (_vehicle getVariable ["itc_air_systems",[]])) then {
  [_vehicle, [missionNameSpace,"itc_air_agcas_on",true,"AGCAS ON",{},"cycle",[false, true]]] call itc_air_common_fnc_addOption;
};
