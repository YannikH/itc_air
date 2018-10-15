params ["_plane"];
if(!isNil {test_fnc_hud_pfh}) exitWith {_this call test_fnc_hud_pfh};
private _dir = vectorNormalized (vectorDir _plane);
private _dotProdCam = abs(_dir vectorDotProduct (eyeDirection player));

private ["_icon"];
private _UI = uiNameSpace getVariable "ITC_AIR_HUD_UI";
if(cameraView != "INTERNAL" ||  (_dotProdCam < cos 8) || dialog) exitWith {
  if(!isNil{_UI}) then {
    (_UI displayCtrl 13379) ctrlShow false;
    (_UI displayCtrl 13380) ctrlShow false;
  };
};

(_UI displayCtrl 13379) ctrlShow true;
(_UI displayCtrl 13380) ctrlShow true;

_this call itc_air_hud_fnc_printCCRP;
_this call itc_air_hud_fnc_printText;
_this call itc_air_hud_fnc_printIcons;
