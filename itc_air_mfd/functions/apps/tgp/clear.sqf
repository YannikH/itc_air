params ["_display"];
{
  (_display displayCtrl _x) ctrlShow false;
} forEach [10300];

{
  _x cameraEffect ["terminate","Back"];
  _x cameraEffect ["terminate","Back"];
  camDestroy _x;
} forEach ITC_AIR_MFD_CAMS;
ITC_AIR_MFD_CAMS = [];
