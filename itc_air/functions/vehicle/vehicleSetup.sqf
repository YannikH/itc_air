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
/*
if(isNIl{SADL}) then {
  [missionNameSpace, "SADL", [_vehicle]] call itc_air_common_fnc_set_var;
} else {
  if(!(_vehicle in SADL)) then {
    [missionNameSpace, "SADL", SADL + [_vehicle]] call itc_air_common_fnc_set_var;
  };
};
*/
_vehicle setVariable ["itc_air_options", []];
_vehicle setVariable ["itc_air_systems_pfh", []];
private _systems = (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "itc_air" >> "systems") call BIS_fnc_getCfgData;
{
  private _funcName = format["itc_air_%1_fnc_setup",toLower _x];
  private _func = (missionNamespace getVariable _funcName);
  if(!isNil {_func}) then {
    [_vehicle] call _func;
  };
}forEach _systems;
_vehicle setVariable ["itc_air_systems", _systems];
_capableHMD = getNumber (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "itc_air" >> "hmd");
_capableTGP = getNumber (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "itc_air" >> "tgp");
_hasWSO = getNumber (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "itc_air" >> "wso");
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
_seat = (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "itc_air" >> "targeting_user")  call BIS_fnc_getCfgData;
_fovSteps = [_vehicle] call itc_air_common_fnc_get_fov_steps;



_vehicle setVariable ["fuel_lock", false];
_vehicle setVariable ["hmd", (_capableHMD == 1)];
_vehicle setVariable ["wso", (_hasWSO == 1)];
_vehicle setVariable ["tgp", (_capableTGP == 1)];
_vehicle setVariable ["mfd_l", _capableMFD_L];
_vehicle setVariable ["mfd_r", _capableMFD_R];
_vehicle setVariable ["seat", _seat];

_vehicle setVariable ["ace_laser_code", 1111];
_vehicle setVariable ["laser_code_recv", 1111];

[_vehicle, "laser_ir", false] call itc_air_common_fnc_set_var;
[_vehicle, "laser_pulse", 0] call itc_air_common_fnc_set_var;

_vehicle setVariable ["tgp_dir", [true, [0,0,0]]];
_vehicle setVariable ["tgp_fov", (24 / 120)];
_vehicle setVariable ["tgp_fov_index", 0];
_vehicle setVariable ["tgp_fov_steps", _fovSteps];
_vehicle setVariable ["tgp_mode", 0];

_vehicle setVariable ["tgp_lsst_mode", "LSS OFF"];

_vehicle setVariable ["stpt_index", 0];
_vehicle setVariable ["stpt_name", "NO WP"];
_vehicle setVariable ["stpt_pos", [0,0,0]];
_vehicle setVariable ["stpt_pos_str", ""];
_vehicle setVariable ["stpt_tof", "N/A"];
if(isNil{_vehicle getVariable "stpt_list"}) then {
  _waypoints = [] call ace_microdagr_fnc_deviceGetWaypoints;
  _vehicle setVariable ["stpt_list", _waypoints];
};

_vehicle setVariable ["playtime", "N/A"];

if(isNil{_vehicle getVariable "paveway_laser_code"}) then {
  _vehicle setVariable ["paveway_laser_code", 1111];
};
if(isNil{_vehicle getVariable "apkws_laser_code"}) then {
  _vehicle setVariable ["apkws_laser_code", 1111];
};

_vehicle setVariable ["SOI", "HMCS"];
[_vehicle, "SADL_GRP", "01"] call itc_air_common_fnc_set_var;
[_vehicle, "SADL_ID", "01"] call itc_air_common_fnc_set_var;
[_vehicle, "SADL_SPI", false] call itc_air_common_fnc_set_var;
if(isNil{_vehicle getVariable "SADL_MSGS"}) then {
  _vehicle setVariable ["SADL_MSGS", [["00-00",["","","","","","","","", "", ""], "00-00"]]];
};

_vehicle setVariable ["rip_mode", "SGL"];
_vehicle setVariable ["rip_qty", 1];
_vehicle setVariable ["rip_dist", 50];
_vehicle setVariable ["rip_cycle", false];

