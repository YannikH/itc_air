params ["_player"];

_hasRover = "ITC_ROVER_SIR" in (items _player);
_hasMonitor = "ACE_HuntIR_monitor" in (items _player);

if(_hasRover || _hasMonitor) exitWith {
    true  
};
false