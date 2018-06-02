class ITC_AIR_MFDButtons_Base : RscControlsGroup {
    idc = -1;
    x = safezoneX;
    y = safezoneY + safeZoneH - (SCALE * 1);
    w = SCALE * 0.75;
    h = SCALE * 1;
    class Controls {
        class RscButton_1600: ITC_AIR_MfdButton
        {
            idc = -1;
            x = 0;
            y = SCALE * 0.08;
            w = SCALE * 0.1125;
            h = SCALE * 0.06;
            onButtonClick = "[(_this # 0),""LADJUP""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1601: ITC_AIR_MfdButton
        {
            idc = -1;
            x = 0;
            y = SCALE * 0.14;
            w = SCALE * 0.1125;
            h = SCALE * 0.06;
            onButtonClick = "[(_this # 0),""LADJDN""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1602: ITC_AIR_MfdButton
        {
            idc = -1;
            x = 0;
            y = SCALE * 0.22;
            w = SCALE * 0.1;
            h = SCALE * 0.12;
            onButtonClick = "[(_this # 0),""L1""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1603: ITC_AIR_MfdButton
        {
            idc = -1;
            x = 0;
            y = SCALE * 0.34;
            w = SCALE * 0.1;
            h = SCALE * 0.1;
            onButtonClick = "[(_this # 0),""L2""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1604: ITC_AIR_MfdButton
        {
            idc = -1;
            x = 0;
            y = SCALE * 0.44;
            w = SCALE * 0.1;
            h = SCALE * 0.1;
            onButtonClick = "[(_this # 0),""L3""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1605: ITC_AIR_MfdButton
        {
            idc = -1;
            x = 0;
            y = SCALE * 0.54;
            w = SCALE * 0.1;
            h = SCALE * 0.1;
            onButtonClick = "[(_this # 0),""L4""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1606: ITC_AIR_MfdButton
        {
            idc = -1;
            x = 0;
            y = SCALE * 0.64;
            w = SCALE * 0.1;
            h = SCALE * 0.1;
            onButtonClick = "[(_this # 0),""L5""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1607: ITC_AIR_MfdButton
        {
            idc = -1;
            x = 0;
            y = SCALE * 0.76;
            w = SCALE * 0.1125;
            h = SCALE * 0.06;
            onButtonClick = "[(_this # 0),""LCONUP""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1608: ITC_AIR_MfdButton
        {
            idc = -1;
            x = 0;
            y = SCALE * 0.82;
            w = SCALE * 0.1125;
            h = SCALE * 0.06;
            onButtonClick = "[(_this # 0),""LCONDN""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1609: ITC_AIR_MfdButton
        {
            idc = -1;
            x = SCALE * 0.175;
            y = SCALE * 0.88;
            w = SCALE * 0.0875;
            h = SCALE * 0.12;
            onButtonClick = "[(_this # 0),""B1""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1610: ITC_AIR_MfdButton
        {
            idc = -1;
            x = SCALE * 0.2625;
            y = SCALE * 0.88;
            w = SCALE * 0.075;
            h = SCALE * 0.12;
            onButtonClick = "[(_this # 0),""B2""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1611: ITC_AIR_MfdButton
        {
            idc = -1;
            x = SCALE * 0.3375;
            y = SCALE * 0.88;
            w = SCALE * 0.0875;
            h = SCALE * 0.12;
            onButtonClick = "[(_this # 0),""B3""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1612: ITC_AIR_MfdButton
        {
            idc = -1;
            x = SCALE * 0.425;
            y = SCALE * 0.88;
            w = SCALE * 0.075;
            h = SCALE * 0.12;
            onButtonClick = "[(_this # 0),""B4""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1613: ITC_AIR_MfdButton
        {
            idc = -1;
            x = SCALE * 0.5;
            y = SCALE * 0.88;
            w = SCALE * 0.0875;
            h = SCALE * 0.12;
            onButtonClick = "[(_this # 0),""B5""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1614: ITC_AIR_MfdButton
        {
            idc = -1;
            x = SCALE * 0.5875;
            y = SCALE * 0.88;
            w = SCALE * 0.05;
            h = SCALE * 0.12;
            onButtonClick = "[(_this # 0),""BSYMDN""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1615: ITC_AIR_MfdButton
        {
            idc = -1;
            x = SCALE * 0.65;
            y = SCALE * 0.88;
            w = SCALE * 0.05;
            h = SCALE * 0.12;
            onButtonClick = "[(_this # 0),""BSYMUP""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1616: ITC_AIR_MfdButton
        {
            idc = -1;
            x = SCALE * 0.6375;
            y = SCALE * 0.82;
            w = SCALE * 0.1125;
            h = SCALE * 0.06;
            onButtonClick = "[(_this # 0),""RBRTDN""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1617: ITC_AIR_MfdButton
        {
            idc = -1;
            x = SCALE * 0.6375;
            y = SCALE * 0.76;
            w = SCALE * 0.1125;
            h = SCALE * 0.06;
            onButtonClick = "[(_this # 0),""RBRTUP""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1618: ITC_AIR_MfdButton
        {
            idc = -1;
            x = SCALE * 0.65;
            y = SCALE * 0.64;
            w = SCALE * 0.1;
            h = SCALE * 0.1;
            onButtonClick = "[(_this # 0),""R5""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1619: ITC_AIR_MfdButton
        {
            idc = -1;
            x = SCALE * 0.65;
            y = SCALE * 0.54;
            w = SCALE * 0.1;
            h = SCALE * 0.1;
            onButtonClick = "[(_this # 0),""R4""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1620: ITC_AIR_MfdButton
        {
            idc = -1;
            x = SCALE * 0.65;
            y = SCALE * 0.44;
            w = SCALE * 0.1;
            h = SCALE * 0.1;
            onButtonClick = "[(_this # 0),""R3""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1621: ITC_AIR_MfdButton
        {
            idc = -1;
            x = SCALE * 0.65;
            y = SCALE * 0.34;
            w = SCALE * 0.1;
            h = SCALE * 0.1;
            onButtonClick = "[(_this # 0),""R2""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1622: ITC_AIR_MfdButton
        {
            idc = -1;
            x = SCALE * 0.65;
            y = SCALE * 0.22;
            w = SCALE * 0.1;
            h = SCALE * 0.12;
            onButtonClick = "[(_this # 0),""R1""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1623: ITC_AIR_MfdButton
        {
            idc = -1;
            x = SCALE * 0.6375;
            y = SCALE * 0.14;
            w = SCALE * 0.1125;
            h = SCALE * 0.06;
            onButtonClick = "[(_this # 0),""RDSPDN""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1624: ITC_AIR_MfdButton
        {
            idc = -1;
            x = SCALE * 0.6375;
            y = SCALE * 0.08;
            w = SCALE * 0.1125;
            h = SCALE * 0.06;
            onButtonClick = "[(_this # 0),""RDSPUP""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1625: ITC_AIR_MfdButton
        {
            idc = -1;
            x = SCALE * 0.175;
            y = SCALE * 0.02;
            w = SCALE * 0.0875;
            h = SCALE * 0.12;
            onButtonClick = "[(_this # 0),""T1""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1626: ITC_AIR_MfdButton
        {
            idc = -1;
            x = SCALE * 0.2625;
            y = SCALE * 0.02;
            w = SCALE * 0.075;
            h = SCALE * 0.12;
            onButtonClick = "[(_this # 0),""T2""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1627: ITC_AIR_MfdButton
        {
            idc = -1;
            x = SCALE * 0.3375;
            y = SCALE * 0.02;
            w = SCALE * 0.0875;
            h = SCALE * 0.12;
            onButtonClick = "[(_this # 0),""T3""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1628: ITC_AIR_MfdButton
        {
            idc = -1;
            x = SCALE * 0.425;
            y = SCALE * 0.02;
            w = SCALE * 0.075;
            h = SCALE * 0.12;
            onButtonClick = "[(_this # 0),""T4""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1629: ITC_AIR_MfdButton
        {
            idc = -1;
            x = SCALE * 0.5;
            y = SCALE * 0.02;
            w = SCALE * 0.0875;
            h = SCALE * 0.12;
            onButtonClick = "[(_this # 0),""T5""] call itc_air_mfd_fnc_interact";
        };
        class RscButton_1630: ITC_AIR_MfdButton
        {
            idc = -1;
            x = SCALE * 0.0625;
            y = SCALE * 0.88;
            w = SCALE * 0.0875;
            h = SCALE * 0.12;
            onButtonClick = "[(_this # 0),""BSPIN""] call itc_air_mfd_fnc_interact";
        };
    };
};

class ITC_AIR_UFC : RscControlsGroup {
  idc = -1;
  x = 0;
  y = 0;
  w = 0.5;
  h = safezoneH;
  class Controls {
  class IGUIBack_2200: IGUIBack
  {
    idc = 2200;
    x = 0.355625 * safezoneW + safezoneX;
    y = 0.786 * safezoneH + safezoneY;
    w = 0.108281 * safezoneW;
    h = 0.143 * safezoneH;
  };
    class RscButton_1600: RscButton
    {
    	idc = 1600;
    	text = "1"; //--- ToDo: Localize;
    	x = 0.360781 * safezoneW + safezoneX;
    	y = 0.797 * safezoneH + safezoneY;
    	w = 0.020625 * safezoneW;
    	h = 0.033 * safezoneH;
    	colorBackground[] = {0.7,0.7,0.7,1};
    	colorActive[] = {0.7,0.7,0.7,1};
      onButtonClick = "[""1""] call itc_air_ufc_fnc_buttonPressed";
    };
    class RscButton_1601: RscButton
    {
    	idc = 1601;
    	text = "2"; //--- ToDo: Localize;
    	x = 0.386562 * safezoneW + safezoneX;
    	y = 0.797 * safezoneH + safezoneY;
    	w = 0.020625 * safezoneW;
    	h = 0.033 * safezoneH;
    	colorBackground[] = {0.7,0.7,0.7,1};
    	colorActive[] = {0.7,0.7,0.7,1};
      onButtonClick = "[""2""] call itc_air_ufc_fnc_buttonPressed";
    };
    class RscButton_1602: RscButton
    {
    	idc = 1602;
    	text = "3"; //--- ToDo: Localize;
    	x = 0.412344 * safezoneW + safezoneX;
    	y = 0.797 * safezoneH + safezoneY;
    	w = 0.020625 * safezoneW;
    	h = 0.033 * safezoneH;
    	colorBackground[] = {0.7,0.7,0.7,1};
    	colorActive[] = {0.7,0.7,0.7,1};
      onButtonClick = "[""3""] call itc_air_ufc_fnc_buttonPressed";
    };
    class RscButton_1603: RscButton
    {
    	idc = 1603;
    	text = "4"; //--- ToDo: Localize;
    	x = 0.360781 * safezoneW + safezoneX;
    	y = 0.841 * safezoneH + safezoneY;
    	w = 0.020625 * safezoneW;
    	h = 0.033 * safezoneH;
    	colorBackground[] = {0.7,0.7,0.7,1};
    	colorActive[] = {0.7,0.7,0.7,1};
      onButtonClick = "[""4""] call itc_air_ufc_fnc_buttonPressed";
    };
    class RscButton_1604: RscButton
    {
    	idc = 1604;
    	text = "5"; //--- ToDo: Localize;
    	x = 0.386562 * safezoneW + safezoneX;
    	y = 0.841 * safezoneH + safezoneY;
    	w = 0.020625 * safezoneW;
    	h = 0.033 * safezoneH;
    	colorBackground[] = {0.7,0.7,0.7,1};
    	colorActive[] = {0.7,0.7,0.7,1};
      onButtonClick = "[""5""] call itc_air_ufc_fnc_buttonPressed";
    };
    class RscButton_1605: RscButton
    {
    	idc = 1605;
    	text = "6"; //--- ToDo: Localize;
    	x = 0.412344 * safezoneW + safezoneX;
    	y = 0.841 * safezoneH + safezoneY;
    	w = 0.020625 * safezoneW;
    	h = 0.033 * safezoneH;
    	colorBackground[] = {0.7,0.7,0.7,1};
    	colorActive[] = {0.7,0.7,0.7,1};
      onButtonClick = "[""6""] call itc_air_ufc_fnc_buttonPressed";
    };
    class RscButton_1606: RscButton
    {
    	idc = 1606;
    	text = "7"; //--- ToDo: Localize;
    	x = 0.360781 * safezoneW + safezoneX;
    	y = 0.885 * safezoneH + safezoneY;
    	w = 0.020625 * safezoneW;
    	h = 0.033 * safezoneH;
    	colorBackground[] = {0.7,0.7,0.7,1};
    	colorActive[] = {0.7,0.7,0.7,1};
      onButtonClick = "[""7""] call itc_air_ufc_fnc_buttonPressed";
    };
    class RscButton_1607: RscButton
    {
    	idc = 1607;
    	text = "8"; //--- ToDo: Localize;
    	x = 0.386562 * safezoneW + safezoneX;
    	y = 0.885 * safezoneH + safezoneY;
    	w = 0.020625 * safezoneW;
    	h = 0.033 * safezoneH;
    	colorBackground[] = {0.7,0.7,0.7,1};
    	colorActive[] = {0.7,0.7,0.7,1};
      onButtonClick = "[""8""] call itc_air_ufc_fnc_buttonPressed";
    };
    class RscButton_1608: RscButton
    {
    	idc = 1608;
    	text = "9"; //--- ToDo: Localize;
    	x = 0.412344 * safezoneW + safezoneX;
    	y = 0.885 * safezoneH + safezoneY;
    	w = 0.020625 * safezoneW;
    	h = 0.033 * safezoneH;
    	colorBackground[] = {0.7,0.7,0.7,1};
    	colorActive[] = {0.7,0.7,0.7,1};
      onButtonClick = "[""9""] call itc_air_ufc_fnc_buttonPressed";
    };
    class RscButton_1609: RscButton
    {
    	idc = 1609;
    	text = "0"; //--- ToDo: Localize;
    	x = 0.438125 * safezoneW + safezoneX;
    	y = 0.841 * safezoneH + safezoneY;
    	w = 0.020625 * safezoneW;
    	h = 0.033 * safezoneH;
    	colorBackground[] = {0.7,0.7,0.7,1};
    	colorActive[] = {0.7,0.7,0.7,1};
      onButtonClick = "[""0""] call itc_air_ufc_fnc_buttonPressed";
    };
    class RscButton_1610: RscButton
    {
    	idc = 1610;
    	text = "CLR"; //--- ToDo: Localize;
    	x = 0.438125 * safezoneW + safezoneX;
    	y = 0.885 * safezoneH + safezoneY;
    	w = 0.020625 * safezoneW;
    	h = 0.033 * safezoneH;
    	colorBackground[] = {0.7,0.7,0.7,1};
    	colorActive[] = {0.7,0.7,0.7,1};
      onButtonClick = "[] call itc_air_ufc_fnc_clear";
    };
    class RscButton_1611: RscButton
    {
    	idc = 1611;
    	text = "ENT"; //--- ToDo: Localize;
    	x = 0.438125 * safezoneW + safezoneX;
    	y = 0.797 * safezoneH + safezoneY;
    	w = 0.020625 * safezoneW;
    	h = 0.033 * safezoneH;
    	colorBackground[] = {0.7,0.7,0.7,1};
    	colorActive[] = {0.7,0.7,0.7,1};
      onButtonClick = "[] call itc_air_ufc_fnc_enter";
    };
  };
};

class ITC_AIR_MFDButtons {
    idd = 1501;
    movingEnable = 1;
    duration = 9999999;
    fadein = 0;
    fadeout = 0;
    controlsBackground[] = {
    };
    objects[] = { };
    //onLoad = "[(_this select 0), ""ITC_AIR_MFD_L"",""MFD_L_INPUT"",19993,""MFD_L_FEED""] call itc_air_mfd_fnc_open";
    controls[]=
    {
        MFDButtons_L,
        MFDButtons_R,
        UFCGroup
    };
    class MFDButtons_L : ITC_AIR_MFDButtons_Base {
      idc = 1502;
      onLoad = "(_this # 0) setVariable[""display"",""ITC_AIR_MFD_L""]";
    };
    class MFDButtons_R : MFDButtons_L {
      idc = 1503;
      x = safezoneX + safeZoneW - (SCALE * 0.75);
      y = safezoneY + safeZoneH - (SCALE * 1);
      onLoad = "(_this # 0) setVariable[""display"",""ITC_AIR_MFD_R""]";
    };
    class UFCGroup : ITC_AIR_UFC {};
};
