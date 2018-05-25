class MFDOptions : ITC_AIR_PAGE {
  idc = 10500;
  class Controls {
    class Rsc5Frame_1800: RscFrame
    {
    	idc = 51800;
    	x = SCALE * 0.25;
    	y = SCALE * 0.24;
    	w = SCALE * 0.25;
    	h = SCALE * 0.08;
    	colorText[] = {0,1,0,1};
    };
    class Rsc5Frame_1801: RscFrame
    {
    	idc = 51801;
    	x = SCALE * 0.25;
    	y = SCALE * 0.32;
    	w = SCALE * 0.25;
    	h = SCALE * 0.44;
    	colorText[] = {0,1,0,1};
    };
    class Rsc5Listbox_1500: ITC_AIR_ListBox
    {
        idc = 51500;
      	x = SCALE * 0.25;
      	y = SCALE * 0.32;
      	w = SCALE * 0.25;
      	h = SCALE * 0.44;
    };
    class Rsc5Text_1000: ITC_AIR_MfdTextCenter
    {
    	idc = 51000;
    	text = "AIRCRAFT"; //--- ToDo: Localize;
    	x = SCALE * 0.25;
    	y = SCALE * 0.24;
    	w = SCALE * 0.25;
    	h = SCALE * 0.04;
    };
    class Rsc5Text_1001: ITC_AIR_MfdTextCenter
    {
    	idc = 51001;
    	text = "SYSTEMS CONFIGURATION"; //--- ToDo: Localize;
    	x = SCALE * 0.25;
    	y = SCALE * 0.28;
    	w = SCALE * 0.25;
    	h = SCALE * 0.04;
    };
    class Rsc5Picture_1201: RscPicture
    {
      idc = 51201;
      text = "itc_air_mfd\data\ui\UP.paa";
      x = SCALE * 0.125;
      y = SCALE *0.36;
      w = SCALE * 0.04;
      h = SCALE * 0.04;
    };
    class Rsc5Picture_1202: RscPicture
    {
      idc = 51202;
      text = "itc_air_mfd\data\ui\DN.paa";
      x = SCALE * 0.125;
      y = SCALE *0.68;
      w = SCALE * 0.04;
      h = SCALE * 0.04;
    };
    class Rsc5Text_1010: ITC_AIR_MfdText
    {
    	idc = 51010;
    	text = "SEL"; //--- ToDo: Localize;
      x = SCALE *0.125;
    	y = SCALE * 0.44;
    	w = SCALE * 0.12;
    	h = SCALE * 0.04;
    };
    class Rsc5Text_1011: ITC_AIR_MfdText
    {
    	idc = 51011;
    	text = ""; //--- ToDo: Localize;
      x = SCALE *0.125;
    	y = SCALE * 0.48;
    	w = SCALE * 0.12;
    	h = SCALE * 0.04;
    };
    class Rsc5Text_1012: ITC_AIR_MfdText
    {
    	idc = 51012;
    	text = "VAL"; //--- ToDo: Localize;
      x = SCALE *0.125;
    	y = SCALE * 0.54;
    	w = SCALE * 0.12;
    	h = SCALE * 0.04;
    };
    class Rsc5Text_1013: ITC_AIR_MfdText
    {
    	idc = 51013;
    	text = ""; //--- ToDo: Localize;
      x = SCALE *0.125;
    	y = SCALE * 0.58;
    	w = SCALE * 0.12;
    	h = SCALE * 0.04;
    };
  };
};
