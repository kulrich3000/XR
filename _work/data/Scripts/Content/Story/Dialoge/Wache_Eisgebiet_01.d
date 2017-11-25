INSTANCE Info_Mod_Wache_Eisgebiet_01_Hi (C_INFO)
{
	npc		= Mod_7727_OUT_Wache_EIS;
	nr		= 1;
	condition	= Info_Mod_Wache_Eisgebiet_01_Hi_Condition;
	information	= Info_Mod_Wache_Eisgebiet_01_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wache_Eisgebiet_01_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gellit_RaueSchneide))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wache_Eisgebiet_01_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Wache_Eisgebiet_01_Hi_06_00"); //Stop! Why do you want to go to the barracks?
	AI_Output(hero, self, "Info_Mod_Wache_Eisgebiet_01_Hi_15_01"); //Gellit sent me. I want to earn your reputation.
	AI_Output(self, hero, "Info_Mod_Wache_Eisgebiet_01_Hi_06_02"); //All right, then you're in the right place. Through your military service with us, you can show who you are.
	AI_Output(self, hero, "Info_Mod_Wache_Eisgebiet_01_Hi_06_03"); //However, if you think that you could attack the commander, you should be told that he knows how to defend himself against everyone.
};

INSTANCE Info_Mod_Wache_Eisgebiet_01_EXIT (C_INFO)
{
	npc		= Mod_7727_OUT_Wache_EIS;
	nr		= 1;
	condition	= Info_Mod_Wache_Eisgebiet_01_EXIT_Condition;
	information	= Info_Mod_Wache_Eisgebiet_01_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Wache_Eisgebiet_01_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wache_Eisgebiet_01_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
