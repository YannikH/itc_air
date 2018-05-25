class Status : ITC_AIR_PAGE {
  idc = 10200;
  class Controls {
    class Rsc2Listbox_1500: ITC_AIR_ListBox
    {
        idc = 21500;
        x = SCALE * 0.2;
        y = SCALE * 0.24;
        w = SCALE * 0.35;
        h = SCALE * 0.4;
    };
    class Rsc2Picture_1200: RscPicture
    {
        idc = 21200;
        text = "itc_air_mfd\data\ui\UP.paa";
        x = SCALE *0.126;
        y = SCALE *0.26;
        w = SCALE *0.04;
        h = SCALE *0.04;
    };
    class Rsc2Picture_1201: RscPicture
    {
        idc = 21201;
        text = "itc_air_mfd\data\ui\DN.paa";
        x = SCALE *0.126;
        y = SCALE *0.36;
        w = SCALE *0.04;
        h = SCALE *0.04;
    };
  };
};
