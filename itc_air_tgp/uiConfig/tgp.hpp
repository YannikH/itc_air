class RscPicture;
class IGUIBack;
class RscText;
class RscFrame;
class RscListbox;
class RscListNBox;
class RscControlsGroup;
class ScrollBar;
class RscActiveText;
class RscStructuredText;
class RscUnitInfo;
class RscTitles {
  class ITC_AIR_A10E_TGP {
    idd = 19996;
    //onLoad = "";
    movingEnable = 1;
    duration = 9999999;
    fadein = 0;
    fadeout = 0;
    controlsBackground[] = { };
    objects[] = { };
    controls[]=
    {
        ITC_TGP_UI_GRP
    };
    onLoad = "uiNameSpace setVariable [""ITC_AIR_TGP_UI"", (_this select 0)]";
    class ITC_TGP_UI_GRP : RscControlsGroup {
      idc = 13379;
      x = safeZoneX;
      y = safeZoneY;
      w = safeZoneW;
      h = safeZoneH;
      onLoad = "(_this # 0) ctrlShow false";
      class Controls {
        class RscTGPPicture_1200: RscPicture
        {
        	idc = 1200;
        	text = "";
        	x = 0;
        	y = 0;
        	w = safeZoneW;
        	h = safeZoneH;
        };
        class IGUITGPBack_2200: IGUIBack
        {
        	idc = 2200;
        	x = 0.329844 * safezoneW;
        	y = 0.776 * safezoneH;
        	w = 0.075;
        	h = 0.1;
          colorBackground[] = {0,0,0,1};
        };
        class TGPRscPicture_1201: RscPicture
        {
          idc = 1201;
          text = "itc_air_mfd\data\ui\pbl_c.paa";
        	x = 0.329844 * safezoneW;
        	y = 0.776 * safezoneH;
        	w = 0.075;
        	h = 0.1;
        };
        class TGPRscPicture_1202: TGPRscPicture_1201
        {
          idc = 1202;
          text = "itc_air_mfd\data\ui\pbl_l.paa";
        };
        class TGPRscPicture_1203: TGPRscPicture_1201
        {
          idc = 1203;
          text = "itc_air_mfd\data\ui\pbl_r.paa";
        };
        class TGPRscPicture_1204: TGPRscPicture_1201
        {
          idc = 1204;
        };
        class TGPRscPicture_1205: TGPRscPicture_1201
        {
          idc = 1205;
        };
        class TGPRscPicture_1206: TGPRscPicture_1201
        {
          idc = 1206;
          text = "itc_air_mfd\data\ui\pblp.paa";
        };
        class RscText_1028: RscText
        {
          idc = 1028;
          text = "CHECK ATTITUDE"; //--- ToDo: Localize;
        	x = (safeZoneW / 2) - 0.3;
        	y = 0.643 * safezoneH;
        	w = 0.6;
        	h = 0.068 * safezoneH;
          colorText[] = {0,0,0,1};
          colorBackground[] = {1,0,0,1};
          colorShadow[] = {0,0,0,0};
          sizeEx = 0.15;
          style = 2;
        };
        class RscText_1029: RscText
        {
          idc = 1029;
          text = "GCAS BREAK X"; //--- ToDo: Localize;
        	x = (safeZoneW / 2) - 0.3;
        	y = 0.343 * safezoneH;
        	w = 0.6;
        	h = 0.0688 * safezoneH;
          colorText[] = {0,0,0,1};
          colorBackground[] = {1,0,0,1};
          colorShadow[] = {0,0,0,0};
        	sizeEx = 0.15;
          style = 2;
        };
        class TGP_POS: RscText
        {
        	idc = 11000;
        	x = 0.438125 * safezoneW + 0;
        	y = 0.766 * safezoneH + 0;
        	w = 0.12375 * safezoneW;
        	h = 0.033 * safezoneH;
        	sizeEx = 0.05;
          colorText[] = {0,1,0,1};
        	colorBackground[] = {0,0,0,1};
          style = 2;
        };
        class TGP_EL: TGP_POS
        {
        	idc = 11001;
        	x = 0.484531 * safezoneW + 0;
        	y = 0.799 * safezoneH + 0;
        	w = 0.0309375 * safezoneW;
        	h = 0.033 * safezoneH;
        	colorBackground[] = {0,0,0,1};
          style = 2;
        };
        class TGP_LSR: RscText
        {
        	idc = 11002;
        	x = 0.608281 * safezoneW+ 0;
        	y = 0.786 * safezoneH+ 0;
        	w = 0.0154688 * safezoneW;
        	h = 0.033 * safezoneH;
          colorText[] = {1,1,1,1};
        	colorBackground[] = {0,0,0,-1};
          style = 2;
        	sizeEx = 0.07;
        };
        /*
        class TGP_VIS: TGP_POS
        {
        	idc = 11003;
        	x = 0.675313 * safezoneW+ 0;
        	y = 0.082 * safezoneH+ 0;
        	w = 0.0515625 * safezoneW;
        	h = 0.033 * safezoneH;
        	colorBackground[] = {0,0,0,1};
          style = 1;
        };
        class TGP_DIST: TGP_VIS
        {
        	idc = 11004;
        	x = 0.675313 * safezoneW+ 0;
        	y = 0.115 * safezoneH+ 0;
        	w = 0.0515625 * safezoneW;
        	h = 0.033 * safezoneH;
        	colorBackground[] = {0,0,0,1};
        };
        class TGP_MRK_STATUS: TGP_VIS
        {
        	idc = 11005;
        	x = 0.690469 * safezoneW+ 0;
        	y = 0.258 * safezoneH+ 0;
        	w = 0.0415625 * safezoneW;
        	h = 0.033 * safezoneH;
        	colorBackground[] = {0,0,0,1};
        };
        class TGP_MRK_HZ: TGP_VIS
        {
        	idc = 11006;
        	x = 0.690469 * safezoneW+ 0;
        	y = 0.368 * safezoneH+ 0;
        	w = 0.0415625 * safezoneW;
        	h = 0.033 * safezoneH;
        	colorBackground[] = {0,0,0,1};
        };
        class TGPRscText_1007: TGP_VIS
        {
        	idc = 11007;
        	text = "MRK"; //--- ToDo: Localize;
        	x = 0.69625 * safezoneW+ 0;
        	y = 0.313 * safezoneH+ 0;
        	w = 0.0357812 * safezoneW;
        	h = 0.033 * safezoneH;
        	colorBackground[] = {0,0,0,1};
        };
        class LSS_STAT: TGP_POS
        {
        	idc = 11008;
        	x = 0.29375 * safezoneW+ 0;
        	y = 0.258 * safezoneH+ 0;
        	w = 0.0515625 * safezoneW;
        	h = 0.033 * safezoneH;
        	colorBackground[] = {0,0,0,1};
        };
        class TGPRscText_1009: TGP_POS
        {
        	idc = 11009;
        	text = "LSS"; //--- ToDo: Localize;
        	x = 0.29375 * safezoneW+ 0;
        	y = 0.313 * safezoneH+ 0;
        	w = 0.030625 * safezoneW;
        	h = 0.033 * safezoneH;
        	colorBackground[] = {0,0,0,1};
        };
        class LSS_CODE: TGP_POS
        {
        	idc = 11010;
        	x = 0.29375 * safezoneW+ 0;
        	y = 0.368 * safezoneH+ 0;
        	w = 0.0415625 * safezoneW;
        	h = 0.033 * safezoneH;
        	colorBackground[] = {0,0,0,1};
        };
        class LSR_STAT: TGP_POS
        {
        	idc = 11011;
        	x = 0.29375 * safezoneW+ 0;
        	y = 0.478 * safezoneH+ 0;
        	w = 0.0415625 * safezoneW;
        	h = 0.033 * safezoneH;
        	colorBackground[] = {0,0,0,1};
        };
        class TGPRscText_1012: TGP_POS
        {
        	idc = 11012;
        	text = "L"; //--- ToDo: Localize;
        	x = 0.29375 * safezoneW+ 0;
        	y = 0.544 * safezoneH+ 0;
        	w = 0.0154688 * safezoneW;
        	h = 0.033 * safezoneH;
        	colorBackground[] = {0,0,0,1};
        };
        class LSR_CODE: TGP_POS
        {
        	idc = 11013;
        	x = 0.29375 * safezoneW+ 0;
        	y = 0.588 * safezoneH+ 0;
        	w = 0.0415625 * safezoneW;
        	h = 0.033 * safezoneH;
        	colorBackground[] = {0,0,0,1};
        };
        */
        class TGP_SAC: RscPicture
        {
        	idc = 11200;
        	text = "#(argb,8,8,3)color(1,1,1,1)";
        	x = 0.5 * safezoneW+ 0;
        	y = 0.192 * safezoneH+ 0;
        	w = 0.00515625 * safezoneW;
        	h = 0.011 * safezoneH;
        };
        class TGP_YARD: TGP_LSR
        {
        	idc = 11019;
        	x = 0.572187 * safezoneW+ 0;
        	y = 0.489 * safezoneH+ 0;
        	w = 0.0515625 * safezoneW;
        	h = 0.068 * safezoneH;
        	sizeEx = 0.07;
        };
      };
    };
  };
};
