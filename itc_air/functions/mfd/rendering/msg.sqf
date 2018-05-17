params ["_display"];
_output = ["", "UP", "DN", "", "WRT", "NEW", "RCVD", "DEL", "", "", "", "", ""];

_plane = (vehicle player);
_composing = _display getVariable "msg_composing";
_background = _display getVariable "background";

if(!_composing) then {
  _index = _display getVariable "msg_index";
  _index = _index min (count (_plane getVariable "SADL_MSGS") - 1) max 0;
  _msg = (_plane getVariable "SADL_MSGS") select _index;
  if(!isNil{_msg}) then {
    _msgTxt = _msg select 1;
    _msgString = "<br/><br/>";
    for "_i" from 0 to 9 step 1 do {
      _msgString = _msgString + format["                %1<br/>", _msgTxt select _i];
    };
    _output set [0, format["%1/%2", _index + 1, count(_plane getVariable "SADL_MSGS")]];
    _output set [3, _msg select 2];
    _background ctrlSetStructuredText parseText _msgString;
  };
} else {
  _index = (_display getVariable "msg_index") min 9 max 0;
  _msg = _display getVariable "msg_cur";
  if(_display getVariable "msg_ln" != "") then {
    _msg set [_index, _display getVariable "msg_ln"];
    _display setVariable ["msg_cur", _msg];
    _display setVariable ["msg_ln", ""];
  };

  _output set [0, "LN"];
  _output set [3,_display getVariable "msg_to"];
  _output set [5, "SEND"];
  _msgString = "<br/>      COMPOSING MSG<br/><br/>";
  for "_i" from 0 to 9 step 1 do {
    if(_i == _index) then {
      _msgString = _msgString + format["               >%1<br/>", (_display getVariable "msg_cur") select _i];
    } else {
      _msgString = _msgString + format["                %1<br/>", (_display getVariable "msg_cur") select _i];
    };
  };
  _background ctrlSetStructuredText parseText _msgString;
};
_background ctrlCommit 0;

_output
