params ["_shift"];
_plane = vehicle player;

if(!((vehicle player) isKindOf "Air")) exitWith {ITC_AIR_BROADCASTING = false};
_capable = (configFile >> "CfgVehicles" >> (typeOf _plane) >> "itc_air" >> "rover" >> "capable")  call BIS_fnc_getCfgData;
if(isNil {_capable}) exitWith {ITC_AIR_BROADCASTING = false};

if (isNil{_plane getVariable "ROVER_FREQ"}) then {
    _default_freq = format["%1", (configFile >> "CfgVehicles" >> (typeOf _plane) >> "itc_air" >> "rover" >> "frequency_default")  call BIS_fnc_getCfgData];
    _plane setVariable ["ROVER_FREQ",_default_freq];
};

_currentFreq = parseNumber (_plane getVariable "ROVER_FREQ");
_currentFreq = _currentFreq + _shift;
_plane setVariable ["ROVER_FREQ",str _currentFreq];
player sideChat format["Rover broadcast frequency set to: %1", _plane getVariable "ROVER_FREQ"];