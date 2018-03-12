if(!((vehicle player) isKindOf "Air")) exitWith {ITC_AIR_IRLAS = false};
_capable = (configFile >> "CfgVehicles" >> (typeOf vehicle player) >> "itc_air" >> "tgp")  call BIS_fnc_getCfgData;
if(isNil {_capable} || !ITC_AIR_BROADCASTING) exitWith {
    ITC_AIR_IRLAS = false;
    [ITC_AIR_IRLAS, (vehicle player)] remoteExec ["itc_air_ir_laser_fnc_toggle_drawing", 0, false];
};
if(ITC_AIR_IRLAS) exitWith {
    ITC_AIR_IRLAS = false;
    [ITC_AIR_IRLAS, (vehicle player)] remoteExec ["itc_air_ir_laser_fnc_toggle_drawing", 0, false];
    player sideChat "IR Laser off";
};
ITC_AIR_IRLAS = true;

[ITC_AIR_IRLAS, (vehicle player)] remoteExec ["itc_air_ir_laser_fnc_toggle_drawing", 0, false];

player sideChat "IR Laser on";