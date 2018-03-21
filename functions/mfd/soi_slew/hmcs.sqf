_plane = vehicle player;

if(_plane getVariable "hmd" && _plane getVariable "tgp") then {
  _targetPos = (ATLtoASL (screenToWorld [0.5,0.5]));
  _plane setPilotCameraTarget _targetPos;
}
