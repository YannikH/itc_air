params ["_display"];
_output = ["NAME", "POS", "SAVE", "ORD UP", "ORD DN", "UP", "DN", "", "", "NEW", "", "", ""];

_plane = (vehicle player);
_wayPoints = ace_player getVariable "ace_microdagr_waypoints";
if(isNil{_wayPoints}) then {_wayPoints = []};
_background = _display getVariable "background";
_scrollStart = _display getVariable "stpt_scroll";
_limit = (_scrollStart + 8) min (count _wayPoints - 1);

_resString = format["<br/><t align='center'>showing stpt %1 to %2 of %3 </t> <br/><br/>", _scrollStart + 1, _limit + 1, count _wayPoints];

for "_i" from _scrollStart to _limit step 1 do {
  if(_i == ITC_AIR_CURRENTWP) then {
    _resString = _resString + format["<t align='center' color='#15d600'>%1</t>",_wayPoints select _i select 0] + "<br/>";
  } else {
    _resString = _resString + format["<t align='center'>%1</t>",_wayPoints select _i select 0] + "<br/>";
  };
};

_background ctrlSetStructuredText parseText _resString;
_background ctrlCommit 0;

_output
