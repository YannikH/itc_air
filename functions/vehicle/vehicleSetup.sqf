params ["_vehicle"];
player setVariable ["isCoPilot", false];
_playerTurret = ([player] call ace_common_fnc_getTurretIndex) select 0;
if(!isNil {_playerTurret}) then {
  _coPilotTurret = ([vehicle player] call ace_common_fnc_getTurretCopilot) select 0;
  player setVariable ["isCoPilot", (_playerTurret == _coPilotTurret)];
};
if(player != driver _vehicle && player != gunner _vehicle && !(player getVariable "isCoPilot")) exitWith {
  _vehicle setVariable ["mfd_l", false];
  _vehicle setVariable ["mfd_r", false];
  _vehicle setVariable ["hmd", false];
  _vehicle setVariable ["tgp", false];
  _vehicle setVariable ["rover", false];
};
_vehicle addEventHandler ["fired", {
    _vehicle setVariable ["bomb_flying", _this select 6];
}];

if(isNIl{missionNameSpace getVariable "SADL"}) then {
  [missionNameSpace, "SADL", [_vehicle]] call itc_air_common_fnc_set_var;
} else {
  _SADL = missionNameSpace getVariable "SADL";
    [missionNameSpace, "SADL", _SADL + [_vehicle]] call itc_air_common_fnc_set_var;
};

_capableHMD = getNumber (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "itc_air" >> "hmd");
_capableTGP = getNumber (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "itc_air" >> "tgp");
_capableMFD_L = isClass (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "itc_air" >> "mfd_left");
if(_capableMFD_L) then {
  _vehicle setVariable["mfd_l_pages",(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "itc_air" >> "mfd_left" >> "pages")  call BIS_fnc_getCfgData];
  _vehicle setVariable["mfd_l_quick",["SWAP"] + ((configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "itc_air" >> "mfd_left" >> "shortcuts")  call BIS_fnc_getCfgData) + ["LST"]];
};
_capableMFD_R = isClass (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "itc_air" >> "mfd_right");
if(_capableMFD_R) then {
  _vehicle setVariable["mfd_r_pages",(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "itc_air" >> "mfd_right" >> "pages")  call BIS_fnc_getCfgData];
  _vehicle setVariable["mfd_r_quick",["SWAP"] + ((configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "itc_air" >> "mfd_right" >> "shortcuts")  call BIS_fnc_getCfgData) + ["LST"]];
};
_capableRover = getNumber (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "itc_air" >> "rover" >> "capable");
_roverFreq = getNumber (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "itc_air" >> "rover" >> "frequency_default");
_seat = (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "itc_air" >> "targeting_user")  call BIS_fnc_getCfgData;
_fovSteps = [_vehicle] call itc_air_common_fnc_get_fov_steps;

_vehicle setVariable ["fuel_lock", false];
_vehicle setVariable ["hmd", (_capableHMD == 1)];
_vehicle setVariable ["tgp", (_capableTGP == 1)];
_vehicle setVariable ["rover", (_capableRover == 1)];
[_vehicle, "rover_freq", str _roverFreq] call itc_air_common_fnc_set_var;
_vehicle setVariable ["mfd_l", _capableMFD_L];
_vehicle setVariable ["mfd_r", _capableMFD_R];
_vehicle setVariable ["seat", _seat];

_vehicle setVariable ["laser_code_xmit", 1111];
_vehicle setVariable ["laser_code_recv", 1111];

[_vehicle, "laser_ir", false] call itc_air_common_fnc_set_var;
[_vehicle, "laser_pulse", 0] call itc_air_common_fnc_set_var;

_vehicle setVariable ["tgp_fov", (24 / 120)];
_vehicle setVariable ["tgp_fov_index", 0];
_vehicle setVariable ["tgp_fov_steps", _fovSteps];
_vehicle setVariable ["tgp_mode", 0];

_vehicle setVariable ["stpt_name", "NO WP"];
_vehicle setVariable ["stpt_pos", [0,0,0]];

_vehicle setVariable ["SOI", "HMCS"];
[_vehicle, "SADL_GRP", 1] call itc_air_common_fnc_set_var;
[_vehicle, "SADL_ID", 1] call itc_air_common_fnc_set_var;
[_vehicle, "SADL_SPI", false] call itc_air_common_fnc_set_var;

[{
    if(!((vehicle player) isKindOf "Air")) exitWith {
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };
    //get basic info used for the HMD/TGP
    _this select 0 params ["_plane"];

    //config plane data
    _dir = [_plane] call itc_air_common_fnc_get_turret_target;
    [_plane, "tgp_dir", _dir] call itc_air_common_fnc_set_var;
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
