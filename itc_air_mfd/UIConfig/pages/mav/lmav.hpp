class ITC_MFD_PAGE_LMAV : ITC_AIR_PAGE {
  idc = 10700;
  class Controls {
    class Rsc7Picture_1201: RscPicture
    {
    	idc = 71201;
    	text = "itc_air_mfd\data\ui\lmav.paa";
    	x = SCALE * 0.125;
    	y = SCALE * 0.2;
    	w = SCALE * 0.495;
    	h = SCALE * 0.66;
    };
    class Rsc7Picture_1202: RscPicture
    {
    	idc = 71202;
    	text = "itc_air_mfd\data\ui\lmavi.paa";
    	x = SCALE * 0.125;
    	y = SCALE * 0.13;
      w = SCALE * 0.03;
      h = SCALE * 0.04;
    };
    class Rsc7Text_1000: ITC_AIR_MfdTextCenter
    {
    	idc = 71000;
    	text = "1337"; //--- ToDo: Localize;
    	x = SCALE * 0.15;
    	y = SCALE * 0.18;
    	w = SCALE * 0.45;
    	h = SCALE * 0.1;
      sizeEx = SCALE * 0.07;
    };
  };
};
