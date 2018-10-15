private _frequency = ITC_ROVER_FREQ;
private _feed = [_frequency, false] call itc_air_rover_fnc_createFeed;

_feed cameraEffect ["internal", "BACK"];
0 fadeSound 0;
[{
  (_this select 0) params ["_openedTime"];
  if(!alive player || !dialog) exitWith {
    [_this select 1] call CBA_fnc_removePerFrameHandler;
    0 fadeSound 1;
  };
  ctrlSetText [1002, ITC_ROVER_FREQ];
  if(cba_missionTime > _openedTime + 1) then {
    ctrlShow [2200,false];
  };
  private _playerPos = [getPos player] call ace_common_fnc_getMapGridFromPos;
  ctrlSetText [1010, format ["%1 %2",_playerPos # 0,_playerPos # 1]];

  private _posFunc = if(hasPilotCamera itc_air_rover_source) then [{itc_air_rover_fnc_camFromPod},{itc_air_rover_fnc_camFromTurret}];
  private _posResults = ([itc_air_rover_source] call _posFunc);
  if(isNil {_posResults}) exitWith {
    ctrlShow [2200,true];
    {ctrlSetText [_x, "N/A"];} forEach [1011,1014,1012,1013];
  };
  ctrlShow [2200,false];
  _posResults  params ["_success","_target","_origin"];
  private _planePos = [_origin] call ace_common_fnc_getMapGridFromPos;
  ctrlSetText [1011, format ["%1 %2",_planePos # 0,_planePos # 1]];
  private _targPos = [_target] call ace_common_fnc_getMapGridFromPos;
  ctrlSetText [1014, format ["%1 %2",_targPos # 0,_targPos # 1]];
  ctrlSetText [1012, str round ((getPosASL itc_air_rover_source) # 2)];

  ctrlSetText [1013, str round getDir itc_air_rover_source];
}, 1, [cba_missionTime]] call CBA_fnc_addPerFrameHandler;
