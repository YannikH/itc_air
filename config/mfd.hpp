class RscMapControl;
class IGUIBack;
class RscEdit;
class RscText;
class RscTitles {
    class MFD_DIALOG_L {
        idd = 19991;
        movingEnable = 1;
        duration = 9999999;
        fadein = 0;
        fadeout = 0;
        controlsBackground[] = {
            MFD_MAP_L,
            MFD_L_BG,
            MFD_L_FEED,
            MFD_L_CROSS,
            MFD_L_SOI,
            MFD_PIC_L,
            MFD_PIC_L_N,
            MFD_PIC_L_N_ON
        };
        objects[] = { };
        onLoad = "[(_this select 0), ""ITC_AIR_MFD_L"",""MFD_L_INPUT"",19993,""MFD_L_FEED""] call itc_air_mfd_fnc_open";
        controls[]=
        {
            L1,L2,L3,L4,L5,
            R1,R2,R3,R4,R5,
            C1,C2,C3,
            B1,B2,B3,B4,B5
        };

        class MFD_MAP_L : RscMapControl
        {
            idc = 1200;
            x = 0.0359375 * safezoneW + safezoneX;
            y = 0.632 * safezoneH + safezoneY;
            w = 0.175313 * safezoneW;
            h = 0.308 * safezoneH;
            fade = 1;
            colorBackground[] = {0,0,0,1};

