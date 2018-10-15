params ["_frequency"];

private _plane = nil;
{
    if(
        ((_x getVariable ["itc_air_rover_xmit_freq",""]) == _frequency) &&
        (_x getVariable ["itc_air_rover_broadcasting", false])
    ) exitWith {
        _plane = _x;
    };
} forEach vehicles;

_plane
