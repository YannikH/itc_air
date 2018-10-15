class cfgVehicles {
  class Man;
  class CAManBase: Man {
  class ACE_SelfActions {
    class ITC_ROVER {
        displayName = "Datalink";
        condition = "[_player] call itc_air_rover_fnc_can_open";
        statement = "";
        priority = 2.6;
        showDisabled = 1;
        exceptions[] = {"isNotInside","isNotSitting"};
        class ITC_ROVER_OPEN {
          displayName = "Rover SIR V2.5";
          condition = "'ITC_ROVER_SIR' in (items _player)";
          statement = "[] call itc_air_rover_fnc_open;";
          priority = 2.6;
          showDisabled = 1;
          icon = "itc_air\data\UI\ROVER_icon_ca.paa";
          exceptions[] = {"isNotInside","isNotSitting"};
          enableInside = 1;
        };
        class ITC_TABLET_OPEN {
          displayName = "Tablet View";
          condition = "'ACE_HuntIR_monitor' in (items _player)";
          statement = "createDialog ""itc_air_rover_tablet"";";
          distance = 2;
          priority = 2.6;
          showDisabled = 1;
          icon = "\z\ace\addons\huntir\UI\w_huntir_monitor_ca.paa";
          exceptions[] = {"isNotInside","isNotSitting"};
          enableInside = 1;
        };
        class ITC_AIR_ROVER_GLASSES_OPEN {
          displayName = "Glasses View";
          condition = "((goggles player) in [""itc_air_glasses_rover"",""itc_air_glasses_rover_shade""]) && !itc_air_rover_glasses_open";
          statement = "106 cutRsc [""ITC_AIR_ROVER_GLASSES"", ""PLAIN"",-1,true];";
          distance = 2;
          priority = 2.6;
          showDisabled = 1;
          exceptions[] = {"isNotInside","isNotSitting"};
          enableInside = 1;
        };
        class ITC_AIR_ROVER_GLASSES_CLOSE {
          displayName = "Shut Down Glasses";
          condition = "itc_air_rover_glasses_open";
          statement = "106 cutText ["""", ""PLAIN""];itc_air_rover_glasses_open = false;";
          distance = 2;
          priority = 2.6;
          showDisabled = 1;
          exceptions[] = {"isNotInside","isNotSitting"};
          enableInside = 1;
        };
      };
    };
  };
};
