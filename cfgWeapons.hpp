class CfgWeapons {
    class ACE_HuntIR_monitor;
    class ITC_ROVER_SIR : ACE_HuntIR_monitor {
        displayName = "ROVER SIR V2.5";
        descriptionShort = "ROVER SIR V2.5";
        picture = "\itc_air\data\UI\ROVER_icon_ca.paa";
    };

    class Gatling_30mm_Plane_CAS_01_F;
    class RHS_weap_gau8 : Gatling_30mm_Plane_CAS_01_F {
        class LowROF;
    };
    class ITC_weap_gau8 : RHS_weap_gau8 {
        class LowROF : LowROF {
            class StandardSound;
            displayName = "Lo";
            textureType = "burst";
            reloadTime = 0.03;
            burst = 1;
            //reloadtime = 0.02857; //this is real one (2100rpm) but due to sound configuration default value is there
        };
        class HighROF : LowROF {
            class StandardSound:  StandardSound{
                begin1[] = {"A3\Sounds_F\arsenal\weapons_vehicles\gatling_30mm\30mm_01_burst", 5.62341, 1, 1500, {12852, 16079.5}};
                soundBegin[] = {"begin1", 1};
            };
            displayName = "Hi";
            textureType = "fullAuto";
            reloadtime = 0.015;
            burst = 1;
        };
    };

    class rhs_weap_FFARLauncher;
    class itc_weap_ffarlauncher_smoke : rhs_weap_FFARLauncher {
        displayName = "Hydra (M156 WP)";
        magazines[] = {"itc_mag_M156_7", "itc_mag_M156_19"};
        class EventHandlers
        {
            class ITC_EventHandlers
            {
                fired = "_this call itc_fnc_ammo_fired_wp;";
            };
        };
    };

    class rhs_weap_agm65;
    #define agmPylonMagazines(WEAP, AMMO) \
        class WEAP : rhs_weap_agm65 { \
            magazines[] += { \
                itc_hp_lau117_##AMMO, \
                itc_hp_bru55_lau117_##AMMO \
            }; \
        };

    #define magazines_hp_ser_der_ter(WEAP, PARENT, AMMO) \
        class WEAP : PARENT { \
            magazines[] += { \
                itc_hp_dumb_##AMMO, \
                itc_hp_bru33_##AMMO, \
                itc_hp_bru42_##AMMO \
            }; \
        };
    class rhs_weap_HellfireLauncher;
    #define magazines_hp_triple_hellfire(WEAP, PARENT, AMMO) \
        class WEAP : PARENT { \
            magazines[] += { \
                itc_hp_lau88_hellfire_##AMMO, \
            }; \
        };

    class RocketPods;
    class rhs_weap_mk82;
    class Rocket_04_HE_Plane_CAS_01_F : RocketPods{
        magazines[] += {"itc_hp_dumb_rocket_rhs_ammo_Hydra_M151","itc_hp_dumb_rocket_itc_ammo_Hydra_M156"};
    };
    magazines_hp_ser_der_ter(Mk82BombLauncher,RocketPods,Bo_Mk82)
    magazines_hp_ser_der_ter(Bomb_04_Plane_CAS_01_F,RocketPods,Bo_GBU12_LGB)
    magazines_hp_ser_der_ter(rhs_weap_cbu87,rhs_weap_mk82,rhs_ammo_cbu87)
    magazines_hp_ser_der_ter(rhs_weap_cbu100,rhs_weap_mk82,rhs_ammo_cbu100)

    agmPylonMagazines(rhs_weap_agm65b,rhs_ammo_agm65b)
    agmPylonMagazines(rhs_weap_agm65d,rhs_ammo_agm65d)
    agmPylonMagazines(rhs_weap_agm65e,rhs_ammo_agm65e)
    agmPylonMagazines(rhs_weap_agm65f,rhs_ammo_agm65f)
    agmPylonMagazines(rhs_weap_agm65h,rhs_ammo_agm65h) 

    magazines_hp_triple_hellfire(rhs_weap_AGM114K_Launcher,rhs_weap_HellfireLauncher,RHS_ammo_AGM_114K) 
    magazines_hp_triple_hellfire(rhs_weap_AGM114M_Launcher,rhs_weap_HellfireLauncher,RHS_ammo_AGM_114M) 
    magazines_hp_triple_hellfire(rhs_weap_AGM114N_Launcher,rhs_weap_HellfireLauncher,RHS_ammo_AGM_114N)  

    class itc_weap_gbu38 : rhs_weap_mk82 {
        displayName = "GBU-38";
        magazines[] = {"itc_hp_smart_ITC_ammo_gbu38","itc_hp_smart_ITC_ammo_gbu38v3b","itc_hp_bru55_ITC_ammo_gbu38","itc_hp_bru55_ITC_ammo_gbu38v3b"};
        reloadTime = 0.0;
        autoFire=false;
    };

    class itc_weap_mk82_airburst : rhs_weap_mk82 {
        displayName = "Mk82 Airburst";
        magazines[] = {"itc_mag_mk82_airburst", "itc_mag_mk82_airburst_3"};
    };

    class CannonCore;
    class weapon_Fighter_Gun20mm_AA : CannonCore {
        class manual;
    };
    class itc_weap_bk27 : weapon_Fighter_Gun20mm_AA {
        displayName = "Mauser BK-27";
        magazines[] = {"itc_120rnd_27mm_he"};
        class manual : manual {
            reloadTime = 0.06;
        };
    };
};