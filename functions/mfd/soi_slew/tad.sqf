params ["_display", "_stpt"];
_plane = vehicle player;
_centerPos = if(_display getVariable "tad_expand" == 0) then [{getPos _plane}, {_display getVariable "tad_pos"}];
_fov = _display getVariable "tad_fov";
_target = _centerPos vectorAdd ((_display getVariable "tad_cursor") vectorMultiply _fov);
_target = [_target select 0, _target select 1, getTerrainHeightASL _target];
if(_stpt) then {
  [_target] call itc_air_steerpoints_fnc_store;
} else {
  _plane setPilotCameraTarget _target;
};
