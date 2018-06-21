class ITC_AIR_MFD_STL_L1 : ITC_AIR_MFD_L {
    idd = 19991;
  onLoad = "[(_this select 0), ""ITC_AIR_MFD_L""] call itc_air_mfd_fnc_open";
    class MFD_MAP : RscMapControl
    {
      idc = 61500;
      x = safezoneX + (SCALE * 0.1125) - XGAP;
      y = safezoneY + safeZoneH - (SCALE * 1) + (SCALE * 0.16) + YGAP;
      w = SCALE * 0.525;
      h = SCALE * 0.7;
    };
    class MFD : MFD {
      x = safezoneX - XGAP;
      y = safezoneY + safeZoneH - (SCALE * 1) + YGAP;
    };
};
class ITC_AIR_MFD_STL_L2 : ITC_AIR_MFD_STL_L1 {
    idd = 19993;
  onLoad = "[(_this select 0), ""ITC_AIR_MFD_L2""] call itc_air_mfd_fnc_open";
    class MFD_MAP : RscMapControl
    {
      idc = 61500;
      x = safezoneX + (SCALE * 0.1125) - XGAP + WIDTH;
      y = safezoneY + safeZoneH - (SCALE * 1) + (SCALE * 0.16) + YGAP;
      w = SCALE * 0.525;
      h = SCALE * 0.7;
    };
    class MFD : MFD {
      x = safezoneX - XGAP + WIDTH;
      y = safezoneY + safeZoneH - (SCALE * 1) + YGAP;
    };
};
class ITC_AIR_MFD_STL_R1 : ITC_AIR_MFD_L {
  idd = 19992;
  onLoad = "[(_this select 0), ""ITC_AIR_MFD_R""] call itc_air_mfd_fnc_open";
    class MFD_MAP : RscMapControl
    {
      idc = 61500;
      x = safezoneX + safeZoneW - (SCALE * 0.75) + (SCALE * 0.1125) + XGAP;
      y = safezoneY + safeZoneH - (SCALE * 1) + (SCALE * 0.16) + YGAP;
      w = SCALE * 0.525;
      h = SCALE * 0.7;
    };
    class MFD : MFD_R {
      x = safezoneX + safeZoneW - (SCALE * 0.75) + XGAP;
      y = safezoneY + safeZoneH - (SCALE * 1) + YGAP;
    };
};
class ITC_AIR_MFD_STL_R2 : ITC_AIR_MFD_L {
  idd = 19994;
  onLoad = "[(_this select 0), ""ITC_AIR_MFD_R2""] call itc_air_mfd_fnc_open";
    class MFD_MAP : RscMapControl
    {
      idc = 61500;
      x = safezoneX + safeZoneW - (SCALE * 0.75) + (SCALE * 0.1125) - XGAP;
      y = safezoneY + safeZoneH - (SCALE * 1) + (SCALE * 0.16) + YGAP;
      w = SCALE * 0.525;
      h = SCALE * 0.7;
    };
    class MFD : MFD_R {
      x = safezoneX + safeZoneW - (SCALE * 0.75) + XGAP - WIDTH;
      y = safezoneY + safeZoneH - (SCALE * 1) + YGAP;
    };
};
