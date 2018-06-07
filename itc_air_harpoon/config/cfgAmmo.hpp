class cfgAmmo {
  class Missile_AGM_02_F;
  class itc_ammo_agm84 : Missile_AGM_02_F {
    model = "\A3\Weapons_F_EPC\Ammo\Missile_AGM_01_fly_F.p3d";
    proxyShape = "\A3\Weapons_F_EPC\Ammo\Missile_AGM_01_F.p3d";
    class Components {};
    ITC_firedEvent = "itc_air_harpoon_fnc_fired";
    flightProfiles[] = {"Direct"};
    ITC_guidanceOptions[] = {"harpoon"};
    class Direct {
      ascendHeight = 150.0;
      descendDistance = 200.0;
      minDistance = 150.0;
      ascendAngle = 70.0;
    };
    maxSpeed = 320;
    thrustTime = 60;
    timeToLive = 800;
    indirectHit = 200;
    indirectHitRange = 4;
    hit = 5000;
  };
};
