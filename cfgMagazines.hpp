class cfgMagazines {
    class PylonMissile_1Rnd_Mk82_F;
    class PylonRack_2Rnd_BombCluster_03_F;
    class PylonRack_Missile_AGM_02_x2;
    class PylonRack_1Rnd_Missile_AGM_02_F;
    class PylonRack_7Rnd_Rocket_04_HE_F;
    class PylonRack_3Rnd_LG_scalpel;
    #define hardPointMagazine(HP,PARENT,NAME,WEAP,AMMO,COUNT) \
        class HP##_##AMMO : PARENT { \
            ammo = STRINGIFY(AMMO); \
            displayName = COUNT NAME; \
            displayNameShort = NAME; \
            pylonWeapon = WEAP; \
            hardpoints[] = {STRINGIFY(HP)}; \
        };

    //SINGLE HP DUMB
    #define hp_single(NAME,WEAP,AMMO) \
        hardPointMagazine(itc_hp_dumb,PylonMissile_1Rnd_Mk82_F,NAME,WEAP,AMMO,1x)

    #define hp_rocket(NAME,WEAP,AMMO) \
        hardPointMagazine(itc_hp_dumb_rocket,PylonRack_7Rnd_Rocket_04_HE_F,NAME,WEAP,AMMO,7x)

    //SINGLE HP SMART
    #define hp_single_smart(NAME,WEAP,AMMO) \
        hardPointMagazine(itc_hp_smart,PylonMissile_1Rnd_Mk82_F,NAME,WEAP,AMMO,1x)

    //SINGLE HP LAU117
    #define hp_single_lau117(NAME,WEAP,AMMO) \
        hardPointMagazine(itc_hp_lau117,PylonRack_1Rnd_Missile_AGM_02_F,NAME,WEAP,AMMO,1x)

    //DUAL HP DUMB
    #define hp_double(NAME,WEAP,AMMO) \
        hardPointMagazine(itc_hp_bru33,PylonRack_2Rnd_BombCluster_03_F,NAME,WEAP,AMMO,2x)

    //DUAL HP DUMB
    #define hp_double_smart(NAME,WEAP,AMMO) \
        hardPointMagazine(itc_hp_bru55,PylonRack_2Rnd_BombCluster_03_F,NAME,WEAP,AMMO,2x)

    //DUAL HP LAU117
    #define hp_double_lau117(NAME,WEAP,AMMO) \
        hardPointMagazine(itc_hp_bru55_lau117,PylonRack_Missile_AGM_02_x2,NAME,WEAP,AMMO,2x)

    //TRIPLE HP DUMB
    #define hp_triple(NAME,WEAP,AMMO) \
        hardPointMagazine(itc_hp_bru42,PylonRack_3Rnd_LG_scalpel,NAME,WEAP,AMMO,3x)

    //TRIPLE HP HELLFIRE
    #define hp_triple_hellfire(NAME,WEAP,AMMO) \
        hardPointMagazine(itc_hp_lau88_hellfire,PylonRack_3Rnd_LG_scalpel,NAME,WEAP,AMMO,3x)

    #define hp_ser_der_ter(NAME,WEAP,AMMO) \
        hp_single(NAME,WEAP,AMMO) \
        hp_double(NAME,WEAP,AMMO) \
        hp_triple(NAME,WEAP,AMMO)

    #define hp_ser_der_lau117(NAME,WEAP,AMMO) \
        hp_single_lau117(NAME,WEAP,AMMO) \
        hp_double_lau117(NAME,WEAP,AMMO)

    #define hp_ser_der_smart(NAME,WEAP,AMMO) \
        hp_single_smart(NAME,WEAP,AMMO) \
        hp_double_smart(NAME,WEAP,AMMO)

    hp_rocket("M151 Hydra HE","Rocket_04_HE_Plane_CAS_01_F",Rocket_04_HE_F)
    hp_rocket("M156 Hydra WP","Rocket_04_HE_Plane_CAS_01_F",itc_ammo_Hydra_M156)

    hp_ser_der_ter("Mk-82","Mk82BombLauncher",Bo_Mk82)
    hp_ser_der_ter("GBU-12","Bomb_04_Plane_CAS_01_F",Bo_GBU12_LGB)
    hp_ser_der_ter("BL-778","BombCluster_03_F",BombCluster_03_Ammo_F)
    hp_ser_der_ter("CBU-100","BombCluster_01_F",BombCluster_01_Ammo_F)

    hp_ser_der_smart("GBU-38(v)1/B","itc_weap_gbu38",ITC_ammo_gbu38)
    hp_ser_der_smart("GBU-38(v)4/B","itc_weap_gbu38",ITC_ammo_gbu38v3b)
    hp_ser_der_smart("GBU-54","itc_weap_gbu54",ITC_ammo_gbu54)
    hp_ser_der_smart("GBU-54 LDCB","itc_weap_gbu54",ITC_ammo_gbu54_lcdb)

    hp_ser_der_lau117("AGM-65G","Missile_AGM_02_Plane_CAS_01_F",Missile_AGM_02_F)

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
};
