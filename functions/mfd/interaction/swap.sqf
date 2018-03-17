
_mfd_l = uiNameSpace getVariable "ITC_AIR_MFD_L";
_mfd_r = uiNameSpace getVariable "ITC_AIR_MFD_R";
if (!isNil{_mfd_l} && !isNil{_mfd_r}) then {
    _mfd_l_page = _mfd_l getVariable "page";
    _mfd_l setVariable ["page", _mfd_r getVariable "page"];
    _mfd_r setVariable ["page", _mfd_l_page];
};