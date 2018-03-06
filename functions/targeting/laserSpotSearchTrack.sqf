if(!((vehicle player) isKindOf "Air")) exitWith {};
_capable = (configFile >> "CfgVehicles" >> (typeOf vehicle player) >> "itc_air" >> "tgp")  call BIS_fnc_getCfgData;
if(isNil {_capable}) exitWith {};

_plane = vehicle player;
_target = getPilotCameraTarget _plane;

_target params ["_tracking", "_position", "_object"];

_searchPos = getpos _plane;
if(_tracking) then {
    _searchPos = _position;
    _lasers = nearestObjects [getpos _plane, ["laserTarget"], 8000];
    {
        //player sideChat format["%1",[_plane, "VIEW"] checkVisibility [getPos _plane, getPos _x]];
        if((_x != laserTarget _plane) && ([_plane, "VIEW"] checkVisibility [getPosASL _plane, getPosASL _x] > 0.5)) exitWith {
            _plane setPilotCameraTarget _x;
            player sideChat "TRACKING LASER SPOT";
        };
    }forEach _lasers;
};
