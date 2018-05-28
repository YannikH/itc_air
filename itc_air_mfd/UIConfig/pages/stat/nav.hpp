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
  };
};
