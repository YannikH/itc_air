params["_plane"];
104 cutText ["", "PLAIN"];

//this should kill the marker
[_plane, "laser_ir", false] call itc_air_common_fnc_set_var;
[_plane] remoteExec ["itc_air_ir_laser_fnc_toggle_drawing", 0, false];
