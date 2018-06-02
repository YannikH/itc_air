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
        text = "#(argb,512,512,1)r2t(MAVERICK_FEED,1)";
    };
    class mav72_area : Rsc72Picture {
      x = SCALE * 0.1;
      y = SCALE * 0.1;
      w = SCALE * 0.55;
      h = SCALE * 0.8;
      idc = 722201;
      text = "itc_air_mfd\data\ui\tgp\area.paa";
    };
    class mav72_lss : mav72_area {
      idc = 722203;
      text = "itc_air_mfd\data\ui\tgp\lss.paa";
    };
    class mav72_sac : mav72_area {
      idc = 722204;
        x = SCALE * 0.3;
        y = SCALE * 0.3;
        w = SCALE * 0.08 * (3/4);
        h = SCALE * 0.08;
      text = "itc_air_mfd\data\ui\maverick_sac.paa";
    };
    class Rsc72Picture_1201: RscPicture
    {
    	idc = 721201;
    	text = "itc_air_mfd\data\ui\DLZ.paa";
    	x = 0;
    	y = 0;
    	w = SCALE * 0.75;
    	h = SCALE *  1;
    };
    class Rsc72Picture_1202: RscPicture
    {
    	idc = 721202;
    	text = "itc_air_mfd\data\ui\LFT.paa";
    	x = 0.1;
    	y = 0.1;
    	w = SCALE * 0.02;
    	h = SCALE * 0.02;
    };
    class Rsc72Text_1000: ITC_AIR_MfdTextCenter
    {
    	idc = 721000;
    	text = "XXX"; //--- ToDo: Localize;
    	x = SCALE * 0.125;
    	y = SCALE * 0.70;
    	w = SCALE * 0.05;
    	h = SCALE * 0.02;
    };
    class Rsc72Text_1001: ITC_AIR_MfdTextBg
    {
    	idc = 721001;
    	text = "MAVERICK"; //--- ToDo: Localize;
    	x = SCALE * 0.125;
    	y = SCALE * 0.23;
    	w = SCALE * 0.1125;
    	h = SCALE * 0.04;
    	colorText[] = {0,1,0,1};
    	colorBackground[] = {0,0,0,1};
    };
    class Rsc72Text_1002: ITC_AIR_MfdTextRight
    {
    	idc = 721002;
    	text = "SLEW"; //--- ToDo: Localize;
    	x = SCALE * 0.54;
    	y = SCALE * 0.44;
    	w = SCALE * 0.085;
    	h = SCALE * 0.04;
    };
    class Rsc72Text_1003: ITC_AIR_MfdTextRight
    {
    	idc = 721003;
    	text = "5"; //--- ToDo: Localize;
    	x = SCALE * 0.55;
    	y = SCALE * 0.48;
    	w = SCALE * 0.075;
    	h = SCALE * 0.04;
    };
  };
};
