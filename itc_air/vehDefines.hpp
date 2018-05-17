#define vehicleDef(vehClass, edSubCat, crewClass) \
    side = 1; \
    faction = "itc_mdf"; \
    vehicleClass = vehClass; \
    editorSubcategory = edSubCat; \
    crew = crewClass;

#define transportWeapon(CLASS, COUNT) \
    class _xx_##CLASS \
    { \
        weapon = CLASS; \
        count = COUNT; \
    };

#define transportMagazine(CLASS, COUNT) \
    class _xx_##CLASS \
    { \
        magazine = CLASS; \
        count = COUNT; \
    };

#define transportItem(CLASS, COUNT) \
    class _xx_##CLASS \
    { \
        name = CLASS; \
        count = COUNT; \
    };