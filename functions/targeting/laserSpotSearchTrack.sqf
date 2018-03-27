params ["_plane"];

_dir = _plane vectorModelToWorld (getPilotCameraDirection _plane);
_spot = [getPosASL _plane, _dir, _plane getVariable "tgp_fov", 5000, [1500, 1550], _plane getVariable "laser_code_recv"] call ace_laser_fnc_seekerFindLaserSpot;

if(!isNil{_spot select 0}) then {
    _source = _spot select 1;
    _plane setPilotCameraTarget (laserTarget _source);
    _plane setVariable ["tgp_lsst_mode", "LST"];
};
