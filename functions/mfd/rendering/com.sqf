
_output = ["", "", "", "", "", "", "CH UP", "CH DN", "VOL UP", "VOL DN", "", "", "","SWAP","TAD","WPN","SMS","LST"];
_rvrStatus = if(ITC_AIR_BROADCASTING) then [{"ON"},{"OFF"}];
_output set [0, format["RVR %1", _rvrStatus]];
_output set [1, format["RVR %1", (vehicle player) getVariable "ROVER_FREQ"]];
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
_output
