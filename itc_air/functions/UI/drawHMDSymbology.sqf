params ["_plane"];

_inTGP = (cameraView == "GUNNER");

_wpName = _plane getVariable "stpt_name";
_wpPos = _plane getVariable "stpt_pos";
_curWP = [_wpName, _wpPos];
_distToWP = _plane distance _wpPos;

//HMD CENTERPOINT, no need to put this in a function
["<t color='#bae5bb' size = '.5'>+</t>",-1,0.485,1,0,0, 794] spawn BIS_fnc_dynamicText;

[_plane, _curWP] call itc_air_ui_fnc_poi_markers;
//[_plane, _curWP] call itc_air_ui_fnc_tof;
