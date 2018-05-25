params ["_mfdNameSpace","_btn"];
_namespace = uiNameSpace getVariable _mfdNameSpace;
playSound "Click";
playSound "Click";
playSound "Click";

(_btn splitString "") params ["_side", "_num"];
if(_side =="B") exitWith {
  if (_btn == "B1") exitWith {
    [] call itc_air_mfd_fnc_swap;
  };
  _i = (parseNumber _num) - 1;
  _namespace setVariable["page",toLower ((_namespace getVariable "quick") select _i)];
};

_page = _namespace getVariable "page";
switch (toLower _page) do {
    case "wpn": {[_namespace,_btn] call itc_air_mfd_fnc_wpn_btn;};
    case "sms": {[_namespace,_btn] call itc_air_mfd_fnc_sms_btn;};
    case "tad": {[_namespace,_btn] call itc_air_mfd_fnc_tad_btn;};
    case "lst": {[_namespace,_btn] call itc_air_mfd_fnc_lst_btn;};
    case "com": {[_namespace,_btn] call itc_air_mfd_fnc_com_btn;};
    case "tgp": {[_namespace,_btn] call itc_air_mfd_fnc_tgp_btn;};
    case "fcr": {[_namespace,_btn] call itc_air_mfd_fnc_fcr_btn;};
    case "msg": {[_namespace,_btn] call itc_air_mfd_fnc_msg_btn;};
    case "stat": {[_namespace,_btn] call itc_air_mfd_fnc_stat_btn;};
    case "stpt": {[_namespace,_btn] call itc_air_mfd_fnc_stpt_btn;};
};
