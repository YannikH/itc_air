_plane = vehicle player;
if(!((_plane) isKindOf "Air")) exitWith {ITC_AIR_IRLAS = false};
_capable = (configFile >> "CfgVehicles" >> (typeOf _plane) >> "itc_air" >> "tgp")  call BIS_fnc_getCfgData;
if(isNil {_capable} || !ITC_AIR_BROADCASTING) exitWith {
    ITC_AIR_IRLAS = false;
    [ITC_AIR_IRLAS, (_plane)] remoteExec ["itc_air_ir_laser_fnc_toggle_drawing", 0, false];
};
if(isNil{_plane getVariable "laser_pulse"}) then {_plane setVariable ["laser_pulse", false, true];};
if(ITC_AIR_IRLAS) exitWith {
    ITC_AIR_IRLAS = false;
    [ITC_AIR_IRLAS, (_plane)] remoteExec ["itc_air_ir_laser_fnc_toggle_drawing", 0, false];
    player sideChat "IR Laser off";
};
ITC_AIR_IRLAS = true;

[ITC_AIR_IRLAS, (_plane)] remoteExec ["itc_air_ir_laser_fnc_toggle_drawing", 0, false];

player sideChat "IR Laser on";