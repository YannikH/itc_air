params ["_display"];
{
  _x cameraEffect ["terminate","Back"];
  _x cameraEffect ["terminate","Back"];
  camDestroy _x;
} forEach ITC_AIR_MFD_CAMS;
ITC_AIR_MFD_CAMS = [];

itc_air_tgp_mouseDown = false;
_plane = vehicle player;

_cam = "camera" camCreate (getPos _plane);
_cam camSetFov (_plane getVariable "tgp_fov");
//_cam attachTo [_plane, [2.7,2,-0.8]];
_cam camSetPos (_plane modelToWorld [2.7,2,-0.8]);
_cam cameraEffect ["internal", "BACK"];
_cam camCommit 0;
itc_air_pp_effects pushBack (ppEffectCreate ["filmGrain", 2005]);
itc_air_pp_effects ppEffectCommit 0;

ITC_AIR_MFD_CAMS pushBack _cam;

_handle = [{
    _this select 0 params ["_cam", "_plane"];
    if (!dialog || !alive player || vehicle player != _plane) exitWith {
        camDestroy _cam;
        _cam cameraEffect ["terminate", "back"];
        ppEffectDestroy itc_air_pp_effects;
        itc_air_pp_effects = [];
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };
    _cam camSetFov (_plane getVariable "tgp_fov");
    _cam camSetPos (_plane modelToWorld [2.7,2,-0.8]);
    _cameraMode = _plane getVariable "tgp_mode";
    if(ITC_AIR_CURVIS != _cameraMode) then {
        ITC_AIR_CURVIS = _cameraMode;
        [_cameraMode] call itc_air_rover_fnc_change_camera_mode;
    };

    _target = _plane getVariable "tgp_dir";
    _cam camSetTarget (ASLtoAGL (_target select 1));
    _cam camCommit 0.1;
}, 0, [_cam, _plane]] call CBA_fnc_addPerFrameHandler;
_cam
