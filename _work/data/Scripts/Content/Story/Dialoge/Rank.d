INSTANCE Info_Mod_Rank_Hueterklinge (C_INFO)
{
	npc		= Mod_7721_OUT_Rank_MT;
	nr		= 1;
	condition	= Info_Mod_Rank_Hueterklinge_Condition;
	information	= Info_Mod_Rank_Hueterklinge_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Rank_Hueterklinge_Condition()
{
	if (Mod_TPL_HK_Ydran == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rank_Hueterklinge_Info()
{
	AI_Output(self, hero, "Info_Mod_Rank_Hueterklinge_06_00"); //Gave the old warden the rest of it, huh? Last one wasn't so lucky.
	AI_Output(hero, self, "Info_Mod_Rank_Hueterklinge_15_01"); //The last one?
	AI_Output(self, hero, "Info_Mod_Rank_Hueterklinge_06_02"); //Yeah, not so long ago.
	AI_Output(hero, self, "Info_Mod_Rank_Hueterklinge_15_03"); //What's happening?
	AI_Output(self, hero, "Info_Mod_Rank_Hueterklinge_06_04"); //A Templar came by here and was attacked by the old warhorse.
	AI_Output(self, hero, "Info_Mod_Rank_Hueterklinge_06_05"); //He really hurt him a lot, but he couldn't defeat him and ended up having dinner.
	AI_Output(self, hero, "Info_Mod_Rank_Hueterklinge_06_06"); //I came by too late. The Templar told me, just before he breathed his life out, that he wanted to visit the hermit who is buried here.
	AI_Output(self, hero, "Info_Mod_Rank_Hueterklinge_06_07"); //So I thought it was fitting to bury him in the same grave. And there they are now.
	AI_Output(hero, self, "Info_Mod_Rank_Hueterklinge_15_08"); //What did you do with his stuff?
	AI_Output(self, hero, "Info_Mod_Rank_Hueterklinge_06_09"); //It was just some weird stuff. I buried him in a bag with him.

	B_LogEntry	(TOPIC_MOD_SL_SCHMIEDEFEUERN, "Gor Na Kosh found the ingredients, but couldn't get his guardian blade. Rank said he buried Gor Na Kosh's stuff with him. I think I'm going to need a pickaxe....");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");

	Wld_SendTrigger	("EVT_GORNAKOSHSZEUG");
};

INSTANCE Info_Mod_Rank_EXIT (C_INFO)
{
	npc		= Mod_7721_OUT_Rank_MT;
	nr		= 1;
	condition	= Info_Mod_Rank_EXIT_Condition;
	information	= Info_Mod_Rank_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Rank_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Rank_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
