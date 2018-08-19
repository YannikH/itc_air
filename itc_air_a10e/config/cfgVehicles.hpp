class litening;
class itc_air_default_jet;
class cfgVehicles {
  class Plane_Base_F;
  class Plane_CAS_01_base_F : Plane_Base_F {
    class Components;
  };
  class Plane_CAS_01_dynamicLoadout_base_F : Plane_CAS_01_base_F {
      class Components : Components {
          class SensorsManagerComponent;
          class TransportCountermeasuresComponent;
          class TransportPylonsComponent;
          class VehicleSystemsDisplayManagerComponentLeft;
          class VehicleSystemsDisplayManagerComponentRight;
      };
  };
  class ITC_A10E : Plane_CAS_01_dynamicLoadout_base_F {
      side = 1;
      scope = 2;
      scopeCurator = 2;
      faction = "BLU_F";
      vehicleClass = "Air";
      editorSubcategory = "EdSubcat_Planes";
      crew = "B_pilot_F";
      displayName="A-10E";
      incomingMissileDetectionSystem = 16;
      weapons[] = {"itc_weap_gau8","Laserdesignator_pilotCamera","CMFlareLauncher"};
      magazines[] = {"itc_1000rnd_30mm_mix","Laserbatteries","120Rnd_CMFlare_Chaff_Magazine"};
      //#include "MFD.hpp"
      class itc_air : itc_air_default_jet {
        tgp_overlay = "itc_air_a10e\data\overlay.paa";
        systems[] = {"UFC","SOI","TAXI","DSMS","MAVERICK","MFD","MFD_L","MFD_R","HMD","AUTOPILOT","ROVER","SADL","FCS","ACMI","GCAS","TGP","WPT"};
      };
      class pilotCamera : litening { };
      class Components : Components
      {
          class SensorsManagerComponent;
          class TransportCountermeasuresComponent;
          class VehicleSystemsDisplayManagerComponentLeft;
          class VehicleSystemsDisplayManagerComponentRight;
          class TransportPylonsComponent  : TransportPylonsComponent
          {
              class pylons
              {
                  class pylon1
                  {
                      hardpoints[] = {"itc_hp_dumb", "itc_hp_dumb_rocket", "B_BIM9X_DUAL_RAIL"};
                      priority = 5;
                      maxweight = 1200;
                      UIposition[] = {0.35,0};
                      bay = -1;
                      attachment = "PylonMissile_Missile_BIM9X_x1";
                  };
                  class pylon2
                  {
                      hardpoints[] = {"itc_hp_dumb", "itc_hp_dumb_rocket"};
                      priority = 4;
                      maxweight = 1200;
                      UIposition[] = {0.345,0.05};
                      bay = -1;
                      attachment = "itc_hp_dumb_rocket_Rocket_04_HE_F";
                  };
                  class pylon3
                  {
                      hardpoints[] = {"itc_hp_dumb", "itc_hp_dumb_rocket", "itc_hp_smart", "itc_hp_lau117", "itc_hp_bru42"};
                      priority = 3;
                      maxweight = 1200;
                      UIposition[] = {0.34,0.1};
                      bay = -1;
                      attachment = "itc_hp_lau117_itc_ammo_agm65h";
                  };
                  class pylon4
                  {
                      hardpoints[] = {"itc_hp_dumb", "itc_hp_smart", "itc_hp_bru42"};
                      priority = 2;
                      maxweight = 1200;
                      UIposition[] = {0.33,0.2};
                      bay = -1;
                      attachment = "itc_hp_dumb_ITC_ammo_gbu12";
                  };
                  class pylon5
                  {
                      hardpoints[] = {"itc_hp_dumb", "itc_hp_smart"};
                      priority = 1;
                      maxweight = 1200;
                      UIposition[] = {0.33,0.25};
                      bay = -1;
                      attachment = "itc_hp_smart_ITC_ammo_gbu38";
                  };
                  class pylon6 : pylon5
                  {
                      priority = 1;
                      maxweight = 1200;
                      UIposition[] = {0.33,0.3};
                      bay = -1;
                      mirroredMissilePos = 5;
                  };
                  class pylon7: pylon4
                  {
                      UIposition[] = {0.33,0.35};
                      mirroredMissilePos = 4;
                  };
                  class pylon8: pylon3
                  {
                      UIposition[] = {0.34,0.45};
                      mirroredMissilePos = 3;
                  };
                  class pylon9: pylon2
                  {
                      UIposition[] = {0.345,0.5};
                      mirroredMissilePos = 2;
                  };
                  class pylon10: pylon1
                  {
                      UIposition[] = {0.345,0.55};
                      mirroredMissilePos = 1;
                      attachment = "";
                  };
              };
              class Presets
              {
                  class AT
                  {
                      attachment[] = {
                          "",
                          "itc_hp_dumb_rocket_Rocket_04_HE_F",
                          "itc_hp_bru55_lau117_Missile_AGM_02_F",
                          "itc_hp_dumb_ITC_ammo_gbu12",
                          "itc_hp_dumb_ITC_ammo_gbu12",
                          "itc_hp_dumb_ITC_ammo_gbu12",
                          "itc_hp_dumb_ITC_ammo_gbu12",
                          "itc_hp_bru55_lau117_Missile_AGM_02_F",
                          "itc_hp_dumb_rocket_Rocket_04_HE_F",
                          ""};
                      displayname = "Anti-Tank";
                  };
                  class CAS
                  {
                      attachment[] = {
                          "",
                          "itc_hp_dumb_rocket_Rocket_04_HE_F",
                          "itc_hp_bru55_lau117_Missile_AGM_02_F",
                          "itc_hp_dumb_ITC_ammo_gbu12",
                          "itc_hp_smart_ITC_ammo_gbu38",
                          "itc_hp_smart_ITC_ammo_gbu38",
                          "itc_hp_dumb_ITC_ammo_gbu12",
                          "itc_hp_bru55_lau117_Missile_AGM_02_F",
                          "itc_hp_dumb_rocket_Rocket_04_HE_F",
                          ""};
                      displayname = "Close Air Support";
                  };
              };
          };
      };
  };
};
