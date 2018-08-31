params ["_plane"];

private _steer = [] call itc_air_wpt_fnc_getCurrent;
itc_air_wpt_pos = _steer # 2;
itc_air_wpt_name = _steer # 0;

if(_steer # 0 != "N/A" && (vectorMagnitude (velocity _plane) != 0)) then {
    _distToWP = itc_air_wpt_pos distance _plane;
    _tof = _distToWP / (0.01 + (vectorMagnitude (velocity _plane)));
    _tofStr = format["%1:%2",round(_tof / 60), round (_tof % 60)];
    itc_air_wpt_tof = _tofStr;
};
