class cfgAmmo {
  class Bo_Mk82;
  class ITC_ammo_gbu38 : Bo_Mk82 {
      displayName = "GBU-38";
      ITC_firedEvent = "itc_air_jdam_fnc_fired";
      ITC_subMunition = "ITC_mk82_helper";
      indirectHitRange = 1;
      indirectHit = 100;
      seekers[] = {"gps"};
      ITC_noseFuze = "dsu33";
      ITC_tailFuze = "fmu139";
      ITC_guidanceOptions[] = {"jdam"};
      model = "\itc_air_wpn_jdam\stores\m_gbu38";
      proxyShape = "\itc_air_wpn_jdam\stores\m_gbu38";
  };
  class ITC_ammo_gbu32 : ITC_ammo_gbu38 {
    model = "\itc_air_wpn_jdam\stores\m_gbu32";
    proxyShape = "\itc_air_wpn_jdam\stores\m_gbu32";
    ITC_subMunition = "ITC_mk83_helper";
    explosionEffects = "HeavyBombExplosion";
  };
  class ITC_ammo_gbu31 : ITC_ammo_gbu38 {
    model = "\itc_air_wpn_jdam\stores\m_gbu31";
    proxyShape = "\itc_air_wpn_jdam\stores\m_gbu31";
    ITC_subMunition = "ITC_mk84_helper";
    explosionEffects = "HeavyBombExplosion";
  };
  class ITC_ammo_gbu54 : ITC_ammo_gbu38 {
      displayName = "GBU-54";
      seekers[] = {"gps","laser"};
      ITC_noseFuze = "";
      ITC_guidanceOptions[] = {"jdam","laser","autolaser"};
  };
  class ITC_ammo_gbu54_lcdb : ITC_ammo_gbu54 {
      displayName = "GBU-54 LCDB";
      seekers[] = {"gps","laser"};
      ITC_subMunition = "ITC_blu126_helper";
      model = "\itc_air_wpn_jdam\stores\m_gbu38v4";
      proxyShape = "\itc_air_wpn_jdam\stores\m_gbu38v4";
  }
  class ITC_ammo_gbu38v4b : ITC_ammo_gbu38 {
      ITC_subMunition = "ITC_blu126_helper";
      model = "\itc_air_wpn_jdam\stores\m_gbu38v4";
      proxyShape = "\itc_air_wpn_jdam\stores\m_gbu38v4";
  };
  class ITC_ammo_gbu38v3b : ITC_ammo_gbu38v4b {};
  class ITC_blu126_helper : Bo_Mk82 {
      timeToLive = 0;
      indirectHitRange = 4;
      indirectHit = 600;
      ace_frag_charge = 15000;
      ace_frag_force = 1;
  };
  class itc_mk83_helper : ITC_blu126_helper {
    hit = 9000;
    indirectHit = 1500;
    indirectHitRange = 30;
  };
  class itc_mk84_helper : ITC_blu126_helper {
    hit = 10000;
    indirectHit = 800;
    indirectHitRange = 60;
  };
};
