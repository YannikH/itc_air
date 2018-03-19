class CfgWeapons {
    class ACE_HuntIR_monitor;
    class ITC_ROVER_SIR : ACE_HuntIR_monitor {
        displayName = "ROVER SIR V2.5";
        descriptionShort = "ROVER SIR V2.5";
        picture = "\itc_air\data\UI\ROVER_icon_ca.paa";
    };

    /*
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
    */

    class RocketPods;
    class Rocket_04_HE_Plane_CAS_01_F : RocketPods{
        magazines[] += {"itc_hp_dumb_rocket_Rocket_04_HE_F","itc_hp_dumb_rocket_itc_ammo_Hydra_M156"};
    };
    class itc_weap_ffarlauncher_smoke : Rocket_04_HE_Plane_CAS_01_F {
        displayName = "Hydra (M156 WP)";
        magazines[] = {"itc_mag_M156_7", "itc_mag_M156_19"};
        class EventHandlers
        {
            class ITC_EventHandlers
            {
                fired = "_this call itc_air_ammo_fnc_fired_wp;";
            };
        };
    };

    class MissileLauncher;
    #define agmPylonMagazines(WEAP, AMMO) \
        class WEAP : MissileLauncher { \
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
    magazines_hp_ser_der_ter(Mk82BombLauncher,RocketPods,Bo_Mk82)
    magazines_hp_ser_der_ter(Bomb_04_Plane_CAS_01_F,RocketPods,Bo_GBU12_LGB)
    magazines_hp_ser_der_ter(BombCluster_01_F,Bomb_04_Plane_CAS_01_F,BombCluster_01_Ammo_F)
    magazines_hp_ser_der_ter(BombCluster_03_F,BombCluster_01_F,BombCluster_03_Ammo_F)

    agmPylonMagazines(Missile_AGM_02_Plane_CAS_01_F,Missile_AGM_02_F)

    class itc_weap_gbu38 : Mk82BombLauncher {
        displayName = "GBU-38";
        magazines[] = {"itc_hp_smart_ITC_ammo_gbu38","itc_hp_smart_ITC_ammo_gbu38v3b","itc_hp_bru55_ITC_ammo_gbu38","itc_hp_bru55_ITC_ammo_gbu38v3b"};
        reloadTime = 0.0;
        autoFire=false;
    };
    class itc_weap_gbu54 : itc_weap_gbu38 {
        displayName = "GBU-54";
        magazines[] = {
            "itc_hp_smart_ITC_ammo_gbu54",
            "itc_hp_bru55_ITC_ammo_gbu54",
            "itc_hp_smart_ITC_ammo_gbu54_lcdb",
            "itc_hp_bru55_ITC_ammo_gbu54_lcdb"
        };
        reloadTime = 0.0;
        autoFire=false;
    };

    class itc_weap_mk82_airburst : Mk82BombLauncher {
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
