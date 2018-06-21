private _plane = vehicle player;
if(itc_air_taxi_reverse || speed _plane > 0 || ((ASLtoAGL (getPosASL _plane)) # 2) > 30) exitWith {itc_air_taxi_reverse = false;};
itc_air_taxi_reverse = true;
itc_air_taxi_speedLimit = false;
ITC_AIR_UFC_FXD2_COLUMNS_TXT set [3,"ON"];
hint "reverse taxi on";
[{
  private _plane = vehicle player;
  private _throttle = airplaneThrottle _plane;
  if(!alive player || !(_plane isKindOf "Air") || !itc_air_taxi_reverse || _throttle > 0.2) then {
    hint "reverse taxi off";
    ITC_AIR_UFC_FXD2_COLUMNS_TXT set [3,"OFF"];
    [_this select 1] call CBA_fnc_removePerFrameHandler;
  };
  if(_throttle > 0) then {
    _plane setVelocity ((vectorDir _plane) vectorMultiply (-2.22 * (_throttle * 5)));
  };
},0,[]] call CBA_fnc_addPerFrameHandler;
