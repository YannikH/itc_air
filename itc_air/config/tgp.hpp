class RscMapControl;
class IGUIBack;
class RscEdit;
class RscText;
class RscStructuredText;
class TGP_DIALOG {
    idd = 19993;
    movingEnable = true;
    onLoad = "[(_this select 0)] call itc_air_tgp_fnc_wso_open";
    onMouseButtonDown = "itc_air_tgp_mouseDown = true;";
    onMouseButtonUp = "itc_air_tgp_mouseDown = false;";
    onMouseHolding = "_this call itc_air_tgp_fnc_wso_mouse_move";
    onMouseMoving = "_this call itc_air_tgp_fnc_wso_mouse_move";
    fadein = 0;
    fadeout = 0;
    controlsBackground[] = {
        BAR_LEFT,
        BAR_RIGHT,
        BAR_TOP,
        BAR_BOTTOM
    };
    objects[] = { };
    controls[]=
    {
        TGP_DISP,
        L1,L2,L3,L4,L5,
        R1,R2,R3,R4,R5,
        TL1,TL2,TL3,TL4,TL5,
        TR1,TR2,TR3,TR4,TR5,
        SCREENBACK
    };
    class TGP_DISP: RscPicture
    {
        idc = 1200;

        text = "itc_air\data\UI\MFD512M1.paa";
        x = 0.221562 * safezoneW + safezoneX;
        y = -5.99921e-005 * safezoneH + safezoneY;
        w = 0.5625 * safezoneW;
        h = 0.999999 * safezoneH;
    };
    class SCREENBACK: RscButton
    {
        idc = 1610;
        x = 0.309219 * safezoneW + safezoneX;
        y = 0.17 * safezoneH + safezoneY;
        w = 0.386719 * safezoneW;
        h = 0.682 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
        colorActive[] = {-1,-1,-1,0};
    };
    class BAR_LEFT: IGUIBack
    {
        idc = 2200;

        x = -0.0517188 * safezoneW + safezoneX;
        y = -0.017 * safezoneH + safezoneY;
        w = 0.283594 * safezoneW;
        h = 1.012 * safezoneH;
        colorBackground[] = {0,0,0,1};
    };
    class BAR_RIGHT: IGUIBack
    {
        idc = 2201;

        x = 0.773281 * safezoneW + safezoneX;
        y = -0.00599999 * safezoneH + safezoneY;
        w = 0.283594 * safezoneW;
        h = 1.012 * safezoneH;
        colorBackground[] = {0,0,0,1};
    };
    class BAR_TOP: IGUIBack
    {
        idc = 2202;

        x = 0.21125 * safezoneW + safezoneX;
        y = -0.00599999 * safezoneH + safezoneY;
        w = 0.572344 * safezoneW;
        h = 0.077 * safezoneH;
        colorBackground[] = {0,0,0,1};
    };
    class BAR_BOTTOM: IGUIBack
    {
        idc = 2203;

