params ["_plane"];
private ["_icon"];
private _UI = uiNameSpace getVariable "ITC_AIR_HMD_UI";
if(cameraView != "INTERNAL") exitWith {
  if(!isNil{_UI}) then {
    (_UI displayCtrl 13379) ctrlShow false;
  };
};

(_UI displayCtrl 13379) ctrlShow true;
private _wpName = _plane getVariable "stpt_name";
private _wpPos = _plane getVariable "stpt_pos";

//HMD CENTERPOINT, no need to put this in a function
//["<t color='#bae5bb' size = '.5'>+</t>",-1,0.485,1,0,0, 794] spawn BIS_fnc_dynamicText;
(_UI displayCtrl 1201) ctrlShow (ITC_AIR_SOI != "HMD");
//(_UI displayCtrl 1201) ctrlCommit 0;
(_UI displayCtrl 1202) ctrlShow (ITC_AIR_SOI == "HMD" && !ITC_AIR_HMD_GSTAB);
//(_UI displayCtrl 1202) ctrlCommit 0;
(_UI displayCtrl 1203) ctrlShow (ITC_AIR_SOI == "HMD" && ITC_AIR_HMD_GSTAB);
//(_UI displayCtrl 1203) ctrlCommit 0;
(_UI displayCtrl 1204) ctrlShow itc_air_gcas_warn;
//(_UI displayCtrl 1203) ctrlCommit 0;
//[_plane, _curWP] call itc_air_ui_fnc_tof;
(_UI displayCtrl 1200) ctrlShow (cameraView == "GUNNER" && itc_air_tgp_capable);

if(_wpName != "NO WP") then {
  drawIcon3d ["itc_air_hmd\data\UI\MSNPT.paa", [1,1,0,1], ASLtoAGL _wpPos, 0.4, 0.4, 0, format["%1", _wpName], 1, 0.05, "PuristaMedium", "center"];
};

{
  drawIcon3d ["itc_air_hmd\data\UI\MSNPT.paa", [1,1,0,1], (ASLtoAGL (_x # 1)), 0.4, 0.4, 0, "", 1, 0.05, "PuristaMedium", "center"];
} forEach (_plane getVariable "stpt_list");

if(ITC_AIR_HMD_GSTAB) then {
  drawIcon3d ["itc_air_hmd\data\UI\HDC.paa", [0,1,0,1], ITC_AIR_HMD_TRACK, 0.4, 0.4, 0, "", 1, 0.05, "PuristaMedium", "center"];
};

if(itc_air_tgp_capable) then {
  _tgpDir = _plane getVariable "tgp_dir";
  if(_tgpDir select 0) then {
    private _icon = "itc_air_hmd\data\UI\TGP.paa";
    if((getPilotCameraTarget _plane) # 2 isKindOf "laserTarget") then {
      _icon = "itc_air_hmd\data\UI\WEB.paa";
    };
    drawIcon3d [_icon, [0,1,0,1], ASLtoAGL (_tgpDir # 1), 0.7, 0.7, 0, "", 1, 0.05, "PuristaMedium", "center"];
  };
  [_plane] call itc_air_hmd_fnc_scaleFOV;
};


{
  _icon = if(_x isKindOf "Air") then [{"itc_air_hmd\data\UI\LINK_F.paa"},{"itc_air_hmd\data\UI\EPLRS.paa"}];
  drawIcon3d [_icon, [0,1,0,1], getPos _x, 0.3, 0.3, 0, "", 1, 0.05, "PuristaMedium", "center"];
}forEach ITC_AIR_SADL_VEHICLES;
