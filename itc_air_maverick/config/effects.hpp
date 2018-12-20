class ITC_AGM65_Trail
{
	class FX_Missile_AA_light_01
	{
		simulation = "light";
		type = "RocketLight";
		position[] = {0,0,0};
		intensity = 1;
		interval = 1;
		lifeTime = 1;
	};
	class itc_air_missileTrail
	{
		simulation = "particles";
		type = "itc_air_missileTrail";
		position[] = {0,0,0};
		intensity = 1;
		interval = 1;
		lifeTime = 1;
	};
};

class ITC_AGM65_Explosion
{
	class LightExp
	{
		simulation = "light";
		type = "ExploLight";
		position[] = {0,1.5,0};
		intensity = 0.001;
		interval = 3;
		lifeTime = 0.25;
	};
	class Explosion1
	{
		simulation = "particles";
		type = "itc_air_explosionCloudCenter";
		position[] = {0,0,0};
		intensity = 34;
		interval = 1;
		lifeTime = 0.25;
	};
	class SmallSmoke1
	{
		simulation = "particles";
		type = "itc_air_explosionCloud";
		position[] = {0,0,0};
		intensity = 1;
		interval = 1;
		lifeTime = 0.5;
	};
};
