class cfgMagazines {
  class PylonMissile_1Rnd_Mk82_F;
  class PylonRack_2Rnd_BombCluster_03_F;

  #define STRINGIFY(s) #s

  #define hardPointMagazine(HP,PARENT,NAME,WEAP,AMMO,COUNT,TOTALMASS,DRAG) \
    class HP##_##AMMO : PARENT { \
      ammo = STRINGIFY(AMMO); \
      displayName = COUNT NAME; \
      displayNameShort = NAME; \
      pylonWeapon = WEAP; \
      mass = TOTALMASS; \
      hardpoints[] = {STRINGIFY(HP)}; \
      dragCoef = DRAG; \
    };

  //SINGLE HP SMART
  #define hp_single_smart(NAME,WEAP,AMMO,WT) \
    hardPointMagazine(itc_hp_smart,PylonMissile_1Rnd_Mk82_F,NAME,WEAP,AMMO,1x,__EVAL(WT*1),0)

  //DUAL HP DUMB
  #define hp_double_smart(NAME,WEAP,AMMO,WT) \
    hardPointMagazine(itc_hp_bru55,PylonRack_2Rnd_BombCluster_03_F,NAME,WEAP,AMMO,2x,__EVAL(WT*2),0.6)


  #define hp_ser_der_smart(NAME,WEAP,AMMO,WT) \
    hp_single_smart(NAME,WEAP,AMMO,WT) \
    hp_double_smart(NAME,WEAP,AMMO,WT)

  hp_ser_der_smart("GBU-38v1","itc_weap_gbu38",ITC_ammo_gbu38,227)
  hp_ser_der_smart("GBU-32","itc_weap_gbu32",ITC_ammo_gbu32,500)
  hp_single_smart("GBU-31","itc_weap_gbu31",ITC_ammo_gbu31,1000)
  hp_ser_der_smart("GBU-38v4","itc_weap_gbu38v4",ITC_ammo_gbu38v3b,227)
  hp_ser_der_smart("GBU-54v1","itc_weap_gbu54",ITC_ammo_gbu54,227)
  hp_ser_der_smart("GBU-54v4","itc_weap_gbu54v4",ITC_ammo_gbu54_lcdb,227)
};
