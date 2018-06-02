params ["_display", "_btn"];
(_btn splitString "") params ["_side", "_num"];
_vehicle = (vehicle player);
switch(_btn) do {
  case "R1": {
    ITC_AIR_MAVERICK_CAM camSetFov 0.001;
  };
  case "R2": {
    ITC_AIR_MAVERICK_CAM camSetFov 0.1;
  };
  case "R3": {
    ITC_AIR_MAVERICK_SLEWSPD = if(ITC_AIR_MAVERICK_SLEWSPD < 2) then [{5},{ITC_AIR_MAVERICK_SLEWSPD - 2}];
    (_display displayCtrl 721003) ctrlSetText str ITC_AIR_MAVERICK_SLEWSPD;
  };
};
false
