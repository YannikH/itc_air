params ["_profiles"];
private _impactAngleProfileIndex = _profiles findIf {_x # 0 == "impAng"};
if(_impactAngleProfileIndex > -1) then {
  private _profile = _profiles # _impactAngleProfileIndex;
  ITC_AIR_IMPANGLE = parseNumber (_profile # 1);
};

private _noseFuzeProfileIndex = _profiles findIf {_x # 0 == "nose"};
private _noseFuze = if(_noseFuzeProfileIndex > -1) then [{(_profiles # _noseFuzeProfileIndex) # 1},{"PD"}];
private _tailFuzeProfileIndex = _profiles findIf {_x # 0 == "tail"};
private _tailFuze = if(_tailFuzeProfileIndex > -1) then [{(_profiles # _tailFuzeProfileIndex) # 1},{"PD"}];
private _fuzeSelectedProfileIndex = _profiles findIf {_x # 0 == "fuzeSel"};
private _fuzeSelected = if(_fuzeSelectedProfileIndex > -1) then [{(_profiles # _fuzeSelectedProfileIndex) # 1},{"N/T"}];
private _fuze = "PD";
switch(_fuzeSelected) do {
  case "N/T": {
    private _fuzes = [_noseFuze, _tailFuze];
    _fuze = if("DLY" in _fuzes) then [{"DLY"},{_fuze}];
    _fuze = if("PD" in _fuzes) then [{"PD"},{_fuze}];
    _fuze = if("PROX" in _fuzes) then [{"PROX"},{_fuze}];
  };
  case "NOSE": {
    _fuze = _noseFuze;
  };
  case "TAIL": {
    _fuze = _tailFuze;
  };
};
ITC_AIR_PROGFUZE = _fuze;
