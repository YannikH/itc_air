params["_isDialog", "_freq","_texture"];

_plane = nil;
{
    if(
        (((_x getVariable "itc_datalink") select 3) == _freq) && 
        ((_x getVariable "itc_datalink") select 0)
    ) exitWith {
        _plane = _x;
    };
} forEach nearestObjects [player, ["Air"], 10000];

if((isNull _plane) || isNil{_plane getVariable "itc_datalink"}) exitWith {};

_cam = "camera" camCreate (getPos _plane);
if(_isDialog) then {ITC_ROVER_CAMERA = _cam};
_cam camSetFov 0.12;
if(!_isDialog) then {
    _cam cameraEffect ["internal", "BACK", _texture];
} else {
    _cam cameraEffect ["internal", "BACK"];
    createDialog "cam_dialog";
};
_cam camCommit 0;

_handle = [{
    _this select 0 params ["_cam", "_plane", "_freq", "_isDialog", "_texture"];
    _datalink = _plane getVariable "itc_datalink";
    _datalink params ["_broadcasting", "_target", "_direction", "_curFreq", "_cameraMode", "_fov"];
    if ((!dialog && _isDialog) || !_broadcasting || _freq != _curFreq) exitWith {
        camDestroy _cam;
        _cam cameraEffect ["terminate", "back"];
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };
    _cam camSetPos (getPos _plane);

    _cam camSetFov _fov;
    if(_isDialog) then {
        if(ITC_AIR_CURVIS != _cameraMode) then {
            ITC_AIR_CURVIS = _cameraMode;
            [_cameraMode, _isDialog] call itc_air_rover_fnc_change_camera_mode;
        };
    } else {
        _texture setPiPEffect [_cameraMode];
    };
    if(!dialog) then {
        _cam cameraEffect ["internal", "BACK", _texture];
    };

    if(_target select 0) then {
        _cam camSetTarget ASLtoATL (_target select 1);
    } else {
        _cam camSetDir _direction;
    };
    _cam camCommit 0.1;
}, 0, [_cam, _plane, _freq, _isDialog, _texture]] call CBA_fnc_addPerFrameHandler;
_cam