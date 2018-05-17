params ["_plane"];

_dir = _plane vectorModelToWorld (getPilotCameraDirection _plane);
_spot = [getPosASL _plane, _dir, 40, 5000, [1500, 1550], _plane getVariable "laser_code_recv"] call ace_laser_fnc_seekerFindLaserSpot;

if(!isNil{_spot select 0}) then {
    _source = _spot select 1;
    [(laserTarget _source), _plane] call itc_air_tgp_fnc_target;
    _plane setVariable ["tgp_lsst_mode", "LST"];
};
