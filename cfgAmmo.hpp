class cfgAmmo {
    class rhs_ammo_mk82;
    class ITC_ammo_gbu38 : rhs_ammo_mk82 {
        ITC_firedEvent = "itc_air_jdam_fnc_fired";
        //GBU ITSELF IS INERT
        indirectHitRange = 0.1;
        indirectHit = 0;
        ace_frag_enabled = 0;
        explosionEffects = "";
        explosionSoundEffect = "";
        ITC_subMunition = "ITC_mk82_helper";
    };
    class ITC_ammo_gbu38v3b : ITC_ammo_gbu38 {
        ITC_subMunition = "ITC_blu126_helper";
    };
    class ITC_blu126_helper : rhs_ammo_mk82 {
        timeToLive = 0;
        indirectHitRange = 4;
        indirectHit = 600;
        ace_frag_charge = 15000;
    };
    class ITC_mk82_airBurst : rhs_ammo_mk82 {
        ITC_firedEvent = "itc_air_ammo_fnc_fired_prox_fuze";
        ITC_subMunition = "ITC_mk82_helper";
    };
    class ITC_mk82_helper : rhs_ammo_mk82 {
        timeToLive = 0;
    };
    class rhs_ammo_Hydra_M151;
    class itc_ammo_Hydra_M156 : rhs_ammo_Hydra_M151 {
        displayName = "M156 WP";
        indirectHit = 1;
        indirectHitRange = 1;
        explosive = 0.1;
        ITC_firedEvent = "itc_air_ammo_fnc_fired_wp";
        explosionEffects = "TB_MK13SmokeEffects";
    };
};
