params ["_vehicle"];

_vehicle addEventHandler ["fired", {
    _vehicle setVariable ["bomb_flying", _this select 6];
}];

_capableHMD = getNumber (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "itc_air" >> "hmd");
_capableTGP = getNumber (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "itc_air" >> "tgp");
_capableMFD_L = getNumber (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "itc_air" >> "mfd_left");
_capableMFD_R = getNumber (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "itc_air" >> "mfd_right");
_capableRover = getNumber (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "itc_air" >> "rover" >> "capable");
_roverFreq = getNumber (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "itc_air" >> "rover" >> "frequency_default");
_seat = (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "itc_air" >> "targeting_user")  call BIS_fnc_getCfgData;

_vehicle setVariable ["fuel_lock", false];
_vehicle setVariable ["hmd", (_capableHMD == 1)];
_vehicle setVariable ["tgp", (_capableTGP == 1)];
_vehicle setVariable ["rover", (_capableRover == 1)];
_vehicle setVariable ["rover_freq", str _roverFreq, true];
_vehicle setVariable ["mfd_l", (_capableMFD_L == 1)];
_vehicle setVariable ["mfd_r", (_capableMFD_R == 1)];
_vehicle setVariable ["seat", _seat];

_vehicle setVariable ["laser_code_xmit", 1111];
_vehicle setVariable ["laser_code_recv", 1111];

_vehicle setVariable ["laser_ir", false, true];
_vehicle setVariable ["laser_pulse", 0, true];

_vehicle setVariable ["tgp_fov", (24 / 120)];
_vehicle setVariable ["tgp_mode", 0];

_vehicle setVariable ["stpt_name", "NO WP"];
_vehicle setVariable ["stpt_pos", [0,0,0]];

_vehicle setVariable ["SOI", "ITC_AIR_MFD_L"];

[{
    if(!((vehicle player) isKindOf "Air")) exitWith {
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };
    //get basic info used for the HMD/TGP
    _this select 0 params ["_plane"];

    //config plane data
    _plane setVariable ["tgp_dir", [_plane] call itc_air_common_fnc_get_turret_target, true];
    _curFov = call cba_fnc_getFov select 0;
    if(cameraView == "GUNNER" && (_curFov != _plane getVariable "tgp_fov")) then {
        _plane setVariable ["tgp_fov",_curFov];
    };

    if(cameraView == "GUNNER" && currentVisionMode player != _plane getVariable "tgp_mode") then {
        _plane setVariable ["tgp_mode",currentVisionMode player];
    };

    //draw UI
    _inTGP = (cameraView == "GUNNER");
    if(_inTGP && _plane getVariable "tgp") then {
        [_plane] call itc_air_ui_fnc_tgp_symbology;
    };
    if(!_inTGP && _plane getVariable "hmd") then {
        [_plane] call itc_air_ui_fnc_hmd_symbology;
    };

}, 0, [_vehicle]] call CBA_fnc_addPerFrameHandler;
