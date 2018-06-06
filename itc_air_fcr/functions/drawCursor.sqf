params ["_display","_drawRange"];
scopename "drawCursor";
private _drawOriginPos = if(ITC_AIR_FCR_FREEZE) then [{ITC_AIR_FCR_FREEZE_POS},{(getPos _plane)}];
private _drawOriginDir = if(ITC_AIR_FCR_FREEZE) then [{ITC_AIR_FCR_FREEZE_DIR},{(getDir _plane)}];
if(ITC_AIR_FCR_CURSOR_TRACKING) then {
  private _relDir = (((_drawOriginPos vectorFromTo ITC_AIR_FCR_CURSOR_TRACK) call CBA_fnc_vectDir) - _drawOriginDir) call CBA_fnc_simplifyAngle180;
  _relDir = if(_relDir > 180) then [{_relDir - 360}, {_relDir}];
  private _relDist = _drawOriginPos distance2D ITC_AIR_FCR_CURSOR_TRACK;
  if(abs _relDir > ITC_AIR_FCR_TRAVLIM || _relDist < 1000) then {
    ITC_AIR_FCR_CURSOR_TRACKING = false;
    breakOut "drawCursor";
  };
  ITC_AIR_FCR_CURSOR_DIR = [_relDir, _relDist];
};
ITC_AIR_FCR_CURSOR_DIR params ["_az","_rng"];
private _cursorX = (_az * (_scanRangeX / ITC_AIR_FCR_TRAVLIM));
private _cursorY = ((_display getVariable "height") / 2) - ((_display getVariable "height") * (_rng / _drawRange));

(_display displayCtrl 81200) ctrlSetPosition [_cursorX,0];
(_display displayCtrl 81200) ctrlCommit 0;
(_display displayCtrl 81201) ctrlSetPosition [0,_cursorY];
(_display displayCtrl 81201) ctrlCommit 0;
(_display displayCtrl 81203) ctrlSetPosition [_cursorX,_cursorY];
(_display displayCtrl 81203) ctrlCommit 0;
