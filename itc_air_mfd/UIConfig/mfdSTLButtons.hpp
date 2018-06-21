class ITC_AIR_MFDSTLButtons_Base : RscControlsGroup {
    idc = -1;
    x = safezoneX;
    y = safezoneY + safeZoneH - (SCALE * 1);
    w = SCALE * 0.75;
    h = SCALE * 1;
    class Controls {
      class RscSTLButton_1600: ITC_AIR_MfdButton
      {
        idc = -1;
        x = SCALE * 0.125;
        y = SCALE * 0.24;
        w = SCALE * 0.075;
        h = SCALE * 0.1;
        onButtonClick = "[(_this # 0),""L1""] call itc_air_mfd_fnc_interact";
      };
      class RscSTLButton_1601: ITC_AIR_MfdButton
      {
        idc = -1;
        x = SCALE * 0.125;
        y = SCALE * 0.34;
        w = SCALE * 0.075;
        h = SCALE * 0.1;
        onButtonClick = "[(_this # 0),""L2""] call itc_air_mfd_fnc_interact";
      };
      class RscSTLButton_1602: ITC_AIR_MfdButton
      {
        idc = -1;
        x = SCALE * 0.125;
        y = SCALE * 0.44;
        w = SCALE * 0.075;
        h = SCALE * 0.1;
        onButtonClick = "[(_this # 0),""L3""] call itc_air_mfd_fnc_interact";
      };
      class RscSTLButton_1603: ITC_AIR_MfdButton
      {
        idc = -1;
        x = SCALE * 0.125;
        y = SCALE * 0.54;
        w = SCALE * 0.075;
        h = SCALE * 0.1;
        onButtonClick = "[(_this # 0),""L4""] call itc_air_mfd_fnc_interact";
      };
      class RscSTLButton_1604: ITC_AIR_MfdButton
      {
        idc = -1;
        x = SCALE * 0.125;
        y = SCALE * 0.64;
        w = SCALE * 0.075;
        h = SCALE * 0.1;
        onButtonClick = "[(_this # 0),""L5""] call itc_air_mfd_fnc_interact";
      };
      class RscSTLButton_1605: ITC_AIR_MfdButton
      {
        idc = -1;
        x = SCALE * 0.1875;
        y = SCALE * 0.8;
        w = SCALE * 0.075;
        h = SCALE * 0.06;
        onButtonClick = "[(_this # 0),""B1""] call itc_air_mfd_fnc_interact";
      };
      class RscSTLButton_1606: ITC_AIR_MfdButton
      {
        idc = -1;
        x = SCALE * 0.2625;
        y = SCALE * 0.8;
        w = SCALE * 0.075;
        h = SCALE * 0.06;
        onButtonClick = "[(_this # 0),""B2""] call itc_air_mfd_fnc_interact";
      };
      class RscSTLButton_1607: ITC_AIR_MfdButton
      {
        idc = -1;
        x = SCALE * 0.3375;
        y = SCALE * 0.8;
        w = SCALE * 0.0875;
        h = SCALE * 0.06;
        onButtonClick = "[(_this # 0),""B3""] call itc_air_mfd_fnc_interact";
      };
      class RscSTLButton_1608: ITC_AIR_MfdButton
      {
        idc = -1;
        x = SCALE * 0.425;
        y = SCALE * 0.8;
        w = SCALE * 0.075;
        h = SCALE * 0.06;
        onButtonClick = "[(_this # 0),""B4""] call itc_air_mfd_fnc_interact";
      };
      class RscSTLButton_1609: ITC_AIR_MfdButton
      {
        idc = -1;
        x = SCALE * 0.5;
        y = SCALE * 0.8;
        w = SCALE * 0.0875;
        h = SCALE * 0.06;
        onButtonClick = "[(_this # 0),""B5""] call itc_air_mfd_fnc_interact";
      };
      class RscSTLButton_1610: ITC_AIR_MfdButton
      {
        idc = -1;
        x = SCALE * 0.55;
        y = SCALE * 0.24;
        w = SCALE * 0.075;
        h = SCALE * 0.1;
        onButtonClick = "[(_this # 0),""R1""] call itc_air_mfd_fnc_interact";
      };
      class RscSTLButton_1611: ITC_AIR_MfdButton
      {
        idc = -1;
        x = SCALE * 0.55;
        y = SCALE * 0.34;
        w = SCALE * 0.075;
        h = SCALE * 0.1;
        onButtonClick = "[(_this # 0),""R2""] call itc_air_mfd_fnc_interact";
      };
      class RscSTLButton_1612: ITC_AIR_MfdButton
      {
        idc = -1;
        x = SCALE * 0.55;
        y = SCALE * 0.44;
        w = SCALE * 0.075;
        h = SCALE * 0.1;
        onButtonClick = "[(_this # 0),""R3""] call itc_air_mfd_fnc_interact";
      };
      class RscSTLButton_1613: ITC_AIR_MfdButton
      {
        idc = -1;
        x = SCALE * 0.55;
        y = SCALE * 0.54;
        w = SCALE * 0.075;
        h = SCALE * 0.1;
        onButtonClick = "[(_this # 0),""R4""] call itc_air_mfd_fnc_interact";
      };
      class RscSTLButton_1614: ITC_AIR_MfdButton
      {
        idc = -1;
        x = SCALE * 0.55;
        y = SCALE * 0.64;
        w = SCALE * 0.075;
        h = SCALE * 0.1;
        onButtonClick = "[(_this # 0),""R5""] call itc_air_mfd_fnc_interact";
      };
      class RscSTLButton_1615: ITC_AIR_MfdButton
      {
        idc = -1;
        x = SCALE * 0.1875;
        y = SCALE * 0.18;
        w = SCALE * 0.075;
        h = SCALE * 0.06;
        onButtonClick = "[(_this # 0),""T1""] call itc_air_mfd_fnc_interact";
      };
      class RscSTLButton_1616: ITC_AIR_MfdButton
      {
        idc = -1;
        x = SCALE * 0.2625;
        y = SCALE * 0.18;
        w = SCALE * 0.0875;
        h = SCALE * 0.06;
        onButtonClick = "[(_this # 0),""T2""] call itc_air_mfd_fnc_interact";
      };
      class RscSTLButton_1617: ITC_AIR_MfdButton
      {
        idc = -1;
        x = SCALE * 0.35;
        y = SCALE * 0.18;
        w = SCALE * 0.075;
        h = SCALE * 0.06;
        onButtonClick = "[(_this # 0),""T3""] call itc_air_mfd_fnc_interact";
      };
      class RscSTLButton_1618: ITC_AIR_MfdButton
      {
        idc = -1;
        x = SCALE * 0.4375;
        y = SCALE * 0.18;
        w = SCALE * 0.0625;
        h = SCALE * 0.06;
        onButtonClick = "[(_this # 0),""T4""] call itc_air_mfd_fnc_interact";
      };
      class RscSTLButton_1619: ITC_AIR_MfdButton
      {
        idc = -1;
        x = SCALE * 0.5125;
        y = SCALE * 0.18;
        w = SCALE * 0.0625;
        h = SCALE * 0.06;
        onButtonClick = "[(_this # 0),""T5""] call itc_air_mfd_fnc_interact";
      };
      class RscButton_1620: RscButton
      {
      	idc = 1620;
      	text = "-"; //--- ToDo: Localize;
      	x = SCALE * 0.1125;
      	y = SCALE * 0.1;
      	w = SCALE * 0.075;
      	h = SCALE * 0.08;
        onButtonClick = "[(_this # 0),""LADJDN""] call itc_air_mfd_fnc_interact";
        colorBackground[] = {0,0,0,1};
        colorActive[] = {0,0,0,1};
        colorBackgroundActive[] = {0,0,0,1};
        colorFocused[] = {0,0,0,1};
      };
      class RscButton_1621: RscButton_1620
      {
      	idc = 1621;
      	text = "+"; //--- ToDo: Localize;
      	x = SCALE * 0.1875;
      	y = SCALE * 0.1;
      	w = SCALE * 0.075;
      	h = SCALE * 0.08;
        onButtonClick = "[(_this # 0),""LADJUP""] call itc_air_mfd_fnc_interact";
      };
      class RscText_1000: RscText
      {
      	idc = 1000;
      	text = "ADJ"; //--- ToDo: Localize;
      	x = SCALE * 0.1625;
      	y = SCALE * 0.12;
      	w = SCALE * 0.05;
      	h = SCALE * 0.04;
      };
    };
};