// DRAW STUFF
itc_air_dsms_currentWeapon = "";
[{
    _this select 0 params ["_plane", "_lastFrame"];
    if(!((vehicle player) isKindOf "Air") || !alive _plane) exitWith {
        //[missionNameSpace, "SADL", SADL - [_plane]] call itc_air_common_fnc_set_var;
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };
    //get basic info used for the HMD/TGP
    if(time == _lastFrame) exitWith {};
    _this select 0 set [1, time];
    _inTGP = (cameraView == "GUNNER");

    if(currentWeapon (vehicle player) != itc_air_dsms_currentWeapon) then {
      itc_air_dsms_currentWeapon = currentWeapon (vehicle player);
      if("DSMS" in (_plane getvariable ["itc_air_systems",[]])) then {
        [] call itc_air_dsms_fnc_weaponChanged;
      };
    };

    //config plane data
    _dir = [_plane] call itc_air_common_fnc_get_turret_target;
    if(((_plane getVariable "seat" == "pilot") && (driver _plane == player)) || ((_plane getVariable "seat" == "gunner") && (gunner _plane == player))) then {
      if(_plane getVariable "SADL_SPI" || _plane getVariable "laser_ir" || ITC_AIR_BROADCASTING) then {
        [_plane, "tgp_dir", _dir] call itc_air_common_fnc_set_var;
      } else {
        if(_inTGP) then { //sync to WSO
          [_plane, ["tgp_dir", _dir]] remoteExec ["setVariable", (crew _plane), false];
        } else {
          _plane setVariable ["tgp_dir", _dir];
        };
      };
    };
    _curFov = call cba_fnc_getFov select 0;
    if(cameraView == "GUNNER" && (_curFov != _plane getVariable "tgp_fov")) then {
        _plane setVariable ["tgp_fov",_curFov];
    };

    if(cameraView == "GUNNER" && currentVisionMode player != _plane getVariable "tgp_mode") then {
        _plane setVariable ["tgp_mode",currentVisionMode player];
    };

    //draw UI
    if(_inTGP && _plane getVariable "tgp") then {
        [_plane] call itc_air_ui_fnc_tgp_symbology;
    };
    if(!_inTGP && _plane getVariable "hmd" && _plane getVariable ["itc_air_hmd_on",false]) then {
        [_plane] call itc_air_ui_fnc_hmd_symbology;
    };
    //run laser spot search
    if(_plane getVariable "tgp_lsst_mode" == "LSS") then {
      [_plane] call itc_air_tgp_fnc_laser_spot_search_track;
    };
    if(_plane getVariable "tgp_lsst_mode" == "LST") then {
      _track = typeOf (getPilotCameraTarget (vehicle player) select 2);
      if(_track == "LaserTargetW" && _track == "LaserTargetE") then {_plane setVariable ["tgp_lsst_mode", "LSS OFF"];};
    };
    /*
    if(ITC_AIR_FORCES && !isNil{_plane getVariable "mass"}) then {
      [_plane, time - _lastFrame] call itc_air_vehicle_fnc_apply_forces;
    };
    */
}, 0, [_vehicle, 0]] call CBA_fnc_addPerFrameHandler;

// SLOW UPDATE STUFF
[{
    _this select 0 params ["_plane", "_prevFuel","_lastFrame"];
    if(!((vehicle player) isKindOf "Air") || !alive _plane) exitWith {
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };

    //get basic info used for the HMD/TGP
    if(time == _lastFrame) exitWith {};
    _this select 0 set [2, time];

    _fuel = fuel _plane;
    if(_prevFuel != _fuel) then {
        _consumption = _prevFuel - _fuel;
        _consumptionPerMinute = _consumption * 60;
        _timeLeft = _fuel / _consumptionPerMinute;
        _plane setVariable ["playtime", round _timeLeft];
    };
    (_this select 0) set [1, _fuel];

    if(_plane getVariable "stpt_name" != "NO WP" && (vectorMagnitude (velocity _plane) != 0)) then {
        _distToWP = (_plane getVariable "stpt_pos") distance _plane;
        _tof = _distToWP / (0.01 + (vectorMagnitude (velocity _plane)));
        _tofStr = format["%1:%2",round(_tof / 60), round (_tof % 60)];
        _plane setVariable ["stpt_tof", _tofStr];
    };

    /*
    if(ITC_AIR_FORCES) then {
      _plane setVariable  ["mass",[_plane] call itc_air_ammo_fnc_calculate_mass];
      _plane setVariable  ["drag",[_plane] call itc_air_ammo_fnc_calculate_drag];
    };
    */
}, 1, [_vehicle, 1, 0]] call CBA_fnc_addPerFrameHandler;
