params ["_vehicle"];
if(isNil {orbis_gpws_fnc_f16GPWS}) exitWith {};

_vehicle setVariable ["orbisGPWSmode","F-16"];
[_vehicle] spawn orbis_gpws_fnc_f16GPWS;
[_vehicle, [_vehicle,"orbisGPWSenabled",true,"AWES GPWS",{
  if(_this # 0) then {
    (vehicle player) setVariable ["orbisGPWSmode","F-16"];
    [vehicle player] spawn orbis_gpws_fnc_f16GPWS
  } else {
    (vehicle player) setVariable ["orbisGPWSmode",""];
  };
},"cycle",[true, false]]] call itc_air_common_fnc_addOption;
private _bingoOnChange = {
  orbis_gpws_bingoFuel =  (_this # 0) / 100;
};
private _bingoOptions = [_vehicle,"ITC_BINGO_PERC",20,"AWES BINGO %",_bingoOnChange,"UFC",{(_this > 0 && _this < 100)}, true];
[_vehicle, _bingoOptions] call itc_air_common_fnc_addOption;
private _warnAltOptions = [missionNameSpace,"orbis_gpws_lowAltitude",50,"AWES WARN ALT",{},"UFC",{(_this > 0)}, true];
[_vehicle, _warnAltOptions] call itc_air_common_fnc_addOption;
