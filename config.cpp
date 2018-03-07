class CfgPatches {
    class itc_air {
        name = "";
        units[] = {"ITC_A10E", "itc_Gripen","ITC_ROVER_SIR"};
        requiredVersion = 1.0;
        requiredAddons[] = {"CBA_Extended_EventHandlers", "A3_Air_F","A3_Air_F_Beta","A3_Air_F_EPC_Plane_CAS_01","A3_Air_F_EPB_Heli_Light_03","A3_CargoPoses_F","rhsusf_c_troops","rhsusf_c_heavyweapons","rhsusf_sounds","rhsusf_c_airweapons"};
        icon = "\itc_air\data\UI\MDF.paa";
        picture = "\itc_air\data\UI\MDF.paa";
    };
};

#include "cfgAmmo.hpp"
#include "cfgMagazines.hpp"
#include "cfgWeapons.hpp"
#include "cfgVehicles.hpp"
#include "cfgSounds.hpp"

#include "Dialog.hpp"
#include "Dialog_rover.hpp"

class CfgFunctions
{
    class ITC
    {
        class general
        {
            class fired {
                file = "itc_air\functions\fired.sqf";
            };
            class draw_laser_bundle {
                file = "itc_air\functions\targeting\drawLaserBundle.sqf";
            };
            class set_global_variable {
                file = "itc_air\functions\setGLobalVar.sqf";
            };
        };

        class ammo
        {
            class ammo_init {
                preInit = 1;
                file = "itc_air\functions\ammo\init.sqf";
            };
            class ammo_fired_wp {
                file = "itc_air\functions\ammo\firedWP.sqf";
            };
            class ammo_prox_fuze {
                file = "itc_air\functions\ammo\proxFuze.sqf";
            };
        };
        class jdam {
            class targeting_fired {
                file = "itc_air\functions\targeting\fired.sqf";
            };
            class targeting_init {
                preInit = 1;
                file = "itc_air\functions\targeting\init.sqf";
            };
            class targeting_keyDown {
                file = "itc_air\functions\targeting\keyDown.sqf";
            };
            class targeting_cycleWP {
                file = "itc_air\functions\targeting\cycleWP.sqf";
            };
            class targeting_config_bomb {
                file = "itc_air\functions\targeting\configBomb.sqf";
            };
            class targeting_targetWP {
                file = "itc_air\functions\targeting\targetWP.sqf";
            };
            class targeting_broadcastToggle {
                file = "itc_air\functions\targeting\broadcastToggle.sqf";
            };
            class targeting_store_poi {
                file = "itc_air\functions\targeting\storePOI.sqf";
            };
            class targeting_laser_spot_search_track {
                file = "itc_air\functions\targeting\laserSpotSearchTrack.sqf";
            };
            class targeting_hmd_tgp_slew {
                file = "itc_air\functions\targeting\hmdSlewTgp.sqf";
            };
            class targeting_render_3d {
                file = "itc_air\functions\targeting\render3dassets.sqf";
                preInit = 1;
            };
            class targeting_laser_ir {
                file = "itc_air\functions\targeting\laserIR.sqf";
            };
            class targeting_laser_ir_local {
                file = "itc_air\functions\targeting\toggleLaserLocal.sqf";
            };
            class targeting_vehicle_changed_handler {
                file = "itc_air\functions\targeting\vehicleChangedHandler.sqf";
            };
        };

        class rover {
            class initRover {
                preInit = 1;
                file = "itc_air\functions\rover\initROVER.sqf";
            };
            class openRover {
                file = "itc_air\functions\rover\openROVER.sqf";
            };
            class roverButton {
                file = "itc_air\functions\rover\roverButton.sqf";
            };
            class openDuoTouch {
                file = "itc_air\functions\rover\openDuoTouch.sqf";
            };
            class canOpenRover {
                file = "itc_air\functions\rover\canRover.sqf";
            };
            class getRemoteCamera {
                file = "itc_air\functions\rover\triggerCameraDir.sqf";
            };
            class getCameraDir {
                file = "itc_air\functions\rover\getCameraDir.sqf";
            };
            class changeCameraMode {
                file = "itc_air\functions\rover\cameraMode.sqf";
            };
            class broadCast {
                file = "itc_air\functions\rover\roverBroadcast.sqf";
            };
        };

