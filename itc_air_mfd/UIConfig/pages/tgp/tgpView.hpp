class Tgp : ITC_AIR_PAGE {
  idc = 10300;
  class Controls {
    class Rsc3Picture: RscPicture
    {
        idc = 32200;
        //x = (SCALE * 0.375) - (safeZoneW / 4) + (0.05 * 3/4);
        //y = (SCALE * 0.5) - (safeZoneH / 4) + (0.05);
        //w = safeZoneW / 2 + (0.025 * 3/4);
        //h = safeZoneH / 2 + 0.025;
        x = SCALE * 0.1125;
        y = SCALE * 0.16;
        w = SCALE * 0.525;
        h = SCALE * 0.7;
        colorBackground[] = {0, 0, 0, 0};
        colorText[] = {1, 1, 1, 1};
        text = "#(argb,512,512,1)r2t(MFD_FEED,1)";
    };
    class tgp_area : Rsc3Picture {
      x = SCALE * 0.1;
      y = SCALE * 0.1;
      w = SCALE * 0.55;
      h = SCALE * 0.8;
      idc = 32201;
      text = "itc_air_mfd\data\ui\tgp\area.paa";
    };
    class tgp_wfov : tgp_area {
      idc = 32202;
      text = "itc_air_mfd\data\ui\tgp\wfov.paa";
    };
    class tgp_lss : tgp_area {
      idc = 32203;
      text = "itc_air_mfd\data\ui\tgp\lss.paa";
    };
    class tgp_mrk : tgp_area {
      idc = 32204;
      text = "itc_air_mfd\data\ui\tgp\mrk.paa";
    };
    class tgp_point : tgp_area {
      idc = 32205;
      text = "itc_air_mfd\data\ui\tgp\point.paa";
    };
    class Rsc3Text_1000: ITC_AIR_MfdText
    {
    	idc = 31000;
    	text = "AREA"; //--- ToDo: Localize;
    	x = SCALE * 0.25;
    	y = SCALE * 0.64;
    	w = SCALE * 0.0625;
    	h = SCALE * 0.04;
    };
    class Rsc3Text_1001: ITC_AIR_MfdText
    {
    	idc = 31001;
    	text = "T"; //--- ToDo: Localize;
    	x = SCALE * 0.475;
    	y = SCALE * 0.64;
    	w = SCALE * 0.025;
    	h = SCALE * 0.04;
    };
    class Rsc3Text_1002: ITC_AIR_MfdTextBg
    {
    	idc = 31002;
    	text = "WHOT"; //--- ToDo: Localize;
    	x = SCALE * 0.55;
    	y = SCALE * 0.18;
    	w = SCALE * 0.075;
    	h = SCALE * 0.04;
      style = 1;
    };
    class Rsc3Text_1003: ITC_AIR_MfdTextBg
    {
    	idc = 31003;
    	text = "0"; //--- ToDo: Localize;
    	x = SCALE * 0.55;
    	y = SCALE * 0.22;
    	w = SCALE * 0.075;
    	h = SCALE * 0.04;
      style = 1;
    };
    class Rsc3Text_1004: ITC_AIR_MfdTextBg
    {
    	idc = 31004;
    	text = "NNX XX NNNNN NNNNN"; //--- ToDo: Localize;
    	x = SCALE * 0.25;
    	y = SCALE * 0.72;
    	w = SCALE * 0.25;
    	h = SCALE * 0.04;
      style = 2;
    };
    class Rsc3Text_1005: ITC_AIR_MfdTextBg
    {
    	idc = 31005;
    	text = "NNN"; //--- ToDo: Localize;
    	x = SCALE * 0.35;
    	y = SCALE * 0.76;
    	w = SCALE * 0.05;
    	h = SCALE * 0.04;
      style = 2;
    };
    /*
    class Rsc3Text_1006: ITC_AIR_MfdText
    {
    	idc = 31006;
    	text = "L"; //--- ToDo: Localize;
      x = SCALE *0.125;
    	y = SCALE * 0.44;
    	w = SCALE * 0.12;
    	h = SCALE * 0.04;
    };
    class Rsc3Text_1007: ITC_AIR_MfdText
    {
    	idc = 31007;
    	text = ""; //--- ToDo: Localize;
      x = SCALE *0.125;
    	y = SCALE * 0.48;
    	w = SCALE * 0.12;
    	h = SCALE * 0.04;
    };
    class Rsc3Text_1008: ITC_AIR_MfdText
    {
    	idc = 31008;
    	text = "LSS"; //--- ToDo: Localize;
      x = SCALE *0.125;
    	y = SCALE * 0.54;
    	w = SCALE * 0.12;
    	h = SCALE * 0.04;
    };
    class Rsc3Text_1009: ITC_AIR_MfdText
    {
    	idc = 31009;
    	text = ""; //--- ToDo: Localize;
      x = SCALE *0.125;
    	y = SCALE * 0.58;
    	w = SCALE * 0.12;
    	h = SCALE * 0.04;
    };
    /*
    class Rsc3Text_1006: ITC_AIR_MfdTextBg
    {
    	idc = 31006;
    	text = "0Z"; //--- ToDo: Localize;
    	x = SCALE * 0.125;
    	y = SCALE * 0.18;
    	w = SCALE * 0.075;
    	h = SCALE * 0.04;
    };
    class Rsc3Text_1007: ITC_AIR_MfdTextBg
    {
    	idc = 31007;
    	text = "WIDE"; //--- ToDo: Localize;
    	x = SCALE * 0.125;
    	y = SCALE * 0.22;
    	w = SCALE * 0.075;
    	h = SCALE * 0.04;
    };
    */
  };
};
