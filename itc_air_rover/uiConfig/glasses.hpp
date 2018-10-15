class RscTitles {
  class ITC_AIR_ROVER_GLASSES {
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
        ITC_ROVER_GLASSES_UI_FEED,
        ITC_ROVER_GLASSES_UI_OVERLAY
    };
    onLoad = "uiNameSpace setVariable [""ITC_ROVER_GLASSES_UI"", (_this select 0)];[] call itc_air_rover_fnc_glassesOnLoadUI;";
    class ITC_ROVER_GLASSES_UI_FEED : RscPicture {
      idc = 61500;
    	x = 0.711406 * safezoneW + safezoneX;
    	y = 0.742 * safezoneH + safezoneY;
    	w = 0.25 * safezoneW;
    	h = 0.25 * safezoneH;
      text = "#(argb,512,512,1)r2t(ITC_AIR_ROVER_GLASSES_FEED,1)";
    };
    class ITC_ROVER_GLASSES_UI_OVERLAY : RscPicture {
      idc = 61501;
    	text = "itc_air_rover\data\ui\hmd.paa";
    	x = 0.680469 * safezoneW + safezoneX;
    	y = 0.599 * safezoneH + safezoneY;
    	w = 0.417656 * safezoneW;
    	h = 0.418 * safezoneH;
    };
  };
};
