_plane = vehicle player;
_target = getPilotCameraTarget (_plane);
_tgpdir = _plane vectorModelToWorld (getPilotCameraDirection _plane);
[[_target, _tgpdir]] remoteExec ["itc_fnc_broadCast", 0, false];