params ["_plane"];
if(_plane getVariable "laser_ir") then {
    _plane setVariable ["last_pulse_local", 0];
    _plane setVariable ["pulse_on_local", true];
    ITC_AIR_LINES pushBack [
        _plane,
        {
            _plane = _this;
            _data = _plane getVariable "itc_air_network_target";
            _data params ["_broadcasting", "_target", ""];
            _tgpPos = ASLtoAGL _target;
            private _memPointName = getText (configFile >> "CfgVehicles" >> typeOf _plane >> "memoryPointDriverOptics");
            private _memPointPos = _plane selectionPosition _memPointName;
            private _origin = _plane modelToWorldVisual _memPointPos;
            [_origin, _tgpPos] call itc_air_UI_fnc_draw_laser_bundle;
            [[0,0,0], [0,0,1], [1,1,1,1]]
        },
        {
            _plane = _this;
            _freq = _plane getVariable "laser_pulse";
            _last_pulse = _plane getVariable "last_pulse_local";
            _pulse_on = _plane getVariable "pulse_on_local";
            if(_freq > 0) then {
                _ms = floor ((time - floor time) * 1000);
                _pulse_time_between = (1000 / _freq);
                if(
                    (_last_pulse + _pulse_time_between < _ms) ||
                    _ms < _last_pulse
                ) then {
                    _plane setVariable ["last_pulse_local", _ms];
                    _pulse_on = !_pulse_on;
                    _plane setVariable ["pulse_on_local", _pulse_on];
                };
            } else {
                _pulse_on = true;
            };
            (((currentVisionMode player) == 1) && _pulse_on)
        },
        true
    ];
} else {
    _i = 0;
    {
        if(_x select 0 == _plane) exitWith {};
        _i = _i + 1;
    } forEach ITC_AIR_LINES;
    ITC_AIR_LINES deleteAt _i;
};
