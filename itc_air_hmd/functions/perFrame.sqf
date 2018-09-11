params ["_plane"];
private ["_icon"];
private _UI = uiNameSpace getVariable "ITC_AIR_HMD_UI";
if(cameraView != "INTERNAL") exitWith {
  if(!isNil{_UI}) then {
    (_UI displayCtrl 13379) ctrlShow false;
  };
};

(_UI displayCtrl 13379) ctrlShow true;
([] call itc_air_wpt_fnc_getCurrent) params ["_wpName","_name","_wpPos"];

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

(_UI displayCtrl 1001) ctrlSetText str round ([0,0,0] getdir getCameraViewDirection player);

if(_wpName != "N/A" && {_wpPos # 0 != 0 && _wpPos # 1 != 0}) then {
  drawIcon3d ["itc_air_hmd\data\UI\MSNPT.paa", [1,1,0,1], ASLtoAGL _wpPos, 0.4, 0.4, 0, format["%1", _wpName], 1, 0.05, "PuristaMedium", "center"];
//  (_UI displayCtrl 1002) ctrlSetText format ["%1 %2", _wpName, _name];
//  (_UI displayCtrl 1003) ctrlSetText itc_air_wpt_tof;
};
//  (_UI displayCtrl 1002) ctrlSetText "";
//  (_UI displayCtrl 1003) ctrlSetText "";
//};

{
  drawIcon3d ["itc_air_hmd\data\UI\MSNPT.paa", [1,1,0,1], (ASLtoAGL (_x # 2)), 0.4, 0.4, 0, "", 1, 0.05, "PuristaMedium", "center"];
} forEach ([] call itc_air_wpt_fnc_getList);

if(itc_air_wpt_steer_pt_mode == "MARK" && {itc_air_wpt_markpoints_z # 1 != ""}) then {
  _map drawIcon ["itc_air_sys_tad\data\UI\MRKZ.paa", [1,1,1,1], ASLtoAGL (itc_air_wpt_markpoints_z # 2),  20,20, 0,  ".", 0, 0.01];
};

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
  _icon = if(_x isKindOf "Air") then [{"itc_air_mfd\data\UI\SADL_D.paa"},{"itc_air_hmd\data\UI\EPLRS.paa"}];
  if(_x isKindOf "Air") then {
    drawIcon3d [_icon, [0,1,0,1], getPos _x, 0.5, 0.5, 0, str (round (3.28 * ((getPosVisual _x) # 2) / 1000 )), 1, 0.04, "PuristaMedium", "center"];
  } else {
    drawIcon3d [_icon, [0,1,0,1], getPos _x, 0.3, 0.3, 0, "", 1, 0.05, "PuristaMedium", "center"];
  };
}forEach ITC_AIR_SADL_VEHICLES;
