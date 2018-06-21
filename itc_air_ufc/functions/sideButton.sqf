params ["_button"];

if(_button == "FXD1" || _button == "FXD2") exitWith {
  private _func = (missionNameSpace getVariable ("ITC_AIR_UFC_" + _button)) # 2;
  call _func;
};
private _functions = missionNameSpace getVariable ("ITC_AIR_UFC_" + ITC_AIR_UFC_SRC + "_COLUMNS_FNC");
call (_functions # (parseNumber _button));
