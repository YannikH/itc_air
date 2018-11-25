class cfgWeapons {
  class Bomb_04_Plane_CAS_01_F;
  class ITC_weap_gbu12 : Bomb_04_Plane_CAS_01_F {
    magazines[] = {
        "itc_hp_dumb_ITC_ammo_gbu12",
        "itc_hp_bru33_ITC_ammo_gbu12",
        "itc_hp_bru42_ITC_ammo_gbu12"
    };
    canLock = 0;
  };
  #define GBUVariant(NUM) \
    class ITC_weap_gbu12_##NUM : ITC_weap_gbu12 { \
      magazines[] = { \
          itc_hp_dumb_ITC_ammo_gbu12_##NUM , \
          itc_hp_bru33_ITC_ammo_gbu12_##NUM , \
          itc_hp_bru42_ITC_ammo_gbu12_##NUM  \
      }; \
    };

  GBUVariant(1)
  GBUVariant(2)
  GBUVariant(3)
  GBUVariant(4)
  GBUVariant(5)
  GBUVariant(6)
  GBUVariant(7)
  GBUVariant(8)
  GBUVariant(9)
};
