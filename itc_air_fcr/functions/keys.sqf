params ["_key","_dir","_long"];
_vehicle = vehicle player;
switch (_key) do {
  case "TMS": {
    switch (_dir) do {
      case "UP": {
        [_mfd, _this] call itc_air_fcr_fnc_attemptLock;
      };
      case "DOWN": {
        ITC_AIR_FCR_SNOWPLOW = !ITC_AIR_FCR_SNOWPLOW;
      };
    }
  };
};

switch (_key) do {
  case "DMS": {
    switch (_dir) do {
      case "UP": {
        ITC_AIR_FCR_RNG = (ITC_AIR_FCR_RNG + 1000) min 30000;
      };
      case "DOWN": {
        ITC_AIR_FCR_RNG = (ITC_AIR_FCR_RNG - 1000) max 1000;
      };
      case "LEFT": {
        ITC_AIR_FCR_FREEZE = !ITC_AIR_FCR_FREEZE;
        if(ITC_AIR_FCR_FREEZE) then {
          ITC_AIR_FCR_FREEZE_POS = getPosASL (vehicle player);
          ITC_AIR_FCR_FREEZE_DIR = getDir (vehicle player);
          ITC_AIR_FCR_FREEZE_RNG = ITC_AIR_FCR_RNG;
        };
      };
      case "RIGHT": {
        private _index = [10, 30, 60, 10] findIf {_x == ITC_AIR_FCR_SCANRNG};
        ITC_AIR_FCR_SCANRNG = [10, 30, 60, 10] # (_index + 1);
      };
    }
  };
};
