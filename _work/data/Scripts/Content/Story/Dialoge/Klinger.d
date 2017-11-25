INSTANCE Info_Mod_Klinger_Lehrer (C_INFO)
{
	npc		= Mod_7555_JG_Klinger_JL;
	nr		= 1;
	condition	= Info_Mod_Klinger_Lehrer_Condition;
	information	= Info_Mod_Klinger_Lehrer_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Klinger_Lehrer_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Klinger_Lehrer_Info()
{
	AI_Output(self, hero, "Info_Mod_Klinger_Lehrer_06_00"); //Step right up, friend. Here stands Klinger, the master of the deadly blade.
	AI_Output(self, hero, "Info_Mod_Klinger_Lehrer_06_01"); //The avenger of the betrayed and entangled. The hero of murderous struggle.
	AI_Output(self, hero, "Info_Mod_Klinger_Lehrer_06_02"); //The king among the warriors.
	AI_Output(hero, self, "Info_Mod_Klinger_Lehrer_15_03"); //Well roared, lion!
	AI_Output(self, hero, "Info_Mod_Klinger_Lehrer_06_04"); //Leo?
	AI_Output(hero, self, "Info_Mod_Klinger_Lehrer_15_05"); //An animal found on the mainland. Yells like a troll and is just as dangerous.
	AI_Output(self, hero, "Info_Mod_Klinger_Lehrer_06_06"); //Never heard of him. I'm from up north.
	AI_Output(self, hero, "Info_Mod_Klinger_Lehrer_06_07"); //My father was the most eldest in the clan, my mother the most beautiful among the women and I the bravest youth under the sun.
	AI_Output(hero, self, "Info_Mod_Klinger_Lehrer_15_08"); //Then how did you get here?
	AI_Output(self, hero, "Info_Mod_Klinger_Lehrer_06_09"); //An intrigue! An infamous slander by a vile rival scoundrel!
	AI_Output(self, hero, "Info_Mod_Klinger_Lehrer_06_10"); //The fair maiden was promised me!
	AI_Output(self, hero, "Info_Mod_Klinger_Lehrer_06_11"); //One day the king's henchmen came, took me away and threw me into the barrier!
	AI_Output(hero, self, "Info_Mod_Klinger_Lehrer_15_12"); //I'm sorry about that.

	if (Mod_Schwierigkeit != 4)
	{
		AI_Output(hero, self, "Info_Mod_Klinger_Lehrer_15_13"); //Tell me, can you teach me something?
		AI_Output(self, hero, "Info_Mod_Klinger_Lehrer_06_14"); //What question! I'm the best hand-to-hand fighter there is. What could it be?

		Log_CreateTopic	(TOPIC_MOD_LEHRER_WALDIS, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_WALDIS, "Klinger can teach me how to handle one-handed people.");
	};
};

INSTANCE Info_Mod_Klinger_Lernen (C_INFO)
{
	npc		= Mod_7555_JG_Klinger_JL;
	nr		= 1;
	condition	= Info_Mod_Klinger_Lernen_Condition;
	information	= Info_Mod_Klinger_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to learn.";
};

FUNC INT Info_Mod_Klinger_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Klinger_Lehrer))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Klinger_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Klinger_Lernen_15_00"); //I want to learn.

	Info_ClearChoices	(Info_Mod_Klinger_Lernen);

	Info_AddChoice		(Info_Mod_Klinger_Lernen, DIALOG_BACK, Info_Mod_Klinger_Lernen_Zweihand_BACK);
	Info_AddChoice		(Info_Mod_Klinger_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1h))		,Info_Mod_Klinger_Lernen_Zweihand_5);
	Info_AddChoice		(Info_Mod_Klinger_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1h, 1))		,Info_Mod_Klinger_Lernen_Zweihand_1);
};

FUNC VOID Info_Mod_Klinger_Lernen_Zweihand_BACK()
{
	Info_ClearChoices	(Info_Mod_Klinger_Lernen);
};

FUNC VOID Info_Mod_Klinger_Lernen_Zweihand_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_1h, 5, 100)
	{
		Info_ClearChoices	(Info_Mod_Klinger_Lernen);

		Info_AddChoice		(Info_Mod_Klinger_Lernen, DIALOG_BACK, Info_Mod_Klinger_Lernen_Zweihand_BACK);
		Info_AddChoice		(Info_Mod_Klinger_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1h))		,Info_Mod_Klinger_Lernen_Zweihand_5);
		Info_AddChoice		(Info_Mod_Klinger_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1h, 1))		,Info_Mod_Klinger_Lernen_Zweihand_1);
	};
};

FUNC VOID Info_Mod_Klinger_Lernen_Zweihand_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_1h, 1, 100)
	{
		Info_ClearChoices	(Info_Mod_Klinger_Lernen);

		Info_AddChoice		(Info_Mod_Klinger_Lernen, DIALOG_BACK, Info_Mod_Klinger_Lernen_Zweihand_BACK);
		Info_AddChoice		(Info_Mod_Klinger_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1h))		,Info_Mod_Klinger_Lernen_Zweihand_5);
		Info_AddChoice		(Info_Mod_Klinger_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1h, 1))		,Info_Mod_Klinger_Lernen_Zweihand_1);
	};
};

INSTANCE Info_Mod_Klinger_EXIT (C_INFO)
{
	npc		= Mod_7555_JG_Klinger_JL;
	nr		= 1;
	condition	= Info_Mod_Klinger_EXIT_Condition;
	information	= Info_Mod_Klinger_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Klinger_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Klinger_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
