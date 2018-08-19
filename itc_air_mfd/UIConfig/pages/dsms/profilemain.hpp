class DSMSProfileMain : ITC_AIR_PAGE {
    idc = 10101;
    class Controls {
      class Rsc11Frame_1800: RscFrame
      {
      	idc = 111800;
      	x = SCALE * 0.2;
      	y = SCALE * 0.24;
      	w = SCALE * 0.35;
      	h = SCALE * 0.1;
      	colorText[] = {0,1,0,1};
      };
      class Rsc11Frame_1801: RscFrame
      {
      	idc = 111801;
      	x = SCALE * 0.2;
      	y = SCALE * 0.34;
      	w = SCALE * 0.35;
      	h = SCALE * 0.46;
      	colorText[] = {0,1,0,1};
      };
      class Rsc11Frame_1802: RscFrame
      {
      	idc = 111802;
      	x = SCALE * 0.3375;
      	y = SCALE * 0.34;
      	w = SCALE * 0.15;
      	h = SCALE * 0.46;
      	colorText[] = {0,1,0,1};
      };
      class Rsc11Picture_1201: RscPicture
      {
      	idc = 111201;
      	text = "itc_air_mfd\data\ui\UP.paa";
      	x = SCALE * 0.125;
      	y = SCALE * 0.26;
      	w = SCALE * 0.04;
      	h = SCALE * 0.04;
      };
      class Rsc11Picture_1202: RscPicture
      {
      	idc = 111202;
      	text = "itc_air_mfd\data\ui\DN.paa";
      	x = SCALE * 0.125;
      	y = SCALE * 0.36;
      	w = SCALE * 0.04;
      	h = SCALE * 0.04;
      };
      /*
      class Rsc11Picture_1203: RscPicture
      {
      	idc = 111203;
      	text = "data\ui\UP.paa";
      	x = SCALE * 0.5875;
      	y = SCALE * 0.26;
      	w = SCALE * 0.04;
      	h = SCALE * 0.04;
      };
      class Rsc11Picture_1204: RscPicture
      {
      	idc = 111204;
      	text = "data\ui\DN.paa";
      	x = SCALE * 0.5875;
      	y = SCALE * 0.36;
      	w = SCALE * 0.04;
      	h = SCALE * 0.04;
      };
      */
      class Rsc11Text_1001: ITC_AIR_MfdTextMultiLine
      {
      	idc = 111001;
      	text = "ACTPRO"; //--- ToDo: Localize;
      	x = SCALE * 0.125;
      	y = SCALE * 0.56;
      	w = SCALE * 0.05;
      	h = SCALE * 0.08;
      };
      class Rsc11Text_1002: ITC_AIR_MfdTextMultiLine
      {
      	idc = 111002;
      	text = "VIEWPRO"; //--- ToDo: Localize;
      	x = SCALE * 0.57;
      	y = SCALE * 0.56;
      	w = SCALE * 0.055;
      	h = SCALE * 0.08;
      };
      class Rsc11Text_1003: ITC_AIR_MfdTextCenter
      {
          idc = 111003;
          text = "PROFILES"; //--- ToDo: Localize;
          x = SCALE * 0.2;
          y = SCALE * 0.24;
          w = SCALE * 0.35;
          h = SCALE * 0.04;
          style = 2;
      };
      class Rsc11Listbox_1500: ITC_AIR_ListBox
      {
          idc = 111500;
          x = SCALE * 0.2;
          y = SCALE * 0.34;
          w = SCALE * 0.35;
          h = SCALE * 0.46;
      };
    };
};
