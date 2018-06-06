params ["_display"];
#include "..\..\..\mfdDefines.hpp"
private _plane = vehicle player;
[] call itc_air_fcr_fnc_scan;
(_display displayCtrl 1002) ctrlSetText format["%1KM",round (ITC_AIR_FCR_RNG / 1000)];
(_display displayCtrl 1011) ctrlSetText str ITC_AIR_FCR_SCANRNG;
private _drawRange = ITC_AIR_FCR_RNG;
if(ITC_AIR_FCR_FREEZE) then {invertText(_display,T5);_drawRange = ITC_AIR_FCR_FREEZE_RNG;} else {resetText(_display,T5);};
if(ITC_AIR_FCR_SNOWPLOW) then {invertText(_display,T4);} else {resetText(_display,T4); _drawRange = _drawRange * 2;};
private _azIndicator = (_display displayCtrl 81000);
private _centerX = (_display getVariable "center") # 0;
private _centerY = (_display getVariable "center") # 1;
private _scanRangeX = (_display getVariable "width") / 2;
private _scanRangeY = (_display getVariable "height") / 2;
private _yStart = _centerY - _scanRangeY;
private _rangeMod = (_display getVariable "height") / _drawRange;
_azIndicator ctrlSetPosition [_centerX + (ITC_AIR_FCR_SCANAZ * ((_scanRangeX / 2) / ITC_AIR_FCR_TRAVLIM)), 0.9 * 0.76];
_azIndicator ctrlCommit 0;
{
  private _ctrl = (_x # 2);
  if(isNil {_ctrl}) then {
    _ctrl = _display ctrlCreate ["RscPicture", -1, (_display displayCtrl 10800)];
    //_ctrl ctrlSetPosition [_centerX - (0.02 * 0.9), _centerY - (0.02 * 0.9), 0.8 * 0.02 * (3/4), 0.8 * 0.02];
    _ctrl ctrlSetText "itc_air\data\UI\SAC.paa";
    ITC_AIR_FCR_TRACKING set [_forEachIndex, [_x # 0, _x # 1, _ctrl]];
  };
  private _drawOriginPos = if(ITC_AIR_FCR_FREEZE) then [{ITC_AIR_FCR_FREEZE_POS},{(getPos _plane)}];
  private _drawOriginDir = if(ITC_AIR_FCR_FREEZE) then [{ITC_AIR_FCR_FREEZE_DIR},{(getDir _plane)}];
  private _relDir = (((_drawOriginPos vectorFromTo (_x # 1)) call CBA_fnc_vectDir) - _drawOriginDir) call CBA_fnc_simplifyAngle180;
  _relDir = if(_relDir > 180) then [{_relDir - 360}, {_relDir}];
  private _relDist = _drawOriginPos distance2D (_x # 1);
  if(abs _relDir < ITC_AIR_FCR_TRAVLIM && _relDist > 1000) then {
    private _drawX = _centerX + (_relDir * (_scanRangeX / ITC_AIR_FCR_TRAVLIM));
    private _drawY = _yStart + (_display getVariable "height") - (_relDist * _rangeMod);
    _ctrl ctrlSetPosition [_drawX,_drawY, 0.9 * 0.01 * (3/4), 0.9 * 0.01];
    _ctrl ctrlShow true;
    _ctrl ctrlCommit 0;
  } else {
    _ctrl ctrlShow false;
  };
}forEach ITC_AIR_FCR_TRACKING;

[_display,_drawRange] call itc_air_fcr_fnc_drawCursor;
