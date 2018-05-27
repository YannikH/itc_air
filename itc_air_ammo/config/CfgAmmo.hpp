class cfgAmmo {
    class Bo_GBU12_LGB;
    class ITC_ammo_gbu12 : Bo_GBU12_LGB {
      ITC_firedEvent = "itc_air_ammo_fnc_paveway";
      indirectHitRange = 4;
      indirectHit = 600;
      ace_frag_charge = 15000;
      dragCoef = 0.51;
      autoSeekTarget = 0;
      ITC_noseFuze = "";
      ITC_tailFuze = "pd";
      ITC_guidanceOptions[] = {"autolaser"};
    };
    class BombCore;
    class Bo_Mk82 : BombCore {
      dragCoef = 0.14;
      ITC_noseFuze = "pd";
      ITC_tailFuze = "dly";
    };
    class MissileCore;
    class MissileBase : MissileCore {
      dragCoef = 0.4;
    };
    class ITC_ammo_gbu38 : Bo_Mk82 {
        displayName = "GBU-38";
        ITC_firedEvent = "itc_air_jdam_fnc_fired";
        ITC_subMunition = "ITC_mk82_helper";
        indirectHitRange = 1;
        indirectHit = 100;
        seekers[] = {"gps"};
        ITC_noseFuze = "dsu33";
        ITC_tailFuze = "fmu139";
        ITC_guidanceOptions[] = {"jdam"};
    };
    class ITC_ammo_gbu54 : ITC_ammo_gbu38 {
        displayName = "GBU-54";
        seekers[] = {"gps","laser"};
        ITC_noseFuze = "";
        ITC_guidanceOptions[] = {"jdam","laser","autolaser"};
    };
    class ITC_ammo_gbu54_lcdb : ITC_ammo_gbu54 {
        displayName = "GBU-54 LCDB";
        seekers[] = {"gps","laser"};
        indirectHitRange = 4;
        indirectHit = 600;
        ace_frag_charge = 15000;
        ITC_subMunition = "ITC_blu126_helper";
    }
    class ITC_ammo_gbu38v3b : ITC_ammo_gbu38 {
        ITC_subMunition = "ITC_blu126_helper";
    };
    class ITC_blu126_helper : Bo_Mk82 {
        timeToLive = 0;
        indirectHitRange = 4;
        indirectHit = 600;
        ace_frag_charge = 15000;
        ace_frag_force = 1;
    };
    class ITC_mk82_airBurst : Bo_Mk82 {
        ITC_firedEvent = "itc_air_ammo_fnc_fired_prox_fuze";
        ITC_subMunition = "ITC_mk82_helper";
    };
    class ITC_mk82_helper : Bo_Mk82 {
        timeToLive = 0;
        ace_frag_force = 1;
        indirectHitRange = 10;
        indirectHit = 800;
        ace_frag_metal = 140000;
    };
    class Rocket_04_HE_F : MissileBase {
      dragCoef = -0.07;
    };
    class itc_ammo_Hydra_M156 : Rocket_04_HE_F {
        displayName = "M156 WP";
        indirectHit = 1;
        indirectHitRange = 1;
        explosive = 0.1;
        ITC_firedEvent = "itc_air_ammo_fnc_fired_wp";
        explosionEffects = "TB_MK13SmokeEffects";
    };
    class ITC_ammo_apkws_m151 : Rocket_04_HE_F {
        displayName = "APKWS M151";
        ITC_firedEvent = "itc_air_ammo_fnc_apkws";
    };

    class Missile_AGM_02_F : MissileBase {
      dragCoef = 0.82;
    };

    class itc_ammo_agm65e : Missile_AGM_02_F {
      class Components {};
      ITC_firedEvent = "itc_air_ammo_fnc_fired_lmav";
      flightProfiles[] = {"Direct"};
      class Direct {
        ascendHeight = 150.0;
        descendDistance = 200.0;
        minDistance = 150.0;
        ascendAngle = 70.0;
      };
    };

    class B_30mm_APFSDS_Tracer_Red;
    class itc_30mm_ap : B_30mm_APFSDS_Tracer_Red {
      airFriction = -0.00036;
      hit = 60;
      model = "\A3\Weapons_f\Data\bullettracer\tracer_red";
    };

    class SubmunitionBase;
    class itc_30mm_mix : SubmunitionBase {
      simulation = "shotSubmunitions";
      submunitionAmmo[] = {"itc_30mm_ap",0.8,"Gatling_30mm_HE_Plane_CAS_01_F",0.2};
      weaponType = "cannon";
      model = "\A3\Weapons_f\empty";
	    triggerTime = 0.01;
      ACE_caliber = 1;
    };
};
