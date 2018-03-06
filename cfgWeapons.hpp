class CfgWeapons {
    class ACE_HuntIR_monitor;
    class ITC_ROVER_SIR : ACE_HuntIR_monitor {
        displayName = "ROVER SIR V2.5";
        descriptionShort = "ROVER SIR V2.5";
        picture = "\itc_air\data\UI\ROVER_icon_ca.paa";
    };

    class rhs_weap_mk82;
    class itc_weap_gbu38 : rhs_weap_mk82 {
        displayName = "GBU-38";
        magazines[] = {"ITC_1rnd_gbu38", "ITC_2rnd_gbu38", "ITC_1rnd_gbu38v3b", "ITC_2rnd_gbu38v3b"};
        reloadTime = 0.0;
        autoFire=false;
    };

    class itc_weap_mk82_airburst : rhs_weap_mk82 {
        displayName = "Mk82 Airburst";
        magazines[] = {"itc_mag_mk82_airburst", "itc_mag_mk82_airburst_3"};
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

    class RocketPods;
    class Bomb_04_Plane_CAS_01_F: RocketPods
    {
        magazines[] += {"ITC_3rnd_gbu12", "itc_2rnd_gbu12"};
    };

    class rhs_weap_agm65;
    class rhs_weap_agm65h: rhs_weap_agm65
    {
        magazines[] += {"itc_2rnd_agm65h"};
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