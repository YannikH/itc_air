if(isNil{ITC_AIR_SOI_SLEW}) then {
  ITC_AIR_SOI_SLEW = _this;
} else {
  ITC_AIR_SOI_SLEW = ITC_AIR_SOI_SLEW vectorAdd _this;
  ITC_AIR_SOI_SLEW = [
    (ITC_AIR_SOI_SLEW # 0) max -1 min 1,
    (ITC_AIR_SOI_SLEW # 1) max -1 min 1,
    (ITC_AIR_SOI_SLEW # 2) max -1 min 1
  ];
};
false
