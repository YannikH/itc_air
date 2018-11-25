class cfgAmmo {
  class Bo_GBU12_LGB;
  class ITC_ammo_gbu12 : Bo_GBU12_LGB {
    ITC_firedEvent = "itc_air_paveway_fnc_fired";
    indirectHitRange = 4;
    indirectHit = 600;
    ace_frag_charge = 15000;
    dragCoef = 0.51;
    autoSeekTarget = 0;
    ITC_noseFuze = "";
    ITC_tailFuze = "pd";
    ITC_guidanceOptions[] = {"autolaser"};
    warheadName = "TandemHEAT";
  };
};
