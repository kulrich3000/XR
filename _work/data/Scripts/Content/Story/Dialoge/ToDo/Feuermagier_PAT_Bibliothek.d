INSTANCE Info_Mod_Feuermagier_PAT_Bibliothek_MangelQuest (C_INFO)
{
	npc		= Mod_1737_KDF_Feuermagier_PAT;
	nr		= 1;
	condition	= Info_Mod_Feuermagier_PAT_Bibliothek_MangelQuest_Condition;
	information	= Info_Mod_Feuermagier_PAT_Bibliothek_MangelQuest_Info;
	permanent	= 0;
	important	= 0;
	description	= "What did you think about sinking into a prayer to Innos for a change in his church, brother?";
};

FUNC INT Info_Mod_Feuermagier_PAT_Bibliothek_MangelQuest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nagon_MangelQuest))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Nagon_MangelQuest2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Feuermagier_PAT_Bibliothek_MangelQuest_Info()
{
	AI_Output(hero, self, "Info_Mod_Feuermagier_PAT_Bibliothek_MangelQuest_15_00"); //What did you think about sinking into a prayer to Innos for a change in his church, brother?
	AI_Output(self, hero, "Info_Mod_Feuermagier_PAT_Bibliothek_MangelQuest_06_01"); //What do you say, brother? Well, yes, the church.
	AI_Output(self, hero, "Info_Mod_Feuermagier_PAT_Bibliothek_MangelQuest_06_02"); //Hmm, actually I wanted to continue to deal with this treatise on magic warfare, which I have been gnawing at for so long.
	AI_Output(self, hero, "Info_Mod_Feuermagier_PAT_Bibliothek_MangelQuest_06_03"); //But a prayer in the Church will certainly help me to have a fresh spirit to continue to work in a concentrated way.
	AI_Output(self, hero, "Info_Mod_Feuermagier_PAT_Bibliothek_MangelQuest_06_04"); //I'll go there immediately.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "KIRCHE");

	B_GivePlayerXP	(100);

	Mod_Pat_Beter += 1;

	if (Mod_Pat_Beter == 3)
	{
		B_LogEntry	(TOPIC_MOD_FM_MANGEL, "So, I think I have had enough disciples of Inno's to get them to pray and I should stop by the church at Nagon.");
	};
};

INSTANCE Info_Mod_Feuermagier_PAT_Bibliothek_EXIT (C_INFO)
{
	npc		= Mod_1737_KDF_Feuermagier_PAT;
	nr		= 1;
	condition	= Info_Mod_Feuermagier_PAT_Bibliothek_EXIT_Condition;
	information	= Info_Mod_Feuermagier_PAT_Bibliothek_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Feuermagier_PAT_Bibliothek_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Feuermagier_PAT_Bibliothek_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
