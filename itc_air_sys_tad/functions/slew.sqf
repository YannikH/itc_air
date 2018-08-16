params ["_mfd", "_dir"];
_mfd = uiNamespace getVariable ((vehicle player) getVariable "SOI");
_cursorPos = _mfd getVariable "tad_cursor";
_add = (_dir vectorMultiply 100);
if(_mfd getVariable "tad_expand" == 1) then {
  _pos = _mfd getVariable "tad_pos";
  _mfd setVariable ["tad_pos", _pos vectorAdd _add];
} else {
  _mfd setVariable ["tad_cursor", (_cursorPos vectorAdd _add)];
};
