class ITC_MFD_PAGE_FCRAG : ITC_AIR_PAGE {
  idc = 10800;
  class Controls {
    class Rsc8Picture_1207: RscPicture
    {
        idc = 81207;
        text = "itc_air_mfd\data\ui\fcr\bgNoise.paa";
        x = SCALE *0;
        y = SCALE *0;
        w = SCALE *0.75;
        h = SCALE *1;
    };
    class Rsc8Picture_1200: RscPicture
    {
        idc = 81200;
        text = "itc_air_mfd\data\ui\fcr\ud.paa";
        x = SCALE *0;
        y = SCALE *0;
        w = SCALE *0.75;
        h = SCALE *1;
    };
    class Rsc8Picture_1201: RscPicture
    {
        idc = 81201;
        text = "itc_air_mfd\data\ui\fcr\lr.paa";
        x = SCALE *0;
        y = SCALE *0;
        w = SCALE *0.75;
        h = SCALE *1;
    };/*
    class Rsc8Picture_1202: RscPicture
    {
        idc = 81202;
        text = "itc_air_mfd\data\ui\fcr\horiz.paa";
        x = SCALE *0;
        y = SCALE *0;
        w = SCALE *0.75;
        h = SCALE *1;
    };*/
    class Rsc8Picture_1203: RscPicture
    {
        idc = 81203;
        text = "itc_air_mfd\data\ui\fcr\ctr.paa";
        x = SCALE *0;
        y = SCALE *0;
        w = SCALE *0.75;
        h = SCALE *1;
    };
    class Rsc8Picture_1204: RscPicture
    {
        idc = 81204;
        text = "itc_air_mfd\data\ui\fcr\rangemarks.paa";
        x = SCALE *0;
        y = SCALE *0;
        w = SCALE *0.75;
        h = SCALE *1;
    };
    class Rsc8Picture_1205: RscPicture
    {
        idc = 81205;
        text = "itc_air_mfd\data\ui\UP.paa";
        x = SCALE *0.126;
        y = SCALE *0.26;
        w = SCALE *0.04;
        h = SCALE *0.04;
    };
    class Rsc8Picture_1206: RscPicture
    {
        idc = 81206;
        text = "itc_air_mfd\data\ui\DN.paa";
        x = SCALE *0.126;
        y = SCALE *0.36;
        w = SCALE *0.04;
        h = SCALE *0.04;
    };
    class Rsc8Text_1000: ITC_AIR_MfdTextCenter
    {
    	idc = 81000;
    	text = "T";
    	x = SCALE * 0.125;
    	y = SCALE * 0.70;
    	w = SCALE * 0.02;
    	h = SCALE * 0.02;
    };
  };
};
