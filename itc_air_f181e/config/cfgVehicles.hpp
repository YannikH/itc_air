class litening;
class itc_air_default_jet;
class cfgVehicles {
  class Plane;
  class Plane_Base_F : Plane {
    class Components;
    class AnimationSources;
  };
  class Plane_Fighter_01_Base_F : Plane_Base_F {
      class Components : Components {
          class SensorsManagerComponent;
          class TransportCountermeasuresComponent;
          class TransportPylonsComponent;
          class VehicleSystemsDisplayManagerComponentLeft;
          class VehicleSystemsDisplayManagerComponentRight;
      };
      class AnimationSources : AnimationSources {
        class pylon_1_hide;
        class pylon_2_hide;
        class pylon_3_hide;
        class pylon_4_hide;
      };
  };
  class ITC_F181E : Plane_Fighter_01_Base_F {
      side = 1;
      scope = 2;
      displayName= "F-181E";
      faction = "BLU_F";
      vehicleClass = "Air";
      editorSubcategory = "EdSubcat_Planes";
      crew = "B_pilot_F";
      incomingMissileDetectionSystem = 16;
      class pilotCamera : litening{};
      class Components : Components {
        class SensorsManagerComponent;
        class TransportCountermeasuresComponent;
        class TransportPylonsComponent  : TransportPylonsComponent {
          UIPicture = "\A3\Air_F_Jets\Plane_Fighter_01\Data\UI\Fighter_01_3DEN_CA.paa";
          class Bays {
              class BayCenter1 {
                  autoCloseWhenEmptyDelay = 3;
                  bayOpenTime = 0.5;
                  openBayWhenWeaponSelected = 0;
              };
              class BayLeft1 {
                  autoCloseWhenEmptyDelay = 2;
                  bayOpenTime = 0.5;
                  openBayWhenWeaponSelected = 0;
              };
              class BayRight1 {
                  autoCloseWhenEmptyDelay = 2;
                  bayOpenTime = 0.5;
                  openBayWhenWeaponSelected = 0;
              };
          };
          class Presets
          {
          };
          class pylons {
            class pylon1 {
                attachment = "PylonRack_Missile_AMRAAM_D_x1";
                hardpoints[] = {"B_BIM9X_RAIL","B_BIM9X_DUAL_RAIL","B_AMRAAM_D_RAIL","B_AMRAAM_D_DUAL_RAIL","itc_hp_dumb", "itc_hp_smart", "itc_hp_lau117", "itc_hp_bru33", "itc_hp_bru55"};
                maxweight = 300;
                priority = 12;
                UIposition[] = {0.6,0.45};
            };
            class pylon2 : pylon1 {
                mirroredMissilePos = 1;
                UIposition[] = {0.05,0.45};
            };
            class pylon3 {
                attachment = "itc_hp_lau117_Missile_AGM_02_F";
                hardpoints[] = {"B_BIM9X_RAIL","B_BIM9X_DUAL_RAIL","B_AMRAAM_D_RAIL","B_AMRAAM_D_DUAL_RAIL","itc_hp_dumb", "itc_hp_smart", "itc_hp_lau117", "itc_hp_bru33", "itc_hp_bru55", "itc_hp_bru55_lau117","itc_hp_harpoon"};
                maxweight = 1050;
                priority = 11;
                UIposition[] = {0.55,0.35};
            };
            class pylon4 : pylon3 {
                mirroredMissilePos = 3;
                UIposition[] = {0.1,0.35};
            };
            class pylonBayRight1 {
                attachment = "PylonMissile_Missile_BIM9X_x1";
                bay = 2;
                hardpoints[] = {"B_BIM9X"};
                maxweight = 1200;
                priority = 10;
                UIposition[] = {0.5,0.25};
            };
            class pylonBayLeft1 : pylonBayRight1 {
                UIposition[] = {0.16,0.25};
                mirroredMissilePos = 5;
                bay = 1;
            };
            class pylonBayCenter1 {
                attachment = "PylonMissile_Missile_AMRAAM_D_INT_x1";
                bay = 3;
                hardpoints[] = {"B_AMRAAM_D_INT","itc_hp_dumb", "itc_hp_smart"};
                maxweight = 1200;
                priority = 9;
                UIposition[] = {0.33,0.3};
            };
            class pylonBayCenter2 : pylonBayCenter1 {
                mirroredMissilePos = 7;
                UIposition[] = {0.33,0.35};
            };
            class pylonBayCenter3 {
                attachment = "";
                bay = 3;
                hardpoints[] = {};
                maxweight = 1200;
                priority = 7;
                UIposition[] = {0.33,0.4};
            };
            class pylonBayCenter4 : pylonBayCenter3 {
                mirroredMissilePos = 9;
                UIposition[] = {0.33,0.45};
            };
            class pylonBayCenter5 {
                attachment = "PylonMissile_Bomb_GBU12_x1";
                bay = 3;
                hardpoints[] = {"B_AMRAAM_D_INT","itc_hp_dumb", "itc_hp_smart"};
                maxweight = 1200;
                priority = 5;
                UIposition[] = {0.33,0.5};
            };
            class pylonBayCenter6 : pylonBayCenter5 {
                mirroredMissilePos = 11;
                UIposition[] = {0.33,0.55};
            };
        };
      };
      class VehicleSystemsDisplayManagerComponentLeft;
      class VehicleSystemsDisplayManagerComponentRight;
    };
    class itc_air : itc_air_default_jet {
      mfdApps[] = {"DSMS","TGP","STAT","TAD","STPT","OPT","MAV","FCR"};
      systems[] = {"F181E","UFC","SOI","TAXI","DSMS","MAVERICK","FCR","MFD","MFD_L","MFD_R","HMD","AUTOPILOT","ROVER","AWES_COMPAT"};
      mfdType = "touch";
    };
  };
	class ITC_F181E_Stealth: Plane_Fighter_01_Base_F
	{
		scope = 2;
		displayName = "F-181E (Stealth)";
		radarTargetSize = 0.4;
    class itc_air : itc_air_default_jet {
      mfdApps[] = {"DSMS","TGP","STAT","TAD","STPT","OPT","MAV","FCR"};
      systems[] = {"F181E","UFC","SOI","TAXI","DSMS","MAVERICK","FCR","MFD","MFD_L","MFD_R","HMD","AUTOPILOT","ROVER","AWES_COMPAT"};
      mfdType = "touch";
    };
		class AnimationSources: AnimationSources
		{
			class pylon_1_hide: pylon_1_hide
			{
				initPhase = 1;
			};
			class pylon_2_hide: pylon_2_hide
			{
				initPhase = 1;
			};
			class pylon_3_hide: pylon_3_hide
			{
				initPhase = 1;
			};
			class pylon_4_hide: pylon_4_hide
			{
				initPhase = 1;
			};
		};
		class Components: Components
		{
			class TransportPylonsComponent
			{
				UIPicture = "\A3\Air_F_Jets\Plane_Fighter_01\Data\UI\Fighter_01_3DEN_CA.paa";
				class pylons
				{
					class pylonDummy1
					{
						attachment = "";
						UIposition[] = {10,10};
					};
					class pylonDummy2: pylonDummy1
					{
					};
					class pylonDummy3: pylonDummy1
					{
					};
					class pylonDummy4: pylonDummy1
					{
					};
					class pylonBayRight1
					{
						hardpoints[] = {"B_BIM9X"};
						priority = 10;
						attachment = "PylonMissile_Missile_BIM9X_x1";
						maxweight = 1200;
						UIposition[] = {0.5,0.25};
						bay = 2;
					};
					class pylonBayLeft1: pylonBayRight1
					{
						UIposition[] = {0.16,0.25};
						mirroredMissilePos = 5;
						bay = 1;
					};
					class pylonBayCenter1
					{
            hardpoints[] = {"B_AMRAAM_D_INT","itc_hp_dumb", "itc_hp_smart"};
						priority = 9;
						attachment = "PylonMissile_Missile_AMRAAM_D_INT_x1";
						maxweight = 1200;
						UIposition[] = {0.33,0.3};
						bay = 3;
					};
					class pylonBayCenter2: pylonBayCenter1
					{
						UIposition[] = {0.33,0.35};
						mirroredMissilePos = 7;
					};
					class pylonBayCenter3
					{
            hardpoints[] = {};
						priority = 7;
						attachment = "";
						maxweight = 1200;
						UIposition[] = {0.33,0.4};
						bay = 3;
					};
					class pylonBayCenter4: pylonBayCenter3
					{
						UIposition[] = {0.33,0.45};
						mirroredMissilePos = 9;
					};
					class pylonBayCenter5
					{
            hardpoints[] = {"B_AMRAAM_D_INT","itc_hp_dumb", "itc_hp_smart"};
						priority = 5;
						attachment = "itc_hp_dumb_ITC_ammo_gbu12";
						maxweight = 1200;
						UIposition[] = {0.33,0.5};
						bay = 3;
					};
					class pylonBayCenter6: pylonBayCenter5
					{
						UIposition[] = {0.33,0.55};
						mirroredMissilePos = 11;
					};
				};
				class Bays
				{
					class BayLeft1
					{
						bayOpenTime = 0.5;
						openBayWhenWeaponSelected = 0;
						autoCloseWhenEmptyDelay = 2;
					};
					class BayRight1
					{
						bayOpenTime = 0.5;
						openBayWhenWeaponSelected = 0;
						autoCloseWhenEmptyDelay = 2;
					};
					class BayCenter1
					{
						bayOpenTime = 0.5;
						openBayWhenWeaponSelected = 0;
						autoCloseWhenEmptyDelay = 3;
					};
				};
				class Presets
				{
					class Empty
					{
						displayName = "Empty";
						attachment[] = {};
					};
					class Default
					{
						displayName = "Default";
						attachment[] = {"","","","","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","","","PylonMissile_Bomb_GBU12_x1","PylonMissile_Bomb_GBU12_x1"};
					};
					class AA
					{
						displayName = "AA";
						attachment[] = {"","","","","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1"};
					};
					class Cluster
					{
						displayName = "Cluster";
						attachment[] = {"","","","","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_BIM9X_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","PylonMissile_Missile_AMRAAM_D_INT_x1","","","PylonMissile_1Rnd_BombCluster_01_F","PylonMissile_1Rnd_BombCluster_01_F"};
					};
				};
			};
		};
	};
};
