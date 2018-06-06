params ["_display","_slewDir"];
ITC_AIR_FCR_CURSOR_TRACKING = false;
_slewDir params ["_az", "_rng"];
ITC_AIR_FCR_CURSOR_TRACKING = false;
private _azSpeed = ITC_AIR_FCR_TRAVLIM / 60;
private _rangeSpeed = ITC_AIR_FCR_RNG / 100;
_az = (ITC_AIR_FCR_CURSOR_DIR # 0) + (_az * _azSpeed);
_rng = (ITC_AIR_FCR_CURSOR_DIR # 1) + (_rng * _rangeSpeed);
if(abs _az < ITC_AIR_FCR_TRAVLIM && (_rng < ITC_AIR_FCR_RNG * 2 ||_rng < ITC_AIR_FCR_FREEZE_RNG * 2) && _rng > 0) then {
  ITC_AIR_FCR_CURSOR_DIR = [_az, _rng];
};
