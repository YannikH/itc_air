class cfgMagazines {
    class CA_Magazine;
    class VehicleMagazine : CA_Magazine {
      dragCoef = 0;
    };

    class PylonMissile_1Rnd_Mk82_F;
    class PylonRack_2Rnd_BombCluster_03_F;
    class PylonRack_Missile_AGM_02_x2;
    class PylonRack_1Rnd_Missile_AGM_02_F;
    class PylonRack_7Rnd_Rocket_04_HE_F;
    class PylonRack_3Rnd_LG_scalpel;
    class PylonRack_Bomb_SDB_x4;
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

    //SINGLE HP DUMB
    #define hp_single(NAME,WEAP,AMMO,WT) \
        hardPointMagazine(itc_hp_dumb,PylonMissile_1Rnd_Mk82_F,NAME,WEAP,AMMO,1x,__EVAL(WT*1),0)

    #define hp_rocket(NAME,WEAP,AMMO,WT) \
        hardPointMagazine(itc_hp_dumb_rocket,PylonRack_7Rnd_Rocket_04_HE_F,NAME,WEAP,AMMO,7x,__EVAL(WT*7),0.79)

    //SINGLE HP SMART
    #define hp_single_smart(NAME,WEAP,AMMO,WT) \
        hardPointMagazine(itc_hp_smart,PylonMissile_1Rnd_Mk82_F,NAME,WEAP,AMMO,1x,__EVAL(WT*1),0)

    //SINGLE HP LAU117
    #define hp_single_lau117(NAME,WEAP,AMMO,WT) \
        hardPointMagazine(itc_hp_lau117,PylonRack_1Rnd_Missile_AGM_02_F,NAME,WEAP,AMMO,1x,__EVAL(WT*1),0.2)

    //DUAL HP DUMB
    #define hp_double(NAME,WEAP,AMMO,WT) \
        hardPointMagazine(itc_hp_bru33,PylonRack_2Rnd_BombCluster_03_F,NAME,WEAP,AMMO,2x,__EVAL(WT*2),0.6)

    //DUAL HP DUMB
    #define hp_double_smart(NAME,WEAP,AMMO,WT) \
        hardPointMagazine(itc_hp_bru55,PylonRack_2Rnd_BombCluster_03_F,NAME,WEAP,AMMO,2x,__EVAL(WT*2),0.6)

    //DUAL HP LAU117
    #define hp_double_lau117(NAME,WEAP,AMMO,WT) \
        hardPointMagazine(itc_hp_bru55_lau117,PylonRack_Missile_AGM_02_x2,NAME,WEAP,AMMO,2x,__EVAL(WT*2),0.8)

    //TRIPLE HP DUMB
    #define hp_triple(NAME,WEAP,AMMO,WT) \
        hardPointMagazine(itc_hp_bru42,PylonRack_3Rnd_LG_scalpel,NAME,WEAP,AMMO,3x,__EVAL(WT*3),0.74)

    //TRIPLE HP HELLFIRE
    #define hp_triple_hellfire(NAME,WEAP,AMMO,WT) \
        hardPointMagazine(itc_hp_lau88_hellfire,PylonRack_3Rnd_LG_scalpel,NAME,WEAP,AMMO,3x,__EVAL(WT*3),0.5)

    //DUAL HP DUMB
    #define hp_quad_sdb(NAME,WEAP,AMMO,WT) \
        hardPointMagazine(itc_hp_bru61,PylonRack_Bomb_SDB_x4,NAME,WEAP,AMMO,4x,__EVAL(WT*4),0.6)

    #define hp_ser_der_ter(NAME,WEAP,AMMO,WT) \
        hp_single(NAME,WEAP,AMMO,WT) \
        hp_double(NAME,WEAP,AMMO,WT) \
        hp_triple(NAME,WEAP,AMMO,WT)

    #define hp_ser_der_lau117(NAME,WEAP,AMMO,WT) \
        hp_single_lau117(NAME,WEAP,AMMO,WT) \
        hp_double_lau117(NAME,WEAP,AMMO,WT)

    #define hp_ser_der_smart(NAME,WEAP,AMMO,WT) \
        hp_single_smart(NAME,WEAP,AMMO,WT) \
        hp_double_smart(NAME,WEAP,AMMO,WT)

    hp_rocket("M-151","Rocket_04_HE_Plane_CAS_01_F",Rocket_04_HE_F,6)
    hp_rocket("M-156","Rocket_04_HE_Plane_CAS_01_F",itc_ammo_Hydra_M156,6)
    hp_rocket("APKWS","ITC_weap_apkws",ITC_ammo_apkws_m151,6)

    hp_ser_der_ter("Mk-82","Mk82BombLauncher",Bo_Mk82,227)
    hp_ser_der_ter("GBU-12","ITC_weap_gbu12",ITC_ammo_gbu12,227)
    hp_ser_der_ter("BL-778","BombCluster_03_F",BombCluster_03_Ammo_F,227)
    hp_ser_der_ter("CBU-100","BombCluster_01_F",BombCluster_01_Ammo_F,227)

    hp_ser_der_lau117("AGM-65G(vanilla)","Missile_AGM_02_Plane_CAS_01_F",Missile_AGM_02_F,50)
    hp_ser_der_lau117("AGM-65G","itc_air_weapon_maverick_g",itc_ammo_agm65g,50)
    hp_ser_der_lau117("AGM-65E","itc_air_weapon_maverick_e",itc_ammo_agm65e,50)
    hp_ser_der_lau117("AGM-65K","itc_air_weapon_maverick_h",itc_ammo_agm65h,50)

    class 6Rnd_ACE_Hellfire_AGM114K;
    class PylonRack_3Rnd_ACE_Hellfire_AGM114K : 6Rnd_ACE_Hellfire_AGM114K {
        hardpoints[] += {"itc_hp_lau88_hellfire"};
    };
    class PylonRack_3Rnd_ACE_Hellfire_AGM114N : PylonRack_3Rnd_ACE_Hellfire_AGM114K {
        hardpoints[] += {"itc_hp_lau88_hellfire"};
    };

    class magazine_Fighter04_Gun20mm_AA_x250;
    class itc_120rnd_27mm_he : magazine_Fighter04_Gun20mm_AA_x250 {
        ammo = "B_25mm";
        initSpeed = 1100;
    };

    class 1000Rnd_Gatling_30mm_Plane_CAS_01_F;
    class itc_1000rnd_30mm_ap : 1000Rnd_Gatling_30mm_Plane_CAS_01_F {
      ammo = "itc_30mm_ap";
      displayName = "30mm API";
      displayNameShort = "30mm API";
  		//muzzleImpulseFactor[] = {-0.8,1.2};
    };
    class itc_1000rnd_30mm_mix : 1000Rnd_Gatling_30mm_Plane_CAS_01_F {
      ammo = "itc_30mm_mix";
      displayName = "30mm 4:1 Mix";
      displayNameShort = "30mm  4:1 Mix";
  		//muzzleImpulseFactor[] = {-0.8,1.2};
    };
};
