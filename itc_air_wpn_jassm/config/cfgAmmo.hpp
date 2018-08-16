class cfgAmmo {
  //class ammo_Bomb_SDB;
  class ammo_Missile_Cruise_01;
  class itc_ammo_jassm : ammo_Missile_Cruise_01 {
    displayName = "AGM-158 JASSM";
    ITC_firedEvent = "itc_air_jassm_fnc_fired";
    ITC_subMunition = "itc_sdb_helper";
    model = "\a3\weapons_f_sams\Ammo\Bomb_06_F_fly";
    proxyShape = "\a3\weapons_f_sams\Ammo\Bomb_06_F";
    seekers[] = {"gps"};
    ITC_noseFuze = "JASSM";
    ITC_tailFuze = "";
    ITC_guidanceOptions[] = {"jassm"};
    autoSeekTarget = 0;
    laserLock = 0;
    weaponType = "missile";
    flightProfiles[] = {"Direct"};
    timeToLive = 800;
    muzzleEffect = "";
    initTime = 2;
    explosionAngle = 60;
    hit = 6000;
    indirectHit = 2000;
    indirectHitRange = 30;
    class Direct {
      ascendHeight = 150.0;
      descendDistance = 200.0;
      minDistance = 150.0;
      ascendAngle = 70.0;
    };
    class Components {};
  };
  class itc_ammo_jassm_helper : itc_ammo_jassm {
    timeToLive = 0.1;
    ace_frag_force = 1;
  };
};
