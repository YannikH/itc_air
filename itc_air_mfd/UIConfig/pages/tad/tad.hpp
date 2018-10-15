class ITC_MFD_PAGE_TAD : ITC_AIR_PAGE {
  idc = 10600;
  class Controls {
    class Rsc6Text_1010: ITC_AIR_MfdTextBg
    {
      idc = 61010;
      text = "HOOK"; //--- ToDo: Localize;
      x = SCALE *0.125;
      y = SCALE * 0.44;
      w = SCALE * 0.08;
      h = SCALE * 0.04;
    };
    class Rsc6Text_1011: ITC_AIR_MfdTextBg
    {
      idc = 61011;
      text = "OWN"; //--- ToDo: Localize;
      x = SCALE *0.125;
      y = SCALE * 0.48;
      w = SCALE * 0.08;
      h = SCALE * 0.04;
    };
    class Rsc6Text_1004: ITC_AIR_MfdTextBg
    {
    	idc = 61004;
    	text = "NNX XX NNNNN NNNNN"; //--- ToDo: Localize;
    	x = SCALE * 0.25;
    	y = SCALE * 0.76;
    	w = SCALE * 0.25;
    	h = SCALE * 0.04;
      style = 2;
    };
    class Rsc6Text_1005: ITC_AIR_MfdTextBg
    {
    	idc = 61005;
      x = SCALE *0.52;
      w = SCALE *0.1;
      h = SCALE *0.04;
      y = SCALE *0.68;
      style = 1;
    };
    class Rsc6Text_1006: ITC_AIR_MfdTextBg
    {
    	idc = 61006;
      x = SCALE *0.5+(0.125 - 0.08);
      w = SCALE *0.08;
      h = SCALE *0.04;
      y = SCALE *0.72;
    };
    class Rsc6Text_1002: ITC_AIR_MfdTextBg
    {
    	idc = 61002;
    	text = "70"; //--- ToDo: Localize;
    	x = SCALE * 0.55;
    	y = SCALE * 0.18;
    	w = SCALE * 0.075;
    	h = SCALE * 0.04;
      style = 1;
    };
    class Rsc6Text_1003: ITC_AIR_MfdTextBg
    {
    	idc = 61003;
    	text = "70"; //--- ToDo: Localize;
    	x = SCALE * 0.125;
    	y = SCALE * 0.18;
    	w = SCALE * 0.075;
    	h = SCALE * 0.04;
      style = 1;
    };
  };
};
