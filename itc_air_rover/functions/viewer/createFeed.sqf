params ["_frequency",["_pip",false],["_feedName",""]];
private _source = [_frequency] call itc_air_rover_fnc_getRoverSource;
itc_air_rover_source = _source;
[player,["rover_recv_freq", _frequency]] remoteExec ["setVariable", 0, false];
_camera = "camera" camCreate [0,0,0];
[{
  (_this select 0) params ["_camera","_frequency","_source","_pip", "_feedName"];

  //if it's not pip, and dialog is closed, kill it
  private _dialogClosed = (!_pip && !dialog);
  //if the player dies, kill the camera
  if(!alive player || _dialogClosed) exitWith {
    _camera cameraEffect ["terminate", "back"];
    itc_air_rover_source = nil;
    camUseNVG false;
    false setCamUseTI 1;
    [player,["rover_recv_freq", ""]] remoteExec ["setVariable", 0, false];
    [_this select 1] call CBA_fnc_removePerFrameHandler;
  };

  //if the broadcast end, look for a new source, or kill the camera
  private _stillBroadCasting = _source getVariable "itc_air_rover_broadcasting";
  if(!alive _source || !_stillBroadCasting) exitWith {
    private _newSource = [_frequency] call itc_air_rover_fnc_getRoverSource;
    if(!isNil {_newSource}) then {
      itc_air_rover_source = _source;
      (_this select 0) set [2, _newSource];
    } else {
      _camera cameraEffect ["terminate", "back"];
      itc_air_rover_source = nil;
      camUseNVG false;
      false setCamUseTI 1;
      [player,["rover_recv_freq", ""]] remoteExec ["setVariable", 0, false];
      [_this select 1] call CBA_fnc_removePerFrameHandler;
    };
  };

  //point the camera in the right direction
  private _target = if(hasPilotCamera _source) then [{
    ([_source] call itc_air_rover_fnc_camFromPod) params ["_success","_target","_origin"];
    _camera camSetPos (ASLtoAGL _origin);
    (ASLtoAGL _target)
  }, {
    ([_source] call itc_air_rover_fnc_camFromTurret) params ["_success","_target","_origin"];
    _camera camSetPos (ASLtoAGL _origin);
    (ASLtoAGL _target)
  }];

  _camera camSetFov (_source getVariable ["itc_air_rover_visfov",0.12]);
  private _visMode = _source getVariable ["itc_air_rover_vismode",0.12];
  if(_pip) then {
    _feedName setPiPEffect [_visMode];
  } else {
    camUseNVG (_visMode == 1);
    (_visMode == 2)  setCamUseTI 1;
  };

  _camera camCommit 0;

  _camera camSetTarget _target;
}, 0, [_camera, _frequency, _source, _pip, _feedName]] call CBA_fnc_addPerFrameHandler;

_camera
