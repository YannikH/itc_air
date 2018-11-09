class CfgWeapons {
    class ACE_HuntIR_monitor;
    class ITC_ROVER_SIR : ACE_HuntIR_monitor {
        displayName = "ROVER SIR V2.5";
        descriptionShort = "ROVER SIR V2.5";
        picture = "\itc_air\data\UI\ROVER_icon_ca.paa";
    };

    class RocketPods;
    class Rocket_04_HE_Plane_CAS_01_F : RocketPods {
        magazines[] += {"itc_hp_dumb_rocket_Rocket_04_HE_F"};
        reloadTime=1;
        class Burst;
    };
    class ITC_weap_apkws : Rocket_04_HE_Plane_CAS_01_F {
        magazines[] = {"itc_hp_dumb_rocket_ITC_ammo_apkws_m151"};
        class Burst : Burst {
          salvo = 1;
          reloadTime=0.5;
          dispersion = 0.3;
        };
    };
    class itc_weap_hydra_m257 : ITC_weap_apkws {
        displayName = "Hydra (M257 ILLUM)";
        magazines[] = {"itc_hp_dumb_rocket_itc_ammo_Hydra_M257"};
        class Burst : Burst {
          dispersion = 0.3;
        };
    };
    class itc_weap_hydra_m156 : ITC_weap_apkws {
        displayName = "Hydra (M156 WP)";
        magazines[] = {"itc_hp_dumb_rocket_itc_ammo_Hydra_M156"};
        class Burst : Burst {
          dispersion = 0.3;
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
    class Bomb_04_Plane_CAS_01_F;
    #define magazines_hp_ser_der_ter(WEAP, PARENT, AMMO) \
        class WEAP : PARENT { \
            reloadTime = 0.01; \
		        magazineReloadTime = 0.01; \
            magazines[] += { \
                itc_hp_dumb_##AMMO, \
                itc_hp_bru33_##AMMO, \
                itc_hp_bru42_##AMMO \
            }; \
        };
    magazines_hp_ser_der_ter(Mk82BombLauncher,RocketPods,Bo_Mk82)
    magazines_hp_ser_der_ter(BombCluster_01_F,Bomb_04_Plane_CAS_01_F,BombCluster_01_Ammo_F)
    magazines_hp_ser_der_ter(BombCluster_03_F,BombCluster_01_F,BombCluster_03_Ammo_F)

    agmPylonMagazines(Missile_AGM_02_Plane_CAS_01_F,Missile_AGM_02_F)

    class itc_air_weapon_maverick_g : Missile_AGM_02_Plane_CAS_01_F {
      displayName = "AGM-65G";
      magazines[] = {"itc_hp_lau117_itc_ammo_agm65g","itc_hp_bru55_lau117_itc_ammo_agm65g"};
      modes[] = {"Direct"};
    };

    class itc_air_weapon_maverick_e : Missile_AGM_02_Plane_CAS_01_F {
      displayName = "AGM-65E";
      magazines[] = {"itc_hp_lau117_itc_ammo_agm65e","itc_hp_bru55_lau117_itc_ammo_agm65e"};
      modes[] = {"Direct"};
    };

    class itc_air_weapon_maverick_h : Missile_AGM_02_Plane_CAS_01_F {
      displayName = "AGM-65K";
      magazines[] = {"itc_hp_lau117_itc_ammo_agm65h","itc_hp_bru55_lau117_itc_ammo_agm65h"};
      modes[] = {"Direct"};
    };

    class ITC_weap_gbu12 : Bomb_04_Plane_CAS_01_F {
      magazines[] = {
          "itc_hp_dumb_ITC_ammo_gbu12",
          "itc_hp_bru33_ITC_ammo_gbu12",
          "itc_hp_bru42_ITC_ammo_gbu12"
      };
      canLock = 0;
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

    class Gatling_30mm_Plane_CAS_01_F : CannonCore {
      class LowROF;
    };
    class itc_weap_gau8 : Gatling_30mm_Plane_CAS_01_F {
      //dispersion=0.001;
      magazines[] = {
        "1000Rnd_Gatling_30mm_Plane_CAS_01_F",
        "itc_1000rnd_30mm_ap",
        "itc_1000rnd_30mm_mix"
      };
      class LowROF : LowROF {
        burst = 1;
        reloadtime = 0.015;
        dispersion = 0.003;
      };
    };
};
