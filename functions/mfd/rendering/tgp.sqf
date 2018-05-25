params ["_display"];
_plane = (vehicle player);
_output = ["", "", "", "", "", "", "", "", "+", "-", "", "", ""];

if(isNil{_display getVariable "feed_camera"}) then {
  _cam = [_display, _display getVariable "feed_texture"] call itc_air_tgp_fnc_create_camera;
  _display setVariable ["feed_camera", _cam];
};

(_display getVariable "background") ctrlSetFade 1;
(_display getVariable "background") ctrlCommit 0;
(_display getVariable "feed_view") ctrlSetFade 0;
(_display getVariable "feed_view") ctrlCommit 0;
(_display getVariable "feed_cross") ctrlSetFade 0;
(_display getVariable "feed_cross") ctrlCommit 0;

_plane = (vehicle player);
_index = _plane getVariable "tgp_mode";
_visMode = ["DTV", "NTV", "FLIR"] select _index;

_output set [0, if(_plane getVariable "laser_ir") then [{"MRK ON"},{"MRK OFF"}]];
_output set [1, format["%1 Hz", (_plane getVariable "laser_pulse")]];
_output set [2, _visMode];

_output set [5, format["XMIT %1", (_plane getVariable "ace_laser_code")]];
_output set [6, format["RECV %1",( _plane getVariable "laser_code_recv")]];
_output set [7, (_plane getVariable "tgp_lsst_mode")];

_output
