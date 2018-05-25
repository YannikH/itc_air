class MFDStatusNav : ITC_AIR_PAGE {
  idc = 10201;
  class Controls {
    class Rsc21Picture_1201: RscPicture
    {
      idc = 211201;
      text = "itc_air_mfd\data\ui\UP.paa";
      x = SCALE * 0.355;
      y = SCALE * 0.25;
      w = SCALE * 0.04;
      h = SCALE * 0.04;
    };
    class Rsc21Picture_1202: RscPicture
    {
      idc = 211202;
      text = "itc_air_mfd\data\ui\UP.paa";
      x = SCALE * 0.355;
      y = SCALE * 0.25;
      w = SCALE * 0.04;
      h = SCALE * 0.04;
      //colorText[] = {1,0,0,1};
    };
    class Rsc21Picture_1203: RscPicture
    {
      idc = 211203;
      text = "itc_air_mfd\data\ui\UP.paa";
      x = SCALE * 0.355;
      y = SCALE * 0.25;
      w = SCALE * 0.04;
      h = SCALE * 0.04;
      //colorText[] = {0,0,1,1};
    };
    class Rsc21Picture_1204: RscPicture
    {
      idc = 211204;
      text = "itc_air_mfd\data\ui\PLN32.paa";
      x = SCALE * 0.335;
      y = SCALE * 0.46;
      w = SCALE * 0.08;
      h = SCALE * 0.08;
      //colorText[] = {0,0,1,1};
    };
    class Rsc21Text_1000: ITC_AIR_MfdTextCenter
    {
    	idc = 211000;
    	text = "MARK 1"; //--- ToDo: Localize;
    	x = SCALE * 0.2;
    	y = SCALE * 0.52;
    	w = SCALE * 0.35;
    	h = SCALE * 0.08;
    	sizeEx = SCALE * 0.08;
    };
    class Rsc21Text_1001: ITC_AIR_MfdTextCenter
    {
        idc = 211001;
        text = "N"; //--- ToDo: Localize;
      	x = SCALE * 0.2;
      	y = SCALE * 0.44;
      	w = SCALE * 0.04;
      	h = SCALE * 0.04;
    };
    class Rsc21Text_1002: ITC_AIR_MfdTextCenter
    {
        idc = 211002;
        text = "WP"; //--- ToDo: Localize;
      	x = SCALE * 0.2;
      	y = SCALE * 0.44;
      	w = SCALE * 0.04;
      	h = SCALE * 0.04;
    };
  };
};
