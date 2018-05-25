#define PROFILELOAD(NAME) _profileIndex = ((vehicle player) getVariable "profiles") findIf {(_x select 0 select 1) == NAME};_profile = ((vehicle player) getVariable "profiles") select _profileIndex;_profile params ["_profileSettings","_releaseSettings","_profileOptions"];_profileSettings params ["_weapon","_profileName","_ammo","_station","_type"];_releaseSettings params ["_release_mode","_rip_mode","_rip_qty","_rip_dist"]
#define PROFILEEDITNAME (_display getVariable "profile_listSelected")
#define PROFILESAVE ((vehicle player) getVariable "profiles") set [_profileIndex, _profile]
#define CYCLEVALUE(OPTIONS,VALUE) OPTIONS select (if((OPTIONS find VALUE) == (count OPTIONS) - 1) then [{0},{(OPTIONS find VALUE) + 1}])
