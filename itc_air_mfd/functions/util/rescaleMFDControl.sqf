params ["_display","_idc","_scale"];
private _ctrl = (_display displayCtrl _idc);
ctrlPosition _ctrl params ["_x", "_y", "_w", "_h"];
_ctrl ctrlSetPosition [_x * _scale, _y * _scale, _w * _scale, _h * _scale];
private _textHeight = ctrlTextHeight _ctrl;
if(_textHeight > 0) then {
  _ctrl ctrlSetFontHeight (_textHeight * _scale);
};
_ctrl ctrlCommit 0;
