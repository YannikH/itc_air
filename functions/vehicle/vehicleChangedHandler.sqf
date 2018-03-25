params ["_player", "_newVehicle"];

{
  _x cameraEffect ["terminate","Back"];
  _x cameraEffect ["terminate","Back"];
  camDestroy _x;
} forEach ITC_AIR_MFD_CAMS;
ITC_AIR_MFD_CAMS = [];

if (isNull _newVehicle) exitWith {ITC_AIR_INPLANE = false};
if(isClass (configFile >> "CfgVehicles" >> (typeOf _newVehicle) >> "itc_air")) exitWith {
  [_newVehicle] call itc_air_vehicle_fnc_setup;
};
    /*

_newVehicle addEventHandler ["fired", {
    ITC_AIR_FLYING = _this select 6;
}];

_capableHMD = getNumber (configFile >> "CfgVehicles" >> (typeOf _newVehicle) >> "itc_air" >> "hmd");
_capableTGP = getNumber (configFile >> "CfgVehicles" >> (typeOf _newVehicle) >> "itc_air" >> "tgp");
_capabilities = [_capableHMD, _capableTGP];

ITC_AIR_INPLANE = true;

[{
    if(!ITC_AIR_INPLANE || !((vehicle player) isKindOf "Air")) exitWith {
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };
    //get basic info used for the HMD/TGP
    _plane = _this select 0 select 0;
    _this select 0 params ["_plane", "_options"];
    _options params ["_tgp", "_hmd"];
    _inTGP = (cameraView == "GUNNER");
    if(_inTGP && _tgp == 1) then {
        [_plane] call itc_air_ui_fnc_tgp_symbology;
    };
    if(!_inTGP && _hmd == 1) then {
        [_plane] call itc_air_ui_fnc_hmd_symbology;
    };
}, 0, [_newVehicle, _capabilities]] call CBA_fnc_addPerFrameHandler;



    _tgpInfo = getPilotCameraTarget (vehicle player);
    _tgpInfo params ["_tracking", "_trackPoint", "_trackObject"];
    _waypoints = [] call ace_microdagr_fnc_deviceGetWaypoints;
    _hasWP = (count _waypoints > 0);
    _capableHMD = (configFile >> "CfgVehicles" >> (typeOf vehicle player) >> "itc_air" >> "hmd")  call BIS_fnc_getCfgData;
    _capableTGP = (configFile >> "CfgVehicles" >> (typeOf vehicle player) >> "itc_air" >> "tgp")  call BIS_fnc_getCfgData;

    private ["_curWP", "_wpName", "_wpPos", "_distToWP"];
    _curWP = ["NO WP", [0,0,0]];
    if(_hasWP) then {
        _curWP = _waypoints select ITC_AIR_CURRENTWP;
    };
    _curWP params ["_wpName", "_wpPos"];
    _distToWP = _plane distance _wpPos;

    if(!_inTGP && !isNil {_capableHMD}) then { //DRAW HMD ELEMENTS
        if(_hasWP) then { //DRAW CURRENT STEERPOINT
            //draw position
            drawIcon3d ["itc_air\data\UI\WP.paa", [0,1,0,0.6], ASLtoAGL _wpPos, 0.5, 0.5, 0, format["%1", round (_distToWP / 1000)], 1, 0.05, "PuristaMedium", "center"] ;
        };
        if(_tracking) then { //DRAW CURRENT TGP TRACK POINT
            drawIcon3d ["itc_air\data\UI\WP.paa", [0,1,0,0.6], ASLtoAGL _trackPoint, 0.5, 0.5, 0, "", 1, 0.05, "PuristaMedium", "center"] ;
        };
    } else { //DRAW TGP ELEMENTS
        if(!isNil {_capableTGP}) then {
            //CAUTION CHECK ATTITUDE
            _pitchBank = _plane call BIS_fnc_getPitchBank;
            _pitchBank params ["_pitch", "_bank"];
            if(_bank > 75 || _bank < -75 || _pitch > 20 || _pitch < -20) then {
                ["<t color='#ff0000' size = '.8'>CHECK<br />ATTITUDE</t>",-1,1,0,0,0, 790] spawn BIS_fnc_dynamicText;
            };
            //SITUATIONAL AWARENESS CUE
            _yawPitchPodRad =  getPilotCameraRotation _plane;
            _yawPitchPodRad params ["_yawRad", "_pitchRad"];
            _yawPod = (_yawPitchPodRad select 0) * 180 / pi;
            _pitchPod = (_yawPitchPodRad select 1) * 180 / pi;
            _range = (0.8 / 90 * (90 -_pitchPod));
            _x = 0 + (sin(_yawPod) * _range * -1);
            _y = 0.475 + (cos(_yawPod) * _range * -1);
            ["<img size='0.2' image='itc_air\data\UI\SAC.paa' />",_x,_y,0,0,0, 791] spawn BIS_fnc_dynamicText;

            //NORTH INDICATOR

            //LSR STATUS
            _str = "";
            _laserOn = (!isNull (laserTarget vehicle player));
            if(_laserOn && ITC_AIR_IRLAS) then {
                _str = "B";
            } else {
                if(_laserOn) then {
                    _str = "L";
                };
                if(ITC_AIR_IRLAS) then {
                    _str = "P";
                };
            };
            [format ["<t color='#ffffff' size = '1'>%1</t>",_str],0.15,0.757,1,0,0, 794] spawn BIS_fnc_dynamicText;

            //IF TRACKING AN OBJECT/POINT
            if(!isNull _trackObject) then {
                if(_trackObject isKindOf "laserTarget") then {
                    ["LST",0.8,0.1,1,0,0, 795] spawn BIS_fnc_dynamicText;
                };
            };
        };
    };
}, 0, [_newVehicle]] call CBA_fnc_addPerFrameHandler;
//occasional refresh
[{
    if(!ITC_AIR_INPLANE || !((vehicle player) isKindOf "Air")) exitWith {
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };

    //get basic info used for the HMD/TGP
    _plane = _this select 0 select 0;
    _inTGP = (cameraView == "GUNNER");
    _tgpInfo = getPilotCameraTarget (vehicle player);
    _tgpInfo params ["_tracking", "_trackPoint", "_trackObject"];
    _waypoints = [] call ace_microdagr_fnc_deviceGetWaypoints;
    _hasWP = (count _waypoints > 0);
    _weapon = currentWeapon _plane;
    _capableHMD = (configFile >> "CfgVehicles" >> (typeOf vehicle player) >> "itc_air" >> "hmd")  call BIS_fnc_getCfgData;
    _capableTGP = (configFile >> "CfgVehicles" >> (typeOf vehicle player) >> "itc_air" >> "tgp")  call BIS_fnc_getCfgData;

    private ["_curWP", "_wpName", "_wpPos", "_distToWP"];
    _curWP = ["NO WP", [0,0,0]];
    if(_hasWP) then {
        _curWP = _waypoints select ITC_AIR_CURRENTWP;
    };
    _curWP params ["_wpName", "_wpPos"];
    _distToWP = _plane distance _wpPos;

    if(!_inTGP && !isNil {_capableHMD}) then { //DRAW HUD ELEMENTS
        //HMD CENTERPOINT
        ["<t color='#00ff00' size = '.5'>+</t>",-1,0.485,1,0,0, 794] spawn BIS_fnc_dynamicText;

        if(_hasWP) then { //IF THERE IS A STEERPOINT;
            _tof = _distToWP / (0.01 + (vectorMagnitude (velocity vehicle player)));
            _tofStr = format["%1:%2",round(_tof / 60), round (_tof % 60)];
            [format["<t color='#00ff00' size = '1'>%1<br/>%2</t>",_wpName, _tofStr],0.8,1,1,0,0, 792] spawn BIS_fnc_dynamicText;
        };
    } else { //DRAW TGP ELEMENTS
        if(!isNil {_capableTGP}) then {
            if(_tracking) then { //IF TRACKING
                //DRAW GRID
                _gridArea = [worldName] call ace_common_fnc_getMGRSdata;
                _grid = [_trackPoint] call ace_common_fnc_getMapGridFromPos;
                _str = format ["%1  %2  %3  %4", _gridArea select 0, _gridArea select 1, _grid select 0, _grid select 1];
                [format["<t color='#ffffff' size = '1'>%1</t>",_str],-1,1.2,1,0,0, 793] spawn BIS_fnc_dynamicText;

                //DRAW YARDSTICK
                _fovRad = call cba_fnc_getFov select 0;
                _fovDeg = _fovRad * 180 / pi;
                _ydStick = (tan(_fovDeg / 2) * _distToWP) / 8.37931034;
                if(_fovDeg > 10) then {
                    _ydStick = (tan(_fovDeg / 2) * _distToWP) / 16.2;
                };

                [format["<t color='#ffffff' size = '1'>%1 M</t>",round _ydStick],0.6,0.485,1,0,0, 792] spawn BIS_fnc_dynamicText;
            };

            if(_hasWP && (vectorMagnitude (velocity ITC_AIR_FLYING) != 0)) then { //IF THERE IS A STEERPOINT, AND PLANE IS MOVING
                _bombInAir = false;
                if(!isNil{ITC_AIR_FLYING}) then {_bombInAir = (alive ITC_AIR_FLYING)};
                if(_bombInAir) then {
                    _bombDist = ITC_AIR_FLYING distance _wpPos;
                    _tof = _bombDist / (vectorMagnitude (velocity ITC_AIR_FLYING));
                    _tofStr = format["%1:%2",round(_tof / 60), round (_tof % 60)];
                    [format["%1 %2",_wpName, _tofStr],0.6,1.2,1,0,0,796] spawn BIS_fnc_dynamicText;
                } else {
                    _initSpeed = (configFile >> "CfgMagazines" >> (currentMagazine _plane) >> "initSpeed")  call BIS_fnc_getCfgData;
                    _speed = _initSpeed + (vectorMagnitude (velocity _plane));
                    _tof = _distToWP / _speed;
                    _tofStr = format["%1:%2",round(_tof / 60), round (_tof % 60)];
                    [format["%1 %2",_wpName, _tofStr],0.6,1.2,1,0,0,796] spawn BIS_fnc_dynamicText;
                };
            };
        };
    };

}, 1, [_newVehicle]] call CBA_fnc_addPerFrameHandler;
*/
