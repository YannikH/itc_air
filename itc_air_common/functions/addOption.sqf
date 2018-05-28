params ["_vehicle", "_option"];
private _options = _vehicle getVariable ["itc_air_options",[]];
private _optionExistsIndex = _options findIf {_x # 1 == _option # 1};
if(_optionExistsIndex == -1) then {
  _options pushBack _option;
};
(_option # 0) setVariable [(_option # 1), (_option # 2)];
_vehicle setVariable ["itc_air_options", _options];
