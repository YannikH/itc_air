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
};
