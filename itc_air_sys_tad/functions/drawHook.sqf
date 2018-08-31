params ["_display","_map"];
private _hook = [] call itc_air_tad_fnc_getHookPositions;
//player sideChat str _this;
private _hookDest = ["HOOK"] call itc_air_tad_fnc_getHookPosByMode;

if(isNil{_hookDest}) exitWith {
  private _gridArea = [worldName] call ace_common_fnc_getMGRSdata;
  private _grid = [getPosASL (vehicle player)] call ace_common_fnc_getMapGridFromPos;
  _str = format ["%1  %2  %3  %4", _gridArea select 0, _gridArea select 1, _grid select 0, _grid select 1];
  (_display displayCtrl 61004) ctrlSetText _str;

  (_display displayCtrl 61005) ctrlSetText "000/000";
  (_display displayCtrl 61006) ctrlSetText str (round (getPosASL (vehicle player) # 2));
};

_map drawArrow [_hook # 0, _hook # 1, [1,1,0,1]];

private _gridArea = [worldName] call ace_common_fnc_getMGRSdata;
private _grid = [_hookDest] call ace_common_fnc_getMapGridFromPos;
_str = format ["%1  %2  %3  %4", _gridArea select 0, _gridArea select 1, _grid select 0, _grid select 1];
(_display displayCtrl 61004) ctrlSetText _str;

(_display displayCtrl 61005) ctrlSetText format["%1/%2", round (((_hook # 0) distance (_hook # 1)) / 1000), round ((_hook # 0) getDir (_hook # 1))];
(_display displayCtrl 61006) ctrlSetText str (round (_hookDest # 2));
