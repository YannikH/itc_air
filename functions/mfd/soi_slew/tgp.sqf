params ["_display", "_stpt"];
_plane = vehicle player;

if(_stpt) then {
  [nil] call itc_air_steerpoints_fnc_store;
} else {
  if(_plane getVariable "tgp" && _plane getVariable "hmd") then {
    _targetPos = ASLtoAGL ((getPilotCameraTarget _plane) select 1);
    _nearestObjects = nearestObjects [_targetPos, ["AllVehicles"], 20];
    if(!isNil {_nearestObjects} && count _nearestObjects > 0) then {
      _plane setPilotCameraTarget (_nearestObjects select 0);
    };
  };
};
