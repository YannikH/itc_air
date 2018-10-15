if(!itc_air_rover_broadcasting) exitWith {};
if(cba_missionTime < itc_air_rover_lastUpdate + itc_air_rover_updateRate) exitWith {};
itc_air_rover_lastUpdate = cba_missionTime;
if(isNil {itc_air_rover_receivers} || {count itc_air_rover_receivers == 0}) exitWith {};
params["_plane"];
//systemChat "broadcasting";

private _curFov = if(cameraView == "GUNNER") then[{call cba_fnc_getFov select 0},{_plane getVariable "tgp_fov"}];
if(_curFov != ITC_AIR_CURFOV) then {
  ITC_AIR_CURFOV = _curFov;
  //[_plane, "itc_air_rover_visfov", ITC_AIR_CURFOV] call itc_air_common_fnc_set_var;
  [_plane,["itc_air_rover_visfov", ITC_AIR_CURFOV]] remoteExec ["setVariable", itc_air_rover_receivers, false];
};

private _curVis = if(cameraView == "GUNNER") then [{currentVisionMode player},{_plane getVariable "tgp_mode"}];
if(_curVis != ITC_AIR_CURVIS) then {
  ITC_AIR_CURVIS = _curVis;
  //[_plane, "itc_air_rover_vismode", ITC_AIR_CURVIS] call itc_air_common_fnc_set_var;
  [_plane,["itc_air_rover_vismode", ITC_AIR_CURVIS]] remoteExec ["setVariable", itc_air_rover_receivers, false];
};

private _target = ([_plane] call itc_air_common_fnc_get_turret_target) # 1;
if((itc_air_network_target distance _target) > 0.5) then {
  //[_plane, "itc_air_network_target", _target] call itc_air_common_fnc_set_var;
  [_plane,["itc_air_network_target", _target]] remoteExec ["setVariable", itc_air_rover_receivers, false];
};
