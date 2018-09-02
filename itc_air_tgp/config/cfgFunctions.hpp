class cfgFunctions {
  class itc_air_tgp {
    class functions {
      class sysInit { //old tgp tgp_fnc_init still exists
        postInit = 1;
        file = "itc_air_tgp\functions\init.sqf";
      };
      class setup {
        file = "itc_air_tgp\functions\setup.sqf";
      };
      class keys {
        file = "itc_air_tgp\functions\keys.sqf";
      };
      class slew {
        file = "itc_air_tgp\functions\slew.sqf";
      };
      class perFrame {
        file = "itc_air_tgp\functions\perFrame.sqf";
      };
      class perSecond {
        file = "itc_air_tgp\functions\perSecond.sqf";
      };
    };
  };
};
