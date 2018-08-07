class cfgAmmo {
  //class ammo_Bomb_SDB;
  class ammo_Missile_Cruise_01;
  class itc_ammo_slamer : ammo_Missile_Cruise_01 {
    displayName = "SLAM-ER";
    ITC_firedEvent = "itc_air_slamer_fnc_fired";
    model = "\A3\Weapons_F_Destroyer\Ammo\Missile_Cruise_01_Fly_F";
    proxyShape = "\A3\Weapons_F_Destroyer\Ammo\Missile_Cruise_01_F";
    seekers[] = {"gps","eo"};
    ITC_noseFuze = "";
    ITC_tailFuze = "";
    ITC_guidanceOptions[] = {"jdam"};
    autoSeekTarget = 0;
    laserLock = 0;
    weaponType = "missile";
    flightProfiles[] = {"Direct"};
    timeToLive = 800;
    class Direct {
      ascendHeight = 150.0;
      descendDistance = 200.0;
      minDistance = 150.0;
      ascendAngle = 70.0;
    };
    class Components {};
  };
};
