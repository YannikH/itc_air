class ITC_MFD_PAGE_MAVOFF : ITC_AIR_PAGE {
  idc = 10701;
  class Controls {
    class Rsc71Text_1000: ITC_AIR_MfdTextCenter
    {
    	idc = 711000;
    	text = "MAVERICK"; //--- ToDo: Localize;
      x = SCALE * 0.25;
      y = SCALE * 0.4;
      w = SCALE * 0.25;
      h = SCALE * 0.06;
      sizeEx = SCALE * 0.07;
    };
  };
};
