private _frequency = ITC_ROVER_FREQ;
private _feed = [_frequency, true,"ITC_AIR_ROVER_GLASSES_FEED"] call itc_air_rover_fnc_createFeed;
itc_air_rover_glasses_open = true;
_feed cameraEffect ["internal", "BACK","ITC_AIR_ROVER_GLASSES_FEED"];
private _UI = (uiNameSpace getVariable "ITC_ROVER_GLASSES_UI");
(_UI displayCtrl 61500) ctrlSetText "#(argb,8,8,3)color(1,1,1,1)";
[{
  (_this select 0) params ["_openedTime","_UI"];
  if(!alive player || !itc_air_rover_glasses_open) exitWith {
    [_this select 1] call CBA_fnc_removePerFrameHandler;
  };
  //(_UI displayCtrl 1002) ctrlSetText ITC_ROVER_FREQ;
  if(cba_missionTime > _openedTime + 1) then {
    (_UI displayCtrl 61500) ctrlSetText "#(argb,512,512,1)r2t(ITC_AIR_ROVER_GLASSES_FEED,1)";
  };

  private _posFunc = if(hasPilotCamera itc_air_rover_source) then [{itc_air_rover_fnc_camFromPod},{itc_air_rover_fnc_camFromTurret}];
  private _posResults = ([itc_air_rover_source] call _posFunc);
  if(isNil {_posResults}) exitWith {
    (_UI displayCtrl 61500) ctrlSetText "#(argb,8,8,3)color(1,1,1,1)";
  };
  (_UI displayCtrl 61500) ctrlSetText "#(argb,512,512,1)r2t(ITC_AIR_ROVER_GLASSES_FEED,1)";
  //ctrlSetText [1013, str round getDir itc_air_rover_source];
}, 1, [cba_missionTime,_UI]] call CBA_fnc_addPerFrameHandler;
