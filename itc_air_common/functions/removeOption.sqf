params ["_vehicle", "_key"];
private _options = _vehicle getVariable ["itc_air_options",[]];
private _optionExistsIndex = _options findIf {_x # 1 == _key};
if(_optionExistsIndex == -1) then {
  _options deleteAt _optionExistsIndex;
};
_vehicle setVariable ["itc_air_options",_options];