            showCountourInterval = 0;
        };
        class MFD_L_BG : IGUIBack
        {
            idc = 1201;
            x = 0.0307812 * safezoneW + safezoneX;
            y = 0.621 * safezoneH + safezoneY;
            w = 0.185625 * safezoneW;
            h = 0.33 * safezoneH;
            colorBackground[] = {0,0,0,1};
        };
        class MFD_L_FEED: RscPicture
        {
            idc = 1206;
            text = "#(argb,512,512,1)r2t(MFD_L_FEED,1)";
            x = 0.0307812 * safezoneW + safezoneX;
            y = 0.621 * safezoneH + safezoneY;
            w = 0.185625 * safezoneW;
            h = 0.33 * safezoneH;
            colorBackground[] = {0, 0, 0, 0};
            fade = 1;
            colorText[] = {1, 1, 1, 1};
        };
        class MFD_L_CROSS: RscPicture
        {
            idc = 1207;
            text = "itc_air\data\UI\crs.paa";
            x = safeZoneX;
            y = safeZoneY + safeZoneH - 0.8;
            h = 0.8;
            w = 0.8 * 3 / 4;
            colorBackground[] = {0, 0, 0, 0};
            colorText[] = {1, 1, 1, 1};
        };
        class MFD_PIC_L: RscPicture
        {
            idc = 1202;
            text = "itc_air\data\UI\MFD512M1.paa";
            x = safeZoneX;
            y = safeZoneY + safeZoneH - 0.8;
            h = 0.8;
            w = 0.8 * 3 / 4;
            colorBackground[] = {0, 0, 0, 0};
            colorText[] = {1, 1, 1, 1};
        };
        class MFD_L_SOI: RscPicture
        {
            idc = 1208;
            text = "itc_air\data\UI\SOI.paa";
            x = safeZoneX;
            y = safeZoneY + safeZoneH - 0.8;
            h = 0.8;
            w = 0.8 * 3 / 4;
            colorBackground[] = {0, 0, 0, 0};
            colorText[] = {1, 1, 1, 1};
        };
        class MFD_PIC_L_N: RscPicture
        {
            idc = 1203;
            text = "itc_air\data\UI\MFD2NOFF.paa";
            x = safeZoneX;
            y = safeZoneY + safeZoneH - 0.8;
            h = 0.8;
            w = 0.8 * 3 / 4;
            colorBackground[] = {0, 0, 0, 1};
            colorText[] = {1, 1, 1, 1};
        };
        class MFD_PIC_L_N_L: RscPicture
        {
            idc = 1204;
            text = "itc_air\data\UI\MFD2NON.paa";
            fade = 1;
            x = safeZoneX;
            y = safeZoneY + safeZoneH - 0.8;
            h = 0.8;
            w = 0.8 * 3 / 4;
            colorBackground[] = {0, 0, 0, 1};
            colorText[] = {1, 1, 1, 1};
        };
        class MFD_PIC_L_N_ON: RscPicture
        {
            idc = 1205;
            text = "itc_air\data\UI\MFD2NON.paa";
            x = safeZoneX;
            y = safeZoneY + safeZoneH - 0.8;
            h = 0.8;
            w = 0.8 * 3 / 4;
            colorBackground[] = {0, 0, 0, 1};
            colorText[] = {1, 1, 1, 1};
        };
        class L1: RscText
        {
            idc = 1400;
            text = "DLY"; //--- ToDo: Localize;
            x = 0.0410937 * safezoneW + safezoneX;
            y = 0.676 * safezoneH + safezoneY;
            w = 0.0860937 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class L2: L1
        {
            idc = 1401;
            text = "25ms"; //--- ToDo: Localize;
            x = 0.0410937 * safezoneW + safezoneX;
            y = 0.72 * safezoneH + safezoneY;
            w = 0.0860937 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class L3: L1
        {
            idc = 1402;
            text = "60deg"; //--- ToDo: Localize;
            x = 0.0410937 * safezoneW + safezoneX;
            y = 0.764 * safezoneH + safezoneY;
            w = 0.0860937 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class L4: L1
        {
            idc = 1403;
            text = "N MULTI"; //--- ToDo: Localize;
            x = 0.0410937 * safezoneW + safezoneX;
            y = 0.808 * safezoneH + safezoneY;
            w = 0.0860937 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class L5: L1
        {
            idc = 1404;
            text = "T MULTI"; //--- ToDo: Localize;
            x = 0.0410937 * safezoneW + safezoneX;
            y = 0.852 * safezoneH + safezoneY;
            w = 0.0860937 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class R1: RscText
        {
            idc = 1405;
            text = "1111"; //--- ToDo: Localize;
            x = 0.133287 * safezoneW + safezoneX;
            y = 0.676 * safezoneH + safezoneY;
            w = 0.0773437 * safezoneW;
            h = 0.022 * safezoneH;
            style = 1;
        };
        class R2: R1
        {
            idc = 1406;
            y = 0.72 * safezoneH + safezoneY;
            style = 1;
        };
        class R3: R1
        {
            idc = 1407;
            text = "RP 1"; //--- ToDo: Localize;
            y = 0.764 * safezoneH + safezoneY;
            style = 1;
        };
        class R4: R1
        {
            idc = 1408;
            text = "CYCLE ON"; //--- ToDo: Localize;
            y = 0.808 * safezoneH + safezoneY;
            style = 1;
        };
        class R5: R1
        {
            idc = 1409;
            text = "Mark 3"; //--- ToDo: Localize;
            y = 0.852 * safezoneH + safezoneY;
            style = 1;
        };
        class C1: RscText
        {
            idc = 1410;
            text = "GBU-54"; //--- ToDo: Localize;
            x = 0.0978125 * safezoneW + safezoneX;
            y = 0.724 * safezoneH + safezoneY;
            w = 0.0515625 * safezoneW;
            h = 0.044 * safezoneH;
            style = 2;
        };
        class C2: RscText
        {
            idc = 1411;
            text = "GPS/INS LSR"; //--- ToDo: Localize;
            x = 0.0875 * safezoneW + safezoneX;
            y = 0.764 * safezoneH + safezoneY;
            w = 0.0670312 * safezoneW;
            h = 0.033 * safezoneH;
            style = 2;
        };
        class C3: RscText
        {
            idc = 1412;
            text = "4x"; //--- ToDo: Localize;
            x = 0.0875 * safezoneW + safezoneX;
            y = 0.797 * safezoneH + safezoneY;
            w = 0.0670312 * safezoneW;
            h = 0.033 * safezoneH;
            style = 2;
        };
        class B1: RscText
        {
            idc = 1413;
            text = "B1"; //--- ToDo: Localize;
            x = 0.0617187 * safezoneW + safezoneX;
            y = 0.907 * safezoneH + safezoneY;
            w = 0.030625 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class B2: RscText
        {
            idc = 1414;
            text = "B2"; //--- ToDo: Localize;
            x = 0.0875 * safezoneW + safezoneX;
            y = 0.907 * safezoneH + safezoneY;
            w = 0.020625 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class B3: RscText
        {
            idc = 1415;
            text = "B3"; //--- ToDo: Localize;
            x = 0.113281 * safezoneW + safezoneX;
            y = 0.907 * safezoneH + safezoneY;
            w = 0.020625 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class B4: RscText
        {
            idc = 1416;
            text = "B4"; //--- ToDo: Localize;
            x = 0.139062 * safezoneW + safezoneX;
            y = 0.907 * safezoneH + safezoneY;
            w = 0.020625 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class B5: RscText
        {
            idc = 1417;
            text = "B5"; //--- ToDo: Localize;
            x = 0.164844 * safezoneW + safezoneX;
            y = 0.907 * safezoneH + safezoneY;
            w = 0.020625 * safezoneW;
            h = 0.022 * safezoneH;
        };
    };
    class MFD_DIALOG_R {
        idd = 19993;
        movingEnable = 1;
        duration = 9999999;
        fadein = 0;
        fadeout = 0;
        controlsBackground[] = {
            MFD_MAP_R,
            MFD_R_BG,
            MFD_R_FEED,
            MFD_R_CROSS,
            MFD_R_SOI,
            MFD_PIC_R,
            MFD_PIC_R_N,
            MFD_PIC_R_N_ON
        };
        objects[] = { };
        onLoad = "[(_this select 0), ""ITC_AIR_MFD_R"",""MFD_R_INPUT"",19994,""MFD_R_FEED""] call itc_air_mfd_fnc_open";
        controls[]=
        {
            L1,L2,L3,L4,L5,
            R1,R2,R3,R4,R5,
            C1,C2,C3,
            B1,B2,B3,B4,B5
        };

        class MFD_MAP_R: RscMapControl
        {
            idc = 1200;
            fade = 1;

            x = 0.78875 * safezoneW + safezoneX;
            y = 0.632 * safezoneH + safezoneY;
            w = 0.175313 * safezoneW;
            h = 0.308 * safezoneH;
            colorBackground[] = {0,0,0,1};
        };
        class MFD_R_BG: IGUIBack
        {
            idc = 1201;

            x = 0.78875 * safezoneW + safezoneX;
            y = 0.621 * safezoneH + safezoneY;
            w = 0.185625 * safezoneW;
            h = 0.33 * safezoneH;
            colorBackground[] = {0,0,0,1};
        };
        class MFD_R_FEED: RscPicture
        {
            idc = 1206;
            text = "#(argb,512,512,1)r2t(MFD_R_FEED,1)";
            x = 0.78875 * safezoneW + safezoneX;
            y = 0.621 * safezoneH + safezoneY;
            w = 0.185625 * safezoneW;
            h = 0.33 * safezoneH;
            colorBackground[] = {0, 0, 0, 0};
            fade = 1;
            colorText[] = {1, 1, 1, 1};
        };
        class MFD_R_CROSS: RscPicture
        {
            idc = 1207;
            text = "itc_air\data\UI\crs.paa";
            x = 0.752656 * safezoneW + safezoneX;
            y = 0.566 * safezoneH + safezoneY;
            w = 0.2475 * safezoneW;
            h = 0.44 * safezoneH;
            colorBackground[] = {0, 0, 0, 0};
            colorText[] = {1, 1, 1, 1};
        };
        class MFD_PIC_R: RscPicture
        {
            idc = 1202;

            text = "itc_air\data\UI\MFD512M1.paa";
            x = 0.752656 * safezoneW + safezoneX;
            y = 0.566 * safezoneH + safezoneY;
            w = 0.2475 * safezoneW;
            h = 0.44 * safezoneH;
        };
        class MFD_PIC_R_N: RscPicture
        {
            idc = 1203;

            text = "itc_air\data\UI\MFD2NOFF.paa";
            x = 0.752656 * safezoneW + safezoneX;
            y = 0.566 * safezoneH + safezoneY;
            w = 0.2475 * safezoneW;
            h = 0.44 * safezoneH;
            colorBackground[] = {0,0,0,1};
        };
        class MFD_PIC_R_N_ON: RscPicture
        {
            idc = 1205;

            text = "itc_air\data\UI\MFD2NON.paa";
            x = 0.752656 * safezoneW + safezoneX;
            y = 0.566 * safezoneH + safezoneY;
            w = 0.2475 * safezoneW;
            h = 0.44 * safezoneH;
            colorBackground[] = {0,0,0,1};
        };
        class MFD_R_SOI: RscPicture
        {
            idc = 1208;
            text = "itc_air\data\UI\SOI.paa";
            x = 0.752656 * safezoneW + safezoneX;
            y = 0.566 * safezoneH + safezoneY;
            w = 0.2475 * safezoneW;
            h = 0.44 * safezoneH;
            colorBackground[] = {0, 0, 0, 0};
            colorText[] = {1, 1, 1, 1};
        };
        class L1: RscText
        {
            idc = 1400;

            text = "DLY"; //--- ToDo: Localize;
            x = 0.793906 * safezoneW + safezoneX;
            y = 0.676 * safezoneH + safezoneY;
            w = 0.0860937 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class L2: L1
        {
            idc = 1401;

            text = "25ms"; //--- ToDo: Localize;
            x = 0.793906 * safezoneW + safezoneX;
            y = 0.72 * safezoneH + safezoneY;
            w = 0.0860937 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class L3: L1
        {
            idc = 1402;

            text = "60deg"; //--- ToDo: Localize;
            x = 0.793906 * safezoneW + safezoneX;
            y = 0.775 * safezoneH + safezoneY;
            w = 0.0860937 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class L4: L1
        {
            idc = 1403;

            text = "N MULTI"; //--- ToDo: Localize;
            x = 0.793906 * safezoneW + safezoneX;
            y = 0.819 * safezoneH + safezoneY;
            w = 0.0860937 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class L5: L1
        {
            idc = 1404;

            text = "T MULTI"; //--- ToDo: Localize;
            x = 0.793906 * safezoneW + safezoneX;
            y = 0.863 * safezoneH + safezoneY;
            w = 0.0860937 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class R1: RscText
        {
            idc = 1405;
            style = 1;

            text = "1111"; //--- ToDo: Localize;
            x = 0.886719 * safezoneW + safezoneX;
            y = 0.687 * safezoneH + safezoneY;
            w = 0.0773437 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class R2: R1
        {
            idc = 1406;
            style = 1;

            text = "1111"; //--- ToDo: Localize;
            x = 0.886719 * safezoneW + safezoneX;
            y = 0.731 * safezoneH + safezoneY;
            w = 0.0773437 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class R3: R1
        {
            idc = 1407;
            style = 1;

            text = "RP 1"; //--- ToDo: Localize;
            x = 0.886719 * safezoneW + safezoneX;
            y = 0.775 * safezoneH + safezoneY;
            w = 0.0773437 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class R4: R1
        {
            idc = 1408;
            style = 1;

            text = "CYCLE ON"; //--- ToDo: Localize;
            x = 0.886719 * safezoneW + safezoneX;
            y = 0.819 * safezoneH + safezoneY;
            w = 0.0773437 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class R5: R1
        {
            idc = 1409;
            style = 1;

            text = "Mark 3"; //--- ToDo: Localize;
            x = 0.886719 * safezoneW + safezoneX;
            y = 0.863 * safezoneH + safezoneY;
            w = 0.0773437 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class C1: RscText
        {
            idc = 1410;
            style = 2;

            text = "GBU-54"; //--- ToDo: Localize;
            x = 0.855781 * safezoneW + safezoneX;
            y = 0.731 * safezoneH + safezoneY;
            w = 0.0515625 * safezoneW;
            h = 0.044 * safezoneH;
        };
        class C2: RscText
        {
            idc = 1411;
            style = 2;

            text = "GPS/INS LSR"; //--- ToDo: Localize;
            x = 0.845469 * safezoneW + safezoneX;
            y = 0.764 * safezoneH + safezoneY;
            w = 0.0670311 * safezoneW;
            h = 0.033 * safezoneH;
        };
        class C3: RscText
        {
            idc = 1412;
            style = 2;

            text = "4x"; //--- ToDo: Localize;
            x = 0.850625 * safezoneW + safezoneX;
            y = 0.797 * safezoneH + safezoneY;
            w = 0.0670311 * safezoneW;
            h = 0.033 * safezoneH;
        };
        class B1: RscText
        {
            idc = 1413;

            text = "B1"; //--- ToDo: Localize;
            x = 0.814531 * safezoneW + safezoneX;
            y = 0.907 * safezoneH + safezoneY;
            w = 0.030625 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class B2: RscText
        {
            idc = 1414;

            text = "B2"; //--- ToDo: Localize;
            x = 0.840312 * safezoneW + safezoneX;
            y = 0.907 * safezoneH + safezoneY;
            w = 0.020625 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class B3: RscText
        {
            idc = 1415;

            text = "B3"; //--- ToDo: Localize;
            x = 0.866094 * safezoneW + safezoneX;
            y = 0.907 * safezoneH + safezoneY;
            w = 0.020625 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class B4: RscText
        {
            idc = 1416;

            text = "B4"; //--- ToDo: Localize;
            x = 0.891875 * safezoneW + safezoneX;
            y = 0.907 * safezoneH + safezoneY;
            w = 0.020625 * safezoneW;
            h = 0.022 * safezoneH;
        };
        class B5: RscText
        {
            idc = 1417;

            text = "B5"; //--- ToDo: Localize;
            x = 0.917656 * safezoneW + safezoneX;
            y = 0.907 * safezoneH + safezoneY;
            w = 0.020625 * safezoneW;
            h = 0.022 * safezoneH;
        };
    };
};

class MFD_BTN {
    idd = 19992;
    movingEnable = 0;
    fadein = 0;
    fadeout = 0;
    controlsBackground[] = { };
    objects[] = { };
    controls[]=
    {
        L1B,L2B,L3B,L4B,L5B,
        L_ILLUM,
        R1B,R2B,R3B,R4B,R5B,
        B1B,B2B,B3B,B4B,B5B,
        R_L1B,R_L2B,R_L3B,R_L4B,R_L5B,
        R_L_ILLUM,
        R_R1B,R_R2B,R_R3B,R_R4B,R_R5B,
        R_B1B,R_B2B,R_B3B,R_B4B,R_B5B
    };
    class L1B: RscButton
    {
        idc = 1600;
        action = "[""ITC_AIR_MFD_L"",""L1""] call itc_air_mfd_fnc_button";

        x = 0.005 * safezoneW + safezoneX;
        y = 0.665 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
        fade = 1;
    };
    class L2B: L1B
    {
        idc = 1601;
        action = "[""ITC_AIR_MFD_L"",""L2""] call itc_air_mfd_fnc_button";

        x = 0.005 * safezoneW + safezoneX;
        y = 0.709 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class L3B: L1B
    {
        idc = 1602;
        action = "[""ITC_AIR_MFD_L"",""L3""] call itc_air_mfd_fnc_button";

        x = 0.005 * safezoneW + safezoneX;
        y = 0.750 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.033 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class L4B: L1B
    {
        idc = 1603;
        action = "[""ITC_AIR_MFD_L"",""L4""] call itc_air_mfd_fnc_button";

        x = 0.005 * safezoneW + safezoneX;
        y = 0.797 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class L5B: L1B
    {
        idc = 1604;
        action = "[""ITC_AIR_MFD_L"",""L5""] call itc_air_mfd_fnc_button";

        x = 0.005 * safezoneW + safezoneX;
        y = 0.841 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class L_ILLUM: L1B
    {
        idc = 1600;
        x = 0.025625 * safezoneW + safezoneX;
        y = 0.951 * safezoneH + safezoneY;
        w = 0.020625 * safezoneW;
        h = 0.044 * safezoneH;
        action = "[""ITC_AIR_MFD_L""] call itc_air_mfd_fnc_illum";
    };
    class R1B: L1B
    {
        idc = 1605;
        action = "[""ITC_AIR_MFD_L"",""R1""] call itc_air_mfd_fnc_button";

        x = 0.216406 * safezoneW + safezoneX;
        y = 0.665 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.033 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R2B: L1B
    {
        idc = 1606;
        action = "[""ITC_AIR_MFD_L"",""R2""] call itc_air_mfd_fnc_button";

        x = 0.216406 * safezoneW + safezoneX;
        y = 0.709 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.033 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R3B: L1B
    {
        idc = 1607;
        action = "[""ITC_AIR_MFD_L"",""R3""] call itc_air_mfd_fnc_button";

        x = 0.216406 * safezoneW + safezoneX;
        y = 0.750 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.033 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R4B: L1B
    {
        idc = 1608;
        action = "[""ITC_AIR_MFD_L"",""R4""] call itc_air_mfd_fnc_button";

        x = 0.216406 * safezoneW + safezoneX;
        y = 0.797 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R5B: L1B
    {
        idc = 1609;
        action = "[""ITC_AIR_MFD_L"",""R5""] call itc_air_mfd_fnc_button";

        x = 0.216406 * safezoneW + safezoneX;
        y = 0.841 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class B1B: L1B
    {
        idc = 1610;
        action = "[""ITC_AIR_MFD_L"",""B1""] call itc_air_mfd_fnc_button";
        x = 0.0617187 * safezoneW + safezoneX;
        y = 0.951 * safezoneH + safezoneY;
        w = 0.020625 * safezoneW;
        h = 0.044 * safezoneH;
    };
    class B2B: L1B
    {
        idc = 1611;
        action = "[""ITC_AIR_MFD_L"",""B2""] call itc_air_mfd_fnc_button";
        x = 0.0875 * safezoneW + safezoneX;
        y = 0.951 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
    };
    class B3B: L1B
    {
        idc = 1612;
        action = "[""ITC_AIR_MFD_L"",""B3""] call itc_air_mfd_fnc_button";
        x = 0.113281 * safezoneW + safezoneX;
        y = 0.951 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
    };
    class B4B: L1B
    {
        idc = 1613;
        action = "[""ITC_AIR_MFD_L"",""B4""] call itc_air_mfd_fnc_button";
        x = 0.139062 * safezoneW + safezoneX;
        y = 0.951 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
    };
    class B5B: L1B
    {
        idc = 1614;
        action = "[""ITC_AIR_MFD_L"",""B5""] call itc_air_mfd_fnc_button";
        x = 0.164844 * safezoneW + safezoneX;
        y = 0.951 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
    };
    class R_L1B: RscButton
    {
        idc = 1700;
        action = "[""ITC_AIR_MFD_R"",""L1""] call itc_air_mfd_fnc_button";
        fade = 1;

        x = 0.757813 * safezoneW + safezoneX;
        y = 0.665 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R_L2B: L1B
    {
        idc = 1701;
        action = "[""ITC_AIR_MFD_R"",""L2""] call itc_air_mfd_fnc_button";

        x = 0.757813 * safezoneW + safezoneX;
        y = 0.709 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.055 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R_L3B: L1B
    {
        idc = 1702;
        action = "[""ITC_AIR_MFD_R"",""L3""] call itc_air_mfd_fnc_button";

        x = 0.757813 * safezoneW + safezoneX;
        y = 0.764 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.033 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R_L4B: L1B
    {
        idc = 1703;
        action = "[""ITC_AIR_MFD_R"",""L4""] call itc_air_mfd_fnc_button";

        x = 0.757813 * safezoneW + safezoneX;
        y = 0.797 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.055 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R_L5B: L1B
    {
        idc = 1704;
        action = "[""ITC_AIR_MFD_R"",""L5""] call itc_air_mfd_fnc_button";

        x = 0.757813 * safezoneW + safezoneX;
        y = 0.852 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R_L_ILLUM: L1B
    {
        idc = 1715;
        action = "[""ITC_AIR_MFD_R""] call itc_air_mfd_fnc_illum";

        x = 0.778437 * safezoneW + safezoneX;
        y = 0.951 * safezoneH + safezoneY;
        w = 0.020625 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R_R1B: L1B
    {
        idc = 1705;
        action = "[""ITC_AIR_MFD_R"",""R1""] call itc_air_mfd_fnc_button";

        x = 0.969219 * safezoneW + safezoneX;
        y = 0.665 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R_R2B: L1B
    {
        idc = 1706;
        action = "[""ITC_AIR_MFD_R"",""R2""] call itc_air_mfd_fnc_button";

        x = 0.969219 * safezoneW + safezoneX;
        y = 0.709 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R_R3B: L1B
    {
        idc = 1707;
        action = "[""ITC_AIR_MFD_R"",""R3""] call itc_air_mfd_fnc_button";

        x = 0.969219 * safezoneW + safezoneX;
        y = 0.753 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R_R4B: L1B
    {
        idc = 1708;
        action = "[""ITC_AIR_MFD_R"",""R4""] call itc_air_mfd_fnc_button";

        x = 0.969219 * safezoneW + safezoneX;
        y = 0.797 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.055 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R_R5B: L1B
    {
        idc = 1709;
        action = "[""ITC_AIR_MFD_R"",""R5""] call itc_air_mfd_fnc_button";

        x = 0.969219 * safezoneW + safezoneX;
        y = 0.852 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R_B1B: L1B
    {
        idc = 1710;
        action = "[""ITC_AIR_MFD_R"",""B1""] call itc_air_mfd_fnc_button";

        x = 0.814531 * safezoneW + safezoneX;
        y = 0.951 * safezoneH + safezoneY;
        w = 0.020625 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R_B2B: L1B
    {
        idc = 1711;
        action = "[""ITC_AIR_MFD_R"",""B2""] call itc_air_mfd_fnc_button";

        x = 0.840312 * safezoneW + safezoneX;
        y = 0.951 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R_B3B: L1B
    {
        idc = 1712;
        action = "[""ITC_AIR_MFD_R"",""B3""] call itc_air_mfd_fnc_button";

        x = 0.866094 * safezoneW + safezoneX;
        y = 0.951 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R_B4B: L1B
    {
        idc = 1713;
        action = "[""ITC_AIR_MFD_R"",""B4""] call itc_air_mfd_fnc_button";

        x = 0.891875 * safezoneW + safezoneX;
        y = 0.951 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R_B5B: L1B
    {
        idc = 1714;
        action = "[""ITC_AIR_MFD_R"",""B5""] call itc_air_mfd_fnc_button";

        x = 0.917656 * safezoneW + safezoneX;
        y = 0.951 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
};

class MFD_L_INPUT {
    idd = 19993;
    movingEnable = 0;
    fadein = 0;
    fadeout = 0;
    controlsBackground[] = { };
    objects[] = { };
    controls[]=
    {
        MFD_L_BG,R4B,R5B,R4,R5,C_INPUT,C_LABEL
    };
    class MFD_L_BG : IGUIBack
    {
        idc = 1706;
        x = 0.0410937 * safezoneW + safezoneX;
        y = 0.643 * safezoneH + safezoneY;
        w = 0.165 * safezoneW;
        h = 0.286 * safezoneH;
        colorBackground[] = {0,0,0,1};
    };
    class C_INPUT: RscEdit
    {
        idc = 1707;
        text = ""; //--- ToDo: Localize;
        x = 0.0875 * safezoneW + safezoneX;
        y = 0.731 * safezoneH + safezoneY;
        w = 0.0773437 * safezoneW;
        h = 0.033 * safezoneH;
        style = 2;
    };
    class R4B: RscButton
    {
        idc = 1708;
        action = "_this call itc_air_mfd_fnc_input_cancel";

        x = 0.216406 * safezoneW + safezoneX;
        y = 0.797 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R5B: RscButton
    {
        idc = 1709;
        action = "[""ITC_AIR_MFD_L"",_this] call itc_air_mfd_fnc_input_save";

        x = 0.216406 * safezoneW + safezoneX;
        y = 0.841 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R4: RscText
    {
        idc = 1710;
        text = "Cancel"; //--- ToDo: Localize;
        x = 0.154531 * safezoneW + safezoneX;
        y = 0.808 * safezoneH + safezoneY;
        w = 0.0515625 * safezoneW;
        h = 0.022 * safezoneH;
        style = 1;
    };
    class R5: RscText
    {
        idc = 1711;
        text = "Accept"; //--- ToDo: Localize;
        x = 0.154531 * safezoneW + safezoneX;
        y = 0.852 * safezoneH + safezoneY;
        w = 0.0515625 * safezoneW;
        h = 0.022 * safezoneH;
        style = 1;
    };
    class C_LABEL: RscText
    {
        idc = 1712;
        text = "TITLE"; //--- ToDo: Localize;
        x = 0.0823437 * safezoneW + safezoneX;
        y = 0.698 * safezoneH + safezoneY;
        w = 0.0825 * safezoneW;
        h = 0.022 * safezoneH;
        style = 2;
    };
};
/*
class MFD_L_INPUT {
    idd = 19993;
    movingEnable = 0;
    fadein = 0;
    fadeout = 0;
    controlsBackground[] = { };
    objects[] = { };
    controls[]=
    {
        MFD_L_BG,R4B,R5B,R4,R5,C_INPUT,C_LABEL
    };
    class MFD_L_BG : IGUIBack
    {
        idc = 1706;
        x = 0.0410937 * safezoneW + safezoneX;
        y = 0.643 * safezoneH + safezoneY;
        w = 0.165 * safezoneW;
        h = 0.286 * safezoneH;
        colorBackground[] = {0,0,0,1};
    };
    class C_INPUT: RscEdit
    {
        idc = 1707;
        text = ""; //--- ToDo: Localize;
        x = 0.0875 * safezoneW + safezoneX;
        y = 0.731 * safezoneH + safezoneY;
        w = 0.0773437 * safezoneW;
        h = 0.033 * safezoneH;
        style = 2;
    };
    class R4B: RscButton
    {
        idc = 1708;
        action = "_this call itc_air_mfd_fnc_input_cancel";

        x = 0.216406 * safezoneW + safezoneX;
        y = 0.797 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R5B: RscButton
    {
        idc = 1709;
        action = "[""ITC_AIR_MFD_L"",_this] call itc_air_mfd_fnc_input_save";

        x = 0.216406 * safezoneW + safezoneX;
        y = 0.841 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R4: RscText
    {
        idc = 1710;
        text = "Cancel"; //--- ToDo: Localize;
        x = 0.154531 * safezoneW + safezoneX;
        y = 0.808 * safezoneH + safezoneY;
        w = 0.0515625 * safezoneW;
        h = 0.022 * safezoneH;
        style = 1;
    };
    class R5: RscText
    {
        idc = 1711;
        text = "Accept"; //--- ToDo: Localize;
        x = 0.154531 * safezoneW + safezoneX;
        y = 0.852 * safezoneH + safezoneY;
        w = 0.0515625 * safezoneW;
        h = 0.022 * safezoneH;
        style = 1;
    };
    class C_LABEL: RscText
    {
        idc = 1712;
        text = "TITLE"; //--- ToDo: Localize;
        x = 0.0823437 * safezoneW + safezoneX;
        y = 0.698 * safezoneH + safezoneY;
        w = 0.0825 * safezoneW;
        h = 0.022 * safezoneH;
        style = 2;
    };
};
*/
class MFD_R_INPUT {
    idd = 19994;
    movingEnable = 0;
    fadein = 0;
    fadeout = 0;
    controlsBackground[] = { };
    objects[] = { };
    controls[]=
    {
        MFD_L_BG,R4B,R5B,R4,R5,C_INPUT,C_LABEL
    };
    class MFD_L_BG: IGUIBack
    {
        idc = 1706;

        x = 0.793906 * safezoneW + safezoneX;
        y = 0.654 * safezoneH + safezoneY;
        w = 0.165 * safezoneW;
        h = 0.275 * safezoneH;
        colorBackground[] = {0,0,0,1};
    };
    class C_INPUT: RscEdit
    {
        idc = 1707;
        style = 2;

        x = 0.840312 * safezoneW + safezoneX;
        y = 0.775 * safezoneH + safezoneY;
        w = 0.0773437 * safezoneW;
        h = 0.033 * safezoneH;
    };
    class R4B: RscButton
    {
        idc = 1708;
        action = "_this call itc_air_mfd_fnc_input_cancel";

        x = 0.969219 * safezoneW + safezoneX;
        y = 0.808 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R5B: RscButton
    {
        idc = 1709;
        action = "[""ITC_AIR_MFD_R"",_this] call itc_air_mfd_fnc_input_save";

        x = 0.969219 * safezoneW + safezoneX;
        y = 0.852 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R4: RscText
    {
        idc = 1710;
        style = 1;

        text = "Cancel"; //--- ToDo: Localize;
        x = 0.907344 * safezoneW + safezoneX;
        y = 0.819 * safezoneH + safezoneY;
        w = 0.0515625 * safezoneW;
        h = 0.022 * safezoneH;
    };
    class R5: RscText
    {
        idc = 1711;
        style = 1;

        text = "Accept"; //--- ToDo: Localize;
        x = 0.907344 * safezoneW + safezoneX;
        y = 0.863 * safezoneH + safezoneY;
        w = 0.0515625 * safezoneW;
        h = 0.022 * safezoneH;
    };
    class C_LABEL: RscText
    {
        idc = 1712;
        style = 2;

        text = "TITLE"; //--- ToDo: Localize;
        x = 0.835156 * safezoneW + safezoneX;
        y = 0.742 * safezoneH + safezoneY;
        w = 0.0825 * safezoneW;
        h = 0.022 * safezoneH;
    };
};

class MFD_R_BTN {
    idd = 19994;
    movingEnable = 0;
    fadein = 0;
    fadeout = 0;
    controlsBackground[] = { };
    objects[] = { };
    controls[]=
    {
        L1B,L2B,L3B,L4B,L5B,
        L_ILLUM,
        R1B,R2B,R3B,R4B,R5B,
        B1B,B2B,B3B,B4B,B5B
    };
    class L1B: RscButton
    {
        idc = 1600;
        action = "[""ITC_AIR_MFD_R"",""L1""] call itc_air_mfd_fnc_button";
        fade = 1;

        x = 0.757813 * safezoneW + safezoneX;
        y = 0.665 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class L2B: L1B
    {
        idc = 1601;
        action = "[""ITC_AIR_MFD_R"",""L2""] call itc_air_mfd_fnc_button";

        x = 0.757813 * safezoneW + safezoneX;
        y = 0.709 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.055 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class L3B: L1B
    {
        idc = 1602;
        action = "[""ITC_AIR_MFD_R"",""L3""] call itc_air_mfd_fnc_button";

        x = 0.757813 * safezoneW + safezoneX;
        y = 0.764 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.033 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class L4B: L1B
    {
        idc = 1603;
        action = "[""ITC_AIR_MFD_R"",""L4""] call itc_air_mfd_fnc_button";

        x = 0.757813 * safezoneW + safezoneX;
        y = 0.797 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.055 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class L5B: L1B
    {
        idc = 1604;
        action = "[""ITC_AIR_MFD_R"",""L5""] call itc_air_mfd_fnc_button";

        x = 0.757813 * safezoneW + safezoneX;
        y = 0.852 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class L_ILLUM: L1B
    {
        idc = 1615;
        action = "[""ITC_AIR_MFD_L""] call itc_air_mfd_fnc_illum";

        x = 0.778437 * safezoneW + safezoneX;
        y = 0.951 * safezoneH + safezoneY;
        w = 0.020625 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R1B: L1B
    {
        idc = 1605;
        action = "[""ITC_AIR_MFD_R"",""R1""] call itc_air_mfd_fnc_button";

        x = 0.969219 * safezoneW + safezoneX;
        y = 0.665 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R2B: L1B
    {
        idc = 1606;
        action = "[""ITC_AIR_MFD_R"",""R2""] call itc_air_mfd_fnc_button";

        x = 0.969219 * safezoneW + safezoneX;
        y = 0.709 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R3B: L1B
    {
        idc = 1607;
        action = "[""ITC_AIR_MFD_R"",""R3""] call itc_air_mfd_fnc_button";

        x = 0.969219 * safezoneW + safezoneX;
        y = 0.753 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R4B: L1B
    {
        idc = 1608;
        action = "[""ITC_AIR_MFD_R"",""R4""] call itc_air_mfd_fnc_button";

        x = 0.969219 * safezoneW + safezoneX;
        y = 0.797 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.055 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class R5B: L1B
    {
        idc = 1609;
        action = "[""ITC_AIR_MFD_R"",""R5""] call itc_air_mfd_fnc_button";

        x = 0.969219 * safezoneW + safezoneX;
        y = 0.852 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class B1B: L1B
    {
        idc = 1610;
        action = "[""ITC_AIR_MFD_R"",""B1""] call itc_air_mfd_fnc_button";

        x = 0.814531 * safezoneW + safezoneX;
        y = 0.951 * safezoneH + safezoneY;
        w = 0.020625 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class B2B: L1B
    {
        idc = 1611;
        action = "[""ITC_AIR_MFD_R"",""B2""] call itc_air_mfd_fnc_button";

        x = 0.840312 * safezoneW + safezoneX;
        y = 0.951 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class B3B: L1B
    {
        idc = 1612;
        action = "[""ITC_AIR_MFD_R"",""B3""] call itc_air_mfd_fnc_button";

        x = 0.866094 * safezoneW + safezoneX;
        y = 0.951 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class B4B: L1B
    {
        idc = 1613;
        action = "[""ITC_AIR_MFD_R"",""B4""] call itc_air_mfd_fnc_button";

        x = 0.891875 * safezoneW + safezoneX;
        y = 0.951 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };
    class B5B: L1B
    {
        idc = 1614;
        action = "[""ITC_AIR_MFD_R"",""B5""] call itc_air_mfd_fnc_button";

        x = 0.917656 * safezoneW + safezoneX;
        y = 0.951 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.044 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
    };

};