        class autopilot {
            class autopilotInit {
                preInit = 1;
                file = "itc_air\functions\autopilot\autopilot_init.sqf";
            };
            class autopilotToggleMode {
                file = "itc_air\functions\autopilot\autopilot_toggle_mode.sqf";
            };
            class autopilot {
                file = "itc_air\functions\autopilot\autopilot.sqf";
            };
        };
    };
};


class TB_MK13SmokeEffects {
    class LightExpSmall {
        simulation = "light";
        type = "ExploLight";
        position[] = {0, 1.3, 0};
        intensity = 0.0005;
        interval = 1;
        lifeTime = 0.8;
    };

    class SmokeCloud {
        simulation = "particles";
        type = "TB_MK13SmokeCloudBigLight";
        position[] = {0, 0.6, 0};
        intensity = 1;
        interval = 1;
        lifeTime = 2.2;
    };

    class SmokeCloudLinger {
        simulation = "particles";
        type = "TB_MK13SmokeCloudBigLightSlow";
        position[] = {0, 0.6, 0};
        intensity = 1;
        interval = 1;
        lifeTime = 30;
    };
};

class CfgCloudlets {
    class Default;
    class TB_MK13SmokeCloudBigLight : Default {
        interval = "0.4 * interval";
        circleRadius = 3.3;
        circleVelocity[] = {0, 0.03, 0};
        angleVar = 1;
        animationName = "";
        timerPeriod = 1;
        lifeTime = 30;
        moveVelocity[] = {0.05, 0.085, 0.05};
        rotationVelocity = 0;
        weight = 0.052;
        volume = 0.04;
        rubbing = 0.025;
        size[] = {"0.0125 * intensity + 7", "0.0125 * intensity + 13", "0.0125 * intensity + 14", "0.0125 * intensity + 16"};
        color[] = {{0.8, 0.8, 0.8, 0.8}, {0.9, 0.9, 0.9, 0.8}, {0.95, 0.95, 0.95, 0.75}, {0.97, 0.97, 0.97, 0.65}, {0.97, 0.97, 0.97, 0.6}, {0.98, 0.98, 0.98, 0.6}, {1, 1, 1, 0}};
        animationSpeed[] = {1.5, 0.5, 0.3, 0.25, 0.25};
        randomDirectionPeriod = 0.2;
        randomDirectionIntensity = 0.2;
        onTimerScript = "";
        beforeDestroyScript = "";
        lifeTimeVar = 4;
        positionVar[] = {5, 12, 5};
        MoveVelocityVar[] = {0.05, 0.05, 0.05};
        rotationVelocityVar = 20;
        sizeVar = 0.7;
        colorVar[] = {0, 0, 0, 0};
        randomDirectionPeriodVar = 0;
        randomDirectionIntensityVar = 0;
    };
    class TB_MK13SmokeCloudBigLightSlow : TB_MK13SmokeCloudBigLight {
        circleRadius = 2.9;
        interval = 0.8;
        positionVar[] = {4, 8, 4};
    };
    class TargetingLaser
    {
        interval = "0.5 * speedSize + 0.5";      //interval of particle's creation
        circleRadius = 0;                //radius around emitter where particles are created
        circleVelocity[] = {0, 0, 0};        //direction and speed of movement of particle's circle
        particleShape = \A3\data_f\ParticleEffects\Universal\Universal;     //path and name of file
        particleFSNtieth = 16;           //coef; size of one particle's texture in pixels = 2048/coef
        particleFSIndex = 12;            //index of start line on texture
        particleFSFrameCount = 8;            //count of pictures in animation (starts on first picture in defined line - particleFSIndex)
        particleFSLoop = 1;                  //loop of animation (0 - false, 1 - true)
        angle = 0;                   //angle of particle
        angleVar = 0;                //variability in angle of particle

