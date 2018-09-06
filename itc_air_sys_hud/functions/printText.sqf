params ["_plane"];

private _UI = uiNameSpace getVariable "ITC_AIR_HUD_UI";
private _viewFOV = (call cba_fnc_getFov) # 0;
private _scaleW = ((0.243 / _viewFOV) * safeZoneW) / (getResolution # 4);
private _scaleH = (0.243 / _viewFOV) * safeZoneH;
([] call itc_air_wpt_fnc_getCurrent) params ["_wpName","_name","_wpPos"];
private _wpt = (_UI displayCtrl 1001);
_wpt ctrlSetPosition [((safeZoneW / 2) + (_scaleW/4)),(0.5) * safeZoneH + (_scaleH/4)];
_wpt ctrlCommit 0;
private _tof = (_UI displayCtrl 1002);
_tof ctrlSetPosition [((safeZoneW / 2) + (_scaleW/4)),(0.5) * safeZoneH + (_scaleH/4) + 0.04];
_tof ctrlCommit 0;
_wpt ctrlSetText format ["%1 %2", _wpName, _name];
_tof ctrlSetText itc_air_wpt_tof;

private _tot = (_UI displayCtrl 1003);
_tot ctrlSetPosition [((safeZoneW / 2) - (_scaleW/4)),(0.5) * safeZoneH + (_scaleH/4) + 0.04];
if(isNil{itc_air_fcs_firedTime} || {itc_air_fcs_firedTime == -1}) then {
  _tot ctrlSetText str (round itc_air_fcs_ccip_impactTime);
} else {
  _tot ctrlSetText str (round ((itc_air_fcs_firedTime + itc_air_fcs_tof) - cba_missionTime));
};
_tot ctrlCommit 0;
