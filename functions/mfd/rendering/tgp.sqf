_plane = (vehicle player);
_output = ["", "", "", "", "", "", "", "", "", "", "", "", "","SWAP","TAD","WPN","SMS","LST"];

_output set [0, if(_plane getVariable "laser_ir") then [{"MRK ON"},{"MRK OFF"}]];
_output set [1, format["%1 Hz", (_plane getVariable "laser_pulse")]];

_output set [5, format["XMIT %1", (_plane getVariable "laser_code_xmit")]];
_output set [6, format["RECV %1",( _plane getVariable "laser_code_recv")]];
_output set [7, "LST OFF"];

_output
