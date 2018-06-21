private _plane = vehicle player;
if(itc_air_taxi_speedLimit || speed _plane > 20 || ((ASLtoAGL (getPosASL _plane)) # 2) > 30) exitWith {itc_air_taxi_speedLimit = false;};
itc_air_taxi_speedLimit = true;
itc_air_taxi_reverse = false;
ITC_AIR_UFC_FXD2_COLUMNS_TXT set [7,"LIM ON"];
hint "taxi speed limiter on";
[{
  private _plane = vehicle player;
  private _throttle = airplaneThrottle _plane;
  if(!alive player || !(_plane isKindOf "Air") || !itc_air_taxi_speedLimit || _throttle > 0.5) exitWith {
    hint "taxi speed limiter off";
    ITC_AIR_UFC_FXD2_COLUMNS_TXT set [7,"LIM OFF"];
    [_this select 1] call CBA_fnc_removePerFrameHandler;
  };
  _plane setVelocity ((vectorDir _plane) vectorMultiply (6.44 * (_throttle * 2)));
},0,[]] call CBA_fnc_addPerFrameHandler;
