_output = ["", "", "", "", "", "", "CH UP", "CH DN", "VOL UP", "VOL DN", "", "", ""];
_rvrStatus = if(ITC_AIR_BROADCASTING) then [{"ON"},{"OFF"}];
_output set [0, format["RVR %1", _rvrStatus]];
_output set [1, format["RVR %1", (vehicle player) getVariable "ROVER_FREQ"]];
if(!isNil{acre_api_fnc_getCurrentRadioList}) then {
  _radios = [] call acre_api_fnc_getCurrentRadioList;
  _cur = [] call acre_api_fnc_getCurrentRadio;
  for "_i" from 0 to 2 step 1 do {
      if(_i < count _radios) then {
          _radio = _radios select _i;
          _base = [_radio] call acre_api_fnc_getBaseRadio;
          _name = (configFile >> "CfgWeapons" >> _base >> "displayName") call BIS_fnc_getCfgData;
          _channel = [_radio] call acre_api_fnc_getRadioChannel;
          _vol = ([_radio] call acre_sys_radio_fnc_getRadioVolume) * 100;
          _output set [2 + _i, format["%1 - %2 - %3",_name,_channel, round _vol]];
      };
  };
};
if(!isNil{TFAR_fnc_activeLrRadio}) then {
  _rack = player call TFAR_fnc_vehicleLr;
  _lr = player call TFAR_fnc_backpackLr;
  if(!isNil{_rack}) then {
    _ch = _rack call TFAR_fnc_getLrChannel;
    _vol = _rack call TFAR_fnc_getLrVolume;
    _output set [2, format["VEH %1 %2", _ch, (_vol + 1) * 10]];
  };
  if(!isNil{_lr}) then {
    _ch = _lr call TFAR_fnc_getLrChannel;
    _vol = _lr call TFAR_fnc_getLrVolume;
    _output set [3, format["LR %1 %2", _ch, (_vol + 1) * 10]];
  };
};
_output
