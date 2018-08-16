params ["_vehicle"];
ITC_AIR_ACMI_FRAME = 0;
ITC_AIR_ACMI_ON = false;
ITC_AIR_ACMI_LASTEXEC = 0;
ITC_AIR_ACMI_DELAY = 1;
ITC_AIR_ACMI_VEH_LASTEXEC = 0;
ITC_AIR_ACMI_VEH_DELAY = 5;
[_vehicle, [missionNameSpace,"ITC_AIR_ACMI_ON",false,"ACMI ON",{},"cycle",[false, true]]] call itc_air_common_fnc_addOption;
