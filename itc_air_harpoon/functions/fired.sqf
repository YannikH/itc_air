params ["_unit", "", "", "", "_ammo", "_magazine", "_projectile", "_gunner"];
private _plane = vehicle player;
private _guidanceSettings = [
  _plane getVariable "prof_flyOut",
  _plane getVariable "prof_terminal"
];
if(_plane getVariable ["prof_launchMode","R/BL"] == "R/BL") then {
  private _bearingToTarget = _plane getRelDir ITC_AIR_FCR_CURSOR_TRACK;
  _bearingToTarget = [_bearingToTarget] call CBA_fnc_simplifyAngle180;
  private _distanceToTarget = round ((_plane distance ITC_AIR_FCR_CURSOR_TRACK) / 1000);
  private _targetSize = [10,20,30] select (["SML","MED","LRG"] find (_plane getVariable "prof_seek"));
  player sideChat str [_distanceToTarget, _targetSize];
  private _search = _distanceToTarget - _targetSize;
  private _destruct = _distanceToTarget + _targetSize;
  _guidanceSettings = _guidanceSettings + [
    _search,
    _destruct,
    _bearingToTarget,
    "OFF",
    [0,0,0],
    "OFF",
    [0,0,0]
  ];
  player sideChat str _guidanceSettings;
} else {
  private _bearing = (getDir _plane) + (parseNumber (_plane getVariable "prof_bearing"));
  _guidanceSettings = _guidanceSettings + [
    parseNumber (_plane getVariable "prof_search"),
    parseNumber (_plane getVariable "prof_destruct"),
    _bearing,
    _plane getVariable "prof_fxp",
    _plane getVariable "prof_fxp_pos",
    _plane getVariable "prof_hptp",
    _plane getVariable "prof_hptp_pos"
  ];
};
private _profile = "FLT";
private _steerPoints = _plane getVariable "stpt_list";
if(_guidanceSettings # 5 == "ON") then {
  private _fxp = _steerpoints # (_steerPoints findIf {_x # 0 == (_plane getVariable "prof_fxp_pos")});
  _guidanceSettings set [6, _fxp # 1];
};
if(_guidanceSettings # 7 == "ON") then {
  private _hptp = _steerpoints # (_steerPoints findIf {_x # 0 == (_plane getVariable "prof_hptp_pos")});
  //player sideChat str _hptp;
  _guidanceSettings set [8, _hptp # 1];
  _profile = "HPTP";
  private _distanceToTurn = round ((_plane distance (_guidanceSettings # 8)) / 1000);
  _guidanceSettings set [2, (_guidanceSettings # 2) - _distanceToTurn];
};
[itc_air_harpoon_fnc_guide, 0, [_projectile,time,_guidanceSettings,_profile, getPosASL _projectile,nil, 0]] call CBA_fnc_addPerFrameHandler;
[test_fnc_mark, 0, [_projectile]] call CBA_fnc_addPerFrameHandler;
