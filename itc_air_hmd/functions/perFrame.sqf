params ["_plane"];
private ["_icon"];
[_plane] call itc_air_hmd_fnc_scaleFOV;
if(cameraView == "GUNNER") exitWith {};

private _wpName = _plane getVariable "stpt_name";
private _wpPos = _plane getVariable "stpt_pos";

//HMD CENTERPOINT, no need to put this in a function
//["<t color='#bae5bb' size = '.5'>+</t>",-1,0.485,1,0,0, 794] spawn BIS_fnc_dynamicText;
private _UI = uiNameSpace getVariable "ITC_AIR_HMD_UI";
(_UI displayCtrl 1201) ctrlShow (ITC_AIR_SOI == "HMD");
(_UI displayCtrl 1201) ctrlCommit 0;
(_UI displayCtrl 1202) ctrlShow (ITC_AIR_SOI != "HMD");
(_UI displayCtrl 1202) ctrlCommit 0;
//[_plane, _curWP] call itc_air_ui_fnc_tof;

if(_wpName != "NO WP") then {
  drawIcon3d ["itc_air_hmd\data\UI\WP.paa", [0,1,0,1], ASLtoAGL _wpPos, 0.7, 0.7, 0, format["%1", round ((_plane distance _wpPos) / 1000)], 1, 0.05, "PuristaMedium", "center"];
};

_tgpDir = _plane getVariable "tgp_dir";
if(_tgpDir select 0) then {

  private _icon = "itc_air_hmd\data\UI\TGP.paa";
  if((getPilotCameraTarget _plane) # 2 isKindOf "laserTarget") then {
    _icon = "itc_air_hmd\data\UI\WEB.paa";
  };
  drawIcon3d [_icon, [0,1,0,1], ASLtoAGL (_tgpDir # 1), 0.7, 0.7, 0, "", 1, 0.05, "PuristaMedium", "center"];
};

{
  _icon = if(_x isKindOf "Air") then [{"itc_air_hmd\data\UI\LINK_F.paa"},{"itc_air_hmd\data\UI\EPLRS.paa"}];
  drawIcon3d [_icon, [0,1,0,1], getPos _x, 0.3, 0.3, 0, "", 1, 0.05, "PuristaMedium", "center"];
}forEach ITC_AIR_SADL_VEHICLES;