        x = 0.216406 * safezoneW + safezoneX;
        y = 0.929 * safezoneH + safezoneY;
        w = 0.572344 * safezoneW;
        h = 0.077 * safezoneH;
        colorBackground[] = {0,0,0,1};
    };
    class L1: RscButton
    {
        idc = 1600;
        x = 0.247344 * safezoneW + safezoneX;
        y = 0.247 * safezoneH + safezoneY;
        w = 0.0309375 * safezoneW;
        h = 0.055 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
        colorActive[] = {-1,-1,-1,0};
        action = "[""ITC_AIR_MFD_TGP"",""L1""] call itc_air_tgp_fnc_wso_button";
    };
    class L2: RscButton
    {
        idc = 1601;
        x = 0.247344 * safezoneW + safezoneX;
        y = 0.346 * safezoneH + safezoneY;
        w = 0.0309375 * safezoneW;
        h = 0.055 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
        colorActive[] = {-1,-1,-1,0};
        action = "[""ITC_AIR_MFD_TGP"",""L2""] call itc_air_tgp_fnc_wso_button";
    };
    class L3: RscButton
    {
        idc = 1602;
        x = 0.247344 * safezoneW + safezoneX;
        y = 0.456 * safezoneH + safezoneY;
        w = 0.0309375 * safezoneW;
        h = 0.055 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
        colorActive[] = {-1,-1,-1,0};
        action = "[""ITC_AIR_MFD_TGP"",""L3""] call itc_air_tgp_fnc_wso_button";
    };
    class L4: RscButton
    {
        idc = 1603;
        x = 0.247344 * safezoneW + safezoneX;
        y = 0.566 * safezoneH + safezoneY;
        w = 0.0309375 * safezoneW;
        h = 0.055 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
        colorActive[] = {-1,-1,-1,0};
        action = "[""ITC_AIR_MFD_TGP"",""L4""] call itc_air_tgp_fnc_wso_button";
    };
    class L5: RscButton
    {
        idc = 1604;
        x = 0.247344 * safezoneW + safezoneX;
        y = 0.665 * safezoneH + safezoneY;
        w = 0.0309375 * safezoneW;
        h = 0.055 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
        colorActive[] = {-1,-1,-1,0};
        action = "[""ITC_AIR_MFD_TGP"",""L5""] call itc_air_tgp_fnc_wso_button";
    };
    class R1: RscButton
    {
        idc = 1605;
        x = 0.732031 * safezoneW + safezoneX;
        y = 0.247 * safezoneH + safezoneY;
        w = 0.0309375 * safezoneW;
        h = 0.055 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
        colorActive[] = {-1,-1,-1,0};
        action = "[""ITC_AIR_MFD_TGP"",""R1""] call itc_air_tgp_fnc_wso_button";
    };
    class R2: RscButton
    {
        idc = 1606;
        x = 0.732031 * safezoneW + safezoneX;
        y = 0.357 * safezoneH + safezoneY;
        w = 0.0309375 * safezoneW;
        h = 0.055 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
        colorActive[] = {-1,-1,-1,0};
        action = "[""ITC_AIR_MFD_TGP"",""R2""] call itc_air_tgp_fnc_wso_button";
    };
    class R3: RscButton
    {
        idc = 1607;
        x = 0.732031 * safezoneW + safezoneX;
        y = 0.456 * safezoneH + safezoneY;
        w = 0.0309375 * safezoneW;
        h = 0.055 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
        colorActive[] = {-1,-1,-1,0};
        action = "[""ITC_AIR_MFD_TGP"",""R3""] call itc_air_tgp_fnc_wso_button";
    };
    class R4: RscButton
    {
        idc = 1608;
        x = 0.732031 * safezoneW + safezoneX;
        y = 0.566 * safezoneH + safezoneY;
        w = 0.0309375 * safezoneW;
        h = 0.055 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
        colorActive[] = {-1,-1,-1,0};
        action = "[""ITC_AIR_MFD_TGP"",""R4""] call itc_air_tgp_fnc_wso_button";
    };
    class R5: RscButton
    {
        idc = 1609;
        x = 0.732031 * safezoneW + safezoneX;
        y = 0.665 * safezoneH + safezoneY;
        w = 0.0309375 * safezoneW;
        h = 0.055 * safezoneH;
        colorBackground[] = {-1,-1,-1,0};
        colorActive[] = {-1,-1,-1,0};
        action = "[""ITC_AIR_MFD_TGP"",""R5""] call itc_air_tgp_fnc_wso_button";
    };
    class TL1: RscText
    {
        idc = 1000;
        text = "asdfasdf"; //--- ToDo: Localize;
        x = 0.314375 * safezoneW + safezoneX;
        y = 0.258 * safezoneH + safezoneY;
        w = 0.0825 * safezoneW;
        h = 0.044 * safezoneH;
    };
    class TL2: RscText
    {
        idc = 1001;
        text = "asdfasdf"; //--- ToDo: Localize;
        x = 0.314375 * safezoneW + safezoneX;
        y = 0.357 * safezoneH + safezoneY;
        w = 0.0825 * safezoneW;
        h = 0.044 * safezoneH;
    };
    class TL3: RscText
    {
        idc = 1002;
        text = "asdfasdf"; //--- ToDo: Localize;
        x = 0.314375 * safezoneW + safezoneX;
        y = 0.467 * safezoneH + safezoneY;
        w = 0.0825 * safezoneW;
        h = 0.044 * safezoneH;
    };
    class TL4: RscText
    {
        idc = 1003;
        text = "asdfasdf"; //--- ToDo: Localize;
        x = 0.314375 * safezoneW + safezoneX;
        y = 0.577 * safezoneH + safezoneY;
        w = 0.0825 * safezoneW;
        h = 0.044 * safezoneH;
    };
    class TL5: RscText
    {
        idc = 1004;
        text = "asdfasdf"; //--- ToDo: Localize;
        x = 0.314375 * safezoneW + safezoneX;
        y = 0.676 * safezoneH + safezoneY;
        w = 0.0825 * safezoneW;
        h = 0.044 * safezoneH;
    };
    class TR1: RscText
    {
        idc = 1005;
        text = "asdfasdf"; //--- ToDo: Localize;
        x = 0.608281 * safezoneW + safezoneX;
        y = 0.258 * safezoneH + safezoneY;
        w = 0.0825 * safezoneW;
        h = 0.044 * safezoneH;
        style = 1;
    };
    class TR2: RscText
    {
        idc = 1006;
        text = "asdfasdf"; //--- ToDo: Localize;
        x = 0.608281 * safezoneW + safezoneX;
        y = 0.368 * safezoneH + safezoneY;
        w = 0.0825 * safezoneW;
        h = 0.044 * safezoneH;
        style = 1;
    };
    class TR3: RscText
    {
        idc = 1007;
        text = "asdfasdf"; //--- ToDo: Localize;
        x = 0.608281 * safezoneW + safezoneX;
        y = 0.467 * safezoneH + safezoneY;
        w = 0.0825 * safezoneW;
        h = 0.044 * safezoneH;
        style = 1;
    };
    class TR4: RscText
    {
        idc = 1008;
        text = "asdfasdf"; //--- ToDo: Localize;
        x = 0.608281 * safezoneW + safezoneX;
        y = 0.566 * safezoneH + safezoneY;
        w = 0.0825 * safezoneW;
        h = 0.044 * safezoneH;
        style = 1;
    };
    class TR5: RscText
    {
        idc = 1009;
        text = "asdfasdf"; //--- ToDo: Localize;
        x = 0.608281 * safezoneW + safezoneX;
        y = 0.676 * safezoneH + safezoneY;
        w = 0.0825 * safezoneW;
        h = 0.044 * safezoneH;
        style = 1;
    };
};
