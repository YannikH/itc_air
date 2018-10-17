class MFDStatusNav : ITC_AIR_PAGE {
  idc = 10201;
  class Controls {
    class Rsc21Picture_1201: RscPicture
    {
    	idc = 211201;
    	text = "itc_air_mfd\data\ui\ehsd.paa";
    	x = SCALE * 0.125;
    	y = SCALE * 0.2;
    	w = SCALE * 0.495;
    	h = SCALE * 0.66;
    };
    class Rsc21Picture_1202: RscPicture
    {
    	idc = 211202;
    	text = "itc_air_mfd\data\ui\ehsd_wp.paa";
    	x = SCALE * 0.125;
    	y = SCALE * 0.2;
    	w = SCALE * 0.495;
    	h = SCALE * 0.66;
    };
    class Rsc21Picture_1203: RscPicture
    {
    	idc = 211203;
    	text = "itc_air_mfd\data\ui\ehsd_pln.paa";
    	x = SCALE * 0.125;
    	y = SCALE * 0.2;
    	w = SCALE * 0.495;
    	h = SCALE * 0.66;
    };
    class Rsc21Text_1000: ITC_AIR_MfdTextRight
    {
    	idc = 211000;
    	text = "HDG 330"; //--- ToDo: Localize;
    	x = SCALE * 0.1025;
    	y = SCALE * 0.51;
    	w = SCALE * 0.25;
    	h = SCALE * 0.04;
    };
    class Rsc21Text_1001: ITC_AIR_MfdText
    {
    	idc = 211001;
    	text = "300 KTS"; //--- ToDo: Localize;
    	x = SCALE * 0.3925;
    	y = SCALE * 0.51;
    	w = SCALE * 0.25;
    	h = SCALE * 0.04;
    };


    class TCN_HDGDIST: ITC_AIR_MfdText
    {
    	idc = 211002;
    	text = "292 / 9.6"; //--- ToDo: Localize;
    	x = SCALE * 0.125;
    	y = SCALE * 0.18;
    	w = SCALE * 0.15;
    	h = SCALE * 0.04;
    };
    class TCN_TOF: ITC_AIR_MfdText
    {
    	idc = 211003;
    	text = "00:00"; //--- ToDo: Localize;
    	x = SCALE * 0.125;
    	y = SCALE * 0.22;
    	w = SCALE * 0.075;
    	h = SCALE * 0.04;
    };
    class TCN_NME: ITC_AIR_MfdText
    {
    	idc = 211004;
    	text = "ATR"; //--- ToDo: Localize;
    	x = SCALE * 0.2;
    	y = SCALE * 0.22;
    	w = SCALE * 0.05;
    	h = SCALE * 0.04;
    };

    class WPT_HDGDIST: ITC_AIR_MfdTextRight
    {
    	idc = 211005;
    	text = "292 / 9.6"; //--- ToDo: Localize;
    	x = SCALE * 0.475;
    	y = SCALE * 0.18;
    	w = SCALE * 0.15;
    	h = SCALE * 0.04;
    };
    class WPT_TOF: ITC_AIR_MfdTextRight
    {
    	idc = 211006;
    	text = "00:00"; //--- ToDo: Localize;
    	x = SCALE * 0.5625;
    	y = SCALE * 0.22;
    	w = SCALE * 0.0625;
    	h = SCALE * 0.04;
    };
    class WPT_NME: ITC_AIR_MfdTextRight
    {
    	idc = 211007;
    	text = "WP1"; //--- ToDo: Localize;
    	x = SCALE * 0.5;
    	y = SCALE * 0.22;
    	w = SCALE * 0.05;
    	h = SCALE * 0.04;
    };
  };
};
