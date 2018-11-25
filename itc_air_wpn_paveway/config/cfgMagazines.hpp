class cfgMagazines {
  class PylonMissile_1Rnd_Mk82_F;
  class PylonRack_2Rnd_BombCluster_03_F;
  class PylonRack_3Rnd_LG_scalpel;



  #define STRINGIFY(s) #s

  #define hardPointMagazine(HP,PARENT,NAME,WEAP,AMMO,COUNT,TOTALMASS,DRAG,NUM) \
    class HP##_##AMMO##_##NUM : PARENT { \
      ammo = STRINGIFY(AMMO); \
      displayName = COUNT NAME (itc); \
      displayNameShort = NAME; \
      pylonWeapon = WEAP; \
      mass = TOTALMASS; \
      hardpoints[] = {STRINGIFY(HP)}; \
      dragCoef = DRAG; \
    };

  //SINGLE HP DUMB
  #define hp_single(NAME,WEAP,AMMO,WT,NUM) \
    hardPointMagazine(itc_hp_hidden,PylonMissile_1Rnd_Mk82_F,NAME,WEAP,AMMO,1x,__EVAL(WT*1),0,NUM)

  //DUAL HP DUMB
  #define hp_double(NAME,WEAP,AMMO,WT,NUM) \
    hardPointMagazine(itc_hp_hidden_bru33,PylonRack_2Rnd_BombCluster_03_F,NAME,WEAP,AMMO,2x,__EVAL(WT*2),0.6,NUM)

  //TRIPLE HP DUMB
  #define hp_triple(NAME,WEAP,AMMO,WT,NUM) \
    hardPointMagazine(itc_hp_hidden_bru42,PylonRack_3Rnd_LG_scalpel,NAME,WEAP,AMMO,3x,__EVAL(WT*3),0.74,NUM)

  #define hp_ser_der_ter(NAME,WEAP,AMMO,WT,NUM) \
    hp_single(NAME,WEAP,AMMO,WT,NUM) \
    hp_double(NAME,WEAP,AMMO,WT,NUM) \
    hp_triple(NAME,WEAP,AMMO,WT,NUM)

  #define hardPointMagazineOriginal(HP,PARENT,NAME,WEAP,AMMO,COUNT,TOTALMASS,DRAG) \
    class HP##_##AMMO : PARENT { \
      ammo = STRINGIFY(AMMO); \
      displayName = COUNT NAME (itc); \
      displayNameShort = NAME; \
      pylonWeapon = WEAP; \
      mass = TOTALMASS; \
      hardpoints[] = {STRINGIFY(HP)}; \
      dragCoef = DRAG; \
    };

  hardPointMagazineOriginal(itc_hp_dumb,PylonMissile_1Rnd_Mk82_F,"GBU-12","itc_weap_gbu12",itc_ammo_gbu12,1x,__EVAL(227*1),0)
  hardPointMagazineOriginal(itc_hp_bru33,PylonRack_2Rnd_BombCluster_03_F,"GBU-12","itc_weap_gbu12",itc_ammo_gbu12,2x,__EVAL(227*2),0.6)
  hardPointMagazineOriginal(itc_hp_bru42,PylonRack_3Rnd_LG_scalpel,"GBU-12","itc_weap_gbu12",itc_ammo_gbu12,3x,__EVAL(227*3),0.74)

  hp_ser_der_ter("GBU-12","ITC_weap_gbu12_1",ITC_ammo_gbu12,227,1)
  hp_ser_der_ter("GBU-12","ITC_weap_gbu12_2",ITC_ammo_gbu12,227,2)
  hp_ser_der_ter("GBU-12","ITC_weap_gbu12_3",ITC_ammo_gbu12,227,3)
  hp_ser_der_ter("GBU-12","ITC_weap_gbu12_4",ITC_ammo_gbu12,227,4)
  hp_ser_der_ter("GBU-12","ITC_weap_gbu12_5",ITC_ammo_gbu12,227,5)
  hp_ser_der_ter("GBU-12","ITC_weap_gbu12_6",ITC_ammo_gbu12,227,6)
  hp_ser_der_ter("GBU-12","ITC_weap_gbu12_7",ITC_ammo_gbu12,227,7)
  hp_ser_der_ter("GBU-12","ITC_weap_gbu12_8",ITC_ammo_gbu12,227,8)
  hp_ser_der_ter("GBU-12","ITC_weap_gbu12_9",ITC_ammo_gbu12,227,9)
};
