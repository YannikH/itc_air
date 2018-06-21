params ["_display", "_variable"];
_display setVariable ["displayVariable", _variable];
_vehicle = vehicle player;

[{
  _this select 0 params ["_display","_vehicle"];
  if(!alive player || !((vehicle player) isKindOf "Air") || !alive _vehicle) exitWith { //ensure player is alive and dialog is open
    [_this select 1] call CBA_fnc_removePerFrameHandler;
    (findDisplay 1501) closeDisplay 2;
  };
  private _btnText = missionNameSpace getVariable ("ITC_AIR_UFC_" + ITC_AIR_UFC_SRC + "_COLUMNS_BTN");
  private _colText = missionNameSpace getVariable ("ITC_AIR_UFC_" + ITC_AIR_UFC_SRC + "_COLUMNS_TXT");
  (_display displayCtrl 1114) ctrlSetText (ITC_AIR_UFC_FXD1 # 1);
  (_display displayCtrl 1614) ctrlSetText (ITC_AIR_UFC_FXD1 # 0);
  (_display displayCtrl 1123) ctrlSetText (ITC_AIR_UFC_FXD2 # 1);
  (_display displayCtrl 1623) ctrlSetText (ITC_AIR_UFC_FXD2 # 0);
  {
    (_display displayCtrl (1615 + _forEachIndex)) ctrlSetText _x;
    (_display displayCtrl (1115 + _forEachIndex)) ctrlSetText (_colText # _forEachIndex);
  }forEach _btnText;
  (_display displayCtrl 1000) ctrlSetText itc_air_ufc_input;
}, 0.1, [_display, _vehicle]] call CBA_fnc_addPerFrameHandler;
