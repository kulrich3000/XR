INSTANCE Info_Mod_Ordenspriester_PAT_Alchemist_MangelQuest (C_INFO)
{
	npc		= Mod_1740_KDF_Ordenspriester_PAT;
	nr		= 1;
	condition	= Info_Mod_Ordenspriester_PAT_Alchemist_MangelQuest_Condition;
	information	= Info_Mod_Ordenspriester_PAT_Alchemist_MangelQuest_Info;
	permanent	= 0;
	important	= 0;
	description	= "What did you think about folding your hands for prayer in the Church of our Lord?";
};

FUNC INT Info_Mod_Ordenspriester_PAT_Alchemist_MangelQuest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nagon_MangelQuest))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Nagon_MangelQuest2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ordenspriester_PAT_Alchemist_MangelQuest_Info()
{
	AI_Output(hero, self, "Info_Mod_Ordenspriester_PAT_Alchemist_MangelQuest_15_00"); //What did you think about folding your hands for prayer in the Church of our Lord?
	AI_Output(self, hero, "Info_Mod_Ordenspriester_PAT_Alchemist_MangelQuest_06_01"); //Hmm, yes, prayer in church. Thanks for reminding me, brother. My last visit was too long ago.
	AI_Output(self, hero, "Info_Mod_Ordenspriester_PAT_Alchemist_MangelQuest_06_02"); //After that I will certainly be able to continue working with a calmer hand. I'll be on my way right away.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "KIRCHE");

	B_GivePlayerXP	(100);

	Mod_Pat_Beter += 1;

	if (Mod_Pat_Beter == 3)
	{
		B_LogEntry	(TOPIC_MOD_FM_MANGEL, "So, I think I have had enough disciples of Inno's to get them to pray and I should stop by the church at Nagon.");
	};
};

INSTANCE Info_Mod_Ordenspriester_PAT_Alchemist_EXIT (C_INFO)
{
	npc		= Mod_1740_KDF_Ordenspriester_PAT;
	nr		= 1;
	condition	= Info_Mod_Ordenspriester_PAT_Alchemist_EXIT_Condition;
	information	= Info_Mod_Ordenspriester_PAT_Alchemist_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ordenspriester_PAT_Alchemist_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ordenspriester_PAT_Alchemist_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
