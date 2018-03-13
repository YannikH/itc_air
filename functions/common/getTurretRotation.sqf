/*
 *  Gets the current direction a turret is pointed at
 *  Params: vehicle, turret index
 *  Returns: turret yaw and pitch in rad
 */
params ["_plane","_turretIndex"];

//if not specified, decide a turret - this is functional on planes and vanilla helicopters
if(isNil{_turretIndex}) then {
    _turretIndex = -1;
    if(player == gunner _plane) then {
        _turretIndex = 0;
    };
};

//handle pilotCameras
if(_turretIndex == -1) exitWith {
    getPilotCameraRotation _plane;
};

[_plane animationPhase "mainturret", _plane animationPhase "maingun"]