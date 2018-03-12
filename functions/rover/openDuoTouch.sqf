ITC_ROVER_PLANE = nil;
{
    if(
        (((_x getVariable "itc_datalink") select 3) == ITC_ROVER_FREQ) && 
        ((_x getVariable "itc_datalink") select 0)
    ) exitWith {
        ITC_ROVER_PLANE = _x;
    };
} forEach nearestObjects [player, ["Air"], 10000];

if((isNull ITC_ROVER_PLANE) || isNil{ITC_ROVER_PLANE getVariable "itc_datalink"}) exitWith {};  

ITC_ROVER_LOGIC = "Logic" createVehicleLocal [0, 0, 0];
ITC_ROVER_LOGIC setPosASL (getPilotCameraTarget (ITC_ROVER_PLANE) select 1);
ITC_ROVER_LOGIC setVectorUp [0.001, 0.001, 1];

ITC_ROVER_CAMERA = "camera" camCreate (getPos ITC_ROVER_PLANE);
ITC_ROVER_CAMERA camSetFov 0.12;
ITC_ROVER_CAMERA cameraEffect ["internal", "BACK"];
ITC_ROVER_CAMERA camCommit 0;
createDialog "cam_dialog";

_handle = [{
    _this select 0 params ["_cam", "_logic", "_plane"];
    _datalink = _plane getVariable "itc_datalink";
    _datalink params ["_broadcasting", "_target", "_direction", "_freq", "_cameraMode", "_fov"];
    if (!dialog || !_broadcasting) exitWith {
        camDestroy _cam;
        _cam cameraEffect ["terminate", "back"];
        //player sideChat format ["killing PFH %1", dialog];
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };
    _cam camSetPos (getPos _plane);
   // player sideChat format ["%1 %2", (getPos _plane), time];
   // player sideChat format["%1", getPilotCameraTarget (_plane) select 0];
    if(isServer) then {
        ROVER_TGP_DIR = [getPilotCameraTarget (_plane), _plane vectorModelToWorld (getPilotCameraDirection _plane)];
    };

    ITC_ROVER_CAMERA camSetFov _fov;
    if(ITC_AIR_CURVIS != _cameraMode) then {
        ITC_AIR_CURVIS = _cameraMode;
        [_cameraMode] call itc_air_rover_fnc_change_camera_mode;
    };

    if(_target select 0) then {
        ITC_ROVER_LOGIC setPosASL (_target select 1);
        _cam camSetTarget ITC_ROVER_LOGIC;
    } else {
        _cam camSetDir _direction;
    };
    _cam camCommit 1;
}, 0, [ITC_ROVER_CAMERA, ITC_ROVER_LOGIC, ITC_ROVER_PLANE]] call CBA_fnc_addPerFrameHandler;