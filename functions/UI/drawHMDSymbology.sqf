params ["_plane"];

_inTGP = (cameraView == "GUNNER");

_waypoints = [] call ace_microdagr_fnc_deviceGetWaypoints;
_hasWP = (count _waypoints > 0);

_curWP = ["NO WP", [0,0,0]];
if(_hasWP) then {
    _curWP = _waypoints select ITC_AIR_CURRENTWP;
};
_curWP params ["_wpName", "_wpPos"];
_distToWP = _plane distance _wpPos;

//HMD CENTERPOINT, no need to put this in a function
["<t color='#00ff00' size = '.5'>+</t>",-1,0.485,1,0,0, 794] spawn BIS_fnc_dynamicText;

[_plane, _curWP] call itc_air_ui_fnc_poi_markers;
[_plane, _curWP] call itc_air_ui_fnc_tof;
