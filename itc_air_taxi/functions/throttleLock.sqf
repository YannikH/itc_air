private _plane = vehicle player;
if(itc_air_throttleLock) exitWith {itc_air_throttleLock = false;};
itc_air_throttleLock = true;
ITC_AIR_UFC_FXD2_COLUMNS_TXT set [2,"ON"];
private _throttle = airplaneThrottle _plane;
hint format["Throttle Lock at %1",(_throttle * 100)];
[{
  (_this select 0) params ["_setting"];
  private _plane = vehicle player;
  if(!alive player || !(_plane isKindOf "Air") || !itc_air_throttleLock) exitWith {
    hint "Throttle Lock Off";
    ITC_AIR_UFC_FXD2_COLUMNS_TXT set [2,"OFF"];
    [_this select 1] call CBA_fnc_removePerFrameHandler;
  };
  _plane setAirplaneThrottle _setting;
},0,[_throttle]] call CBA_fnc_addPerFrameHandler;
