class RscPicture;
class RscTitles {
  class ITC_AIR_SCORPION {
    idd = 19995;
    //onLoad = "";
    movingEnable = 1;
    duration = 9999999;
    fadein = 0;
    fadeout = 0;
    controlsBackground[] = { };
    objects[] = { };
    onLoad = "uiNameSpace setVariable [""ITC_AIR_HMD_UI"", (_this select 0)]";
    controls[]=
    {
        RscHMDPicture_1200,
        RscHMDPicture_1201,
        RscHMDPicture_1202
    };
    class RscHMDPicture_1200: RscPicture
    {
    	idc = 1200;
    	text = "itc_air_hmd\data\ui\TGP_OUT.paa";
    	x = 0;
    	y = 0;
    	w = 0.525;
    	h = 0.7;
    };
    class RscHMDPicture_1201: RscPicture
    {
    	idc = 1201;
    	text = "itc_air_hmd\data\ui\CTRC.paa";
    	x = 0.5 - 0.015;
    	y = 0.5 - 0.015;
    	w = 0.03 * (3/4);
    	h = 0.03;
    };
    class RscHMDPicture_1202: RscHMDPicture_1201
    {
    	idc = 1202;
    	text = "itc_air_hmd\data\ui\CTR.paa";
    };
  };
};
