["ITC Air","itc_air_soi_cycle", "SOI CYCLE",{call itc_air_soi_fnc_cycle;false}, "", [210, [false, false, false]]] call CBA_fnc_addKeybind;

itc_air_soi_providers = [];
ITC_AIR_SOI = "";
itc_air_soi_provider = "";

//["ITC Air","itc_air_soi_markpoint","Store markpoint from SPI",
//{[true] call itc_air_mfd_fnc_soi_slew;},"",[207, [false, false, false]]] call CBA_fnc_addKeybind;

//["ITC Air","itc_air_soi_slew","SOI Slew",
//{[false] call itc_air_mfd_fnc_soi_slew;},"",[20, [false, false, false]]] call CBA_fnc_addKeybind;

["ITC Air","itc_air_soi_up", "SOI UP",
{[0,1,0] call itc_air_soi_fnc_down;false},
{call itc_air_soi_fnc_up;false},[200, [false, false, false]],true] call CBA_fnc_addKeybind;

["ITC Air","itc_air_soi_dn", "SOI DOWN",
{[0,-1,0] call itc_air_soi_fnc_down;false},
{call itc_air_soi_fnc_up;false}, [208, [false, false, false]],true] call CBA_fnc_addKeybind;

["ITC Air","itc_air_soi_lf", "SOI LEFT",
{[-1,0,0] call itc_air_soi_fnc_down;false},
{call itc_air_soi_fnc_up;false}, [203, [false, false, false]],true] call CBA_fnc_addKeybind;

["ITC Air","itc_air_soi_rt", "SOI RIGHT",
{[1,0,0] call itc_air_soi_fnc_down;false},
{call itc_air_soi_fnc_up;false}, [205, [false, false, false]],true] call CBA_fnc_addKeybind;

private _joystickKeys = [
  ["TMS","UP",[200,[false,false,true]]],
  ["TMS","DOWN",[208,[false,false,true]]],
  ["TMS","LEFT",[203,[false,false,true]]],
  ["TMS","RIGHT",[205,[false,false,true]]],
  ["DMS","UP",[17,[false,true,false]]],
  ["DMS","DOWN",[31,[false,true,false]]],
  ["DMS","LEFT",[30,[false,true,false]]],
  ["DMS","RIGHT",[32,[false,true,false]]]
  //["MMS","UP",[17,[false,false,true]]],
  //["MMS","DOWN",[31,[false,false,true]]],
  //["MMS","LEFT",[30,[false,false,true]]],
  //["MMS","RIGHT",[32,[false,false,true]]]
];

{
  _x params ["_key","_dir","_bind"];
  [
    "ITC Air",
    format["itc_air_soi_%1_%2", toLower _key, toLower _dir],
    format["%1 %2", _key, _dir],
    compile format ["[""%1"", ""%2""] call itc_air_soi_fnc_ms_down;false", _key, _dir],
    compile format ["[""%1"", ""%2""] call itc_air_soi_fnc_ms_up;false", _key, _dir],
    _bind,
    false
    ] call CBA_fnc_addKeybind;
}forEach _joystickKeys;

//["ITC Air","itc_air_soi_action", "SOI ACTION",
//{call itc_air_mfd_fnc_soi_action;false},
//{call itc_air_soi_fnc_up;false}, [208, [false, true, false]],true] call CBA_fnc_addKeybind;

itc_air_soi_down_time = 0;
