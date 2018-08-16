class Extended_FiredBIS_EventHandlers {
    class All {
			class itc_air_acmi {
        exclude[] = {"Man"};
        firedBIS = "_this call itc_air_acmi_fnc_fired";
			};
    };
};

class Extended_Init_Eventhandlers
{
  class All
  {
    class itc_air_acmi
    {
      exclude[] = {"Man"};
      init = "_this call itc_air_acmi_fnc_vehicleInit";
    };
  };
};
