class cfgFunctions {
  class itc_air_fcs {
    class functions {
      class init {
        postInit = 1;
        file = "itc_air_sys_fcs\functions\init.sqf";
      };
      class setup {
        file = "itc_air_sys_fcs\functions\setup.sqf";
      };
      class perFrame {
        file = "itc_air_sys_fcs\functions\perFrame.sqf";
      };
      class perSecond {
        file = "itc_air_sys_fcs\functions\perSecond.sqf";
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
      class ccipPerFrame {
        file = "itc_air_sys_fcs\functions\ccip\ccipPerFrame.sqf";
      };
      class getImpactPos {
        file = "itc_air_sys_fcs\functions\ccip\getImpactPos.sqf";
      };
      class getImpactPosBomb {
        file = "itc_air_sys_fcs\functions\ccip\getImpactPosBomb.sqf";
      };
      class getImpactPosRocket {
        file = "itc_air_sys_fcs\functions\ccip\getImpactPosRocket.sqf";
      };
      class getDrawPos {
        file = "itc_air_sys_fcs\functions\ccip\getDrawPos.sqf";
      };
      class ccrpFired {
        file = "itc_air_sys_fcs\functions\ccrp\fired.sqf";
      };
    };
  };
};
