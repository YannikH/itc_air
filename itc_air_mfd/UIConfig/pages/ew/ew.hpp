class ITC_MFD_PAGE_EW : ITC_AIR_PAGE {
  idc = 11000;
  class Controls {
    class Rsc10Picture_1200: RscPicture
    {
    	idc = 101200;
    	text = "itc_air_mfd\data\ui\ew.paa";
    	x = 0;
    	y = 0;
    	w = SCALE * 0.75;
    	h = 1;
    };
    class Rsc10Text_1000: RscText
    {
    	idc = 101000;
    	text = "40"; //--- ToDo: Localize;
    	x = SCALE * 0.1875;
    	y = SCALE * 0.18;
    	w = SCALE * 0.0625;
    	h = SCALE * 0.04;
    };
    class Rsc10Text_1001: RscText
    {
    	idc = 101001;
    	text = "40"; //--- ToDo: Localize;
    	x = SCALE * 0.5125;
    	y = SCALE * 0.18;
    	w = SCALE * 0.0625;
    	h = SCALE * 0.04;
    };
    class Rsc10Text_1002: RscText
    {
    	idc = 101002;
    	text = "AUTO"; //--- ToDo: Localize;
    	x = SCALE * 0.125;
    	y = SCALE * 0.24;
    	w = SCALE * 0.0625;
    	h = SCALE * 0.04;
    };
    class Rsc10Text_1003: RscText
    {
    	idc = 101003;
    	text = "LAUNCH"; //--- ToDo: Localize;
    	x = SCALE * 0.125;
    	y = SCALE * 0.28;
    	w = SCALE * 0.0875;
    	h = SCALE * 0.04;
    };
    class Rsc10Text_1004: RscText
    {
    	idc = 101004;
    	text = "APGE"; //--- ToDo: Localize;
    	x = SCALE * 0.125;
    	y = SCALE * 0.34;
    	w = SCALE * 0.1125;
    	h = SCALE * 0.04;
    };
    class Rsc10Text_1007: RscText
    {
    	idc = 101007;
    	text = "MAN"; //--- ToDo: Localize;
    	x = SCALE * 0.275;
    	y = SCALE * 0.18;
    	w = SCALE * 0.0625;
    	h = SCALE * 0.04;
    };
    class Rsc10Text_1008: RscText
    {
    	idc = 101008;
    	text = "CHAFF FLARE"; //--- ToDo: Localize;
    	x = SCALE * 0.2;
    	y = SCALE * 0.22;
    	w = SCALE * 0.15;
    	h = SCALE * 0.04;
    };
    class Rsc10Frame_1800: RscFrame
    {
    	idc = 101800;
    	x = SCALE * 0.1875;
    	y = SCALE * 0.18;
    	w = SCALE * 0.1625;
    	h = SCALE * 0.08;
    };
    class Rsc10Frame_1801: RscFrame
    {
    	idc = 101801;
    	x = SCALE * 0.425;
    	y = SCALE * 0.18;
    	w = SCALE * 0.1625;
    	h = SCALE * 0.08;
    };
    class Rsc10Text_1009: RscText
    {
    	idc = 101009;
    	text = "MAN"; //--- ToDo: Localize;
    	x = SCALE * 0.4375;
    	y = SCALE * 0.18;
    	w = SCALE * 0.0625;
    	h = SCALE * 0.04;
    };
    class Rsc10Text_1010: RscText
    {
    	idc = 101010;
    	text = "LWIRCM"; //--- ToDo: Localize;
    	x = SCALE * 0.425;
    	y = SCALE * 0.22;
    	w = SCALE * 0.15;
    	h = SCALE * 0.04;
    };
    class Rsc10Text_1005: RscText
    {
    	idc = 101005;
    	text = "OFF"; //--- ToDo: Localize;
    	x = SCALE * 0.125;
    	y = SCALE * 0.38;
    	w = SCALE * 0.0875;
    	h = SCALE * 0.04;
    };
  };
};
