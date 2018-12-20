class cfgAmmo {
    class BombCore;
    class Bo_Mk82 : BombCore {
      dragCoef = 0.14;
      ITC_noseFuze = "pd";
      ITC_tailFuze = "dly";
      indirectHitRange = 10;
      indirectHit = 800;
      ace_frag_metal = 140000;
      ace_frag_charge = 15000;
      ace_frag_force = 1;
      hit = 8000;
      warheadName = "TandemHEAT";
    };
    class MissileCore;
    class MissileBase : MissileCore {
      dragCoef = 0.4;
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

    class Missile_AGM_02_F : MissileBase {
      dragCoef = 0.82;
      hit = 8000;
      warheadName = "TandemHEAT";
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
    class itc_ammo_agm65h : itc_ammo_agm65e {
      ITC_firedEvent = "itc_air_maverick_fnc_fired_ccdmav";
    };
    class itc_ammo_agm65g : itc_ammo_agm65e {
      ITC_firedEvent = "itc_air_maverick_fnc_fired_ccdmav";
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

    class Rocket_04_HE_F : MissileBase {
      dragCoef = -0.07;
    };
    class itc_ammo_Hydra_M156 : Rocket_04_HE_F {
        displayName = "M156 WP";
        indirectHit = 1;
        indirectHitRange = 1;
        explosive = 0.1;
        //ITC_firedEvent = "itc_air_ammo_fnc_fired_wp";
        explosionEffects = "TB_MK13SmokeEffects";
    };
    class ITC_ammo_apkws_m151 : Rocket_04_HE_F {
        displayName = "APKWS M151";
        ITC_firedEvent = "itc_air_ammo_fnc_apkws";
    };
    class itc_ammo_Hydra_M257 : Rocket_04_HE_F {
        displayName = "M257 ILLUM";
        indirectHit = 1;
        indirectHitRange = 1;
        explosive = 0.1;
        ITC_firedEvent = "itc_air_ammo_fnc_fired_m257";
    };
  	class FlareCore;
  	class itc_ammo_m257_helper: FlareCore { //ILLUM
  		model = "\A3\weapons_f\ammo\shell";
  		effectFlare = "CounterMeasureFlare";
  		aimAboveTarget[] = {50, 80, 140, 200, 260, 320, 380};
  		aimAboveDefault = 4;
  		triggerSpeedCoef = 1;
  		triggerTime = 0.001;
  		lightColor[] = {0.95, 0.95, 1, 0.5};
  		smokeColor[] = {1, 1, 1, 0.5};
  		brightness = 50;
  		//intensity = 180000;
  		//flareSize = 500;
  		timeToLive = 90;
  		ace_rearm_caliber = 155;
  		//explosionTime = 1;
  	};

  	class itc_air_ammo_litening: MissileBase
  	{
  		hit=0;
  		indirectHit=0;
  		indirectHitRange=0;
  		thrustTime=0;
  		thrust=0;
  		maxspeed=0;
  		timetolive=0;
  		maneuvrability=0;
  		model="\itc_air_ammo\stores\av8b_litening.p3d";
  		proxyShape="\itc_air_ammo\stores\av8b_litening.p3d";
  		airlock=0;
  		laserLock=0;
  		irLock=0;
  		initTime=0;
  		minRange=0;
  		minRangeProbab=0;
  		midRange=0;
  		midRangeProbab=0;
  		maxRange=0;
  		maxRangeProbab=0;
  		sideAirFriction=0;
  	};
  	class itc_air_ammo_alq131: itc_air_ammo_litening
  	{
      model="\itc_air_ammo\stores\ALQ_131.p3d";
      proxyShape="\itc_air_ammo\stores\ALQ_131.p3d";
    };
};
