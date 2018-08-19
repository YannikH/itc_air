
class MFD
{
	class AirplaneHUD
	{
		topLeft = "HUD_top_left";
		topRight = "HUD_top_right";
		bottomLeft = "HUD_bottom_left";
		borderLeft = 0;
		borderRight = 0;
		borderTop = 0;
		borderBottom = 0.2;
		color[] = {0.15,1,0.15,1};
		enableParallax = 1;
		class Bones
		{
			class PlaneOrientation
			{
				type = "fixed";
				pos[] = {0.498,0.38};
			};
			class WeaponAim
			{
				type = "vector";
				source = "weapon";
				pos0[] = {0.498,0.38};
				pos10[] = {1.166,1.215};
			};
			class Target
			{
				type = "vector";
				source = "target";
				pos0[] = {0.498,0.38};
				pos10[] = {1.166,1.215};
			};
			class TargetingPodDir
			{
				source = "pilotcamera";
				type = "vector";
				pos0[] = {0.498,0.38};
				pos10[] = {1.166,1.215};
			};
			class TargetingPodTarget
			{
				source = "pilotcameratarget";
				type = "vector";
				pos0[] = {0.498,0.405};
				pos10[] = {1.166,1.215};
			};
			class ImpactPoint
			{
				type = "vector";
				source = "ImpactPoint";
				pos0[] = {0.5,0.38};
				pos10[] = {1.168,1.215};
			};
			class NormalizeBombCircle
			{
				type = "normalizedorsmaller";
				limit = 0.08;
				aspectRatio = 1.25;
			};
			class Velocity
			{
				type = "vector";
				source = "velocity";
				pos0[] = {0.498,0.38};
				pos10[] = {1.166,1.215};
			};
			class Level0
			{
				type = "horizon";
				pos0[] = {0.5,0.38};
				pos10[] = {1.168,1.215};
				angle = 0;
			};
			class Limit0109
			{
				type = "limit";
				limits[] = {0.1,0.1,0.9,0.9};
			};
			class LimitWaypoint
			{
				type = "limit";
				limits[] = {0.2,0.97,0.8,0.97};
			};
			class WPPoint
			{
				type = "vector";
				source = "WPPoint";
				pos0[] = {0.5,0.38};
				pos10[] = {1.168,1.215};
			};
			class VerticalSpeed
			{
				type = "linear";
				source = "vspeed";
				sourceScale = 1;
				min = -100;
				max = 100;
				minPos[] = {0,0.15};
				maxPos[] = {0,-0.15};
			};
			class HorizonIndicatorBank
			{
				type = "rotational";
				source = "horizonBank";
				sourceScale = 1;
				center[] = {0.065,0.12};
				min = -3.14159;
				max = 3.14159;
				minAngle = 0;
				maxAngle = 360;
				aspectRatio = 1.25;
			};
			class HorizonIndicatorDive: HorizonIndicatorBank
			{
				source = "horizonDive";
				min = -1.5708;
				max = 1.5708;
				minAngle = 90;
				maxAngle = -90;
			};
			class TerrainBone
			{
				type = "linear";
				source = "altitudeAGL";
				sourceScale = 1;
				min = 0;
				max = 200;
				minPos[] = {0,0.88};
				maxPos[] = {0,0.38};
			};
			class MissileFlightTimeRot1
			{
				type = "rotational";
				source = "MissileFlightTime";
				sourceScale = 1;
				center[] = {0,0};
				min = 0;
				max = 0.5;
				minAngle = 0;
				maxAngle = 18;
				aspectRatio = 1.25;
			};
			class MissileFlightTimeRot2: MissileFlightTimeRot1
			{
				maxAngle = 36;
				max = 1;
			};
			class MissileFlightTimeRot3: MissileFlightTimeRot1
			{
				maxAngle = 54;
				max = 1.5;
			};
			class MissileFlightTimeRot4: MissileFlightTimeRot1
			{
				maxAngle = 72;
				max = 2;
			};
			class MissileFlightTimeRot5: MissileFlightTimeRot1
			{
				maxAngle = 90;
				max = 2.5;
			};
			class MissileFlightTimeRot6: MissileFlightTimeRot1
			{
				maxAngle = 108;
				max = 3;
			};
			class MissileFlightTimeRot7: MissileFlightTimeRot1
			{
				maxAngle = 126;
				max = 3.5;
			};
			class MissileFlightTimeRot8: MissileFlightTimeRot1
			{
				maxAngle = 144;
				max = 4;
			};
			class MissileFlightTimeRot9: MissileFlightTimeRot1
			{
				maxAngle = 162;
				max = 4.5;
			};
			class MissileFlightTimeRot10: MissileFlightTimeRot1
			{
				maxAngle = 180;
				max = 5;
			};
			class MissileFlightTimeRot11: MissileFlightTimeRot1
			{
				maxAngle = 198;
				max = 5.5;
			};
			class MissileFlightTimeRot12: MissileFlightTimeRot1
			{
				maxAngle = 216;
				max = 6;
			};
			class MissileFlightTimeRot13: MissileFlightTimeRot1
			{
				maxAngle = 234;
				max = 6.5;
			};
			class MissileFlightTimeRot14: MissileFlightTimeRot1
			{
				maxAngle = 252;
				max = 7;
			};
			class MissileFlightTimeRot15: MissileFlightTimeRot1
			{
				maxAngle = 270;
				max = 7.5;
			};
			class MissileFlightTimeRot16: MissileFlightTimeRot1
			{
				maxAngle = 288;
				max = 8;
			};
			class MissileFlightTimeRot17: MissileFlightTimeRot1
			{
				maxAngle = 306;
				max = 8.5;
			};
			class MissileFlightTimeRot18: MissileFlightTimeRot1
			{
				maxAngle = 324;
				max = 9;
			};
			class MissileFlightTimeRot19: MissileFlightTimeRot1
			{
				maxAngle = 342;
				max = 9.5;
			};
			class MissileFlightTimeRot20: MissileFlightTimeRot1
			{
				maxAngle = 360;
				max = 10;
			};
			class Airport1
			{
				type = "vector";
				source = "airportCorner1";
				pos0[] = {0.5,0.38};
				pos10[] = {1.168,1.215};
			};
			class Airport2: Airport1
			{
				source = "airportCorner2";
			};
			class Airport3: Airport1
			{
				source = "airportCorner3";
			};
			class Airport4: Airport1
			{
				source = "airportCorner4";
			};
			class ILS_H
			{
				type = "ils";
				pos0[] = {0.5,0.38};
				pos3[] = {0.7004,0.38};
			};
			class ILS_W: ILS_H
			{
				pos3[] = {0.5,0.6305};
			};
			class LarAmmoMax
			{
				type = "linear";
				source = "LarAmmoMax";
				sourceScale = 1;
				min = 0;
				max = 1;
				minPos[] = {0,1};
				maxPos[] = {0,0};
			};
			class LarAmmoMin: LarAmmoMax
			{
				source = "LarAmmoMin";
			};
			class LarTargetDist: LarAmmoMax
			{
				source = "LarTargetDist";
			};
		};
		class Draw
		{
			alpha = "user3";
			color[] = {"user0","user1","user2"};
			condition = "on";
			class PlaneOrientationCrosshair
			{
				clipTL[] = {0,1};
				clipBR[] = {1,0};
				type = "line";
				width = 4;
				points[] = {{"PlaneOrientation",{-0.01,0},1},{"PlaneOrientation",{0.01,0},1},{},{"PlaneOrientation",{0,-0.0125},1},{"PlaneOrientation",{0,0.0125},1},{}};
			};
			class PlaneMovementCrosshair
			{
				clipTL[] = {0,1};
				clipBR[] = {1,0};
				type = "line";
				width = 4;
				points[] = {{"Velocity",{0,-0.025},1},{"Velocity",{0.01,-0.02165},1},{"Velocity",{0.01732,-0.0125},1},{"Velocity",{0.02,0},1},{"Velocity",{0.01732,0.0125},1},{"Velocity",{0.01,0.02165},1},{"Velocity",{0,0.025},1},{"Velocity",{-0.01,0.02165},1},{"Velocity",{-0.01732,0.0125},1},{"Velocity",{-0.02,0},1},{"Velocity",{-0.01732,-0.0125},1},{"Velocity",{-0.01,-0.02165},1},{"Velocity",{0,-0.025},1},{},{"Velocity",{0.04,0},1},{"Velocity",{0.02,0},1},{},{"Velocity",{-0.04,0},1},{"Velocity",{-0.02,0},1},{},{"Velocity",{0,-0.05},1},{"Velocity",{0,-0.025},1},{}};
			};
			class MachineGunCrosshairGroup
			{
				type = "group";
				condition = "mgun";
				class MachineGunCrosshair
				{
					type = "line";
					width = 3;
					points[] = {{"ImpactPoint",{0,-0.1125},1},{"ImpactPoint",{0,-0.1},1},{},{"ImpactPoint",{0,0.1125},1},{"ImpactPoint",{0,0.1},1},{},{"ImpactPoint",{-0.09,0},1},{"ImpactPoint",{-0.08,0},1},{},{"ImpactPoint",{0.09,0},1},{"ImpactPoint",{0.08,0},1},{},{"ImpactPoint",{0,-0.0025},1},{"ImpactPoint",{0,0.0025},1},{},{"ImpactPoint",{-0.002,0},1},{"ImpactPoint",{0.002,0},1},{}};
				};
				class Circle
				{
					type = "line";
					width = 6;
					points[] = {{"ImpactPoint",{0,-0.08},1},{"ImpactPoint",{0,-0.1},1},{"MissileFlightTimeRot1",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot2",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot3",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot4",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot5",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot6",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot7",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot8",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot9",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot10",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot11",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot12",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot13",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot14",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot15",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot16",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot17",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot18",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot19",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot20",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot20",{0,0.064},1,"ImpactPoint",1}};
				};
				class Circle_Min_Range
				{
					type = "line";
					width = 3;
					points[] = {{"ImpactPoint",{0,-0.1},1},{"ImpactPoint",{0.013888,-0.09848},1},{"ImpactPoint",{0.02736,-0.09397},1},{"ImpactPoint",{0.04,-0.0866},1},{"ImpactPoint",{0.051424,-0.0766},1},{"ImpactPoint",{0.06128,-0.06428},1},{"ImpactPoint",{0.06928,-0.05},1},{"ImpactPoint",{0.075176,-0.0342},1},{"ImpactPoint",{0.078784,-0.01736},1},{"ImpactPoint",{0.08,0},1},{"ImpactPoint",{0.078784,0.01736},1},{"ImpactPoint",{0.075176,0.0342},1},{"ImpactPoint",{0.06928,0.05},1},{"ImpactPoint",{0.06128,0.06428},1},{"ImpactPoint",{0.051424,0.0766},1},{"ImpactPoint",{0.04,0.0866},1},{"ImpactPoint",{0.02736,0.09397},1},{"ImpactPoint",{0.013888,0.09848},1},{"ImpactPoint",{0,0.1},1},{"ImpactPoint",{-0.013888,0.09848},1},{"ImpactPoint",{-0.02736,0.09397},1},{"ImpactPoint",{-0.04,0.0866},1},{"ImpactPoint",{-0.051424,0.0766},1},{"ImpactPoint",{-0.06128,0.06428},1},{"ImpactPoint",{-0.06928,0.05},1},{"ImpactPoint",{-0.075176,0.0342},1},{"ImpactPoint",{-0.078784,0.01736},1},{"ImpactPoint",{-0.08,0},1},{"ImpactPoint",{-0.078784,-0.01736},1},{"ImpactPoint",{-0.075176,-0.0342},1},{"ImpactPoint",{-0.06928,-0.05},1},{"ImpactPoint",{-0.06128,-0.06428},1},{"ImpactPoint",{-0.051424,-0.0766},1},{"ImpactPoint",{-0.04,-0.0866},1},{"ImpactPoint",{-0.02736,-0.09397},1},{"ImpactPoint",{-0.013888,-0.09848},1},{"ImpactPoint",{0,-0.1},1}};
				};
				class Distance
				{
					type = "text";
					source = "ImpactDistance";
					sourceScale = 0.001;
					sourcePrecision = 1;
					max = 15;
					align = "center";
					scale = 1;
					pos[] = {"ImpactPoint",{-0.002,0.11},1};
					right[] = {"ImpactPoint",{0.045,0.11},1};
					down[] = {"ImpactPoint",{-0.002,0.15},1};
				};
			};
			class AAMissileCrosshairGroup
			{
				type = "group";
				condition = "AAmissile";
				class AAMissileCrosshair
				{
					type = "line";
					width = 4;
					points[] = {{"WeaponAim",{0,-0.3125},1},{"WeaponAim",{0.0434,-0.30775},1},{"WeaponAim",{0.0855,-0.293656},1},{"WeaponAim",{0.125,-0.270625},1},{"WeaponAim",{0.1607,-0.239375},1},{"WeaponAim",{0.1915,-0.200875},1},{"WeaponAim",{0.2165,-0.15625},1},{"WeaponAim",{0.234925,-0.106875},1},{"WeaponAim",{0.2462,-0.05425},1},{"WeaponAim",{0.25,0},1},{"WeaponAim",{0.2462,0.05425},1},{"WeaponAim",{0.234925,0.106875},1},{"WeaponAim",{0.2165,0.15625},1},{"WeaponAim",{0.1915,0.200875},1},{"WeaponAim",{0.1607,0.239375},1},{"WeaponAim",{0.125,0.270625},1},{"WeaponAim",{0.0855,0.293656},1},{"WeaponAim",{0.0434,0.30775},1},{"WeaponAim",{0,0.3125},1},{"WeaponAim",{-0.0434,0.30775},1},{"WeaponAim",{-0.0855,0.293656},1},{"WeaponAim",{-0.125,0.270625},1},{"WeaponAim",{-0.1607,0.239375},1},{"WeaponAim",{-0.1915,0.200875},1},{"WeaponAim",{-0.2165,0.15625},1},{"WeaponAim",{-0.234925,0.106875},1},{"WeaponAim",{-0.2462,0.05425},1},{"WeaponAim",{-0.25,0},1},{"WeaponAim",{-0.2462,-0.05425},1},{"WeaponAim",{-0.234925,-0.106875},1},{"WeaponAim",{-0.2165,-0.15625},1},{"WeaponAim",{-0.1915,-0.200875},1},{"WeaponAim",{-0.1607,-0.239375},1},{"WeaponAim",{-0.125,-0.270625},1},{"WeaponAim",{-0.0855,-0.293656},1},{"WeaponAim",{-0.0434,-0.30775},1},{"WeaponAim",{0,-0.3125},1}};
				};
			};
			class ATMissileCrosshairGroup
			{
				condition = "ATmissile";
				type = "group";
				class ATMissileCrosshair
				{
					type = "line";
					width = 4;
					points[] = {{"WeaponAim",{-0.15,-0.15},1},{"WeaponAim",{-0.15,-0.13},1},{},{"WeaponAim",{-0.15,0.15},1},{"WeaponAim",{-0.15,0.13},1},{},{"WeaponAim",{0.15,-0.15},1},{"WeaponAim",{0.15,-0.13},1},{},{"WeaponAim",{0.15,0.15},1},{"WeaponAim",{0.15,0.13},1},{},{"WeaponAim",{-0.15,-0.15},1},{"WeaponAim",{-0.13,-0.15},1},{},{"WeaponAim",{-0.15,0.15},1},{"WeaponAim",{-0.13,0.15},1},{},{"WeaponAim",{0.15,-0.15},1},{"WeaponAim",{0.13,-0.15},1},{},{"WeaponAim",{0.15,0.15},1},{"WeaponAim",{0.13,0.15},1}};
				};
			};
			class RocketCrosshairGroup
			{
				type = "group";
				condition = "Rocket";
				class MachineGunCrosshair
				{
					type = "line";
					width = 3;
					points[] = {{"ImpactPoint",{0,-0.05},1},{"ImpactPoint",{0,-0.025},1},{},{"ImpactPoint",{0,0.05},1},{"ImpactPoint",{0,0.025},1},{},{"ImpactPoint",{-0.04,0},1},{"ImpactPoint",{-0.02,0},1},{},{"ImpactPoint",{0.04,0},1},{"ImpactPoint",{0.02,0},1},{},{"ImpactPoint",{0.01,-0.05},1},{"ImpactPoint",{-0.01,-0.05},1},{},{"ImpactPoint",{0,-0.0025},1},{"ImpactPoint",{0,0.0025},1},{},{"ImpactPoint",{-0.002,0},1},{"ImpactPoint",{0.002,0},1},{}};
				};
				class Distance
				{
					type = "text";
					source = "ImpactDistance";
					sourceScale = 0.001;
					sourcePrecision = 1;
					max = 15;
					align = "center";
					scale = 1;
					pos[] = {"ImpactPoint",{-0.002,0.07},1};
					right[] = {"ImpactPoint",{0.045,0.07},1};
					down[] = {"ImpactPoint",{-0.002,0.11},1};
				};
			};
			class BombCrosshairGroup
			{
				type = "group";
				condition = "bomb";
				class BombCrosshair
				{
					width = 4;
					type = "line";
					points[] = {{"ImpactPoint",{0,0.1125},1},{"ImpactPoint",{0,0.1},1},{},{"ImpactPoint",{-0.09,0},1},{"ImpactPoint",{-0.08,0},1},{},{"ImpactPoint",{0.09,0},1},{"ImpactPoint",{0.08,0},1},{},{"ImpactPoint",{0,-0.0025},1},{"ImpactPoint",{0,0.0025},1},{},{"ImpactPoint",{-0.002,0},1},{"ImpactPoint",{0.002,0},1},{},{"ImpactPoint",{0,-0.1},1},{"ImpactPoint",{0.013888,-0.09848},1},{"ImpactPoint",{0.02736,-0.09397},1},{"ImpactPoint",{0.04,-0.0866},1},{"ImpactPoint",{0.051424,-0.0766},1},{"ImpactPoint",{0.06128,-0.06428},1},{"ImpactPoint",{0.06928,-0.05},1},{"ImpactPoint",{0.075176,-0.0342},1},{"ImpactPoint",{0.078784,-0.01736},1},{"ImpactPoint",{0.08,0},1},{"ImpactPoint",{0.078784,0.01736},1},{"ImpactPoint",{0.075176,0.0342},1},{"ImpactPoint",{0.06928,0.05},1},{"ImpactPoint",{0.06128,0.06428},1},{"ImpactPoint",{0.051424,0.0766},1},{"ImpactPoint",{0.04,0.0866},1},{"ImpactPoint",{0.02736,0.09397},1},{"ImpactPoint",{0.013888,0.09848},1},{"ImpactPoint",{0,0.1},1},{"ImpactPoint",{-0.013888,0.09848},1},{"ImpactPoint",{-0.02736,0.09397},1},{"ImpactPoint",{-0.04,0.0866},1},{"ImpactPoint",{-0.051424,0.0766},1},{"ImpactPoint",{-0.06128,0.06428},1},{"ImpactPoint",{-0.06928,0.05},1},{"ImpactPoint",{-0.075176,0.0342},1},{"ImpactPoint",{-0.078784,0.01736},1},{"ImpactPoint",{-0.08,0},1},{"ImpactPoint",{-0.078784,-0.01736},1},{"ImpactPoint",{-0.075176,-0.0342},1},{"ImpactPoint",{-0.06928,-0.05},1},{"ImpactPoint",{-0.06128,-0.06428},1},{"ImpactPoint",{-0.051424,-0.0766},1},{"ImpactPoint",{-0.04,-0.0866},1},{"ImpactPoint",{-0.02736,-0.09397},1},{"ImpactPoint",{-0.013888,-0.09848},1},{"ImpactPoint",{0,-0.1},1},{},{},{"ImpactPoint",-1,"Velocity",1,"NormalizeBombCircle",1,"ImpactPoint",1,{0,0},1},{"Velocity",1,"Limit0109",1,{0,0},1}};
				};
				class Circle
				{
					type = "line";
					width = 6;
					points[] = {{"ImpactPoint",{0,-0.08},1},{"ImpactPoint",{0,-0.1},1},{"MissileFlightTimeRot1",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot2",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot3",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot4",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot5",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot6",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot7",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot8",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot9",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot10",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot11",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot12",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot13",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot14",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot15",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot16",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot17",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot18",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot19",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot20",{0,0.08},1,"ImpactPoint",1},{"MissileFlightTimeRot20",{0,0.064},1,"ImpactPoint",1}};
				};
				class Distance
				{
					type = "text";
					source = "ImpactDistance";
					sourceScale = 0.001;
					sourcePrecision = 1;
					max = 15;
					align = "center";
					scale = 1;
					pos[] = {"ImpactPoint",{-0.002,0.11},1};
					right[] = {"ImpactPoint",{0.045,0.11},1};
					down[] = {"ImpactPoint",{-0.002,0.15},1};
				};
			};
			class WeaponName
			{
				type = "text";
				source = "weapon";
				sourceScale = 1;
				align = "right";
				scale = 1;
				pos[] = {{0.05,0.85},1};
				right[] = {{0.09,0.85},1};
				down[] = {{0.05,0.89},1};
			};
			class AmmoCount
			{
				type = "text";
				source = "ammo";
				sourceScale = 1;
				align = "left";
				scale = 1;
				pos[] = {{0.95,0.85},1};
				right[] = {{0.99,0.85},1};
				down[] = {{0.95,0.89},1};
			};
			class StallGroup
			{
				type = "group";
				condition = "stall";
				color[] = {1,0,0};
				blinkingPattern[] = {0.2,0.2};
				blinkingStartsOn = 1;
				class StallText
				{
					type = "text";
					source = "static";
					text = "STALL";
					align = "center";
					scale = 1;
					pos[] = {{0.5,0.25},1};
					right[] = {{0.54,0.25},1};
					down[] = {{0.5,0.29},1};
				};
			};
			class PitchNumber
			{
				type = "text";
				source = "horizonDive";
				sourceScale = 57.2958;
				align = "right";
				scale = 1;
				pos[] = {{0.13,0.225},1};
				right[] = {{0.17,0.225},1};
				down[] = {{0.13,0.265},1};
			};
			class PitchText
			{
				type = "text";
				source = "static";
				text = "PITCH";
				align = "left";
				scale = 1;
				pos[] = {{0.11,0.225},1};
				right[] = {{0.15,0.225},1};
				down[] = {{0.11,0.265},1};
			};
			class RollNumber
			{
				type = "text";
				source = "horizonBank";
				sourceScale = 57.2958;
				align = "right";
				scale = 1;
				pos[] = {{0.13,0.27},1};
				right[] = {{0.17,0.27},1};
				down[] = {{0.13,0.31},1};
			};
			class RollText
			{
				type = "text";
				source = "static";
				text = "ROLL";
				align = "left";
				scale = 1;
				pos[] = {{0.11,0.27},1};
				right[] = {{0.15,0.27},1};
				down[] = {{0.11,0.31},1};
			};
			class SpeedNumber
			{
				type = "text";
				source = "speed";
				sourceScale = 3.6;
				align = "right";
				scale = 1;
				pos[] = {{0.13,0.36},1};
				right[] = {{0.17,0.36},1};
				down[] = {{0.13,0.4},1};
			};
			class SpeedText
			{
				type = "text";
				source = "static";
				text = "SPEED";
				align = "left";
				scale = 1;
				pos[] = {{0.11,0.36},1};
				right[] = {{0.15,0.36},1};
				down[] = {{0.11,0.4},1};
			};
			class SpeedSeparator
			{
				type = "line";
				width = 2;
				points[] = {{{0.12,0.225},1},{{0.12,0.633},1}};
			};
			class FlapsGroup
			{
				type = "group";
				condition = "flaps";
				class FlapsText
				{
					type = "text";
					source = "static";
					text = "FLAPS";
					align = "left";
					scale = 1;
					pos[] = {{0.11,0.45},1};
					right[] = {{0.15,0.45},1};
					down[] = {{0.11,0.49},1};
				};
			};
			class GearGroup
			{
				type = "group";
				condition = "ils";
				class GearText
				{
					type = "text";
					source = "static";
					text = "GEAR";
					align = "left";
					scale = 1;
					pos[] = {{0.11,0.495},1};
					right[] = {{0.15,0.495},1};
					down[] = {{0.11,0.535},1};
				};
			};
			class ILS
			{
				condition = "ils";
				class Glideslope
				{
					clipTL[] = {0,0};
					clipBR[] = {1,1};
					class ILS
					{
						type = "line";
						points[] = {{"ILS_W",{-0.24,0},1},{"ILS_W",{0.24,0},1},{},{"ILS_W",{-0.24,-0.03},1},{"ILS_W",{-0.24,0.03},1},{},{"ILS_W",{-0.12,-0.0225},1},{"ILS_W",{-0.12,0.0225},1},{},{"ILS_W",{0,-0.03},1},{"ILS_W",{0,0.03},1},{},{"ILS_W",{0.12,-0.0225},1},{"ILS_W",{0.12,0.0225},1},{},{"ILS_W",{0.24,-0.03},1},{"ILS_W",{0.24,0.03},1},{},{"ILS_H",{0,-0.3},1},{"ILS_H",{0,0.3},1},{},{"ILS_H",{-0.024,-0.3},1},{"ILS_H",{0.024,-0.3},1},{},{"ILS_H",{-0.018,-0.15},1},{"ILS_H",{0.018,-0.15},1},{},{"ILS_H",{-0.024,0},1},{"ILS_H",{0.024,0},1},{},{"ILS_H",{-0.018,0.15},1},{"ILS_H",{0.018,0.15},1},{},{"ILS_H",{-0.024,0.3},1},{"ILS_H",{0.024,0.3},1}};
					};
					class airport
					{
						type = "line";
						points[] = {{"airport1",1},{"airport2",1},{"airport4",1},{"airport3",1},{"airport1",1}};
					};
				};
			};
			class LightsGroup
			{
				type = "group";
				condition = "lights";
				class LightsText
				{
					type = "text";
					source = "static";
					text = "LLS";
					align = "left";
					scale = 1;
					pos[] = {{0.11,0.54},1};
					right[] = {{0.15,0.54},1};
					down[] = {{0.11,0.58},1};
				};
			};
			class CollisionLightsGroup
			{
				type = "group";
				condition = "collisionlights";
				class CollisionLightsText
				{
					type = "text";
					source = "static";
					text = "COLL";
					align = "left";
					scale = 1;
					pos[] = {{0.11,0.585},1};
					right[] = {{0.15,0.585},1};
					down[] = {{0.11,0.625},1};
				};
			};
			class Climb
			{
				type = "line";
				width = 1;
				points[] = {{"VerticalSpeed",{0.875,0.22},1},{"VerticalSpeed",{0.875,0.54},1},{},{"VerticalSpeed",{0.869,0.23},1},{"VerticalSpeed",{0.874,0.23},1},{},{"VerticalSpeed",{0.865,0.26},1},{"VerticalSpeed",{0.874,0.26},1},{},{"VerticalSpeed",{0.865,0.29},1},{"VerticalSpeed",{0.874,0.29},1},{},{"VerticalSpeed",{0.865,0.32},1},{"VerticalSpeed",{0.874,0.32},1},{},{"VerticalSpeed",{0.865,0.35},1},{"VerticalSpeed",{0.874,0.35},1},{},{"VerticalSpeed",{0.855,0.38},1},{"VerticalSpeed",{0.874,0.38},1},{},{"VerticalSpeed",{0.874,0.41},1},{"VerticalSpeed",{0.865,0.41},1},{},{"VerticalSpeed",{0.874,0.44},1},{"VerticalSpeed",{0.865,0.44},1},{},{"VerticalSpeed",{0.874,0.47},1},{"VerticalSpeed",{0.865,0.47},1},{},{"VerticalSpeed",{0.874,0.5},1},{"VerticalSpeed",{0.865,0.5},1},{},{"VerticalSpeed",{0.874,0.53},1},{"VerticalSpeed",{0.869,0.53},1}};
			};
			class ClimbMinGroup
			{
				type = "group";
				clipTL[] = {0,0.4};
				clipBR[] = {1,0.76};
				class ClimbMin
				{
					type = "text";
					source = "static";
					text = "-100";
					align = "left";
					scale = 1;
					pos[] = {"VerticalSpeed",{0.866,0.5175},1};
					right[] = {"VerticalSpeed",{0.891,0.5175},1};
					down[] = {"VerticalSpeed",{0.866,0.5425},1};
				};
			};
			class ClimbMaxGroup
			{
				type = "group";
				clipTL[] = {0,0};
				clipBR[] = {1,0.36};
				class ClimbMax
				{
					type = "text";
					source = "static";
					text = "100";
					align = "left";
					scale = 1;
					pos[] = {"VerticalSpeed",{0.866,0.2175},1};
					right[] = {"VerticalSpeed",{0.891,0.2175},1};
					down[] = {"VerticalSpeed",{0.866,0.2425},1};
				};
			};
			class ClimbText
			{
				type = "text";
				source = "static";
				text = "CLIMB";
				align = "left";
				scale = 1;
				pos[] = {{0.87,0.721},1};
				right[] = {{0.895,0.721},1};
				down[] = {{0.87,0.746},1};
			};
			class TerrainGroup
			{
				type = "group";
				clipTL[] = {0,0};
				clipBR[] = {1,0.7};
				class TerrainLine
				{
					type = "line";
					width = 1;
					points[] = {{"TerrainBone",{0.74,0},1},{"TerrainBone",{0.909,0},1}};
				};
				class TerrainText
				{
					type = "text";
					source = "static";
					text = "TERRAIN";
					align = "right";
					scale = 1;
					pos[] = {"TerrainBone",{0.74,0.003},1};
					right[] = {"TerrainBone",{0.765,0.003},1};
					down[] = {"TerrainBone",{0.74,0.028},1};
				};
				class TerrainNumber
				{
					type = "text";
					source = "altitudeAGL";
					sourceScale = 1;
					align = "right";
					scale = 1;
					pos[] = {"TerrainBone",{0.74,-0.043},1};
					right[] = {"TerrainBone",{0.78,-0.043},1};
					down[] = {"TerrainBone",{0.74,-0.003},1};
				};
			};
			class AltitudeNumber
			{
				type = "text";
				source = "altitudeASL";
				sourceScale = 1;
				align = "left";
				scale = 1;
				pos[] = {{0.845,0.36},1};
				right[] = {{0.885,0.36},1};
				down[] = {{0.845,0.4},1};
			};
			class AltitudeText
			{
				type = "text";
				source = "static";
				text = "ASL";
				align = "right";
				scale = 1;
				pos[] = {{0.88,0.72},1};
				right[] = {{0.92,0.72},1};
				down[] = {{0.88,0.76},1};
			};
			class AltitudeArrow
			{
				type = "line";
				width = 3;
				points[] = {{{0.857,0.364},1},{{0.875,0.38},1},{{0.857,0.396},1},{},{{0.898,0.364},1},{{0.88,0.38},1},{{0.898,0.396},1}};
			};
			class AltitudeScale
			{
				type = "scale";
				horizontal = 0;
				source = "altitudeASL";
				sourceScale = 1;
				min = 0;
				width = 4;
				top = 0.71;
				center = 0.38;
				bottom = 0.05;
				lineXleft = 0.88;
				lineYright = 0.89;
				lineXleftMajor = 0.88;
				lineYrightMajor = 0.9;
				majorLineEach = 5;
				numberEach = 10;
				step = 10;
				stepSize = 0.025;
				align = "right";
				scale = 1;
				pos[] = {0.91,0.69};
				right[] = {0.95,0.69};
				down[] = {0.91,0.73};
			};
			class HeadingArrows
			{
				type = "line";
				width = 3;
				points[] = {{{0.484,0.897},1},{{0.5,0.915},1},{{0.516,0.897},1},{},{"WPPoint",1,"LimitWaypoint",1,{-0.016,0.018},1},{"WPPoint",1,"LimitWaypoint",1,{0,0},1},{"WPPoint",1,"LimitWaypoint",1,{0.016,0.018},1}};
			};
			class HeadingScale
			{
				type = "scale";
				horizontal = 1;
				source = "heading";
				sourceScale = 1;
				width = 4;
				top = 0.05;
				center = 0.5;
				bottom = 0.95;
				lineXleft = 0.93;
				lineYright = 0.92;
				lineXleftMajor = 0.94;
				lineYrightMajor = 0.92;
				majorLineEach = 3;
				numberEach = 9;
				step = 5;
				stepSize = 0.02;
				align = "center";
				scale = 1;
				pos[] = {0.05,0.94};
				right[] = {0.09,0.94};
				down[] = {0.05,0.98};
			};
			class WP
			{
				condition = "wpvalid";
				class WPdist
				{
					type = "text";
					source = "wpdist";
					sourceScale = 0.001;
					sourcePrecision = 1;
					align = "right";
					scale = 1;
					pos[] = {{0.054,0.740625},1};
					down[] = {{0.054,0.788125},1};
					right[] = {{0.094,0.740625},1};
				};
				class WPIndex
				{
					type = "text";
					source = "wpIndex";
					sourceScale = 1;
					sourceLength = 2;
					align = "right";
					scale = 1;
					pos[] = {{0.107,0.708125},1};
					right[] = {{0.147,0.708125},1};
					down[] = {{0.107,0.755625},1};
				};
				class WPstatic
				{
					type = "text";
					source = "static";
					text = "WP";
					scale = 1;
					sourceScale = 1;
					align = "right";
					pos[] = {{"0.045+0.01",0.7135},1};
					right[] = {{0.095,0.7135},1};
					down[] = {{"0.045+0.01",0.7535},1};
				};
				class WPKM
				{
					type = "text";
					source = "static";
					text = "KM";
					scale = 1;
					sourceScale = 1;
					align = "right";
					pos[] = {{"0.045+0.05",0.7505},1};
					right[] = {{0.135,0.7505},1};
					down[] = {{"0.045+0.05",0.7855},1};
				};
			};
			class HorizontalLine
			{
				clipTL[] = {0.2,0};
				clipBR[] = {0.8,0.76};
				class HorizontalLineDraw
				{
					type = "line";
					source = "Level0";
					points[] = {{"Level0",{-0.225,0},1},{"Level0",{-0.1875,0},1},{},{"Level0",{-0.15,0},1},{"Level0",{-0.1125,0},1},{},{"Level0",{-0.075,0},1},{"Level0",{-0.0375,0},1},{},{"Level0",{0.0375,0},1},{"Level0",{0.075,0},1},{},{"Level0",{0.1125,0},1},{"Level0",{0.15,0},1},{},{"Level0",{0.1875,0},1},{"Level0",{0.225,0},1}};
				};
			};
			class HorizonIndicatorBackground
			{
				type = "line";
				width = 1;
				points[] = {{{0.000599995,0.12},1},{{0.1294,0.12},1}};
			};
			class HorizonIndicator
			{
				type = "line";
				width = 4;
				points[] = {{"HorizonIndicatorBank",{-0.0552,0},1},{"HorizonIndicatorBank",{-0.046,0},1},{"HorizonIndicatorBank",{-0.0454342,0.0079856},1},{"HorizonIndicatorBank",{-0.0432262,0.015732},1},{"HorizonIndicatorBank",{-0.039836,0.023},1},{"HorizonIndicatorBank",{-0.035236,0.0295688},1},{"HorizonIndicatorBank",{-0.0295688,0.035236},1},{"HorizonIndicatorBank",{-0.023,0.039836},1},{"HorizonIndicatorBank",{-0.015732,0.0432262},1},{"HorizonIndicatorBank",{-0.0079856,0.0454342},1},{"HorizonIndicatorBank",{0,0.046},1},{"HorizonIndicatorBank",{0.0079856,0.0454342},1},{"HorizonIndicatorBank",{0.015732,0.0432262},1},{"HorizonIndicatorBank",{0.023,0.039836},1},{"HorizonIndicatorBank",{0.0295688,0.035236},1},{"HorizonIndicatorBank",{0.035236,0.0295688},1},{"HorizonIndicatorBank",{0.039836,0.023},1},{"HorizonIndicatorBank",{0.0432262,0.015732},1},{"HorizonIndicatorBank",{0.0454342,0.0079856},1},{"HorizonIndicatorBank",{0.046,0},1},{"HorizonIndicatorBank",{0.0552,0},1}};
			};
			class RadarBoxes
			{
				type = "radar";
				pos0[] = {0.498,0.38};
				pos10[] = {1.166,1.215};
				width = 4;
				points[] = {{{-0.002,-0.0025},1},{{0.002,-0.0025},1},{{0.002,0.0025},1},{{-0.002,0.0025},1},{{-0.002,-0.0025},1}};
			};
			class TargetDiamond
			{
				class shape
				{
					type = "line";
					width = 4;
					points[] = {{"Target",1,"Limit0109",1,{0.02,0.025},1},{"Target",1,"Limit0109",1,{-0.02,0.025},1},{"Target",1,"Limit0109",1,{-0.02,-0.025},1},{"Target",1,"Limit0109",1,{0.02,-0.025},1},{"Target",1,"Limit0109",1,{0.02,0.025},1}};
				};
			};
			class TargetLocked
			{
				condition = "missilelocked";
				class shape
				{
					type = "line";
					width = 4;
					points[] = {{"Target",1,"Limit0109",1,{0,-0.0375},1},{"Target",1,"Limit0109",1,{0.03,0},1},{"Target",1,"Limit0109",1,{0,0.0375},1},{"Target",1,"Limit0109",1,{-0.03,0},1},{"Target",1,"Limit0109",1,{0,-0.0375},1}};
				};
			};
			class TargetingPodGroup
			{
				condition = "1-pilotcameralock";
				class TargetingPodDir
				{
					type = "line";
					width = 3;
					points[] = {{"TargetingPodDir",1,{0.0208056,0.00517311},1},{"TargetingPodDir",1,{0.0208056,-0.00517311},1},{},{"TargetingPodDir",1,{0.0176381,-0.0147318},1},{"TargetingPodDir",1,{0.0117854,-0.0220477},1},{},{"TargetingPodDir",1,{0.00413849,-0.026007},1},{"TargetingPodDir",1,{-0.00413849,-0.026007},1},{},{"TargetingPodDir",1,{-0.0117854,-0.0220477},1},{"TargetingPodDir",1,{-0.0176381,-0.0147318},1},{},{"TargetingPodDir",1,{-0.0208056,-0.00517311},1},{"TargetingPodDir",1,{-0.0208056,0.00517312},1},{},{"TargetingPodDir",1,{-0.0176381,0.0147318},1},{"TargetingPodDir",1,{-0.0117854,0.0220477},1},{},{"TargetingPodDir",1,{-0.00413849,0.026007},1},{"TargetingPodDir",1,{0.00413849,0.026007},1},{},{"TargetingPodDir",1,{0.0117854,0.0220477},1},{"TargetingPodDir",1,{0.0176381,0.0147318},1},{},{"TargetingPodDir",1,{0.0208056,0.0051731},1},{"TargetingPodDir",1,{0.0208056,-0.00517312},1},{},{"TargetingPodDir",1,{0.0176381,-0.0147318},1},{"TargetingPodDir",1,{0.0117854,-0.0220477},1},{},{"TargetingPodDir",1,{0.00413849,-0.026007},1},{"TargetingPodDir",1,{-0.0041385,-0.026007},1},{},{"TargetingPodDir",1,{-0.0117854,-0.0220477},1},{"TargetingPodDir",1,{-0.0176381,-0.0147318},1},{},{}};
				};
			};
			class TargetingPodGroupOn
			{
				condition = "pilotcameralock";
				class TargetingPodDir
				{
					type = "line";
					width = 3;
					points[] = {{"TargetingPodTarget",1,"Limit0109",1,{0.0208056,0.00517311},1},{"TargetingPodTarget",1,"Limit0109",1,{0.0208056,-0.00517311},1},{},{"TargetingPodTarget",1,"Limit0109",1,{0.0176381,-0.0147318},1},{"TargetingPodTarget",1,"Limit0109",1,{0.0117854,-0.0220477},1},{},{"TargetingPodTarget",1,"Limit0109",1,{0.00413849,-0.026007},1},{"TargetingPodTarget",1,"Limit0109",1,{-0.00413849,-0.026007},1},{},{"TargetingPodTarget",1,"Limit0109",1,{-0.0117854,-0.0220477},1},{"TargetingPodTarget",1,"Limit0109",1,{-0.0176381,-0.0147318},1},{},{"TargetingPodTarget",1,"Limit0109",1,{-0.0208056,-0.00517311},1},{"TargetingPodTarget",1,"Limit0109",1,{-0.0208056,0.00517312},1},{},{"TargetingPodTarget",1,"Limit0109",1,{-0.0176381,0.0147318},1},{"TargetingPodTarget",1,"Limit0109",1,{-0.0117854,0.0220477},1},{},{"TargetingPodTarget",1,"Limit0109",1,{-0.00413849,0.026007},1},{"TargetingPodTarget",1,"Limit0109",1,{0.00413849,0.026007},1},{},{"TargetingPodTarget",1,"Limit0109",1,{0.0117854,0.0220477},1},{"TargetingPodTarget",1,"Limit0109",1,{0.0176381,0.0147318},1},{},{"TargetingPodTarget",1,"Limit0109",1,{0.0208056,0.0051731},1},{"TargetingPodTarget",1,"Limit0109",1,{0.0208056,-0.00517312},1},{},{"TargetingPodTarget",1,"Limit0109",1,{0.0176381,-0.0147318},1},{"TargetingPodTarget",1,"Limit0109",1,{0.0117854,-0.0220477},1},{},{"TargetingPodTarget",1,"Limit0109",1,{0.00413849,-0.026007},1},{"TargetingPodTarget",1,"Limit0109",1,{-0.0041385,-0.026007},1},{},{"TargetingPodTarget",1,"Limit0109",1,{-0.0117854,-0.0220477},1},{"TargetingPodTarget",1,"Limit0109",1,{-0.0176381,-0.0147318},1},{},{}};
				};
			};
			class LAR
			{
				type = "group";
				condition = "(AAmissile + missilelocked)/2";
				class Lines
				{
					type = "line";
					width = 4;
					points[] = {{{0.21,0.55},1},{{0.19,0.55},1},{{0.19,0.77},1},{{0.21,0.77},1},{},{{0.21,0.715},1},{{0.19,0.715},1},{},{{0.21,0.66},1},{{0.19,0.66},1},{},{{0.21,0.605},1},{{0.19,0.605},1},{},{"LarTargetDist",-0.22,{0.17,0.79},1},{"LarTargetDist",-0.22,{0.19,0.77},1},{"LarTargetDist",-0.22,{0.17,0.75},1},{}};
				};
				class Poly
				{
					type = "polygon";
					points[] = {{{"LarAmmoMin",-0.22,{0.191,0.77},1},{"LarAmmoMax",-0.22,{0.191,0.77},1},{"LarAmmoMax",-0.22,{0.208,0.77},1},{"LarAmmoMin",-0.22,{0.208,0.77},1}}};
				};
				class TopText
				{
					type = "text";
					source = "LarTop";
					sourceScale = 0.001;
					scale = 1;
					pos[] = {{0.22,0.53},1};
					right[] = {{0.26,0.53},1};
					down[] = {{0.22,0.57},1};
					align = "right";
				};
				class MiddleText: TopText
				{
					source = "LarTop";
					sourcePrecision = -1;
					sourceScale = 0.0005;
					pos[] = {{0.22,0.64},1};
					right[] = {{0.26,0.64},1};
					down[] = {{0.22,0.68},1};
				};
				class SpeedText: TopText
				{
					source = "LarTargetSpeed";
					align = "left";
					sourceScale = 3.6;
					pos[] = {"LarTargetDist",-0.22,{0.16,0.75},1};
					right[] = {"LarTargetDist",-0.22,{0.2,0.75},1};
					down[] = {"LarTargetDist",-0.22,{0.16,0.79},1};
				};
			};
		};
	};
	class MFD_Left
	{
		topLeft = "MFD_1_top_left";
		topRight = "MFD_1_top_right";
		bottomLeft = "MFD_1_bottom_left";
		borderLeft = 0;
		borderRight = 0;
		borderTop = 0.1;
		borderBottom = 0;
		color[] = {0.15,1,0.15,1};
		enableParallax = 0;
		class Bones
		{
			class PylonAmmo1
			{
				type = "linear";
				source = "PylonAmmoRelative";
				sourceIndex = 1;
				sourceScale = 1;
				min = 0;
				max = 1;
				minPos[] = {0,0};
				maxPos[] = {0,0.0517578};
			};
			class PylonAmmo2: PylonAmmo1
			{
				sourceIndex = 2;
			};
			class PylonAmmo3: PylonAmmo1
			{
				sourceIndex = 3;
			};
			class PylonAmmo4: PylonAmmo1
			{
				sourceIndex = 4;
			};
			class PylonAmmo5: PylonAmmo1
			{
				sourceIndex = 5;
			};
			class PylonAmmo6: PylonAmmo1
			{
				sourceIndex = 6;
			};
			class PylonAmmo7: PylonAmmo1
			{
				sourceIndex = 7;
			};
			class PylonAmmo8: PylonAmmo1
			{
				sourceIndex = 8;
			};
			class PylonAmmo9: PylonAmmo1
			{
				sourceIndex = 9;
			};
			class PylonAmmo10: PylonAmmo1
			{
				sourceIndex = 10;
			};
		};
		class Draw
		{
			color[] = {1,1,1,1};
			alpha = 1;
			condition = "on";
			class TGP {
				//color[] = {0.082,0.408,0.039}; // use to define color
		    class Polygon
		    {
		        type    = "polygon";
		        texture = "#(argb,512,512,1)r2t(TGP_PIT_FEED,1)"; // only alpha channel will be used for drawing
		        points[] =
		        {
		            {
		                {{0.05,0.05},1},
		                {{0.95,0.05},1},
		                {{0.95,0.95},1},
		                {{0.05,0.95},1}
		            }
		        };
		    };
			}
		};
	};
};
