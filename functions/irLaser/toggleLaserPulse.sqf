_plane = vehicle player;

_pulse = _plane getVariable "laser_pulse";
_plane setVariable ["laser_pulse", !_pulse, true];