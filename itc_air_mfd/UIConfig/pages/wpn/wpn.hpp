class ITC_MFD_PAGE_WPN : ITC_AIR_PAGE {
  idc = 12000;
  class Controls {
    class Rsc120Picture: RscPicture
    {
        idc = 1202200;
        //x = (SCALE * 0.375) - (safeZoneW / 4);
        //y = (SCALE * 0.5) - (safeZoneH / 4);
        //w = safeZoneW / 2;
        //h = safeZoneH / 2;
        x = SCALE * 0.1125;
        y = SCALE * 0.16;
        w = SCALE * 0.525;
        h = SCALE * 0.7;
        colorBackground[] = {0, 0, 0, 0};
        colorText[] = {1, 1, 1, 1};
        text = "#(argb,512,512,1)r2t(MAVERICK_FEED,1)";
    };
    class mav120_area : Rsc120Picture {
      x = SCALE * 0.1;
      y = SCALE * 0.1;
      w = SCALE * 0.55;
      h = SCALE * 0.8;
      idc = 1202201;
      text = "itc_air_mfd\data\ui\tgp\area.paa";
    };
    class mav120_lss : mav120_area {
      idc = 1202203;
      text = "itc_air_mfd\data\ui\tgp\lss.paa";
    };
    class mav120_sac : mav120_area {
      idc = 1202204;
        x = SCALE * 0.3;
        y = SCALE * 0.3;
        w = SCALE * 0.08 * (3/4);
        h = SCALE * 0.08;
      text = "itc_air_mfd\data\UI\SAC.paa";
    };
  };
};
