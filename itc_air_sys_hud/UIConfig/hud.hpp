class RscPicture;
class RscControlsGroupNoScrollbars;
class RscText;
class RscTitles {
  class ITC_AIR_HUD {
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
        ITC_HUD_UI_GRP
    };
    onLoad = "uiNameSpace setVariable [""ITC_AIR_HMD_UI"", (_this select 0)]";
    class ITC_HUD_UI_GRP : RscControlsGroupNoScrollbars {
      idc = 13379;
      x = safeZoneX;
      y = safeZoneY;
      w = safeZoneW;
      h = safeZoneH;
      class Controls {
      };
    }
  };
};
