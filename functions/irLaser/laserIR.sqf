_plane = vehicle player;
if(!((_plane) isKindOf "Air")) exitWith {};

if(!(_plane getVariable "tgp")) exitWith {
    [_plane, "laser_ir", false] call itc_air_common_fnc_set_var;
    [_plane] remoteExec ["itc_air_ir_laser_fnc_toggle_drawing", 0, false];
};

if(_plane getVariable "laser_ir") exitWith {
    [_plane, "laser_ir", false] call itc_air_common_fnc_set_var;
    [_plane] remoteExec ["itc_air_ir_laser_fnc_toggle_drawing", 0, false];
};

[_plane, "laser_ir", true] call itc_air_common_fnc_set_var;
[_plane] remoteExec ["itc_air_ir_laser_fnc_toggle_drawing", 0, false];
