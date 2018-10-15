class cfgMagazines {
  #define STRINGIFY(s) #s
  #define hardPointMagazine(HP,PARENT,NAME,WEAP,AMMO,COUNT,TOTALMASS,DRAG) \
    class HP##_##AMMO : PARENT { \
        ammo = STRINGIFY(AMMO); \
        displayName = COUNT NAME; \
        displayNameShort = NAME; \
        pylonWeapon = WEAP; \
        mass = TOTALMASS; \
        hardpoints[] = {STRINGIFY(HP)}; \
        dragCoef = DRAG; \
    };

  class PylonMissile_1Rnd_Mk82_F;
  hardPointMagazine(itc_hp_harpoon,PylonMissile_1Rnd_Mk82_F,AGM-84 Harpoon,itc_weapon_agm84,itc_ammo_agm84,1x,__EVAL(700*1),0)
};
