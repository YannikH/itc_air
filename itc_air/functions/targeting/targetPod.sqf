params ["_target", "_vehicle"];

if(player == driver _vehicle) then {
  _vehicle setPilotCameraTarget _target;
} else {
  [_vehicle, ["tgp_dir", [true, _target]]] remoteExec ["setVariable", (crew _vehicle), false];
  [_vehicle, _target] remoteExec ["setPilotCameraTarget", (driver _vehicle), false];
};
