params ["_key","_fuzeClass","_prefix"];
_options = [];
if(_fuzeClass == "") exitWith {[]};
_isProgrammable = getNumber (configFile >> "itc_air_cfgFuzes" >> _fuzeClass >> "programmable");
_displayName = getText (configFile >> "itc_air_cfgFuzes" >> _fuzeClass >> "displayName");
if(_isProgrammable == 1) then {
  _modes = (configFile >> "itc_air_cfgFuzes" >> _fuzeClass >> "modes") call BIS_fnc_getCfgData;
  _options pushBack [_key,_modes # 0,_prefix + _displayName,"cycle",_modes];
} else {
  _mode = (configFile >> "itc_air_cfgFuzes" >> _fuzeClass >> "mode") call BIS_fnc_getCfgData;
  _options pushBack [_key,_mode,_prefix + _displayName,"fixed"];
};
_options
