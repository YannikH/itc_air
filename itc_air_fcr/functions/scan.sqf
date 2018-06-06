private _plane = vehicle player;
private _frameTime = (time - ITC_AIR_FCR_LASTFRAME) min 1;
ITC_AIR_FCR_LASTFRAME = time;
private _scanCenter = 0;
if(_frameTime == 0) exitWith {};
if(!ITC_AIR_FCR_SNOWPLOW) then {
  private _stpt = (_plane getVariable "stpt_pos");
  ITC_AIR_FCR_RNG = _plane distance _stpt;
  private _relDir = ((((getPos _plane) vectorFromTo _stpt) call CBA_fnc_vectDir) - (getDir _plane)) call CBA_fnc_simplifyAngle180;
  _relDir = if(_relDir > 180) then [{_relDir - 360}, {_relDir}];
  _scanCenter = _relDir;
};
private _scanStep = (ITC_AIR_FCR_SCANXDIR * ITC_AIR_FCR_TRAVSPD * _frameTime);
if(
  (ITC_AIR_FCR_SCANAZ < (_scanCenter+ITC_AIR_FCR_SCANRNG) || ITC_AIR_FCR_SCANXDIR == -1) &&
  (ITC_AIR_FCR_SCANAZ > (_scanCenter+-1*ITC_AIR_FCR_SCANRNG) || ITC_AIR_FCR_SCANXDIR == 1)
  ) then {
  ITC_AIR_FCR_SCANAZ = (ITC_AIR_FCR_SCANAZ + _scanStep) min ITC_AIR_FCR_TRAVLIM max -ITC_AIR_FCR_TRAVLIM;
} else {
  ITC_AIR_FCR_SCANXDIR = ITC_AIR_FCR_SCANXDIR * -1;
};
private _scanVect = [ITC_AIR_FCR_SCANAZ, ITC_AIR_FCR_RNG] call itc_air_fcr_fnc_getScanTargetVector;
private ["_ang", "_vectToVeh"];
{
  private _veh = _x;
  _vectToVeh = (getPosASL _plane) vectorFromTo (getPosASL _x);
  _ang = acos (_vectToVeh vectorDotProduct _scanVect);
  if(_ang < 4.9 && {([_plane,"VIEW",_x] checkVisibility [getPosASL _plane, getPosASL _x]) > 0.1}) then {
    private _findIndex = ITC_AIR_FCR_TRACKING findIf {_x # 0 == _veh};
    if(_findIndex > -1) then {
      private _veh = ITC_AIR_FCR_TRACKING # _findIndex;
      ITC_AIR_FCR_TRACKING set [_findIndex, [_x, getPosATL _x, _veh # 2]];
    } else {
      ITC_AIR_FCR_TRACKING pushBack [_x, getPosATL _x, nil];
    };
  };
  //player sideChat str _ang;
} forEach vehicles;
