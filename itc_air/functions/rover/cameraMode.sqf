params ["_mode"];

switch (_mode) do {
  case 2: {
    camUseNVG false;
    true setCamUseTI 1;
  };
  case 1: {
    camUseNVG true;
    false setCamUseTI 1;
  };
  case 0: {
    camUseNVG false;
    false setCamUseTI 1;
  };
};
