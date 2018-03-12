_plane = vehicle player;
_pulse_modes = [0, 2, 4, 10, 30];
_pulse = _plane getVariable "laser_pulse";
_index = (_pulse_modes find _pulse) + 1;
if(_index >= count _pulse_modes) then {_index = 0};
_freq = _pulse_modes select _index;
_plane setVariable ["laser_pulse", _freq, true];
player sideChat format ["Pulse set to %1 hz", _freq];