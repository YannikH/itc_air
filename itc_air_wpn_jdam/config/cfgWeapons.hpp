class cfgWeapons {
  class Mk82BombLauncher;
  class itc_weap_gbu38 : Mk82BombLauncher {
    displayName = "GBU-38";
    magazines[] = {
      "itc_hp_smart_ITC_ammo_gbu38",
      "itc_hp_bru55_ITC_ammo_gbu38"
    };
    reloadTime = 0.01; \
    magazineReloadTime = 0.01; \
    autoFire=false;
  };
  class itc_weap_gbu38v4 : itc_weap_gbu38 {
    displayName = "GBU-38v4";
    magazines[] = {
      "itc_hp_smart_ITC_ammo_gbu38v4",
      "itc_hp_bru55_ITC_ammo_gbu38v4",
      "itc_hp_smart_ITC_ammo_gbu38v3b",
      "itc_hp_bru55_ITC_ammo_gbu38v3b"
    };
  };
  class itc_weap_gbu32 : itc_weap_gbu38 {
    displayName = "GBU-32";
    magazines[] = {"itc_hp_smart_ITC_ammo_gbu32","itc_hp_bru55_ITC_ammo_gbu32"};
  };
  class itc_weap_gbu31 : itc_weap_gbu38 {
    displayName = "GBU-31";
    magazines[] = {"itc_hp_smart_ITC_ammo_gbu31"};
  };
  class itc_weap_gbu54 : itc_weap_gbu38 {
    displayName = "GBU-54";
    magazines[] = {
      "itc_hp_smart_ITC_ammo_gbu54",
      "itc_hp_bru55_ITC_ammo_gbu54",
    };
    reloadTime = 0.0;
    autoFire=false;
  };
  class itc_weap_gbu54v4 : itc_weap_gbu54 {
    displayName = "GBU-54v4";
    magazines[] = {
      "itc_hp_smart_ITC_ammo_gbu54_lcdb",
      "itc_hp_bru55_ITC_ammo_gbu54_lcdb"
    };
  };
};
