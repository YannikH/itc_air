params ["_display"];
_plane = (vehicle player);
_output = ["", "", "", "", "", "", "", "", "+", "-", "", "", ""];

_plane = (vehicle player);
_index = _plane getVariable "tgp_mode";
_visMode = ["DTV", "NTV", "FLIR"] select _index;
_output set [2, _visMode];

_output
