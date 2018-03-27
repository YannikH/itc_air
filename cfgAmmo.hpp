class cfgAmmo {
    class Bo_Mk82;
    class ITC_ammo_gbu38 : Bo_Mk82 {
        displayName = "GBU-38";
        ITC_firedEvent = "itc_air_jdam_fnc_fired";
        ITC_subMunition = "ITC_mk82_helper";
        ace_frag_force = 1;
        indirectHitRange = 10;
        indirectHit = 800;
        ace_frag_metal = 140000;
        seekers[] = {"gps"};
    };
    class ITC_ammo_gbu54 : ITC_ammo_gbu38 {
        displayName = "GBU-54";
        seekers[] = {"gps","laser"};
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
    };
    class Rocket_04_HE_F;
    class itc_ammo_Hydra_M156 : Rocket_04_HE_F {
        displayName = "M156 WP";
        indirectHit = 1;
        indirectHitRange = 1;
        explosive = 0.1;
        ITC_firedEvent = "itc_air_ammo_fnc_fired_wp";
        explosionEffects = "TB_MK13SmokeEffects";
    };
	class MissileBase;
	class M_Titan_AA: MissileBase {
		itc_air_hasProx = 1;
		itc_air_proxHelper = "itc_air_default_helper";
		itc_air_sensorFOV = 60;
		itc_air_sensorRAN = 30;	
	};
	class Missile_AA_04_F: MissileBase {
		itc_air_hasProx = 1;
		itc_air_proxHelper = "itc_air_default_helper";
		itc_air_sensorFOV = 60;
		itc_air_sensorRAN = 30;	

	};
	class M_Air_AA: MissileBase {
		itc_air_hasProx = 1;
		itc_air_proxHelper = "itc_air_default_helper";
		itc_air_sensorFOV = 60;
		itc_air_sensorRAN = 30;	

	};
	class ITC_missile_BOLIDE: M_Titan_AA {
		indirectHitRange = 30;
		manualControl = 1;
		maneuvrability = 10;
		maxControlRange = 8000;
		maxSpeed = 1500;
		thrust = 700;
		simulationStep = 0.01;
        airFriction = 0.1;
        sideAirFriction = 0.16;
		cmImmunity = 1;
		trackOversteer = 0.5;
		trackLead = 0.75;
		fuseDistance = 100;
		itc_air_hasProx = 1;
		itc_air_proxHelper = "itc_air_bolide_helper";		
	};
	//Default proximity fuzed detonation
	class GrenadeBase;
	class itc_air_default_helper: GrenadeBase {
		indirectHitRange = 15;
		hit = 80;
		indirectHit = 60;		
		explosionTime = 0.001;
		CraterEffects = "AAMissileCrater";
		explosionEffects = "AAMissileExplosion";
		model = "\A3\Weapons_F_beta\Launchers\titan\titan_missile_ap_fly.p3d";		
		class CamShakeExplode {
			power = "(110*0.2)";
			duration = "((round (110^0.5))*0.2 max 0.2)";
			frequency = 20;
			distance = "((8 + 110^0.5)*8)";
		};
		class CamShakeHit {
			power = 110;
			duration = "((round (110^0.25))*0.2 max 0.2)";
			frequency = 20;
			distance = 1;
		};	

	};
	class itc_air_bolide_helper: itc_air_default_Det {
		hit = 50;
		indirectHit = 50;
	};	
};
