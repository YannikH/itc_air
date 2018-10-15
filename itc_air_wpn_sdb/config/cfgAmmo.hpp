class cfgAmmo {


  //class ammo_Bomb_SDB;
  class ammo_Bomb_SDB;
  class itc_ammo_gbu39 : ammo_Bomb_SDB {
    displayName = "GBU-39";
    ITC_firedEvent = "itc_air_sdb_fnc_fired";
    ITC_subMunition = "itc_sdb_helper";
    indirectHitRange = 1;
    indirectHit = 100;
    seekers[] = {"gps"};
    ITC_noseFuze = "sdb";
    ITC_tailFuze = "";
    ITC_guidanceOptions[] = {"jdam"};
    autoSeekTarget = 0;
    laserLock = 0;
    weaponType = "bomb";
    flightProfiles[] = {"Direct"};
    warheadName = "TandemHEAT";
    hit = 5000;
    class Direct {
      ascendHeight = 150.0;
      descendDistance = 200.0;
      minDistance = 150.0;
      ascendAngle = 70.0;
    };
    class Components {};
  };
  class itc_sdb_helper : ammo_Bomb_SDB {
    timeToLive = 0;
    ace_frag_force = 1;
  };
};
