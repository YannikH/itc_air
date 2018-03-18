
params ["_namespace","_btn"];
switch (_btn) do {
    case "B2": {_namespace setVariable["page","tad"];};
    case "B3": {_namespace setVariable["page","wpn"];};
    case "B4": {_namespace setVariable["page","sms"];};
    case "L1": {
        [0] call itc_air_datalink_fnc_broadcast_toggle;
    };
    case "L2": {
        [(vehicle player), "ROVER_FREQ", "ROVER FREQ", [false]] call itc_air_mfd_fnc_input_start;
    };
    case "L3": {
        _radios = [] call acre_api_fnc_getCurrentRadioList;
        [_radios select 0] call acre_api_fnc_setCurrentRadio;
    };
    case "L4": {
        _radios = [] call acre_api_fnc_getCurrentRadioList;
        [_radios select 1] call acre_api_fnc_setCurrentRadio;
    };
    case "L5": {
        _radios = [] call acre_api_fnc_getCurrentRadioList;
        [_radios select 2] call acre_api_fnc_setCurrentRadio;
    };
    case "R2": {
        _ch = [] call acre_api_fnc_getCurrentRadioChannelNumber;
        [_ch + 1] call acre_api_fnc_setCurrentRadioChannelNumber;
    };
    case "R3": {
        _ch = [] call acre_api_fnc_getCurrentRadioChannelNumber;
        [_ch - 1] call acre_api_fnc_setCurrentRadioChannelNumber;
    };
    case "R4": {
        _radio = [] call acre_api_fnc_getCurrentRadio;
        _origVol = [_radio] call acre_sys_radio_fnc_getRadioVolume;
        _vol = _origVol + 0.2;
        hint format ["%1 %2",_origVol, _vol];
        [_radio, _vol] call acre_sys_radio_fnc_setRadioVolume;
    };
    case "R5": {
        _radio = [] call acre_api_fnc_getCurrentRadio;
        _origVol = [_radio] call acre_sys_radio_fnc_getRadioVolume;
        _vol = _origVol - 0.2;
        hint format ["%1 %2",_origVol, _vol];
        [_radio, _vol] call acre_sys_radio_fnc_setRadioVolume;
    };
};