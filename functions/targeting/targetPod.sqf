params ["_target", "_vehicle"];

if(player == driver _vehicle) then {
  _vehicle setPilotCameraTarget _target;
} else {
  _vehicle setVariable ["tgp_dir", [true, _target]];
  [_vehicle] remoteExec ["setPilotCameraTarget", (driver _vehicle), false];
};
