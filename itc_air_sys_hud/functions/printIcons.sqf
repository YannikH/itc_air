params ["_plane"];
(_UI displayCtrl 1204) ctrlShow itc_air_gcas_warn;

private _UI = uiNameSpace getVariable "ITC_AIR_HUD_UI";
([] call itc_air_wpt_fnc_getCurrent) params ["_wpName","_name","_wpPos"];

private _viewFOVX = (call cba_fnc_getFov) # 0;
private _xLimits = [
  (safeZoneW/2)+(0.08 * (safeZoneW / _viewFOVX)),
  (safeZoneW/2)+(-0.08 * (safeZoneW / _viewFOVX))
];
private _yLimits = [
  (safeZoneH/2)+(0.08 * (safeZoneH / _viewFOVX)),
  (safeZoneH/2)+(-0.08 * (safeZoneH / _viewFOVX))
];

private _wp = (_UI displayCtrl 1205);
if(_wpName != "N/A" && {_wpPos # 0 != 0 && _wpPos # 1 != 0}) then {
  private _pos = worldToScreen (ASLtoAGL _wpPos);
  if(count _pos == 2) then {
    private _screenPos = [
      ((_pos # 0) - safeZoneX - (0.02 * 3/4)),
      ((_pos # 1) - safeZoneY - 0.02)
    ];
    //systemChat str [_pos,_screenPos];

    _wp ctrlSetPosition [
      (_screenPos#0) min (_xLimits#0) max (_xLimits#1),
      (_screenPos#1) min (_yLimits#0) max (_yLimits#1)
    ];
    _wp ctrlCommit 0;
  };
};
