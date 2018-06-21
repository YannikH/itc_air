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
  x = safeZoneX + (safeZoneW / 2) - (0.525 / 2);
  y = safeZoneY + safeZoneH - 0.55;
  w = 0.525;
  h = 0.7;
  class Controls {
    class RscUFCPicture_1200: RscPicture
    {
    	idc = 1200;
    	text = "itc_air_mfd\data\ui\ufc2.paa";
    	x = 0;
    	y = 0;
    	w = 0.525;
    	h = 0.7;
    };
    class RscUFCButtonNumPad: ITC_AIR_MfdButton
    {
    	idc = 1600;
    	text = "1"; //--- ToDo: Localize;
    	x = 0.1;
    	y = 0.12;
    	w = 0.05;
    	h = 0.08;
    	onButtonClick = "[""1""] call itc_air_ufc_fnc_buttonPressed";
    };
    class RscUFCButton_1601: RscUFCButtonNumPad
    {
    	idc = 1601;
    	text = "1"; //--- ToDo: Localize;
    	x = 0.1625;
    	y = 0.12;
    	w = 0.05;
    	h = 0.08;
    	onButtonClick = "[""2""] call itc_air_ufc_fnc_buttonPressed";
    };
    class RscUFCButton_1602: RscUFCButtonNumPad
    {
    	idc = 1602;
    	text = "1"; //--- ToDo: Localize;
    	x = 0.225;
    	y = 0.12;
    	w = 0.05;
    	h = 0.08;
    	onButtonClick = "[""3""] call itc_air_ufc_fnc_buttonPressed";
    };
    class RscUFCButton_1603: RscUFCButtonNumPad
    {
    	idc = 1603;
    	text = "1"; //--- ToDo: Localize;
    	x = 0.1;
    	y = 0.2;
    	w = 0.05;
    	h = 0.06;
    	onButtonClick = "[""4""] call itc_air_ufc_fnc_buttonPressed";
    };
    class RscUFCButton_1604: RscUFCButtonNumPad
    {
    	idc = 1604;
    	text = "1"; //--- ToDo: Localize;
    	x = 0.1625;
    	y = 0.2;
    	w = 0.05;
    	h = 0.06;
    	onButtonClick = "[""5""] call itc_air_ufc_fnc_buttonPressed";
    };
    class RscUFCButton_1605: RscUFCButtonNumPad
    {
    	idc = 1605;
    	text = "1"; //--- ToDo: Localize;
    	x = 0.225;
    	y = 0.2;
    	w = 0.05;
    	h = 0.06;
    	onButtonClick = "[""6""] call itc_air_ufc_fnc_buttonPressed";
    };
    class RscUFCButton_1606: RscUFCButtonNumPad
    {
    	idc = 1606;
    	text = "1"; //--- ToDo: Localize;
    	x = 0.1;
    	y = 0.26;
    	w = 0.05;
    	h = 0.08;
    	onButtonClick = "[""7""] call itc_air_ufc_fnc_buttonPressed";
    };
    class RscUFCButton_1607: RscUFCButtonNumPad
    {
    	idc = 1607;
    	text = "1"; //--- ToDo: Localize;
    	x = 0.1625;
    	y = 0.26;
    	w = 0.05;
    	h = 0.08;
    	onButtonClick = "[""8""] call itc_air_ufc_fnc_buttonPressed";
    };
    class RscUFCButton_1608: RscUFCButtonNumPad
    {
    	idc = 1608;
    	text = "1"; //--- ToDo: Localize;
    	x = 0.225;
    	y = 0.26;
    	w = 0.05;
    	h = 0.08;
    	onButtonClick = "[""9""] call itc_air_ufc_fnc_buttonPressed";
    };
    class RscUFCButton_1609: RscUFCButtonNumPad
    {
    	idc = 1609;
    	text = "1"; //--- ToDo: Localize;
    	x = 0.1;
    	y = 0.34;
    	w = 0.05;
    	h = 0.08;
    	onButtonClick = "[] call itc_air_ufc_fnc_clear";
    };
    class RscUFCButton_1610: RscUFCButtonNumPad
    {
    	idc = 1610;
    	text = "1"; //--- ToDo: Localize;
    	x = 0.1625;
    	y = 0.34;
    	w = 0.05;
    	h = 0.08;
    	onButtonClick = "[""0""] call itc_air_ufc_fnc_buttonPressed";
    };
    class RscUFCButton_1611: RscUFCButtonNumPad
    {
    	idc = 1611;
    	text = "1"; //--- ToDo: Localize;
    	x = 0.225;
    	y = 0.34;
    	w = 0.05;
    	h = 0.08;
    	onButtonClick = "[] call itc_air_ufc_fnc_enter";
    };
    class RscUFCText_1000: RscText
    {
    	idc = 1000;
    	text = ""; //--- ToDo: Localize;
    	x = 0.105;
    	y = 0.075;
    	w = 0.165;
    	h = 0.04;
    };
    class RscUFCText_1001: RscText
    {
    	idc = 1001;
    	text = ""; //--- ToDo: Localize;
    	x = 0.223;
    	y = 0.465;
    	w = 0.1875;
    	h = 0.04;
    };
    class RscUFCTextColumn: RscText
    {
      idc = 1114;
      text = "L1"; //--- ToDo: Localize;
      x = 0.2875;
      y = 0.02 + 0.06;
      w = 0.075;
      h = 0.08;
      colorBackground[] = {-1,-1,-1,-1};
      colorActive[] = {-1,-1,-1,-1};
      colorBackgroundActive[] = {-1,-1,-1,-1};
      colorFocused[] = {-1,-1,-1,-1};
      colorText[] = {0,1,0,1};
      sizeEx = 0.03;
      style = 2;
    };
    class RscUFCText_1615: RscUFCTextColumn
    {
      idc = 1115;
      text = "L2"; //--- ToDo: Localize;
      x = 0.2875;
      y = 0.02 + 0.138;
      w = 0.075;
      h = 0.08;
    };
    class RscUFCText_1616: RscUFCTextColumn
    {
      idc = 1116;
      text = "L3"; //--- ToDo: Localize;
      x = 0.2875;
      y = 0.02 + 0.2;
      w = 0.075;
      h = 0.08;
    };
    class RscUFCText_1617: RscUFCTextColumn
    {
      idc = 1117;
      text = "L4"; //--- ToDo: Localize;
      x = 0.2875;
      y = 0.02 + 0.279;
      w = 0.075;
      h = 0.06;
    };
    class RscUFCText_1618: RscUFCTextColumn
    {
      idc = 1118;
      text = "L5"; //--- ToDo: Localize;
      x = 0.2875;
      y = 0.02 + 0.339;
      w = 0.075;
      h = 0.08;
    };
    class RscUFCText_1619: RscUFCTextColumn
    {
      idc = 1123;
      text = "R1"; //--- ToDo: Localize;
      x = 0.3625;
      y = 0.02 + 0.06;
      w = 0.075;
      h = 0.08;
    };
    class RscUFCText_1620: RscUFCTextColumn
    {
      idc = 1119;
      text = "R2"; //--- ToDo: Localize;
      x = 0.3625;
      y = 0.02 + 0.138;
      w = 0.075;
      h = 0.08;
    };
    class RscUFCText_1621: RscUFCTextColumn
    {
      idc = 1120;
      text = "R3"; //--- ToDo: Localize;
      x = 0.3625;
      y = 0.02 + 0.2;
      w = 0.075;
      h = 0.08;
    };
    class RscUFCText_1622: RscUFCTextColumn
    {
      idc = 1121;
      text = "R4"; //--- ToDo: Localize;
      x = 0.3625;
      y = 0.02 + 0.279;
      w = 0.075;
      h = 0.06;
    };
    class RscUFCText_1623: RscUFCTextColumn
    {
      idc = 1122;
      text = "R5"; //--- ToDo: Localize;
      x = 0.3625;
      y = 0.02 + 0.339;
      w = 0.075;
      h = 0.08;
    };
    class RscUFCButtonColumn: RscButton
    {
    	idc = 1614;
    	text = "L1"; //--- ToDo: Localize;
    	x = 0.2875;
    	y = 0.06;
    	w = 0.075;
    	h = 0.08;
      colorBackground[] = {-1,-1,-1,-1};
      colorActive[] = {-1,-1,-1,-1};
      colorBackgroundActive[] = {-1,-1,-1,-1};
      colorFocused[] = {-1,-1,-1,-1};
      colorText[] = {0,1,0,1};
      sizeEx = 0.03;
    	onButtonClick = "[""FXD1""] call itc_air_ufc_fnc_sideButton";
    };
    class RscUFCButton_1615: RscUFCButtonColumn
    {
    	idc = 1615;
    	text = "L2"; //--- ToDo: Localize;
    	x = 0.2875;
    	y = 0.138;
    	w = 0.075;
    	h = 0.08;
    	onButtonClick = "[""0""] call itc_air_ufc_fnc_sideButton";
    };
    class RscUFCButton_1616: RscUFCButtonColumn
    {
    	idc = 1616;
    	text = "L3"; //--- ToDo: Localize;
    	x = 0.2875;
    	y = 0.2;
    	w = 0.075;
    	h = 0.08;
    	onButtonClick = "[""1""] call itc_air_ufc_fnc_sideButton";
    };
    class RscUFCButton_1617: RscUFCButtonColumn
    {
    	idc = 1617;
    	text = "L4"; //--- ToDo: Localize;
    	x = 0.2875;
    	y = 0.279;
    	w = 0.075;
    	h = 0.06;
    	onButtonClick = "[""2""] call itc_air_ufc_fnc_sideButton";
    };
    class RscUFCButton_1618: RscUFCButtonColumn
    {
    	idc = 1618;
    	text = "L5"; //--- ToDo: Localize;
    	x = 0.2875;
    	y = 0.339;
    	w = 0.075;
    	h = 0.08;
    	onButtonClick = "[""3""] call itc_air_ufc_fnc_sideButton";
    };
    class RscUFCButton_1619: RscUFCButtonColumn
    {
    	idc = 1623;
    	text = "R1"; //--- ToDo: Localize;
    	x = 0.3625;
    	y = 0.06;
    	w = 0.075;
    	h = 0.08;
    	onButtonClick = "[""FXD2""] call itc_air_ufc_fnc_sideButton";
    };
    class RscUFCButton_1620: RscUFCButtonColumn
    {
    	idc = 1619;
    	text = "R2"; //--- ToDo: Localize;
    	x = 0.3625;
    	y = 0.138;
    	w = 0.075;
    	h = 0.08;
    	onButtonClick = "[""4""] call itc_air_ufc_fnc_sideButton";
    };
    class RscUFCButton_1621: RscUFCButtonColumn
    {
    	idc = 1620;
    	text = "R3"; //--- ToDo: Localize;
    	x = 0.3625;
    	y = 0.2;
    	w = 0.075;
    	h = 0.08;
    	onButtonClick = "[""5""] call itc_air_ufc_fnc_sideButton";
    };
    class RscUFCButton_1622: RscUFCButtonColumn
    {
    	idc = 1621;
    	text = "R4"; //--- ToDo: Localize;
    	x = 0.3625;
    	y = 0.279;
    	w = 0.075;
    	h = 0.06;
    	onButtonClick = "[""6""] call itc_air_ufc_fnc_sideButton";
    };
    class RscUFCButton_1623: RscUFCButtonColumn
    {
    	idc = 1622;
    	text = "R5"; //--- ToDo: Localize;
    	x = 0.3625;
    	y = 0.339;
    	w = 0.075;
    	h = 0.08;
    	onButtonClick = "[""7""] call itc_air_ufc_fnc_sideButton";
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
    onLoad = "[(_this select 0)] call itc_air_ufc_fnc_onLoadUI";
    controls[]=
    {
      UFCGroup,
      MFDButtons_L,
      MFDButtons_R
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