        animationName = "";
        particleType = "Spaceobject";              //type of animation (Billboard (2D), Spaceobject (3D))
        timerPeriod = 1;                 //interval of timer (how often is called script defined in parameter onTimerScript)
        lifeTime = 1;                //life time of particle in seconds
        moveVelocity[] = {0, 0, 0};              //direction and speed of movement of particle [x,z,y]
        rotationVelocity = 0;            //direction and speed of rotation of particle [x,z,y]
        weight = 1;                      //weight of particle (kg)
        volume = 1;                      //volume of particle (m3)
        rubbing = 0;              //how much is particle affected by wind/air resistance
        size[] = {1,1,10000};              //size of particle during the life
        color[] = {{1,252,75,1},{1,252,75,1}};         //color of particle during the life (r,g,b,a)
        animationSpeed[] = {1};          //speed of animation (number of animation cycles in 1s)
        randomDirectionPeriod = 0;           //interval of random speed change
        randomDirectionIntensity = 0;        //intensity of random speed change
        onTimerScript = "";                  //script triggered by timer (in variable "this" is stored position of particle)
        beforeDestroyScript = "";            //script triggered before destroying of particle (in variable "this" is stored position of particle)
        lifeTimeVar = 0;                 //variability in lifetime of particle
        position[] = {0, 0, 0};                  //defines position of effect
        positionVar[] = {0, 0, 0};           //variability in position of particle (each part of vector has it's own variability)
        positionVarConst[] = {0, 0, 0};      //variability in position of particle (variablity of all parts of vector is the same)
        moveVelocityVar[] = {0, 0, 0};       //variability in direction and speed of particle (each part of vector has it's own variability)
        moveVelocityVarConst[] = {0, 0, 0};      //variability in direction and speed of particle (variablity of all parts of vector is the same)
        rotationVelocityVar = 0;             //variability in rotation of particle
        sizeVar = 0;                 //variability in size of particle
        colorVar[] = {0, 0, 0, 0};           //variability in color of particle
        randomDirectionPeriodVar = 0;        //variability in interval of random speed change
        randomDirectionIntensityVar = 0;         //variability in intensity of random speed change
        sizeCoef = 1;                            //size of particle = size parameter value * this coef (works only in some effects)
        colorCoef[]={1,1,1,1};                   //color of particle = color parameter value * this coef (works only in some effects)
        animationSpeedCoef = 1;                  //animation speed of particle = animationSpeed parameter value * this coef (works only in some effects)

        destroyOnWaterSurface = 0;               //particle can exist - only underwater (-1), only above the water (1), everywhere (0)
        destroyOnWaterSurfaceOffset = 0;         //offset of water surface in destroyOnWaterSurface parameter
        onSurface = false;                        //placing of particle on (water) surface on start of it's existence, default value is true, works only if circleRadius > 0
        keepOnSurface = false;                   //true for particle is stay on water surface - see notes bellow
        surfaceOffset = 0;                       //offset of water surface in keepOnSurface parameter
        bounceOnSurface = 0.6;                   //coef of speed's loosing in collision with ground, 0-1 for collisions, -1 disable collision
        bounceOnSurfaceVar = 0.0;                //variability in speed's loosing in collision with ground
        postEffects = "IEDMineFlame";            //effect triggered before destroying of particle
        particleEffects = "ExplosionShardsFire"; //emitter of effect defined in this parameter is attached to each particle
        blockAIVisibility = true;                //sets if particles are in the AI visibility tests (default true) - false for better performance but AI is able to see through particles
        emissiveColor[] = {{30,30,30,0},{0,0,0,0}};  //sets emissivity of particle, 4th number has no meaning for now
    };
};