params ["_mode"];

switch (_mode) do {
    case 2: {
        camUseNVG false;
        true setCamUseTI 1;
    };
    case 1: {
        camUseNVG true;
        false setCamUseTI 1;
    };
    case 0: {
        camUseNVG false;
        false setCamUseTI 1;
    };
};

/*
switch (_mode) do {
    case "FOV": {
        _fov = (configFile >> "CfgVehicles" >> (typeOf ITC_ROVER_PLANE) >> "itc_air" >> "rover" >> "fov")  call BIS_fnc_getCfgData select _param;
        ITC_ROVER_CAMERA camSetFov _fov;
    };
    case "TI": {
        _tiCapable = (configFile >> "CfgVehicles" >> (typeOf ITC_ROVER_PLANE) >> "itc_air" >> "rover" >> "ti_enabled")  call BIS_fnc_getCfgData;
        if(_tiCapable == 1) then {
            camUseNVG false;
            _tiMode = (configFile >> "CfgVehicles" >> (typeOf ITC_ROVER_PLANE) >> "itc_air" >> "rover" >> "ti_modes")  call BIS_fnc_getCfgData select _param;
            true setCamUseTI _tiMode;
        };
    };
    case "NVS": {
        _nvgCapable = (configFile >> "CfgVehicles" >> (typeOf ITC_ROVER_PLANE) >> "itc_air" >> "rover" >> "nvg_enabled")  call BIS_fnc_getCfgData;
        if(_nvgCapable == 1) then {
            camUseNVG true;
            false setCamUseTI 1;
        };
    };
    case "DTV": {
        camUseNVG false;
        false setCamUseTI 1;
    };
};
*/