#define page(NAME) \
    class NAME { \
        class NAME { \
            file = itc_air\functions\mfd\rendering\NAME.sqf; \
        }; \
        class NAME##_btn { \
            file = itc_air\functions\mfd\interaction\NAME.sqf; \
        }; \
    };
class itc_air_mfd {
    page(wpn)
};