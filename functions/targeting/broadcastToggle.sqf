[] spawn {
    if(!((vehicle player) isKindOf "Air")) exitWith {ITC_AIR_BROADCASTING = false};
    _capable = (configFile >> "CfgVehicles" >> (typeOf vehicle player) >> "itc_air" >> "rover" >> "capable")  call BIS_fnc_getCfgData;
    if(isNil {_capable}) exitWith {ITC_AIR_BROADCASTING = false};
    if(ITC_AIR_BROADCASTING) exitWith {
        ITC_AIR_BROADCASTING = false;
        player sideChat format["Datalink broadcasting: %1 on %2", ITC_AIR_BROADCASTING, (vehicle player) getVariable "ROVER_FREQ"];
    };
    ITC_AIR_BROADCASTING = true;
    if (isNil{(vehicle player) getVariable "ROVER_FREQ"}) then {
        _default_freq = format["%1", (configFile >> "CfgVehicles" >> (typeOf vehicle player) >> "itc_air" >> "rover" >> "frequency_default")  call BIS_fnc_getCfgData];
        (vehicle player) setVariable ["ROVER_FREQ",_default_freq];
    };
    player sideChat format["Datalink broadcasting: %1 on %2", ITC_AIR_BROADCASTING, (vehicle player) getVariable "ROVER_FREQ"];

    _handle = [{  
        _plane = vehicle player;
        if (
            !alive player ||
            !ITC_AIR_BROADCASTING ||
            (!((vehicle player) isKindOf "Air"))
        ) exitWith {
            ITC_AIR_BROADCASTING = false;
            ITC_AIR_IRLAS = false;
            [ITC_AIR_IRLAS, (vehicle player)] remoteExec ["itc_fnc_targeting_laser_ir_local", 0, false];
            [false, _plane,[],[], _plane getVariable "ROVER_FREQ", 0, 0.5] remoteExec ["itc_fnc_broadCast", 0, false];
            [_this select 1] call CBA_fnc_removePerFrameHandler;  
        };

        _curFov = call cba_fnc_getFov select 0;
        if(cameraView == "GUNNER" && (_curFov != ITC_AIR_CURFOV)) then {
            ITC_AIR_CURFOV = _curFov;
        };

        if(cameraView == "GUNNER" && currentVisionMode player != ITC_AIR_CURVIS) then {
            ITC_AIR_CURVIS = currentVisionMode player;
        };

        _target = getPilotCameraTarget (_plane);
        _tgpdir = _plane vectorModelToWorld (getPilotCameraDirection _plane);
        _plane setVariable ["itc_datalink",[true, _target, _tgpdir, _plane getVariable "ROVER_FREQ", ITC_AIR_CURVIS, ITC_AIR_CURFOV],true];
    }, 0, []] call CBA_fnc_addPerFrameHandler;
};