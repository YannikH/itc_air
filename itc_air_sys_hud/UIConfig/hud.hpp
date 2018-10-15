class RscPicture;
class RscControlsGroupNoScrollbars;
class RscText;
class RscMapControl;
class RscTitles {
  class ITC_AIR_HUD {
    idd = 19997;
    //onLoad = "";
    movingEnable = 1;
    duration = 9999999;
    fadein = 0;
    fadeout = 0;
    controlsBackground[] = { };
    objects[] = { };
    controls[]=
    {
        ITC_HUD_UI_GRP,
        ITC_HUD_CCRP_UI_GRP
        //ITC_HUD_CANVAS
    };
    onLoad = "uiNameSpace setVariable [""ITC_AIR_HUD_UI"", (_this select 0)]";
    class ITC_HUD_CANVAS : RscMapControl {
      idc = 13381;
      x = safeZoneX;
      y = safeZoneY;
      w = safeZoneW;
      h = safeZoneH;
      fade = 1;
    };
    class ITC_HUD_UI_GRP : RscControlsGroupNoScrollbars {
      idc = 13380;
      x = safeZoneX;
      y = safeZoneY;
      w = safeZoneW;
      h = safeZoneH;
      class Controls {
        class RscHUDTextStptName: RscText
        {
          idc = 1001;
          colorText[] = {0,1,0,1};
          sizeEx = 0.04;
          colorShadow[] = {0,0,0,0};
          style = 2;

          x = 0 + (safeZoneW / 2) - (0.04 * (3/4));
          y = 0 + (safeZoneH / 4) - 0.02;
          w = 0.08 * (3/4);
          h = 0.04;

          text = "N/A";
        };
        class RscHUDTextStptTof: RscHUDTextStptName
        {
          idc = 1002;
          y = 0 + ((safeZoneH / 4) * 3) + 0.04;
          style = 1;
        };
        class RscHUDTOTTof: RscHUDTextStptName
        {
          idc = 1003;
          y = 0 + ((safeZoneH / 4) * 3) + 0.04;
          w = 0.04 * (3/4);
          style = 1;
        };
        class RscHUDGCAS_X: RscPicture
        {
        	idc = 1204;
          x = 0 + (safeZoneW / 2) - ((0.3 / 2) * (3/4));
          y = 0 + (safeZoneH / 2) - (0.35 / 2);
          w = 0.3 * (3/4);
          h = 0.35;
        	text = "itc_air_hmd\data\ui\GCAS_X.paa";
        };
        class RscHUDSteer: RscPicture
        {
        	idc = 1205;
          x = 0;y = 0;
          w = 0.04 * (3/4);
          h = 0.04;
        	text = "itc_air_hmd\data\UI\WP.paa";
        };
        class RscHUDTGP: RscPicture
        {
        	idc = 1206;
          x = 0;y = 0;
          w = 0.04 * (3/4);
          h = 0.04;
        	text = "itc_air_hmd\data\UI\TGP.paa";
        };
      };
    };
    class ITC_HUD_CCRP_UI_GRP : RscControlsGroupNoScrollbars {
      idc = 13379;
      x = safeZoneX;
      y = safeZoneY;
      w = safeZoneW;
      h = safeZoneH;
      class Controls {
        class RscHUDVL1: RscPicture
        {
        	idc = 1200;
        	text = "itc_air_sys_hud\data\ui\VL.paa";
        	x = (safeZoneW / 2) - (0.25 * 3/4);
        	y = (safeZoneH / 2) - 0.25;
        	w = 0.5 * (3/4);
        	h = 0.5;
        };
        class RscHUDVL2: RscPicture
        {
        	idc = 1201;
        	text = "itc_air_sys_hud\data\ui\VL.paa";
        	x = (safeZoneW / 2) - (0.25 * 3/4);
        	y = (safeZoneH / 2) - 0.25;
        	w = 0.5 * (3/4);
        	h = 0.5;
        };
        class RscHUDPPR: RscPicture
        {
        	idc = 1202;
        	text = "itc_air_sys_hud\data\ui\PPR.paa";
        	x = (safeZoneW / 2) - (0.25 * 3/4);
        	y = (safeZoneH / 2);
        	w = 0.5 * (3/4);
        	h = 0.5;
        };
        class RscHUDSLN: RscPicture
        {
        	idc = 1203;
        	text = "itc_air_sys_hud\data\ui\SLN.paa";
        	x = (safeZoneW / 2) - (0.25 * 3/4);
        	y = (safeZoneH / 2) - 0.25;
        	w = 0.5 * (3/4);
        	h = 0.5;
        };
      };
    }
  };
};
