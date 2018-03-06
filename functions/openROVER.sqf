params ["_plane"];

_plane = (nearestObjects [player, ["itc_Gripen"], 10000]) select 0; 
if(isNull _plane) exitWith {}; 

ITC_ROVER_LOGIC = "Logic" createVehicleLocal [0, 0, 0]; 
ITC_ROVER_LOGIC setPosASL (getPilotCameraTarget (_plane) select 1); 
ITC_ROVER_LOGIC setVectorUp [0.001, 0.001, 1]; 

ITC_ROVER_CAMERA = "camera" camCreate (getPos _plane); 
ITC_ROVER_CAMERA camSetFov 0.12; 
ITC_ROVER_CAMERA cameraEffect ["internal", "BACK"]; 
ITC_ROVER_CAMERA camCommit 0; 
//true setCamUseTI 1; 
createDialog "cam_dialog"; 
_handle = [{ 
    _this select 0 params ["_cam", "_logic", "_plane"]; 
    if (!dialog) then { 
        [_this select 1] call CBA_fnc_removePerFrameHandler; 
        camDestroy _cam; 
        _cam cameraEffect ["terminate", "back"]; 
    }; 
    _cam camSetPos (getPos _plane); 
    player sideChat format["%1", getPilotCameraTarget (_plane) select 0]; 
    [_plane] call itc_fnc_getRemoteCamera; 
    if(ROVER_TGP_DIR select 0 select 0) then { 
        ITC_ROVER_LOGIC setPosASL (ROVER_TGP_DIR select 0 select 1); 
        _cam camSetTarget ITC_ROVER_LOGIC; 
    } else { 
        _cam camSetDir (ROVER_TGP_DIR select 1); 
    }; 
        _cam camCommit 1; 
}, 0, [ITC_ROVER_CAMERA, ITC_ROVER_LOGIC, _plane]] call CBA_fnc_addPerFrameHandler; 