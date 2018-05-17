
params ["_namespace","_btn"];
switch (_btn) do {
    case "B1": {[] call itc_air_mfd_fnc_swap;};
    case "B2": {_namespace setVariable["page","tad"];};
    case "B3": {_namespace setVariable["page","wpn"];};
    case "B4": {_namespace setVariable["page","sms"];};
    case "B5": {_namespace setVariable["page","lst"];};
    case "L1": {
        [0] call itc_air_datalink_fnc_broadcast_toggle;
    };
    case "L2": {
        [_namespace,(vehicle player), "ROVER_FREQ", "ROVER FREQ", [false, {((parseNumber _this) > 5240 && (parseNumber _this) < 5850)}], false] call itc_air_mfd_fnc_input_start;
    };
    case "L3": {
      if(!isNIl{acre_api_fnc_getCurrentRadioList}) then {
        _radios = [] call acre_api_fnc_getCurrentRadioList;
        [_radios select 0] call acre_api_fnc_setCurrentRadio;
      };
      if(!isNil{TFAR_fnc_activeLrRadio}) then {
        _rack = player call TFAR_fnc_vehicleLr;
        _rack call TFAR_fnc_setActiveLrRadio;
      };
    };
    case "L4": {
      if(!isNIl{acre_api_fnc_getCurrentRadioList}) then {
        _radios = [] call acre_api_fnc_getCurrentRadioList;
        [_radios select 1] call acre_api_fnc_setCurrentRadio;
      };
      if(!isNil{TFAR_fnc_activeLrRadio}) then {
        _lr = player call TFAR_fnc_backpackLr;
        _lr call TFAR_fnc_setActiveLrRadio;
      };
    };
    case "L5": {
      if(!isNIl{acre_api_fnc_getCurrentRadioList}) then {
        _radios = [] call acre_api_fnc_getCurrentRadioList;
        [_radios select 2] call acre_api_fnc_setCurrentRadio;
      };
    };
    case "R2": {
      if(!isNIl{acre_api_fnc_getCurrentRadioList}) then {
        _ch = [] call acre_api_fnc_getCurrentRadioChannelNumber;
        [_ch + 1] call acre_api_fnc_setCurrentRadioChannelNumber;
      };
      if(!isNil{TFAR_fnc_activeLrRadio}) then {
        _radio = call TFAR_fnc_activeLrRadio;
        _ch = _radio call TFAR_fnc_getLrChannel;
        _radio + [_ch + 1] call TFAR_fnc_setLrChannel;
      };
    };
    case "R3": {
      if(!isNIl{acre_api_fnc_getCurrentRadioList}) then {
        _ch = [] call acre_api_fnc_getCurrentRadioChannelNumber;
        [_ch - 1] call acre_api_fnc_setCurrentRadioChannelNumber;
      };
      if(!isNil{TFAR_fnc_activeLrRadio}) then {
        _radio = call TFAR_fnc_activeLrRadio;
        _ch = _radio call TFAR_fnc_getLrChannel;
        _radio + [_ch - 1] call TFAR_fnc_setLrChannel;
      };
    };
    case "R4": {
      if(!isNIl{acre_api_fnc_getCurrentRadioList}) then {
        _radio = [] call acre_api_fnc_getCurrentRadio;
        _origVol = [_radio] call acre_sys_radio_fnc_getRadioVolume;
        _vol = _origVol + 0.2;
        hint format ["%1 %2",_origVol, _vol];
        [_radio, _vol] call acre_sys_radio_fnc_setRadioVolume;
      };
      if(!isNil{TFAR_fnc_activeLrRadio}) then {
        _radio = call TFAR_fnc_activeLrRadio;
        _vol = _radio call TFAR_fnc_getLrVolume;
        _radio + [_vol + 1] call TFAR_fnc_setLrVolume;
      };
    };
    case "R5": {
      if(!isNIl{acre_api_fnc_getCurrentRadioList}) then {
        _radio = [] call acre_api_fnc_getCurrentRadio;
        _origVol = [_radio] call acre_sys_radio_fnc_getRadioVolume;
        _vol = _origVol - 0.2;
        hint format ["%1 %2",_origVol, _vol];
        [_radio, _vol] call acre_sys_radio_fnc_setRadioVolume;
      };
      if(!isNil{TFAR_fnc_activeLrRadio}) then {
        _radio = call TFAR_fnc_activeLrRadio;
        _vol = _radio call TFAR_fnc_getLrVolume;
        _radio + [_vol - 1] call TFAR_fnc_setLrVolume;
      };
    };
};
