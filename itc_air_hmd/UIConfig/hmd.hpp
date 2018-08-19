class RscPicture;
class RscControlsGroupNoScrollbars;
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
    controls[]=
    {
        ITC_HMD_UI_GRP
    };
    onLoad = "uiNameSpace setVariable [""ITC_AIR_HMD_UI"", (_this select 0)]";
    class ITC_HMD_UI_GRP : RscControlsGroupNoScrollbars {
      idc = 13379;
      x = safeZoneX;
      y = safeZoneY;
      w = safeZoneW;
      h = safeZoneH;
      class Controls {
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
        	text = "itc_air_hmd\data\ui\CTR_NSOI.paa";
        	x = 0 + (safeZoneW / 2) - 0.015;
        	y = 0 + (safeZoneH / 2) - (0.015 * (3/4));
        	w = 0.03 * (3/4);
        	h = 0.03;
        };
        class RscHMDPicture_1202: RscHMDPicture_1201
        {
        	idc = 1202;
        	text = "itc_air_hmd\data\ui\CTR_C.paa";
        };
        class RscHMDPicture_1203: RscHMDPicture_1201
        {
        	idc = 1203;
        	text = "itc_air_hmd\data\ui\CTR_UC.paa";
        };
        class RscHMDGCAS_X: RscHMDPicture_1201
        {
        	idc = 1204;
          x = 0 + (safeZoneW / 2) - ((0.3 / 2) * (3/4));
          y = 0 + (safeZoneH / 2) - (0.35 / 2);
          w = 0.3 * (3/4);
          h = 0.35;
        	text = "itc_air_hmd\data\ui\GCAS_X.paa";
        };
      };
    }
  };
};
