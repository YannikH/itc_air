if(ITC_AIR_SOI != "HMD") exitWith {
  ITC_AIR_SOI = "HMD";
  itc_air_soi_provider = "HMD";
  (vehicle player) setVariable ["SOI", "HMCS"];
  true
};
false
