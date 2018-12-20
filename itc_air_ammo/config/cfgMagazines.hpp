class cfgMagazines {
  class PylonMissile_1Rnd_Mk82_F;
  class itc_air_tgp_litening: PylonMissile_1Rnd_Mk82_F
  {
    scope=2;
    displayName="AN/AAQ-28(V) LITENING";
    count=1;
    ammo="itc_air_ammo_litening";
    initSpeed=0;
    sound[]={};
    reloadSound[]={};
    nameSound="";
    hardpoints[]=
    {
      "itc_air_pylon_tgp"
    };
    model="\A3\Weapons_F\DynamicLoadout\PylonMissile_1x_Bomb_02_F.p3d";
    pylonWeapon="";
  };
  class itc_air_alq131: itc_air_tgp_litening {
    hardpoints[]={"itc_air_pylon_ew"};
    ammo="itc_air_ammo_alq131";
  };
  class PylonRack_3Rnd_LG_scalpel;
  class itc_magazine_bru42 : PylonRack_3Rnd_LG_scalpel {
    count=3;
    model="\itc_air_ammo\stores\mk82_rack.p3d";
    descriptionShort = "";
  };
};
