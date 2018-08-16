class cfgFunctions {
  class itc_air_fcs {
    class functions {
      class init {
        postInit = 1;
        file = "itc_air_sys_fcs\functions\init.sqf";
      };
      class perFrame {
        file = "itc_air_sys_fcs\functions\perFrame.sqf";
      };
      class ccrpPerFrame {
        file = "itc_air_sys_fcs\functions\ccrp\ccrpPerFrame.sqf";
      };
      class releaseDown {
        file = "itc_air_sys_fcs\functions\ccrp\releaseDown.sqf";
      };
      class releaseUp {
        file = "itc_air_sys_fcs\functions\ccrp\releaseUp.sqf";
      };
      class calculateImpact {
        file = "itc_air_sys_fcs\functions\calculateImpact.sqf";
      };
    };
  };
};
