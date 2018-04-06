params ["_display"];
_output = ["", "", "", "", "", "UP", "DN", "", "", "", "", "", ""];

_plane = (vehicle player);

_output set [0, format["FUEL %1%2",round ((fuel _plane) * 100),"%"]];
_output set [1, format["FUEL %1min",_plane getVariable "playtime"]];

_output set [2, format["NAV %1",_plane getVariable "stpt_name"]];
_output set [3, format["TOF %1",_plane getVariable "stpt_tof"]];

_background = _display getVariable "background";
_allDamage = getAllHitPointsDamage _plane;
_allDamage params ["", "_name", "_status"];
_scrollStart = _display getVariable "stat_scroll";
_limit = (_scrollStart + 8) min (count _status - 1);

_resString = format["<br/><t align='center'>showing status %1 to %2 of %3 </t> <br/><br/>", _scrollStart + 1, _limit + 1, count _status];

for "_i" from _scrollStart to _limit step 1 do {
  _col = "15d600";
  _stat = "OK";
  if(_status select _i > 0) then {_col = "ff7f00"; _stat = "DAM";};
  if(_status select _i > 0.5) then {_col = "ff0000"; _stat = "FAIL";};
  _point = [_name select _i, 3] call BIS_fnc_trimString;
  _resString = _resString + format["<t align='center' color='#%1'>%2    %3</t>",_col,_point, _stat] + "<br/>";
};

_background ctrlSetStructuredText parseText _resString;
_background ctrlCommit 0;

_output
