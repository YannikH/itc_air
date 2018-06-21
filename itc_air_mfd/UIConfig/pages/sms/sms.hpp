class ITC_MFD_PAGE_SMS : ITC_AIR_PAGE {
  idc = 10900;
  class Controls {
    class pylonContent: ITC_AIR_MfdText
    {
    	idc = 91000;
    	text = "AA SR1"; //--- ToDo: Localize;
    	x = SCALE * 0.275;
    	y = SCALE * 0.24;
    	w = SCALE * 0.075;
    	h = SCALE * 0.08;
      style = 16;
    };
    class Rsc9Text_1001: pylonContent
    {
    	idc = 91001;
    	text = "AA SR2"; //--- ToDo: Localize;
    	x = SCALE * 0.425;
    	y = SCALE * 0.24;
    	w = SCALE * 0.075;
    	h = SCALE * 0.08;
    };
    class Rsc9Text_1002: RscText
    {
    	idc = 91002;
    	text = "0"; //--- ToDo: Localize;
    	x = SCALE * 0.25;
    	y = SCALE * 0.24;
    	w = SCALE * 0.025;
    	h = SCALE * 0.04;
    };
    class Rsc9Text_1003: RscText
    {
    	idc = 91003;
    	text = "0"; //--- ToDo: Localize;
    	x = SCALE * 0.4;
    	y = SCALE * 0.24;
    	w = SCALE * 0.025;
    	h = SCALE * 0.04;
    };
    class Rsc9Frame_1801: RscFrame
    {
    	idc = 91801;
    	x = SCALE * 0.25;
    	y = SCALE * 0.24;
    	w = SCALE * 0.1;
    	h = SCALE * 0.08;
    };
    class Rsc9Text_1004: RscText
    {
    	idc = 91004;
    	text = "0"; //--- ToDo: Localize;
    	x = SCALE * 0.45;
    	y = SCALE * 0.32;
    	w = SCALE * 0.025;
    	h = SCALE * 0.04;
    };
    class Rsc9Text_1005: RscText
    {
    	idc = 91005;
    	text = "0"; //--- ToDo: Localize;
    	x = SCALE * 0.2;
    	y = SCALE * 0.32;
    	w = SCALE * 0.025;
    	h = SCALE * 0.04;
    };
    class Rsc9Text_1006: pylonContent
    {
    	idc = 91006;
    	text = "AA SR3"; //--- ToDo: Localize;
    	x = SCALE * 0.225;
    	y = SCALE * 0.32;
    	w = SCALE * 0.075;
    	h = SCALE * 0.08;
    };
    class Rsc9Text_1007: pylonContent
    {
    	idc = 91007;
    	text = "AA SR4"; //--- ToDo: Localize;
    	x = SCALE * 0.475;
    	y = SCALE * 0.32;
    	w = SCALE * 0.075;
    	h = SCALE * 0.08;
    };
    class Rsc9Text_1008: RscText
    {
    	idc = 91008;
    	text = "0"; //--- ToDo: Localize;
    	x = SCALE * 0.5;
    	y = SCALE * 0.4;
    	w = SCALE * 0.025;
    	h = SCALE * 0.04;
    };
    class Rsc9Text_1009: pylonContent
    {
    	idc = 91009;
    	text = "AA SR5"; //--- ToDo: Localize;
    	x = SCALE * 0.525;
    	y = SCALE * 0.4;
    	w = SCALE * 0.075;
    	h = SCALE * 0.08;
    };
    class Rsc9Text_1010: pylonContent
    {
    	idc = 91010;
    	text = "AA SR6"; //--- ToDo: Localize;
    	x = SCALE * 0.175;
    	y = SCALE * 0.4;
    	w = SCALE * 0.075;
    	h = SCALE * 0.08;
    };
    class Rsc9Text_1011: RscText
    {
    	idc = 91011;
    	text = "0"; //--- ToDo: Localize;
    	x = SCALE * 0.15;
    	y = SCALE * 0.4;
    	w = SCALE * 0.025;
    	h = SCALE * 0.04;
    };
    class Rsc9Text_1012: pylonContent
    {
    	idc = 91012;
    	text = "AA SR7"; //--- ToDo: Localize;
    	x = SCALE * 0.3;
    	y = SCALE * 0.42;
    	w = SCALE * 0.075;
    	h = SCALE * 0.08;
    };
    class Rsc9Text_1013: RscText
    {
    	idc = 91013;
    	text = "0"; //--- ToDo: Localize;
    	x = SCALE * 0.275;
    	y = SCALE * 0.42;
    	w = SCALE * 0.025;
    	h = SCALE * 0.04;
    };
    class Rsc9Text_1014: RscText
    {
    	idc = 91014;
    	text = "0"; //--- ToDo: Localize;
    	x = SCALE * 0.375;
    	y = SCALE * 0.42;
    	w = SCALE * 0.025;
    	h = SCALE * 0.04;
    };
    class Rsc9Text_1015: pylonContent
    {
    	idc = 91015;
    	text = "AA SR8"; //--- ToDo: Localize;
    	x = SCALE * 0.4;
    	y = SCALE * 0.42;
    	w = SCALE * 0.075;
    	h = SCALE * 0.08;
    };
    class Rsc9Text_1016: RscText
    {
    	idc = 91016;
    	text = "0"; //--- ToDo: Localize;
    	x = SCALE * 0.275;
    	y = SCALE * 0.5;
    	w = SCALE * 0.025;
    	h = SCALE * 0.04;
    };
    class Rsc9Text_1017: pylonContent
    {
    	idc = 91017;
    	text = "AA SR9"; //--- ToDo: Localize;
    	x = SCALE * 0.3;
    	y = SCALE * 0.5;
    	w = SCALE * 0.075;
    	h = SCALE * 0.08;
    };
    class Rsc9Text_1018: RscText
    {
    	idc = 91018;
    	text = "0"; //--- ToDo: Localize;
    	x = SCALE * 0.375;
    	y = SCALE * 0.5;
    	w = SCALE * 0.025;
    	h = SCALE * 0.04;
    };
    class Rsc9Text_1019: pylonContent
    {
    	idc = 91019;
    	text = "AA SR10"; //--- ToDo: Localize;
    	x = SCALE * 0.4;
    	y = SCALE * 0.5;
    	w = SCALE * 0.075;
    	h = SCALE * 0.08;
    };
    class Rsc9Frame_1800: RscFrame
    {
    	idc = 91800;
    	x = SCALE * 0.4;
    	y = SCALE * 0.24;
    	w = SCALE * 0.1;
    	h = SCALE * 0.08;
    };
    class Rsc9Frame_1802: RscFrame
    {
    	idc = 91802;
    	x = SCALE * 0.2;
    	y = SCALE * 0.32;
    	w = SCALE * 0.1;
    	h = SCALE * 0.08;
    };
    class Rsc9Frame_1803: RscFrame
    {
    	idc = 91803;
    	x = SCALE * 0.45;
    	y = SCALE * 0.32;
    	w = SCALE * 0.1;
    	h = SCALE * 0.08;
    };
    class Rsc9Frame_1804: RscFrame
    {
    	idc = 91804;
    	x = SCALE * 0.15;
    	y = SCALE * 0.4;
    	w = SCALE * 0.1;
    	h = SCALE * 0.08;
    };
    class Rsc9Frame_1805: RscFrame
    {
    	idc = 91805;
    	x = SCALE * 0.5;
    	y = SCALE * 0.4;
    	w = SCALE * 0.1;
    	h = SCALE * 0.08;
    };
    class Rsc9Frame_1806: RscFrame
    {
    	idc = 91806;
    	x = SCALE * 0.275;
    	y = SCALE * 0.42;
    	w = SCALE * 0.1;
    	h = SCALE * 0.08;
    };
    class Rsc9Frame_1807: RscFrame
    {
    	idc = 91807;
    	x = SCALE * 0.375;
    	y = SCALE * 0.42;
    	w = SCALE * 0.1;
    	h = SCALE * 0.08;
    };
    class Rsc9Frame_1808: RscFrame
    {
    	idc = 91808;
    	x = SCALE * 0.275;
    	y = SCALE * 0.5;
    	w = SCALE * 0.1;
    	h = SCALE * 0.08;
    };
    class Rsc9Frame_1809: RscFrame
    {
    	idc = 91809;
    	x = SCALE * 0.375;
    	y = SCALE * 0.5;
    	w = SCALE * 0.1;
    	h = SCALE * 0.08;
    };
    class Rsc9Text_1020: RscText
    {
    	idc = 91020;
    	text = "Mk-82"; //--- ToDo: Localize;
    	x = SCALE * 0.325;
    	y = SCALE * 0.6;
    	w = SCALE * 0.15;
    	h = SCALE * 0.04;
    	sizeEx = SCALE * 0.055;
    };
    class multiLineMFD: pylonContent
    {
    	idc = 91021;
    	text = "S G L"; //--- ToDo: Localize;
    	x = SCALE * 0.125;
    	y = SCALE * 0.24;
    	w = SCALE * 0.029;
    	h = SCALE * 0.14;
      style = 16;
    	sizeEx = SCALE * 0.037;
    };
    class Rsc9Text_1022: multiLineMFD
    {
    	idc = 91022;
    	text = "Q T Y"; //--- ToDo: Localize;
    	x = SCALE * 0.125;
    	y = SCALE * 0.34;
    };
    class Rsc9Text_1023: multiLineMFD
    {
    	idc = 91023;
    	text = "D S T"; //--- ToDo: Localize;
    	x = SCALE * 0.125;
    	y = SCALE * 0.44;
    };
    class Rsc9Text_1024: multiLineMFD
    {
    	idc = 91024;
    	text = "G U N"; //--- ToDo: Localize;
    	x = SCALE * 0.6;
    	y = SCALE * 0.24;
    };
    class Rsc9Text_1025: multiLineMFD
    {
    	idc = 91025;
    	text = "B A Y"; //--- ToDo: Localize;
    	x = SCALE * 0.125;
    	y = SCALE * 0.54;
    };
    class Rsc9Frame_1810: RscFrame
    {
    	idc = 91810;
    	x = SCALE * 0.2;
    	y = SCALE * 0.64;
    	w = SCALE * 0.35;
    	h = SCALE * 0.01;
    };
  };
};
