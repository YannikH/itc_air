params ["_vehicle"];

private _capable = (itc_air_seat_config >> "rover" >> "capable")  call BIS_fnc_getCfgData;
if(isNil {_capable}) exitWith {
  itc_air_rover_broadcasting = false
};
private _roverTurret = getNumber (itc_air_seat_config >> "rover" >> "turret");
_vehicle setVariable ["itc_air_rover_turret",_roverTurret, true];
//find out if the player is the rover operator
itc_air_rover_updateRate = 1;
itc_air_rover_lastUpdate = 0;
itc_air_network_target = ([_vehicle] call itc_air_common_fnc_get_turret_target) # 1;
_roverFreq = getNumber (itc_air_seat_config >> "rover" >> "frequency_default");
[_vehicle, "itc_air_rover_xmit_freq", str _roverFreq] call itc_air_common_fnc_set_var;
[_vehicle, [_vehicle,"itc_air_rover_xmit_freq",str _roverFreq,"ROVER FREQ",{
  [vehicle player, "itc_air_rover_xmit_freq", (vehicle player) getVariable "itc_air_rover_xmit_freq"] call itc_air_common_fnc_set_var;
},"UFC",{((parseNumber _this) > 5240 && (parseNumber _this) < 5850)}, false]] call itc_air_common_fnc_addOption;

_vehicle setVariable ["itc_air_rover_broadcasting",false];
[_vehicle, [missionNameSpace,"itc_air_rover_broadcasting",false,"ROVER ON",{
  //[] call itc_air_datalink_fnc_broadcast_toggle;
  [vehicle player, "itc_air_rover_broadcasting", itc_air_rover_broadcasting] call itc_air_common_fnc_set_var;
},"cycle",[false, true]]] call itc_air_common_fnc_addOption;
