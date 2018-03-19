_plane = vehicle player;
if(!((_plane) isKindOf "Air")) exitWith {};

if(!(_plane getVariable "tgp")) exitWith {
    _plane setVariable ["laser_ir", false, true];
    [_plane] remoteExec ["itc_air_ir_laser_fnc_toggle_drawing", 0, false];
};

if(_plane getVariable "laser_ir") exitWith {
    _plane setVariable ["laser_ir", false, true];
    [_plane] remoteExec ["itc_air_ir_laser_fnc_toggle_drawing", 0, false];
};

_plane setVariable ["laser_ir", true, true];
[_plane] remoteExec ["itc_air_ir_laser_fnc_toggle_drawing", 0, false];
