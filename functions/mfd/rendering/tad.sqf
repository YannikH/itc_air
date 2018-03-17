
_output = ["FOV", "", "", "", "","", "", "", "", "","", "", "","SWAP","TAD","WPN","SMS",""];
params ["_display"];  
_map = (_display displayCtrl (1200));
_map ctrlSetFade 0;
_mapSize = (ctrlPosition _map) select 3;
(_display displayCtrl (1201)) ctrlSetFade 1;
(_display displayCtrl (1201)) ctrlCommit 0;

_plane = (vehicle player);
_tgp = [vehicle player] call itc_air_common_fnc_get_turret_target;
_map drawIcon ["itc_air\data\UI\WPT32.paa", [1,1,1,1], (_tgp select 1),  15,15, 0, ".", 0, 0.1, "PuristaMedium", "center"];
_map drawIcon ["itc_air\data\UI\PLN32.paa", [1,1,1,1], getPos _plane,  45,45, getDir _plane, ".", 0, 0.1, "PuristaMedium", "center"];
_map ctrlMapAnimAdd [0, 0.5 / _mapSize, (getPosASL player)];
ctrlMapAnimCommit _map;
_map ctrlCommit 0;
_output