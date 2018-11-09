params ["_display", "_variable"];
//[_display,(configFile >> "ITC_AIR_MFDButtons" >> "MFDButtons_L"),ITC_AIR_MFD_SCALE] call itc_air_mfd_fnc_rescaleControlsGroup;
//[_display,(configFile >> "ITC_AIR_MFDButtons" >> "MFDButtons_R"),ITC_AIR_MFD_SCALE] call itc_air_mfd_fnc_rescaleControlsGroup;
//_this call test_fnc_resizeMFDBtn;
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

  switch(ITC_AIR_UFC_CTXT_PAGE) do {
    case "STATNAV":{
      ITC_AIR_UFC_CTXT_COLUMNS_TXT set [0,str itc_air_wpt_tacanCSEL];
      ITC_AIR_UFC_CTXT_COLUMNS_TXT set [4,str itc_air_wpt_tacanCDE];
      if ("AP-MAN" in ((vehicle player) getVariable "itc_air_systems")) then {
        ITC_AIR_UFC_CTXT_COLUMNS_TXT set [5,str round ITC_AP_TargetAlt];
        if (ITC_AP_mode isEqualTo 1) then {
          ITC_AIR_UFC_CTXT_COLUMNS_TXT set [1,str round ITC_AP_TargetHdg];
        };
      };
    };
  };

}, 0.1, [_display, _vehicle]] call CBA_fnc_addPerFrameHandler;
