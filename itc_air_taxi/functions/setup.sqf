params ["_plane"];
ITC_AIR_UFC_FXD2_COLUMNS_BTN set [7,"TXI SPD"];
ITC_AIR_UFC_FXD2_COLUMNS_TXT set [7,"LIM OFF"];
ITC_AIR_UFC_FXD2_COLUMNS_FNC set [7,itc_air_taxi_fnc_speedLimit];
itc_air_taxi_speedLimit = false;

ITC_AIR_UFC_FXD2_COLUMNS_BTN set [3,"REVERSE"];
ITC_AIR_UFC_FXD2_COLUMNS_TXT set [3,"OFF"];
ITC_AIR_UFC_FXD2_COLUMNS_FNC set [3,itc_air_taxi_fnc_reverse];
itc_air_taxi_reverse = false;

ITC_AIR_UFC_FXD2_COLUMNS_BTN set [2,"PWR LOC"];
ITC_AIR_UFC_FXD2_COLUMNS_TXT set [2,"OFF"];
ITC_AIR_UFC_FXD2_COLUMNS_FNC set [2,itc_air_taxi_fnc_throttleLock];
itc_air_throttleLock = false;

_plane setVariable ["itc_air_gearState",(speed _plane < 10)];
