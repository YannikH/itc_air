class MFD : RscControlsGroup {
    idc = 10000;
    x = safezoneX;
    y = safezoneY + safeZoneH - (SCALE * 1);
    w = 1.1 * SCALE * 0.75;
    h = SCALE * 1;
    class ScrollBar
  	{
      width = 0; height = 0;
  	};
    class VScrollbar : ScrollBar {};
    class HScrollbar : ScrollBar {};
    class Controls {
        class IGUIBack_2200: IGUIBack
        {
            idc = 2200;
            x = SCALE * 0.1;
            y = SCALE * 0.1;
            w = SCALE * 0.55;
            h = SCALE * 0.8;
            colorBackground[] = {0,0,0,1};
        };
        #include "pages\tgp\tgpView.hpp"
        #include "pages\mav\lmav.hpp"
        #include "pages\mav\mavoff.hpp"
        #include "pages\dsms\status.hpp"
        #include "pages\dsms\profilemain.hpp"
        #include "pages\dsms\profileset.hpp"
        #include "pages\dsms\inventory.hpp"
        #include "pages\tad\tad.hpp"
        #include "pages\stat\nav.hpp"
        #include "pages\stat\status.hpp"
        #include "pages\stpt\stpt.hpp"
        #include "pages\options\options.hpp"
        class RscPicture_1200: RscPicture
        {
            idc = 1200;
            text = "itc_air_mfd\data\ui\MFD512M1.paa";
            x = SCALE *0;
            y = SCALE *0;
            w = SCALE *0.75;
            h = SCALE *1;
        };
        class IGUIBack_2201: IGUIBack
        {
            idc = 2201;
          	x = SCALE * 0.125;
          	y = SCALE * 0.74;
          	w = SCALE * 0.0625;
          	h = SCALE * 0.08;
            colorBackground[] = {0,0,0,1};
        };
        class RscPicture_1201: RscPicture
        {
        	idc = 1201;
        	text = "itc_air_mfd\data\ui\pbl_c.paa";
          x = SCALE * 0.125;
          y = SCALE * 0.74;
          w = SCALE * 0.0625;
          h = SCALE * 0.08;
        };
        class RscPicture_1202: RscPicture_1201
        {
        	idc = 1202;
        	text = "itc_air_mfd\data\ui\pbl_l.paa";
        };
        class RscPicture_1203: RscPicture_1201
        {
        	idc = 1203;
        	text = "itc_air_mfd\data\ui\pbl_r.paa";
        };
        class RscPicture_1204: RscPicture_1201
        {
        	idc = 1204;
        };
        class RscPicture_1205: RscPicture_1201
        {
        	idc = 1205;
        };
        class RscPicture_1206: RscPicture_1201
        {
        	idc = 1206;
        	text = "itc_air_mfd\data\ui\pblp.paa";
        };
        class L1: ITC_AIR_MfdText
        {
            idc = 1000;
            text = "L1"; //--- ToDo: Localize;
            x = SCALE *0.125;
            y = SCALE *0.26;
            w = SCALE *0.125;
            h = SCALE *0.04;
        };
        class RscText_1001: L1
        {
            idc = 1001;
            text = "L2"; //--- ToDo: Localize;
            y = SCALE *0.36;
        };
        class RscText_1002: L1
        {
            idc = 1002;
            text = "L12"; //--- ToDo: Localize;
            y = SCALE *0.31;
        };
        class RscText_1003: L1
        {
            idc = 1003;
            text = "L23"; //--- ToDo: Localize;
            y = SCALE *0.42;
        };
        class RscText_1004: L1
        {
            idc = 1004;
            text = "L3"; //--- ToDo: Localize;
            y = SCALE *0.48;
        };
        class RscText_1005: L1
        {
            idc = 1005;
            text = "L34"; //--- ToDo: Localize;
            y = SCALE *0.52;
        };
        class RscText_1006: L1
        {
            idc = 1006;
            text = "L4"; //--- ToDo: Localize;
            y = SCALE *0.56;
        };
        class RscText_1007: L1
        {
            idc = 1007;
            text = "L45"; //--- ToDo: Localize;
            y = SCALE *0.62;
        };
        class RscText_1008: L1
        {
            idc = 1008;
            text = "L5"; //--- ToDo: Localize;
            y = SCALE *0.68;
        };
        class R1: ITC_AIR_MfdText
        {
            idc = 1009;
            text = "R1"; //--- ToDo: Localize;
            x = SCALE *0.5;
            y = SCALE *0.26;
            w = SCALE *0.125;
            h = SCALE *0.04;
            style = 1;
        };
        class RscText_1010: R1
        {
            idc = 1010;
            text = "R12"; //--- ToDo: Localize;
            y = SCALE *0.31;
        };
        class RscText_1011: R1
        {
            idc = 1011;
            text = "R2"; //--- ToDo: Localize;
            y = SCALE *0.36;
        };
        class RscText_1012: R1
        {
            idc = 1012;
            text = "R23"; //--- ToDo: Localize;
            y = SCALE *0.42;
        };
        class RscText_1013: R1
        {
            idc = 1013;
            text = "R3"; //--- ToDo: Localize;
            y = SCALE *0.48;
        };
        class RscText_1014: R1
        {
            idc = 1014;
            text = "R34"; //--- ToDo: Localize;
            y = SCALE *0.52;
        };
        class RscText_1015: R1
        {
            idc = 1015;
            text = "R4"; //--- ToDo: Localize;
            y = SCALE *0.56;
        };
        class RscText_1016: R1
        {
            idc = 1016;
            text = "R45"; //--- ToDo: Localize;
            y = SCALE *0.62;
        };
        class RscText_1017: R1
        {
            idc = 1017;
            text = "R5"; //--- ToDo: Localize;
            y = SCALE *0.68;
        };
        class B1: ITC_AIR_MfdText
        {
            idc = 1018;
            text = "B1"; //--- ToDo: Localize;
            x = SCALE *0.1875;
            y = SCALE *0.8;
            w = SCALE *0.0625;
            h = SCALE *0.04;
        };
        class RscText_1019: B1
        {
            idc = 1019;
            text = "B2"; //--- ToDo: Localize;
            x = SCALE *0.275;
            y = SCALE *0.8;
            style = 2;
        };
        class RscText_1020: B1
        {
            idc = 1020;
            text = "B3"; //--- ToDo: Localize;
            x = SCALE *0.35;
            y = SCALE *0.8;
        };
        class RscText_1021: B1
        {
            idc = 1021;
            text = "B4"; //--- ToDo: Localize;
            x = SCALE *0.425;
            y = SCALE *0.8;
        };
        class RscText_1022: B1
        {
            idc = 1022;
            text = "B5"; //--- ToDo: Localize;
            x = SCALE *0.5125;
            y = SCALE *0.8;
        };
        class T1: ITC_AIR_MfdText
        {
            idc = 1023;
            text = "T1"; //--- ToDo: Localize;
            x = SCALE *0.1875;
            y = SCALE *0.18;
            w = SCALE *0.0625;
            h = SCALE *0.04;
            style = 2;
        };
        class RscText_1024: T1
        {
            idc = 1024;
            text = "T2"; //--- ToDo: Localize;
            x = SCALE *0.275;
            y = SCALE *0.18;
        };
        class RscText_1025: T1
        {
            idc = 1025;
            text = "T3"; //--- ToDo: Localize;
            x = SCALE *0.35;
            y = SCALE *0.18;
        };
        class RscText_1026: T1
        {
            idc = 1026;
            text = "T4"; //--- ToDo: Localize;
            x = SCALE *0.425;
            y = SCALE *0.18;
        };
        class RscText_1027: T1
        {
            idc = 1027;
            text = "T5"; //--- ToDo: Localize;
            x = SCALE *0.5125;
            y = SCALE *0.18;
        };
        class RscText_1028: RscText
        {
        	idc = 1028;
        	text = "CHECK ATTITUDE"; //--- ToDo: Localize;
        	x = SCALE * 0.2;
        	y = SCALE * 0.64;
        	w = SCALE * 0.35;
        	h = SCALE * 0.08;
        	colorText[] = {0,0,0,1};
        	colorBackground[] = {1,0,0,1};
        	colorShadow[] = {0,0,0,0};
        	sizeEx = SCALE * 0.08;
          style = 2;
        };
    };
};

