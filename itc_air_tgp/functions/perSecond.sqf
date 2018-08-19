params ["_plane"];
private _display = uiNameSpace getVariable "ITC_AIR_TGP_UI";

if((_plane getVariable "tgp_dir") # 0) then {
  private _targ = (_plane getVariable "tgp_dir") # 1;
  private _distToTarget = _plane distance _targ;
  private _fovRad = call cba_fnc_getFov select 0;
  private _fovDeg = _fovRad * 180 / pi;
  private _ydStick = (tan(_fovDeg / 2) * _distToTarget) / 8.37931034;
  if(_fovDeg > 10) then {
      _ydStick = (tan(_fovDeg / 2) * _distToTarget) / 16.2;
  };
  (_display displayCtrl 11019) ctrlSetText str(round _ydStick);

  private _gridArea = [worldName] call ace_common_fnc_getMGRSdata;
  private _grid = [_targ] call ace_common_fnc_getMapGridFromPos;
  _str = format ["%1  %2  %3  %4", _gridArea select 0, _gridArea select 1, _grid select 0, _grid select 1];

  (_display displayCtrl 11000) ctrlShow true;
  (_display displayCtrl 11001) ctrlShow true;
  (_display displayCtrl 11004) ctrlShow true;
  (_display displayCtrl 11000) ctrlSetText _str;
  (_display displayCtrl 11001) ctrlSetText str(round (_targ # 2));
  (_display displayCtrl 11004) ctrlSetText str(round _distToTarget);
} else {
  (_display displayCtrl 11000) ctrlShow false;
  (_display displayCtrl 11001) ctrlShow false;
  (_display displayCtrl 11004) ctrlShow false;
};

_str = "";
_laserOn = (!isNull (laserTarget _plane));
if(_laserOn && _plane getVariable "laser_ir") then {
    _str = "B";
} else {
    if(_laserOn) then {
        _str = "L";
    };
    if(_plane getVariable "laser_ir") then {
        _str = "P";
    };
};
(_display displayCtrl 11002) ctrlSetText _str;
/*
(_display displayCtrl 11003) ctrlSetText (["DTV","NTV","FLIR"] # (_plane getVariable "tgp_mode"));

(_display displayCtrl 11008) ctrlSetText (_plane getVariable "tgp_lsst_mode");
(_display displayCtrl 11005) ctrlSetText (if(_plane getVariable "laser_ir") then [{"ON"},{"OFF"}]);
(_display displayCtrl 11006) ctrlSetText format["%1 Hz", (_plane getVariable "laser_pulse")];
(_display displayCtrl 11011) ctrlSetText (if(_laserOn) then [{"ON"},{"OFF"}]);
(_display displayCtrl 11010) ctrlSetText str (_plane getVariable "laser_code_recv");
(_display displayCtrl 11013) ctrlSetText str (_plane getVariable "ace_laser_code");
*/
