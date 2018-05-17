params ["_display"];
_output = ["NAME", "POS", "EL", "ORD UP", "ORD DN", "UP", "DN", "", "DEL", "NEW", "", "", ""];

_plane = (vehicle player);
_wayPoints = _plane getVariable "stpt_list";
_curWPIndex = _plane getVariable "stpt_index";
if(_display getVariable "stpt_pos_str" != "") then {
  _pos = [_display getVariable "stpt_pos_str", true] call ace_common_fnc_getMapPosFromGrid;
  _plane setVariable ["stpt_pos", _pos];
  [_plane, _curWPIndex, [_plane getVariable "stpt_name", _pos]] remoteExec ["itc_air_steerpoints_fnc_update", (crew _plane), false];
  _display setVariable ["stpt_pos_str",""];
};
if(_display getVariable "stpt_el" > -1) then {
  _pos = _plane getVariable "stpt_pos";
  _pos = [_pos select 0, _pos select 1, _display getVariable "stpt_el"];
  _plane setVariable ["stpt_pos", _pos];
  [_plane, _curWPIndex, [_plane getVariable "stpt_name", _pos]] remoteExec ["itc_air_steerpoints_fnc_update", (crew _plane), false];
  _display setVariable ["stpt_el",-1];
};
if(_display getVariable "stpt_name" != "") then {
  _plane setVariable ["stpt_name", _display getVariable "stpt_name"];
  [_plane, _curWPIndex, [_display getVariable "stpt_name", _plane getVariable "stpt_pos"]] remoteExec ["itc_air_steerpoints_fnc_update", (crew _plane), false];
  _display setVariable ["stpt_name",""];
};

if(isNil{_wayPoints}) then {_wayPoints = []};
_background = _display getVariable "background";
_scrollStart = 0 max (_curWPIndex - 4);
_limit = (_scrollStart + 8) min (count _wayPoints - 1);

_resString = format["<br/><t align='center'>showing stpt %1 to %2 of %3 </t> <br/><br/>", _scrollStart + 1, _limit + 1, count _wayPoints];

for "_i" from _scrollStart to _limit step 1 do {
  if(_i == _curWPIndex) then {
    _resString = _resString + format["<t align='center' color='#15d600'>%1</t>",_wayPoints select _i select 0] + "<br/>";
  } else {
    _resString = _resString + format["<t align='center'>%1</t>",_wayPoints select _i select 0] + "<br/>";
  };
};

_background ctrlSetStructuredText parseText _resString;
_background ctrlCommit 0;

_output
