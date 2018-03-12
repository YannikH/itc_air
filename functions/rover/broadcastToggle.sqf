[] spawn {
_plane = vehicle player;

//Check if the vehicle is an airplane
if(!((_plane) isKindOf "Air")) exitWith {ITC_AIR_BROADCASTING = false};
//Check if plane is already broadcasting, disable it if this is the case
if(ITC_AIR_BROADCASTING) exitWith {
    ITC_AIR_BROADCASTING = false;
    player sideChat format["Datalink broadcasting: %1 on %2", ITC_AIR_BROADCASTING, _plane getVariable "ROVER_FREQ"];
};

//find out the plane is rover capable
_capable = (configFile >> "CfgVehicles" >> (typeOf _plane) >> "itc_air" >> "rover" >> "capable")  call BIS_fnc_getCfgData;
_operator = (configFile >> "CfgVehicles" >> (typeOf _plane) >> "itc_air" >> "targeting_user")  call BIS_fnc_getCfgData;
if(isNil {_capable}) exitWith {ITC_AIR_BROADCASTING = false};
//find out if the player is the rover operator
if(_capable == 1) then {
    if(
    !(_operator == "pilot" && driver _plane == player) ||
    !(_operator == "gunner" && gunner _plane == player)
    ) exitWith {ITC_AIR_BROADCASTING = false;};
};

ITC_AIR_BROADCASTING = true;
[0] call itc_fnc_rover_cycle_code; //Ensure the vehicle has a rover code - this command will initialise the code.

player sideChat format["Datalink broadcasting: %1 on %2", ITC_AIR_BROADCASTING, _plane getVariable "ROVER_FREQ"];

_handle = [{  
    (_this select 0) params ["_operator"];
    _plane = vehicle player;
    if (
        !alive player ||
        !ITC_AIR_BROADCASTING ||
        (!((vehicle player) isKindOf "Air"))
    ) exitWith {
        ITC_AIR_BROADCASTING = false;
        ITC_AIR_IRLAS = false;
        [ITC_AIR_IRLAS, (vehicle player)] remoteExec ["itc_fnc_targeting_laser_ir_local", 0, false];
        _plane setVariable ["itc_datalink",[false, [], [], _plane getVariable "ROVER_FREQ", 0, 0.5],true];
        [_this select 1] call CBA_fnc_removePerFrameHandler;  
    };

    _curFov = call cba_fnc_getFov select 0;
    if(cameraView == "GUNNER" && (_curFov != ITC_AIR_CURFOV)) then {
        ITC_AIR_CURFOV = _curFov;
    };

    if(cameraView == "GUNNER" && currentVisionMode player != ITC_AIR_CURVIS) then {
        ITC_AIR_CURVIS = currentVisionMode player;
    };

    _turret = -1;
    if(_operator == "gunner") then {_turret = 0;};
    _target = [_plane, _turret] call itc_air_common_fnc_get_turret_target;
    _tgpdir = _plane vectorModelToWorld (getPilotCameraDirection _plane);
    _plane setVariable ["itc_datalink",[true, _target, _tgpdir, _plane getVariable "ROVER_FREQ", ITC_AIR_CURVIS, ITC_AIR_CURFOV],true];
}, 0, [_operator]] call CBA_fnc_addPerFrameHandler;
};