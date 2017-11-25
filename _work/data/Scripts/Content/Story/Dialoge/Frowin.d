INSTANCE Info_Mod_Frowin_Hi (C_INFO)
{
	npc		= GardeBeliars_1994_Frowin;
	nr		= 1;
	condition	= Info_Mod_Frowin_Hi_Condition;
	information	= Info_Mod_Frowin_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Frowin_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Frowin_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Frowin_Hi_14_00"); //You've finally arrived!
	AI_Output(hero, self, "Info_Mod_Frowin_Hi_15_01"); //You are the last of the Dark Warriors. I'll kill you too, and then secure the axe!
	AI_Output(self, hero, "Info_Mod_Frowin_Hi_14_02"); //I'll know how to prevent that. The almanac is now useless to me. And you're not getting out of here alive.
	AI_Output(hero, self, "Info_Mod_Frowin_Hi_15_03"); //Come here!
	AI_Output(self, hero, "Info_Mod_Frowin_Hi_14_04"); //(laughs) Not yet!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "KRYPTA");

	AI_Teleport	(self, "BIGFARM");
};

INSTANCE Info_Mod_Frowin_HatAxt (C_INFO)
{
	npc		= GardeBeliars_1994_Frowin;
	nr		= 1;
	condition	= Info_Mod_Frowin_HatAxt_Condition;
	information	= Info_Mod_Frowin_HatAxt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Frowin_HatAxt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Frowin_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Frowin_HatAxt_Info()
{
	AI_Output(self, hero, "Info_Mod_Frowin_HatAxt_14_00"); //(laughs out loud) Hahaha! You're too late. The axe of doom is mine. I will hand it over to my master, and he will plunge the world into the deepest darkness.
	AI_Output(self, hero, "Info_Mod_Frowin_HatAxt_14_01"); //And now, man, you're gonna die.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};
