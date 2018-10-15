params ["_vehicle"];
//[_vehicle, [_vehicle,"itc_air_hmd_on",true,"HMD ON",{},"cycle",[false, true]]] call itc_air_common_fnc_addOption;
//[_vehicle, [missionNameSpace,"itc_air_hideHUD",false,"HIDE HUD",{},"cycle",[false, true]]] call itc_air_common_fnc_addOption;

//itc_air_hud_drawEh = addmissioneventhandler ["Draw3d",{
//  [] call itc_air_hud_fnc_drawHandler;
//}];

105 cutRsc ["ITC_AIR_HUD", "PLAIN", -1, true];

ITC_AIR_HUD_LIMS = [
  getText (configFile >> "cfgVehicles" >> typeOf _vehicle >> "itc_air" >> "HUD_TL"),
  getText (configFile >> "cfgVehicles" >> typeOf _vehicle >> "itc_air" >> "HUD_TR"),
  getText (configFile >> "cfgVehicles" >> typeOf _vehicle >> "itc_air" >> "HUD_DL")
];

ITC_AIR_HUD_LIMS = [
  "HUD LH",
  "HUD RH",
  "HUD LD"
];

ITC_AIR_HUD_GSTAB = false;
ITC_AIR_HUD_TRACK = [0,1000,-100];
ITC_AIR_HUD_SLEWSPD = 20;
