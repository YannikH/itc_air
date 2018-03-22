params ["_stpt"];
_plane = vehicle player;
_targetPos = (ATLtoASL (screenToWorld [0.5,0.5]));

if(_stpt) then {
  [nil] call itc_air_steerpoints_fnc_store;
} else {
  if(_plane getVariable "tgp" && _plane getVariable "hmd") then {
    _targetPos = (ATLtoASL (screenToWorld [0.5,0.5]));
    _plane setPilotCameraTarget _targetPos;
  };
};
