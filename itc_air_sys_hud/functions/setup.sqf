params ["_vehicle"];
//[_vehicle, [_vehicle,"itc_air_hmd_on",true,"HMD ON",{},"cycle",[false, true]]] call itc_air_common_fnc_addOption;
//[_vehicle, [missionNameSpace,"itc_air_hideHUD",false,"HIDE HUD",{},"cycle",[false, true]]] call itc_air_common_fnc_addOption;
104 cutRsc ["ITC_AIR_HUD", "PLAIN", -1, true];

ITC_AIR_HUD_GSTAB = false;
ITC_AIR_HUD_TRACK = [0,1000,-100];
ITC_AIR_HUD_SLEWSPD = 20;
