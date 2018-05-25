class DSMSStatus : ITC_AIR_PAGE {
    idc = 10100;

    class Controls {
      class pylonCount: ITC_AIR_MfdText
      {
          idc = 11000;
          text = ""; //--- ToDo: Localize;
          x = SCALE * 0.2625;
          y = SCALE * 0.28;
          w = SCALE * 0.025;
          h = SCALE * 0.04;
      };
      class Rsc1Text_1001: pylonCount
      {
          idc = 11001;
          text = ""; //--- ToDo: Localize;
          x = SCALE * 0.2625;
          y = SCALE * 0.38;
          w = SCALE * 0.025;
          h = SCALE * 0.04;
      };
      class Rsc1Text_1002: pylonCount
      {
          idc = 11002;
          text = ""; //--- ToDo: Localize;
          x = SCALE * 0.2625;
          y = SCALE * 0.478115;
          w = SCALE * 0.025;
          h = SCALE * 0.04;
      };
      class Rsc1Text_1003: pylonCount
      {
          idc = 11003;
          text = ""; //--- ToDo: Localize;
          x = SCALE * 0.2625;
          y = SCALE * 0.58;
          w = SCALE * 0.025;
          h = SCALE * 0.04;
      };
      class Rsc1Text_1004: pylonCount
      {
          idc = 11004;
          text = ""; //--- ToDo: Localize;
          x = SCALE * 0.2625;
          y = SCALE * 0.68;
          w = SCALE * 0.025;
          h = SCALE * 0.04;
      };
      class Rsc1Text_1005: pylonCount
      {
          idc = 11005;
          text = ""; //--- ToDo: Localize;
          x = SCALE * 0.4625;
          y = SCALE * 0.28;
          w = SCALE * 0.025;
          h = SCALE * 0.04;
      };
      class Rsc1Text_1006: pylonCount
      {
          idc = 11006;
          text = ""; //--- ToDo: Localize;
          x = SCALE * 0.4625;
          y = SCALE * 0.38;
          w = SCALE * 0.025;
          h = SCALE * 0.04;
      };
      class Rsc1Text_1007: pylonCount
      {
          idc = 11007;
          text = ""; //--- ToDo: Localize;
          x = SCALE * 0.4625;
          y = SCALE * 0.48;
          w = SCALE * 0.025;
          h = SCALE * 0.04;
      };
      class Rsc1Text_1008: pylonCount
      {
          idc = 11008;
          text = ""; //--- ToDo: Localize;
          x = SCALE * 0.4625;
          y = SCALE * 0.58;
          w = SCALE * 0.025;
          h = SCALE * 0.04;
      };
      class Rsc1Text_1009: pylonCount
      {
          idc = 11009;
          text = ""; //--- ToDo: Localize;
          x = SCALE * 0.4625;
          y = SCALE * 0.68;
          w = SCALE * 0.025;
          h = SCALE * 0.04;
      };
      class pylonContent: ITC_AIR_MfdText
      {
          idc = 11010;
          text = ""; //--- ToDo: Localize;
          x = SCALE * 0.1375;
          y = SCALE * 0.26;
          w = SCALE * 0.125;
          h = SCALE * 0.08;
          style= 16;
      };
      class Rsc1Text_1011: pylonContent
      {
          idc = 11011;
          text = ""; //--- ToDo: Localize;
          x = SCALE * 0.1375;
          y = SCALE * 0.36;
      };
      class Rsc1Text_1012: pylonContent
      {
          idc = 11012;
          text = ""; //--- ToDo: Localize;
          x = SCALE * 0.1375;
          y = SCALE * 0.46;
      };
      class Rsc1Text_1013: pylonContent
      {
          idc = 11013;
          text = ""; //--- ToDo: Localize;
          x = SCALE * 0.1375;
          y = SCALE * 0.56;
      };
      class Rsc1Text_1014: pylonContent
      {
          idc = 11014;
          text = ""; //--- ToDo: Localize;
          x = SCALE * 0.1375;
          y = SCALE * 0.66;
      };
      class Rsc1Text_1015: pylonContent
      {
          idc = 11019;
          text = ""; //--- ToDo: Localize;
          x = SCALE * 0.4875;
          y = SCALE * 0.66;
      };
      class Rsc1Text_1016: pylonContent
      {
          idc = 11018;
          text = ""; //--- ToDo: Localize;
          x = SCALE * 0.4875;
          y = SCALE * 0.56;
      };
      class Rsc1Text_1017: pylonContent
      {
          idc = 11017;
          text = ""; //--- ToDo: Localize;
          x = SCALE * 0.4875;
          y = SCALE * 0.46;
      };
      class Rsc1Text_1018: pylonContent
      {
          idc = 11016;
          text = ""; //--- ToDo: Localize;
          x = SCALE * 0.4875;
          y = SCALE * 0.36;
      };
      class Rsc1Text_1019: pylonContent
      {
          idc = 11015;
          text = ""; //--- ToDo: Localize;
          x = SCALE * 0.4875;
          y = SCALE * 0.26;
      };
      class Rsc1Text_1020: ITC_AIR_MfdText
      {
          idc = 11020;
          text = "CCIP"; //--- ToDo: Localize;
          x = SCALE * 0.3125;
          y = SCALE * 0.36;
          w = SCALE * 0.125;
          h = SCALE * 0.04;
          style = 2;
      };
      class Rsc1Text_1021: ITC_AIR_MfdText
      {
          idc = 11021;
          text = "Mk-82"; //--- ToDo: Localize;
          x = SCALE * 0.3125;
          y = SCALE * 0.4;
          w = SCALE * 0.125;
          h = SCALE * 0.06;
          sizeEx = SCALE * 0.05;
          style = 2;
      };
      class Rsc1Text_1022: ITC_AIR_MfdText
      {
          idc = 11022;
          text = "RIP SGL"; //--- ToDo: Localize;
          x = SCALE * 0.3125;
          y = SCALE * 0.48;
          w = SCALE * 0.125;
          h = SCALE * 0.04;
          style = 2;
      };
      class Rsc1Text_1023: ITC_AIR_MfdText
      {
          idc = 11023;
          text = "QTY 1"; //--- ToDo: Localize;
          x = SCALE * 0.3125;
          y = SCALE * 0.52;
          w = SCALE * 0.125;
          h = SCALE * 0.04;
          style = 2;
      };
      class Rsc1Text_1024: ITC_AIR_MfdText
      {
          idc = 11024;
          text = "75ft"; //--- ToDo: Localize;
          x = SCALE * 0.3125;
          y = SCALE * 0.56;
          w = SCALE * 0.125;
          h = SCALE * 0.04;
          style = 2;
      };
      class Rsc1Frame_1820: RscFrame
      {
          idc = 11820;
          x = SCALE * 0.3;
          y = SCALE * 0.46;
          w = SCALE * 0.15;
          h = SCALE * 0.005;
          colorText[] = MFDGRN;
      };

        class Rsc1Frame_1800: RscFrame
        {
            idc = 11800;
            x = SCALE * 0.1375;
            y = SCALE * 0.26;
            w = SCALE * 0.125;
            h = SCALE * 0.08;
            colorText[] = {0,1,0,1};
            colorBackground[] = {0,1,0,1};
            colorActive[] = {0,1,0,1};
        };
        class Rsc1Frame_1801: RscFrame
        {
            idc = 11801;
            x = SCALE * 0.1375;
            y = SCALE * 0.36;
            w = SCALE * 0.125;
            h = SCALE * 0.08;
            colorText[] = {0,1,0,1};
            colorBackground[] = {0,1,0,1};
            colorActive[] = {0,1,0,1};
        };
        class Rsc1Frame_1802: RscFrame
        {
            idc = 11802;
            x = SCALE * 0.1375;
            y = SCALE * 0.46;
            w = SCALE * 0.125;
            h = SCALE * 0.08;
            colorText[] = {0,1,0,1};
            colorBackground[] = {0,1,0,1};
            colorActive[] = {0,1,0,1};
        };
        class Rsc1Frame_1803: RscFrame
        {
            idc = 11803;
            x = SCALE * 0.1375;
            y = SCALE * 0.56;
            w = SCALE * 0.125;
            h = SCALE * 0.08;
            colorText[] = {0,1,0,1};
            colorBackground[] = {0,1,0,1};
            colorActive[] = {0,1,0,1};
        };
        class Rsc1Frame_1804: RscFrame
        {
            idc = 11804;
            x = SCALE * 0.1375;
            y = SCALE * 0.66;
            w = SCALE * 0.125;
            h = SCALE * 0.08;
            colorText[] = {0,1,0,1};
            colorBackground[] = {0,1,0,1};
            colorActive[] = {0,1,0,1};
        };
        class Rsc1Frame_1805: RscFrame
        {
            idc = 11805;
            x = SCALE * 0.4875;
            y = SCALE * 0.26;
            w = SCALE * 0.125;
            h = SCALE * 0.08;
            colorText[] = {0,1,0,1};
            colorBackground[] = {0,1,0,1};
            colorActive[] = {0,1,0,1};
        };
        class Rsc1Frame_1806: RscFrame
        {
            idc = 11806;
            x = SCALE * 0.4875;
            y = SCALE * 0.36;
            w = SCALE * 0.125;
            h = SCALE * 0.08;
            colorText[] = {0,1,0,1};
            colorBackground[] = {0,1,0,1};
            colorActive[] = {0,1,0,1};
        };
        class Rsc1Frame_1807: RscFrame
        {
            idc = 11807;
            x = SCALE * 0.4875;
            y = SCALE * 0.46;
            w = SCALE * 0.125;
            h = SCALE * 0.08;
            colorText[] = {0,1,0,1};
            colorBackground[] = {0,1,0,1};
            colorActive[] = {0,1,0,1};
        };
        class Rsc1Frame_1808: RscFrame
        {
            idc = 11808;
            x = SCALE * 0.4875;
            y = SCALE * 0.56;
            w = SCALE * 0.125;
            h = SCALE * 0.08;
            colorText[] = {0,1,0,1};
            colorBackground[] = {0,1,0,1};
            colorActive[] = {0,1,0,1};
        };
        class Rsc1Frame_1809: RscFrame
        {
            idc = 11809;
            x = SCALE * 0.4875;
            y = SCALE * 0.66;
            w = SCALE * 0.125;
            h = SCALE * 0.08;
            colorText[] = {0,1,0,1};
            colorBackground[] = {0,1,0,1};
            colorActive[] = {0,1,0,1};
        };
        class Rsc1Frame_1810: RscFrame
        {
            idc = 11810;
            x = SCALE * 0.2625;
            y = SCALE * 0.28;
            w = SCALE * 0.025;
            h = SCALE * 0.04;
            colorText[] = {0,1,0,1};
            colorBackground[] = {0,1,0,1};
            colorActive[] = {0,1,0,1};
        };
        class Rsc1Frame_1811: RscFrame
        {
            idc = 11811;
            x = SCALE * 0.4625;
            y = SCALE * 0.28;
            w = SCALE * 0.025;
            h = SCALE * 0.04;
            colorText[] = {0,1,0,1};
            colorBackground[] = {0,1,0,1};
            colorActive[] = {0,1,0,1};
        };
        class Rsc1Frame_1812: RscFrame
        {
            idc = 11812;
            x = SCALE * 0.2625;
            y = SCALE * 0.38;
            w = SCALE * 0.025;
            h = SCALE * 0.04;
            colorText[] = {0,1,0,1};
            colorBackground[] = {0,1,0,1};
            colorActive[] = {0,1,0,1};
        };
        class Rsc1Frame_1813: RscFrame
        {
            idc = 11813;
            x = SCALE * 0.2625;
            y = SCALE * 0.48;
            w = SCALE * 0.025;
            h = SCALE * 0.04;
            colorText[] = {0,1,0,1};
            colorBackground[] = {0,1,0,1};
            colorActive[] = {0,1,0,1};
        };
        class Rsc1Frame_1814: RscFrame
        {
            idc = 11814;
            x = SCALE * 0.2625;
            y = SCALE * 0.58;
            w = SCALE * 0.025;
            h = SCALE * 0.04;
            colorText[] = {0,1,0,1};
            colorBackground[] = {0,1,0,1};
            colorActive[] = {0,1,0,1};
        };
        class Rsc1Frame_1815: RscFrame
        {
            idc = 11815;
            x = SCALE * 0.2625;
            y = SCALE * 0.68;
            w = SCALE * 0.025;
            h = SCALE * 0.04;
            colorText[] = {0,1,0,1};
            colorBackground[] = {0,1,0,1};
            colorActive[] = {0,1,0,1};
        };
        class Rsc1Frame_1816: RscFrame
        {
            idc = 11816;
            x = SCALE * 0.4625;
            y = SCALE * 0.68;
            w = SCALE * 0.025;
            h = SCALE * 0.04;
            colorText[] = {0,1,0,1};
            colorBackground[] = {0,1,0,1};
            colorActive[] = {0,1,0,1};
        };
        class Rsc1Frame_1817: RscFrame
        {
            idc = 11817;
            x = SCALE * 0.4625;
            y = SCALE * 0.58;
            w = SCALE * 0.025;
            h = SCALE * 0.04;
            colorText[] = {0,1,0,1};
            colorBackground[] = {0,1,0,1};
            colorActive[] = {0,1,0,1};
        };
        class Rsc1Frame_1818: RscFrame
        {
            idc = 11818;
            x = SCALE * 0.4625;
            y = SCALE * 0.48;
            w = SCALE * 0.025;
            h = SCALE * 0.04;
            colorText[] = {0,1,0,1};
            colorBackground[] = {0,1,0,1};
            colorActive[] = {0,1,0,1};
        };
        class Rsc1Frame_1819: RscFrame
        {
            idc = 11819;
            x = SCALE * 0.4625;
            y = SCALE * 0.38;
            w = SCALE * 0.025;
            h = SCALE * 0.04;
            colorText[] = {0,1,0,1};
            colorBackground[] = {0,1,0,1};
            colorActive[] = {0,1,0,1};
        };
    };
};