class MFD_R : MFD {
    x = safezoneX + safeZoneW - (SCALE * 0.75);
    y = safezoneY + safeZoneH - (SCALE * 1);
};

class RscTitles {
    class ITC_AIR_MFD_L {
        idd = 19991;
        onLoad = "[(_this select 0), ""ITC_AIR_MFD_L"",""MFD_L_INPUT"",19993,""MFD_L_FEED""] call itc_air_mfd_fnc_open";
        movingEnable = 1;
        duration = 9999999;
        fadein = 0;
        fadeout = 0;
        controlsBackground[] = {
          MFD_MAP
        };
        objects[] = { };
        //onLoad = "[(_this select 0), ""ITC_AIR_MFD_L"",""MFD_L_INPUT"",19993,""MFD_L_FEED""] call itc_air_mfd_fnc_open";
        controls[]=
        {
            MFD_L
        };
        class MFD_MAP : RscMapControl
        {
          idc = 61500;
          x = safezoneX + (SCALE * 0.1125);
          y = safezoneY + safeZoneH - (SCALE * 1) + (SCALE * 0.16);
          w = SCALE * 0.525;
          h = SCALE * 0.7;
        };
        class MFD : MFD {};
    };
    class ITC_AIR_MFD_R : ITC_AIR_MFD_L {
        idd = 19992;
        onLoad = "[(_this select 0), ""ITC_AIR_MFD_R"",""MFD_R_INPUT"",19994,""MFD_R_FEED""] call itc_air_mfd_fnc_open";
        controlsBackground[] = {
          MFD_MAP
        };
        controls[]=
        {
            MFD_R
        };
        class MFD_MAP : RscMapControl
        {
          idc = 61500;
          x = safezoneX + safeZoneW - (SCALE * 0.75) + (SCALE * 0.1125);
          y = safezoneY + safeZoneH - (SCALE * 1) + (SCALE * 0.16);
          w = SCALE * 0.525;
          h = SCALE * 0.7;
        };
        class MFD : MFD_R {};
    };
};
