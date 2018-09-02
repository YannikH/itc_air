params ["_plane"];
private ["_icon"];
private _UI = uiNameSpace getVariable "ITC_AIR_HUD_UI";
if(cameraView != "INTERNAL") exitWith {
  if(!isNil{_UI}) then {
    (_UI displayCtrl 13379) ctrlShow false;
  };
};

(_UI displayCtrl 13379) ctrlShow true;

_this call test_fnc_hud;
