params ["_vehicle"];
//[_vehicle, [_vehicle,"itc_air_hmd_on",true,"HMD ON",{},"cycle",[false, true]]] call itc_air_common_fnc_addOption;
//[_vehicle, [missionNameSpace,"itc_air_hideHUD",false,"HIDE HUD",{},"cycle",[false, true]]] call itc_air_common_fnc_addOption;
103 cutRsc ["ITC_AIR_SCORPION", "PLAIN", -1, true];

itc_air_soi_providers pushBack "HMD";

ITC_AIR_HMD_GSTAB = false;
ITC_AIR_HMD_TRACK = [0,1000,-100];
ITC_AIR_HMD_SLEWSPD = 20;

ITC_AIR_SOI = "HMD";
itc_air_soi_provider = "HMD";
_vehicle setVariable ["SOI","HMCS"];
