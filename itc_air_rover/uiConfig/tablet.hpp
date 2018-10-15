class itc_air_rover_tablet {
  idd = 20001;
  movingEnable = true;
  onLoad = "[] call itc_air_rover_fnc_onLoadUI";
  class Controls {
    class itc_air_rover_tablet_topbar : IGUIBack {
      idc = -1;
      x = safeZoneX;
      y = safeZoneY;
      w = safeZoneW;
      h = safeZoneH * 0.15;
      colorBackground[] = {0,0,0,1};
    };
    class itc_air_rover_tablet_background : IGUIBack {
      idc = 2200;
      x = safeZoneX;
      y = safeZoneY;
      w = safeZoneW;
      h = safeZoneH;
      colorBackground[] = {0,0,0,1};
    };
    class IGUIBack_2200: IGUIBack
    {
    	idc = 2201;
    	x = 0.139062 * safezoneW + safezoneX;
    	y = 0.247 * safezoneH + safezoneY;
    	w = 0.154687 * safezoneW;
    	h = 0.506 * safezoneH;
      colorBackground[] = {0,0,0,1};
    };
    class RscText_1000: RscText
    {
    	idc = 1000;
    	text = "Receiver"; //--- ToDo: Localize;
    	x = 0.149375 * safezoneW + safezoneX;
    	y = 0.258 * safezoneH + safezoneY;
    	w = 0.103125 * safezoneW;
    	h = 0.033 * safezoneH;
    	sizeEx = 0.04;
    };
    class RscText_1001: RscText
    {
    	idc = 1001;
    	text = "Freq:"; //--- ToDo: Localize;
    	x = 0.149375 * safezoneW + safezoneX;
    	y = 0.291 * safezoneH + safezoneY;
    	w = 0.0257812 * safezoneW;
    	h = 0.022 * safezoneH;
    };
    class freq_txt: RscText
    {
    	idc = 1002;
    	text = "-"; //--- ToDo: Localize;
    	x = 0.17 * safezoneW + safezoneX;
    	y = 0.291 * safezoneH + safezoneY;
    	w = 0.0257812 * safezoneW;
    	h = 0.022 * safezoneH;
    };
    class RscText_1003: RscText
    {
    	idc = 1003;
    	text = "Aircraft"; //--- ToDo: Localize;
    	x = 0.149375 * safezoneW + safezoneX;
    	y = 0.346 * safezoneH + safezoneY;
    	w = 0.103125 * safezoneW;
    	h = 0.033 * safezoneH;
    	sizeEx = 0.04;
    };
    class RscText_1004: RscText
    {
    	idc = 1004;
    	text = "Target"; //--- ToDo: Localize;
    	x = 0.149375 * safezoneW + safezoneX;
    	y = 0.445 * safezoneH + safezoneY;
    	w = 0.103125 * safezoneW;
    	h = 0.033 * safezoneH;
    	sizeEx = 0.04;
    };
    class RscText_1005: RscText
    {
    	idc = 1005;
    	text = "Pos:"; //--- ToDo: Localize;
    	x = 0.149375 * safezoneW + safezoneX;
    	y = 0.379 * safezoneH + safezoneY;
    	w = 0.0257812 * safezoneW;
    	h = 0.022 * safezoneH;
    };
    class RscText_1006: RscText
    {
    	idc = 1006;
    	text = "Brg:"; //--- ToDo: Localize;
    	x = 0.149375 * safezoneW + safezoneX;
    	y = 0.423 * safezoneH + safezoneY;
    	w = 0.0257812 * safezoneW;
    	h = 0.022 * safezoneH;
    };
    class RscText_1007: RscText
    {
    	idc = 1007;
    	text = "Elev:"; //--- ToDo: Localize;
    	x = 0.149375 * safezoneW + safezoneX;
    	y = 0.401 * safezoneH + safezoneY;
    	w = 0.0257812 * safezoneW;
    	h = 0.022 * safezoneH;
    };
    class RscText_1008: RscText
    {
    	idc = 1008;
    	text = "Pos:"; //--- ToDo: Localize;
    	x = 0.149375 * safezoneW + safezoneX;
    	y = 0.478 * safezoneH + safezoneY;
    	w = 0.0257812 * safezoneW;
    	h = 0.022 * safezoneH;
    };
    class RscText_1009: RscText
    {
    	idc = 1009;
    	text = "Pos:"; //--- ToDo: Localize;
    	x = 0.149375 * safezoneW + safezoneX;
    	y = 0.313 * safezoneH + safezoneY;
    	w = 0.0257812 * safezoneW;
    	h = 0.022 * safezoneH;
    };
    class rvr_pos: RscText
    {
    	idc = 1010;
    	text = "-";
    	x = 0.17 * safezoneW + safezoneX;
    	y = 0.313 * safezoneH + safezoneY;
    	w = 0.061875 * safezoneW;
    	h = 0.022 * safezoneH;
    };
    class ac_pos: RscText
    {
    	idc = 1011;
    	text = "-";
    	x = 0.17 * safezoneW + safezoneX;
    	y = 0.379 * safezoneH + safezoneY;
    	w = 0.061875 * safezoneW;
    	h = 0.022 * safezoneH;
    };
    class ac_elev: RscText
    {
    	idc = 1012;
    	text = "-";
    	x = 0.17 * safezoneW + safezoneX;
    	y = 0.401 * safezoneH + safezoneY;
    	w = 0.0257812 * safezoneW;
    	h = 0.022 * safezoneH;
    };
    class ac_brg: RscText
    {
    	idc = 1013;
    	text = "-";
    	x = 0.17 * safezoneW + safezoneX;
    	y = 0.423 * safezoneH + safezoneY;
    	w = 0.0257812 * safezoneW;
    	h = 0.022 * safezoneH;
    };
    class tgt_pos: RscText
    {
    	idc = 1014;
    	text = "-";
    	x = 0.17 * safezoneW + safezoneX;
    	y = 0.478 * safezoneH + safezoneY;
    	w = 0.061875 * safezoneW;
    	h = 0.022 * safezoneH;
    };
    class RVR_PICTURE: RscPicture
    {
      idc = 1200;

      text = "z\ace\addons\huntir\UI\ace_huntir_monitor_on.paa";
      x = safeZoneX;
      y = safeZoneY + (safeZoneH * 0.15);
      w = safeZoneW;
      h = safeZoneH;
    };
  };
};
