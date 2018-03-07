class cfgMagazines {
    class PylonMissile_1Rnd_Mk82_F;
    class PylonRack_2Rnd_BombCluster_03_F;
    class PylonRack_Missile_AGM_02_x2;
    class PylonRack_1Rnd_Missile_AGM_02_F;
    class PylonRack_7Rnd_Rocket_04_HE_F;
    class rhs_mag_M151_7_green;
    class rhs_mag_mk82_3;
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
        hardPointMagazine(itc_hp_dumb_rocket,rhs_mag_M151_7_green,NAME,WEAP,AMMO,7x)

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
        hardPointMagazine(itc_hp_bru42,rhs_mag_mk82_3,NAME,WEAP,AMMO,3x)

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

    hp_rocket("M151 Hydra HE","Rocket_04_HE_Plane_CAS_01_F",rhs_ammo_Hydra_M151)
    hp_rocket("M156 Hydra WP","Rocket_04_HE_Plane_CAS_01_F",itc_ammo_Hydra_M156)

    hp_ser_der_ter("Mk-82","Mk82BombLauncher",Bo_Mk82)
    hp_ser_der_ter("GBU-12","Bomb_04_Plane_CAS_01_F",Bo_GBU12_LGB)
    hp_ser_der_ter("CBU-87","rhs_weap_cbu87",rhs_ammo_cbu87)
    hp_ser_der_ter("CBU-100","rhs_weap_cbu100",rhs_ammo_cbu100)

    hp_ser_der_smart("GBU-38(v)1/B","itc_weap_gbu38",ITC_ammo_gbu38)
    hp_ser_der_smart("GBU-38(v)4/B","itc_weap_gbu38",ITC_ammo_gbu38v3b)

    hp_ser_der_lau117("AGM-65B","rhs_weap_agm65b",rhs_ammo_agm65b)
    hp_ser_der_lau117("AGM-65D","rhs_weap_agm65d",rhs_ammo_agm65d)
    hp_ser_der_lau117("AGM-65E","rhs_weap_agm65e",rhs_ammo_agm65e)
    hp_ser_der_lau117("AGM-65F","rhs_weap_agm65f",rhs_ammo_agm65f)
    hp_ser_der_lau117("AGM-65H","rhs_weap_agm65h",rhs_ammo_agm65h)

    /*
    class rhs_mag_mk82;
    class rhs_mag_mk82_3;
    class ITC_1rnd_gbu38 : rhs_mag_mk82 {
        ammo = "ITC_ammo_gbu38";
        displayName = "GBU-38(v)1/B";
        pylonWeapon = "itc_weap_gbu38";
        hardpoints[] = {"ITC_HP_JDAM_500","ITC_HP_JDAM_500_x2"};
    };

    class itc_mag_mk82_airburst : rhs_mag_mk82 {
        displayName = "Mk82 Airburst";
        ammo = "ITC_mk82_airBurst";
        pylonWeapon = "itc_weap_mk82_airburst";
    };

    class itc_mag_mk82_airburst_3 : rhs_mag_mk82_3 {
        displayName = "Mk82 Airburst x3";
        ammo = "ITC_mk82_airBurst";
        pylonWeapon = "itc_weap_mk82_airburst";
    };

    class rhs_mag_AGM114L_2;
    class itc_2rnd_gbu38 : rhs_mag_AGM114L_2 {
        model = "\rhsusf\addons\rhsusf_airweapons\proxypylon\rhsusf_pylon_m_agm114_2x";
        count = 2;
        displayName = "GBU-38(v)1/B x2";
        weight = 90;
        hardpoints[] = {"ITC_HP_JDAM_500_x2"};
        pylonWeapon = "itc_weap_gbu38";
        ammo = "ITC_ammo_gbu38";
        mirrorMissilesIndexes[] = {2,1};
    };
    
    class ITC_1rnd_gbu38v3b : ITC_1rnd_gbu38 {
        ammo = "ITC_ammo_gbu38v3b";
        displayName = "GBU-38(v)4/B";
    };
    
    class ITC_2rnd_gbu38v3b : itc_2rnd_gbu38 {
        ammo = "ITC_ammo_gbu38v3b";
        displayName = "GBU-38(v)4/B x2";
    };

    class itc_2rnd_gbu12 : rhs_mag_AGM114L_2 {
        model = "\rhsusf\addons\rhsusf_airweapons\proxypylon\rhsusf_pylon_m_agm114_2x";
        count = 2;
        displayName = "GBU-12 x2";
        weight = 90;
        hardpoints[] = {"ITC_HP_BOMB_500_x2"};
        ammo = "Bo_GBU12_LGB";
        pylonWeapon = "Bomb_04_Plane_CAS_01_F";
        mirrorMissilesIndexes[] = {2,1};
    };

    class itc_2rnd_agm65h : rhs_mag_AGM114L_2 {
        model = "\rhsusf\addons\rhsusf_airweapons\proxypylon\rhsusf_pylon_m_agm114_2x";
        count = 2;
        displayName = "AGM-65 H Maverick x2";
        weight = 90;
        hardpoints[] = {"RHS_HP_AGM65_x2"};
        ammo = "rhs_ammo_agm65h";
        pylonWeapon = "rhs_weap_agm65h";
        mirrorMissilesIndexes[] = {2,1};
    };

    class ITC_3rnd_gbu12 : rhs_mag_mk82_3 {
        ammo = "Bo_GBU12_LGB";
        displayName = "GBU-12 x3";
        pylonWeapon = "Bomb_04_Plane_CAS_01_F";
        hardpoints[] = {"RHS_HP_BOMB_500_3x"};
    };

    class rhs_mag_M151_7_green;
    class itc_mag_M156_7 : rhs_mag_M151_7_green {
        ammo = "itc_ammo_Hydra_M156";
        displayname = "LAU-68 (7x M156 WP)";
        pylonWeapon = "itc_weap_ffarlauncher_smoke";
    };
    class rhs_mag_M151_19_green;
    class itc_mag_M156_19 : rhs_mag_M151_19_green {
        ammo = "itc_ammo_Hydra_M156";
        displayname = "LAU-68 (19x M156 WP)";
        pylonWeapon = "itc_weap_ffarlauncher_smoke";
    };
    */
    class magazine_Fighter04_Gun20mm_AA_x250;
    class itc_120rnd_27mm_he : magazine_Fighter04_Gun20mm_AA_x250 {
        ammo = "B_25mm";
        initSpeed = 1100;
    };
};