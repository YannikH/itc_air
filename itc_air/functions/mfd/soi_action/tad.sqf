params ["_mfd"];
_expand = _mfd getVariable "tad_expand";
_expand = if(_expand == 2) then [{0},{_expand + 1}];
if(_expand == 1) then {
  _mfd setVariable ["tad_pos", ((getPos vehicle player) vectorAdd ((_mfd getVariable "tad_cursor") vectorMultiply (_mfd getVariable "tad_fov")))];
};
_mfd setVariable ["tad_expand", _expand];
_mfd setVariable ["tad_cursor", [0,0,0]];
