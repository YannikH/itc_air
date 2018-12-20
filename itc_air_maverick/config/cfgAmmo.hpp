class CfgAmmo {
  class Missile_AGM_02_F;
  class itc_ammo_agm65e : Missile_AGM_02_F {
    effectsMissileInit = "RocketBackEffectsRPG";
    effectsMissile = "ITC_AGM65_Trail";
    ExplosionEffects = "ITC_AGM65_Explosion";
    submunitionAmmo = "ammo_Penetrator_itc_agm65e";
  };
  class ammo_Penetrator_AGM_02;
  class ammo_Penetrator_itc_agm65e : ammo_Penetrator_AGM_02 {
    hit = 5000;
    indirectHitRange = 5;
    indirectHit = 400;
  };
};
