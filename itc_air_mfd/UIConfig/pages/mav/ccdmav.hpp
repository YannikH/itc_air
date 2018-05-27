class ITC_MFD_PAGE_CCDMAV : ITC_AIR_PAGE {
  idc = 10702;
  class Controls {
    class Rsc72Picture: RscPicture
    {
        idc = 722200;
        //x = (SCALE * 0.375) - (safeZoneW / 4);
        //y = (SCALE * 0.5) - (safeZoneH / 4);
        //w = safeZoneW / 2;
        //h = safeZoneH / 2;
        x = SCALE * 0.1;
        y = SCALE * 0.1;
        w = SCALE * 0.55;
        h = SCALE * 0.8;
        colorBackground[] = {0, 0, 0, 0};
        colorText[] = {1, 1, 1, 1};
        text = "#(argb,512,512,1)r2t(MFD_FEED,1)";
    };
  };
};