class ITC_AIR_MFDSTLButtons {
    idd = 1501;
    movingEnable = 1;
    duration = 9999999;
    fadein = 0;
    fadeout = 0;
    controlsBackground[] = {
    };
    objects[] = { };
    onLoad = "[(_this select 0)] call itc_air_ufc_fnc_onLoadUI";
    controls[]=
    {
      UFCGroup,
      MFDButtons_L,
      MFDButtons_R
    };
    class MFDButtons_L : ITC_AIR_MFDSTLButtons_Base {
      idc = 1502;
      x = safezoneX - XGAP;
      y = safezoneY + safeZoneH - (SCALE * 1) + YGAP;
      onLoad = "(_this # 0) setVariable[""display"",""ITC_AIR_MFD_L""]";
    };
    class MFDButtons_R : MFDButtons_L {
      idc = 1503;
      x = safezoneX + safeZoneW - (SCALE * 0.75) + XGAP;
      y = safezoneY + safeZoneH - (SCALE * 1) + YGAP;
      onLoad = "(_this # 0) setVariable[""display"",""ITC_AIR_MFD_R""]";
    };
    /*
    class MFDButtons_L2 : MFDButtons_L {
      idc = 1504;
      x = safezoneX - XGAP + WIDTH;
      y = safezoneY + safeZoneH - (SCALE * 1) + YGAP;
      onLoad = "(_this # 0) setVariable[""display"",""ITC_AIR_MFD_L2""]";
    };
    class MFDButtons_R2 : MFDButtons_L {
      idc = 1505;
      x = safezoneX + safeZoneW - (SCALE * 0.75) + XGAP - WIDTH;
      y = safezoneY + safeZoneH - (SCALE * 1) + YGAP;
      onLoad = "(_this # 0) setVariable[""display"",""ITC_AIR_MFD_R2""]";
    };
    */
    class UFCGroup : ITC_AIR_UFC {};
};
