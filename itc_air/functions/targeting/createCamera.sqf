params["_display","_texture"];

_plane = vehicle player;

_cam = "camera" camCreate (getPos _plane);
private _fov = (_plane getVariable "tgp_fov");
_cam camSetFov _fov;
//_cam attachTo [_plane, [2.7,2,-0.8]];
_cam cameraEffect ["internal", "BACK", _texture];
_cam camCommit 0;

ITC_AIR_MFD_CAMS pushBack _cam;

private _memPointName = getText (configFile >> "CfgVehicles" >> typeOf _plane >> "memoryPointDriverOptics");
private _memPointPos = _plane selectionPosition _memPointName;
_cam attachTo [_plane, _memPointPos];

_handle = [{
    _this select 0 params ["_cam", "_plane", "_texture","_display","_memPointPos","_fov","_vis","_target"];
    if (_display isEqualTo displayNull || (_display getVariable ["page",""] != "tgp" && _display getVariable ["page",""] != "tgpOn") || !itc_air_tgp_enabled) exitWith {
        camDestroy _cam;
        _cam cameraEffect ["terminate", "back", _texture];
        _display setVariable ["feed_camera", nil];
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };
    //_cam camSetPos (getPos _plane);
    _cam cameraEffect ["internal", "BACK", _texture];
    private _newFOV = (_plane getVariable "tgp_fov");
    if(_fov != _newFOV) then {
      (_this select 0) set [5, _newFOV];
      _cam camSetFov _newFOV;
    };
    private _newVis = _plane getVariable "tgp_mode";
    if(_vis != _newVis) then {
      (_this select 0) set [6, _newVis];
      _texture setPiPEffect [_newVis];
      if((_newVis) == 0) then {
        _texture setPiPEffect [3,1,1,0.4,0,[0,0,0,0],[1,1,1,0],[1,1,1,1]];
      };
    };
    private _newTarget = (_plane getVariable "tgp_dir") # 1;
    private _newTargetVis = _newTarget vectorAdd (((getPosASLVisual _plane) vectorDiff (getPosASL _plane)) vectorMultiply -1);
    _cam camSetTarget (ASLtoAGL (_newTargetVis));
    (_this select 0) set [7, _newTarget];
    _cam camCommit 0;
}, 0, [_cam, _plane, _texture, _display, _memPointPos, _fov, 0,[0,0,0]]] call CBA_fnc_addPerFrameHandler;
_cam
