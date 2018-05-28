params ["_vehicle"];
if(!("orbis_gpws" in activatedAddons)) exitWith {};

_vehicle setVariable ["orbisGPWSmode","F-16"];
[_vehicle] spawn orbis_gpws_fnc_f16GPWS;
[_vehicle, [_vehicle,"orbisGPWSenabled",true,"AWES GPWS",{
  if(_this # 0) then {
    [_target] spawn orbis_gpws_fnc_f16GPWS
  };
},"cycle",[true, false]]] call itc_air_common_fnc_addOption;
private _bingoOnChange = {
  orbis_gpws_bingoFuel =  (_this # 0) / 100;
};
private _bingoOptions = [_vehicle,"ITC_BINGO_PERC",_roverFreq,"AWES BINGO %",_bingoOnChange,"UFC",{(_this > 0 && _this < 100)}, true];
[_vehicle, _bingoOptions] call itc_air_common_fnc_addOption];
private _warnAltOptions = [missionNameSpace,"orbis_gpws_lowAltitude",_roverFreq,"AWES WARN ALT",{},"UFC",{(_this > 0)}, true];
[_vehicle, _warnAltOptions] call itc_air_common_fnc_addOption];
