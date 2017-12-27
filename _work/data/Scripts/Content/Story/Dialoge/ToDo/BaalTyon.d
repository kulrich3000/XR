INSTANCE Info_Mod_Tyon_GotoTempel (C_INFO)
{
	npc		= Mod_2006_GUR_BaalTyon_MT;
	nr		= 1;
	condition	= Info_Mod_Tyon_GotoTempel_Condition;
	information	= Info_Mod_Tyon_GotoTempel_Info;
	permanent	= 0;
	important	= 0;
	description	= "You are expected at the temple.";
};

FUNC INT Info_Mod_Tyon_GotoTempel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_KarrasDa))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tyon_GotoTempel_Info()
{
	AI_Output(hero, self, "Info_Mod_Tyon_GotoTempel_15_00"); //You are expected at the temple.

	AI_StopProcessInfos	(hero);

	B_StartOtherRoutine	(self, "TEMPEL");
};

INSTANCE Info_Mod_Tyon_Woher (C_INFO)
{
	npc		= Mod_2006_GUR_BaalTyon_MT;
	nr		= 1;
	condition	= Info_Mod_Tyon_Woher_Condition;
	information	= Info_Mod_Tyon_Woher_Info;
	permanent	= 0;
	important	= 0;
	description	= "Where do you come from?";
};

FUNC INT Info_Mod_Tyon_Woher_Condition()
{
	if (Guru_Dabei == 1)
	|| (Templer_Dabei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tyon_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Tyon_Woher_15_00"); //Where are you from?
	AI_Output(self, hero, "Info_Mod_Tyon_Woher_11_01"); //Originally I was a nomad in Varant, the desert of Myrtana.
	AI_Output(self, hero, "Info_Mod_Tyon_Woher_11_02"); //As you may know, King Rhobar II. Varant occupied.
	AI_Output(self, hero, "Info_Mod_Tyon_Woher_11_03"); //It turned out that under the influence of swampweed I attacked one of the king's paladins...
	AI_Output(hero, self, "Info_Mod_Tyon_Woher_15_04"); //... and then they threw you in the colony?
	AI_Output(self, hero, "Info_Mod_Tyon_Woher_11_05"); //Exactly.
	AI_Output(hero, self, "Info_Mod_Tyon_Woher_15_06"); //Then what were you doing there?
	AI_Output(self, hero, "Info_Mod_Tyon_Woher_11_07"); //I joined the old camp as a Buddler, but I came here with Cor Angar shortly after the foundation of the Brotherhood.
};

INSTANCE Info_Mod_Tyon_BistGuru (C_INFO)
{
	npc		= Mod_2006_GUR_BaalTyon_MT;
	nr		= 1;
	condition	= Info_Mod_Tyon_BistGuru_Condition;
	information	= Info_Mod_Tyon_BistGuru_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Tyon_BistGuru_Condition()
{
	if (Guru_Dabei == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tyon_BistGuru_Info()
{
	AI_Output(self, hero, "Info_Mod_Tyon_BistGuru_11_00"); //Now that you are one of us gurus, I will show you how to increase your magical powers.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_SUMPF, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_SUMPF, "Baal Tyon will show me how to improve my MANA.");
};

INSTANCE Info_Mod_Tyon_Lernen (C_INFO)
{
	npc		= Mod_2006_GUR_BaalTyon_MT;
	nr		= 1;
	condition	= Info_Mod_Tyon_Lernen_Condition;
	information	= Info_Mod_Tyon_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to increase my magic powers.";
};

FUNC INT Info_Mod_Tyon_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tyon_BistGuru))
	&& (hero.attribute[ATR_MANA_MAX] <= 200)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tyon_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Tyon_Lernen_15_00"); //I want to increase my magical powers.

	Info_ClearChoices	(Info_Mod_Tyon_Lernen);

	Info_AddChoice		(Info_Mod_Tyon_Lernen, DIALOG_BACK, Info_Mod_Tyon_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Tyon_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Tyon_Lernen_5);
	Info_AddChoice		(Info_Mod_Tyon_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Tyon_Lernen_1);
};

FUNC VOID Info_Mod_Tyon_Lernen_BACK()
{
	if (hero.attribute[ATR_MANA_MAX] >= 200)
	{
		AI_Output(self, hero, "Info_Mod_Tyon_Lernen_BACK_14_01"); //Your magic skills are so good now, I can't teach you anything.
	};
	Info_ClearChoices	(Info_Mod_Tyon_Lernen);
};

FUNC VOID Info_Mod_Tyon_Lernen_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_MANA_MAX, 5, 200);

	Info_ClearChoices	(Info_Mod_Tyon_Lernen);

	Info_AddChoice		(Info_Mod_Tyon_Lernen, DIALOG_BACK, Info_Mod_Tyon_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Tyon_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Tyon_Lernen_5);
	Info_AddChoice		(Info_Mod_Tyon_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Tyon_Lernen_1);
};

FUNC VOID Info_Mod_Tyon_Lernen_1()
{
	B_TeachAttributePoints (self, hero, ATR_MANA_MAX, 1, 200);

	Info_ClearChoices	(Info_Mod_Tyon_Lernen);

	Info_AddChoice		(Info_Mod_Tyon_Lernen, DIALOG_BACK, Info_Mod_Tyon_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Tyon_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Tyon_Lernen_5);
	Info_AddChoice		(Info_Mod_Tyon_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Tyon_Lernen_1);
};

INSTANCE Info_Mod_Tyon_EXIT (C_INFO)
{
	npc		= Mod_2006_GUR_BaalTyon_MT;
	nr		= 1;
	condition	= Info_Mod_Tyon_EXIT_Condition;
	information	= Info_Mod_Tyon_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Tyon_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Tyon_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
