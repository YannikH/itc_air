params ["_display","_controlConfig","_scale"];
_idc = getNumber (_controlConfig >> "idc");
player sideChat str _idc;
if(_idc > 0) then {
  [_display, _idc, _scale] call itc_air_mfd_fnc_rescaleMFDControl;
};
if(isClass (_controlConfig >> "Controls")) then {
  _controls = (_controlConfig >> "Controls") call BIS_fnc_getCfgSubClasses;
  {
    [_display, (_controlConfig >> "Controls" >> _x), _scale] call itc_air_mfd_fnc_rescaleControlsGroup;
  }forEach _controls;
};
