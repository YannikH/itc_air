params ["_display"];

_output = ["FOV", "", "", "", "","", "", "", "", "","", "", "","SWAP","TAD","WPN","SMS","LST"];

_map = _display getVariable "tad_map";
_map ctrlSetFade 0;
_mapSize = (ctrlPosition _map) select 3;
(_display getVariable "background") ctrlSetFade 1;
(_display getVariable "background") ctrlCommit 0;
_fov = _display getVariable "tad_fov";
_output set [0, format["FOV %1", round(_fov * 100)]];

_plane = (vehicle player);
_map drawIcon ["itc_air\data\UI\WPT32.paa", [1,1,1,1], ((_plane getVariable "tgp_dir") select 1),  15,15, 0, ".", 0, 0.1, "PuristaMedium", "center"];
_map drawIcon ["itc_air\data\UI\PLN32.paa", [1,1,1,1], getPos _plane,  45,45, getDir _plane, ".", 0, 0.1, "PuristaMedium", "center"];
_map ctrlMapAnimAdd [0, _fov, (getPosASL player)];
ctrlMapAnimCommit _map;
_map ctrlCommit 0;
_output
