params ["_display"];
uiNamespace setVariable ["ITC_AIR_MFD_TGP",_display];
(_display displayCtrl 1610) ctrlSetFade 1;
(_display displayCtrl 1610) ctrlCommit 0;
_display setVariable ["page", "TGP"];
[_display] call itc_air_tgp_fnc_wso_camera;
[{
    (_this select 0) params ["_display"];
    if (!alive player || isNil {_display} || !dialog) then {
        [_this select 1] call CBA_fnc_removePerFrameHandler;
        uiNameSpace setVariable ["ITC_AIR_MFD_TGP",nil];
    };

    _MFD_TEXT = [_display] call itc_air_tgp_fnc_wso_render;
    for "_i" from 0 to 9 step 1 do {
        _display displayCtrl (1000 + _i) ctrlSetText (_MFD_TEXT select _i);
    };
}, 0, [_display]] call CBA_fnc_addPerFrameHandler;
