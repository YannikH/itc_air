params ["_turnedOn", "_plane"];
ITC_AIR_IRLAS_PLANE = _plane;

if(_turnedOn && (_plane getVariable "itc_datalink") select 0) then {
    ITC_AIR_LINES pushBack [ 
        _plane,
        {
            _plane = _this;
            _data = _plane getVariable "itc_datalink";
            _data params ["_broadcasting", "_target", "_direction", "_freq", "_cameraMode", "_fov"];
            _origin = _target select 2;
            _tgpPos = ASLtoAGL (_target select 1);
            [_origin, _tgpPos] call itc_air_UI_fnc_draw_laser_bundle;
            [[0,0,0], [0,0,1], [1,1,1,1]]
        }, 
        {
            ((currentVisionMode player) == 1) && 
            (_this getVariable "itc_datalink") select 0 && 
            ((_this getVariable "itc_datalink") select 1) select 0 &&
            ((_this getVariable "laser_pulse" && round time % 2 == 0) || !(_this getVariable "laser_pulse"))
        } 
    ];
} else {
    _i = 0;
    {
        if(_x select 0 == _plane) exitWith {};
        _i = _i + 1;
    } forEach ITC_AIR_LINES;
    ITC_AIR_LINES deleteAt _i;
};
