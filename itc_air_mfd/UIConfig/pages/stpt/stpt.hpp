class MFDSteerpoint : ITC_AIR_PAGE {
  idc = 10400;
  class Controls {
    class Rsc4Listbox_1500: ITC_AIR_ListBox
    {
        idc = 421500;
        x = SCALE * 0.2;
        y = SCALE * 0.24;
        w = SCALE * 0.35;
        h = SCALE * 0.4;
    };
    class Rsc4Picture_1200: RscPicture
    {
        idc = 41200;
        text = "itc_air_mfd\data\ui\UP.paa";
        x = SCALE *0.126;
        y = SCALE *0.26;
        w = SCALE *0.04;
        h = SCALE *0.04;
    };
    class Rsc4Picture_1201: RscPicture
    {
        idc = 41201;
        text = "itc_air_mfd\data\ui\DN.paa";
        x = SCALE *0.126;
        y = SCALE *0.36;
        w = SCALE *0.04;
        h = SCALE *0.04;
    };
    class Rsc4Frame_1800: RscFrame
    {
    	idc = 41800;
    	x = SCALE *0.2;
    	y = SCALE *0.66;
    	w = SCALE *0.35;
    	h = SCALE *0.01;
      colorText[] = {0,1,0,1};
      colorBackground[] = {0,1,0,1};
    };
    class Rsc4Text_1000: ITC_AIR_MfdText
    {
    	idc = 41000;
    	text = "MARK 1"; //--- ToDo: Localize;
    	x = SCALE *0.2;
    	y = SCALE *0.68;
    	w = SCALE *0.35;
    	h = SCALE *0.04;
      sizeEx = SCALE * 0.05;
    };
    class Rsc4Text_1001: ITC_AIR_MfdText
    {
    	idc = 41001;
    	text = "MGRS 1234512345"; //--- ToDo: Localize;
    	x = SCALE *0.2;
    	y = SCALE *0.72;
    	w = SCALE *0.2125;
    	h = SCALE *0.04;
    };
    class Rsc4Text_1002: ITC_AIR_MfdText
    {
    	idc = 41002;
    	text = "EL 300"; //--- ToDo: Localize;
    	x = SCALE *0.425;
    	y = SCALE *0.72;
    	w = SCALE *0.125;
    	h = SCALE *0.04;
    };
  };
};
