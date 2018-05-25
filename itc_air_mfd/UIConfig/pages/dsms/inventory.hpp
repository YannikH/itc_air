class DMSInventory : ITC_AIR_PAGE {
  idc = 10103;
  class Controls {
    class Rsc11Picture_1201: RscPicture
    {
      idc = 131201;
      text = "itc_air_mfd\data\ui\UP.paa";
      x = SCALE * 0.1875;
      y = SCALE * 0.18;
      w = SCALE * 0.04;
      h = SCALE * 0.04;
    };
    class Rsc11Picture_1202: RscPicture
    {
      idc = 131202;
      text = "itc_air_mfd\data\ui\DN.paa";
      x = SCALE * 0.5125;
      y = SCALE * 0.18;
      w = SCALE * 0.04;
      h = SCALE * 0.04;
    };
    class T22: ITC_AIR_MfdTextCenter
    {
        idc = 131024;
        text = ""; //--- ToDo: Localize;
        x = SCALE *0.275;
        y = SCALE *0.24;
        w = SCALE *0.0625;
        h = SCALE *0.04;
        style = 2;
    };
    class Rsc13Text_1025: T22
    {
        idc = 131025;
        text = "GAU-8"; //--- ToDo: Localize;
        x = SCALE *0.24;
        y = SCALE *0.23;
        w = SCALE *0.27;
    };
    class Rsc13Text_1026: T22
    {
        idc = 131026;
        text = ""; //--- ToDo: Localize;
        x = SCALE *0.425;
        y = SCALE *0.24;
    };
    class Rsc13Listbox_1500: ITC_AIR_ListBox
    {
        idc = 131500;
        x = SCALE * 0.25;
        y = SCALE * 0.29;
        w = SCALE * 0.25;
        h = SCALE * 0.4;
    };
  };
};
