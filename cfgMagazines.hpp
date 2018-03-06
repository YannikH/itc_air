class cfgMagazines {    
    class rhs_mag_mk82;
    class rhs_mag_mk82_3;
    class ITC_1rnd_gbu38 : rhs_mag_mk82 {
        ammo = "ITC_ammo_gbu38";
        displayName = "GBU-38(v)1/B";
        pylonWeapon = "itc_weap_gbu38";
        hardpoints[] = {"ITC_HP_JDAM_500", "ITC_HP_JDAM_500_x2"};
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
    class magazine_Fighter04_Gun20mm_AA_x250;
    class itc_120rnd_27mm_he : magazine_Fighter04_Gun20mm_AA_x250 {
        ammo = "B_25mm";
        initSpeed = 1100;
    };
};