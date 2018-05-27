params ["_vehicle"];
private _options = _vehicle getVariable ["itc_air_options",[]];

_roverFreq = getNumber (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "itc_air" >> "rover" >> "frequency_default");
[_vehicle, "rover_freq", str _roverFreq] call itc_air_common_fnc_set_var;
_options pushBack [missionNameSpace,"ITC_ROVER_FREQ",_roverFreq,"ROVER FREQ",{},"UFC",{((parseNumber _this) > 5240 && (parseNumber _this) < 5850)}, false];
_options pushBack [_vehicle,"ITC_AIR_BROADCASTING",false,"ROVER ON",{
  [] call itc_air_datalink_fnc_broadcast_toggle;
},"cycle",[false, true]];
_vehicle setVariable ["itc_air_options", _options];
