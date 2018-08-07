params ["_plane"];
private _fov = (_plane getVariable "tgp_fov");
private _viewFOV = (call cba_fnc_getFov) # 0;
private _point = (_plane getVariable "tgp_dir") # 1;
private _scaleW = ((_fov / _viewFOV) * safeZoneW) / (getResolution # 4);
private _scaleH = (_fov / _viewFOV) * safeZoneH;

private _UI = uiNameSpace getVariable "ITC_AIR_HMD_UI";
private _outline = _UI displayCtrl 1200;
_outline ctrlShow (cameraView != "GUNNER");
private _gstab = (getPilotCameraTarget _plane) # 0;
private _screenPos = (worldToScreen (ASLtoAGL _point));
if(!isNil{_screenPos} && {count _screenPos > 0} && _gstab) then {
  _outline ctrlShow true;
  private _drawPos = [
    _screenPos # 0 -(_scaleW / 2),
    _screenPos # 1 -(_scaleH / 2),
    _scaleW,
    _scaleH
  ];
  _outline ctrlSetPosition _drawPos;
  _outline ctrlShow (cameraView != "GUNNER");
} else {
  _outline ctrlShow false;
};
_outline ctrlCommit 0;
