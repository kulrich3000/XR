INSTANCE Info_Mod_Guru_Gelaber (C_INFO)
{
	npc		= Mod_7236_GUR_Guru_NW;
	nr		= 1;
	condition	= Info_Mod_Guru_Gelaber_Condition;
	information	= Info_Mod_Guru_Gelaber_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hey.";
};

FUNC INT Info_Mod_Guru_Gelaber_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Jana))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Guru_Gelaber_Info()
{
	AI_Output(hero, self, "Info_Mod_Guru_Gelaber_15_00"); //Hey.
	AI_Output(self, hero, "Info_Mod_Guru_Gelaber_11_01"); //AAAAHHH! A new pair of ears for my BOOOTSCHAFT. So listen:
	AI_Output(self, hero, "Info_Mod_Guru_Gelaber_11_02"); //You no longer have to be afraid of the sleeper. He's asleep. But you should feel fear and horror before the one, the GUARD! He's on guard! AWAKES MORE AWAKE!
	AI_Output(hero, self, "Info_Mod_Guru_Gelaber_15_03"); //Take it easy, come with me.
	AI_Output(self, hero, "Info_Mod_Guru_Gelaber_11_04"); //Don't you dare touch me, sleeper!
	AI_Output(hero, self, "Info_Mod_Guru_Gelaber_15_05"); //Do I have to beat you out of town?
	AI_Output(self, hero, "Info_Mod_Guru_Gelaber_11_06"); //Don't you touch me!

	B_ReadySpell	(self, SPL_FireRain, SPL_Cost_Firerain);

	AI_Output(self, hero, "Info_Mod_Guru_Gelaber_11_07"); //Niahahahahahaha! You will all die in a rain of fire! But don't worry, I will resurrect you and we will wake up together!

	Wld_InsertNpc	(HeroBot_NW, "NW_CITY_MERCHANT_PATH_29");

	AI_StopProcessInfos	(self);
};
