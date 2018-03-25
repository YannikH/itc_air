params["_display","_texture"];

_plane = vehicle player;

_cam = "camera" camCreate (getPos _plane);
_cam camSetFov (_plane getVariable "tgp_fov");
_cam attachTo [_plane, [2.7,2,-0.8]];
_cam cameraEffect ["internal", "BACK", _texture];
_cam camCommit 0;

ITC_AIR_MFD_CAMS pushBack _cam;

_handle = [{
    _this select 0 params ["_cam", "_plane", "_texture","_display"];
    if (
      isNil{_display} || isNull _display || _display getVariable "page" != "tgp"
      ) exitWith {
        camDestroy _cam;
        _cam cameraEffect ["terminate", "back"];
        _display setVariable ["feed_camera", nil];
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };
    //_cam camSetPos (getPos _plane);
    _cam cameraEffect ["internal", "BACK", _texture];
    _cam camSetFov (_plane getVariable "tgp_fov");
    _texture setPiPEffect [_plane getVariable "tgp_mode"];
    _target = _plane getVariable "tgp_dir";
    _cam camSetTarget (ASLtoAGL (_target select 1));
    _cam camCommit 0.2;
}, 0, [_cam, _plane, _texture, _display]] call CBA_fnc_addPerFrameHandler;
_cam
