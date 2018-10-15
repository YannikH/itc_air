class cfgAmmo {
  class Missile_AGM_02_F;
  class itc_ammo_agm84 : Missile_AGM_02_F {
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
    initSpeed = 50;
    thrustTime = 300;
    thrust = 10;
    timeToLive = 800;
    submunitionAmmo = "itc_ammo_penetrator_agm84";
    model = "\itc_air_wpn_harpoon\stores\m_agm84";
    proxyShape = "\itc_air_wpn_harpoon\stores\m_agm84";
  };

  class ammo_Penetrator_AGM_02;
  class itc_ammo_penetrator_agm84 : ammo_Penetrator_AGM_02 {
    hit = 6000;
    indirectHit = 2000;
    indirectHitRange=20;
  };
};
