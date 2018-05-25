class DSMSProfileSet : ITC_AIR_PAGE {
  idc = 10102;
  class Controls {
    class Rsc12Frame_1800: RscFrame
    {
    	idc = 121800;
    	x = SCALE * 0.25;
    	y = SCALE * 0.24;
    	w = SCALE * 0.25;
    	h = SCALE * 0.08;
    	colorText[] = {0,1,0,1};
    };
    class Rsc12Frame_1801: RscFrame
    {
    	idc = 121801;
    	x = SCALE * 0.25;
    	y = SCALE * 0.32;
    	w = SCALE * 0.25;
    	h = SCALE * 0.44;
    	colorText[] = {0,1,0,1};
    };
    class Rsc12Text_1000: ITC_AIR_MfdTextCenter
    {
    	idc = 121000;
    	text = "MK-82"; //--- ToDo: Localize;
    	x = SCALE * 0.25;
    	y = SCALE * 0.24;
    	w = SCALE * 0.25;
    	h = SCALE * 0.04;
    };
    class Rsc12Text_1001: ITC_AIR_MfdTextCenter
    {
    	idc = 121001;
    	text = "PROFILE CONTROL"; //--- ToDo: Localize;
    	x = SCALE * 0.25;
    	y = SCALE * 0.28;
    	w = SCALE * 0.25;
    	h = SCALE * 0.04;
    };
    class Rsc12StructuredText_1100: ITC_AIR_MfdStructuredText
    {
    	idc = 121100;
    	x = SCALE * 0.25;
    	y = SCALE * 0.32;
    	w = SCALE * 0.25;
    	h = SCALE * 0.44;
    };
    class Rsc12Text_1002: ITC_AIR_MfdTextRight
    {
    	idc = 121002;
    	text = "RIP QTY"; //--- ToDo: Localize;
    	x = SCALE * 0.54;
    	y = SCALE * 0.44;
    	w = SCALE * 0.085;
    	h = SCALE * 0.04;
    };
    class Rsc12Text_1003: ITC_AIR_MfdTextRight
    {
    	idc = 121003;
    	text = "1"; //--- ToDo: Localize;
    	x = SCALE * 0.55;
    	y = SCALE * 0.48;
    	w = SCALE * 0.075;
    	h = SCALE * 0.04;
    };
    class Rsc12Text_1004: ITC_AIR_MfdTextRight
    {
    	idc = 121004;
    	text = "M"; //--- ToDo: Localize;
    	x = SCALE * 0.55;
    	y = SCALE * 0.54;
    	w = SCALE * 0.075;
    	h = SCALE * 0.04;
    };
    class Rsc12Text_1005: ITC_AIR_MfdTextRight
    {
    	idc = 121005;
    	text = "75"; //--- ToDo: Localize;
    	x = SCALE * 0.55;
    	y = SCALE * 0.58;
    	w = SCALE * 0.075;
    	h = SCALE * 0.04;
    };
    class Rsc12Text_1006: ITC_AIR_MfdTextRight
    {
    	idc = 121006;
    	text = "MODE"; //--- ToDo: Localize;
    	x = SCALE * 0.55;
    	y = SCALE * 0.64;
    	w = SCALE * 0.075;
    	h = SCALE * 0.04;
    };
    class Rsc12Text_1007: ITC_AIR_MfdTextRight
    {
    	idc = 121007;
    	text = "CCIP"; //--- ToDo: Localize;
    	x = SCALE * 0.55;
    	y = SCALE * 0.68;
    	w = SCALE * 0.075;
    	h = SCALE * 0.04;
    };
    class Rsc12Text_1008: ITC_AIR_MfdTextCenter
    {
    	idc = 121008;
    	text = "PROF"; //--- ToDo: Localize;
    	x = SCALE * 0.275;
    	y = SCALE * 0.18;
    	w = SCALE * 0.0625;
    	h = SCALE * 0.02;
    };
    class Rsc12Text_1009: ITC_AIR_MfdTextCenter
    {
    	idc = 121009;
    	text = "MAIN"; //--- ToDo: Localize;
    	x = SCALE * 0.275;
    	y = SCALE * 0.205;
    	w = SCALE * 0.0625;
    	h = SCALE * 0.02;
    };
    class Rsc11Picture_1201: RscPicture
    {
      idc = 121201;
      text = "itc_air_mfd\data\ui\UP.paa";
      x = SCALE * 0.125;
      y = SCALE *0.36;
      w = SCALE * 0.04;
      h = SCALE * 0.04;
    };
    class Rsc11Picture_1202: RscPicture
    {
      idc = 121202;
      text = "itc_air_mfd\data\ui\DN.paa";
      x = SCALE * 0.125;
      y = SCALE *0.68;
      w = SCALE * 0.04;
      h = SCALE * 0.04;
    };
    class Rsc12Text_1010: ITC_AIR_MfdText
    {
    	idc = 121010;
    	text = ""; //--- ToDo: Localize;
      x = SCALE *0.125;
    	y = SCALE * 0.44;
    	w = SCALE * 0.12;
    	h = SCALE * 0.04;
    };
    class Rsc12Text_1011: ITC_AIR_MfdText
    {
    	idc = 121011;
    	text = ""; //--- ToDo: Localize;
      x = SCALE *0.125;
    	y = SCALE * 0.48;
    	w = SCALE * 0.12;
    	h = SCALE * 0.04;
    };
    class Rsc12Text_1012: ITC_AIR_MfdText
    {
    	idc = 121012;
    	text = ""; //--- ToDo: Localize;
      x = SCALE *0.125;
    	y = SCALE * 0.54;
    	w = SCALE * 0.12;
    	h = SCALE * 0.04;
    };
    class Rsc12Text_1013: ITC_AIR_MfdText
    {
    	idc = 121013;
    	text = ""; //--- ToDo: Localize;
      x = SCALE *0.125;
    	y = SCALE * 0.58;
    	w = SCALE * 0.12;
    	h = SCALE * 0.04;
    };
  };
};
