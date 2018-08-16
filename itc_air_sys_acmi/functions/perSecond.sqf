params ["_plane"];
if(!ITC_AIR_ACMI_ON) exitWith {};
if(ITC_AIR_ACMI_VEH_LASTEXEC + ITC_AIR_ACMI_VEH_DELAY > CBA_missionTime) exitWith {};
ITC_AIR_ACMI_VEH_LASTEXEC = CBA_missionTime;
private _timeLog = true;
{
  if(
    _x getVariable ["acmi_registered",false] &&
    {getPos _x distance (_x getVariable "acmi_pos") > 10}
  ) then {
    _printStr = [_x] call itc_air_acmi_fnc_logPositionString;
    [(_x getVariable "acmi_id") + "," + _printStr, _timeLog] call itc_air_acmi_fnc_log;
    _x setVariable ["acmi_pos", getPos _x];
    if(_timeLog) then {_timeLog = false};
  };
}forEach vehicles;
