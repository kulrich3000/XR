INSTANCE Info_Mod_Vatras_GDG_Lernen (C_INFO)
{
	npc		= Mod_6010_KDW_Vatras_GDG;
	nr		= 1;
	condition	= Info_Mod_Vatras_GDG_Lernen_Condition;
	information	= Info_Mod_Vatras_GDG_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me something.";
};

FUNC INT Info_Mod_Vatras_GDG_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Lehrer))
	&& (hero.attribute[ATR_MANA_MAX]	<	300)
	&& ((Mod_Gilde == 9)
	|| (Mod_Gilde == 10)
	|| (Mod_Gilde == 11))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_GDG_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_GDG_Lernen_15_00"); //Teach me something.

	Info_ClearChoices	(Info_Mod_Vatras_GDG_Lernen);

	Info_AddChoice		(Info_Mod_Vatras_GDG_Lernen, DIALOG_BACK, INFO_MOD_Vatras_GDG_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Vatras_GDG_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Vatras_GDG_Lernen_5);
	Info_AddChoice		(Info_Mod_Vatras_GDG_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Vatras_GDG_Lernen_1);
};

FUNC VOID Info_Mod_Vatras_GDG_Lernen_BACK()
{
	if (hero.attribute[ATR_MANA_MAX]	>=	300)
	{
		AI_Output(self, hero, "Info_Mod_Vatras_GDG_Lernen_BACK_05_01"); //Your magic skills are so good now, I can't teach you anything.
	};
	Info_ClearChoices	(Info_Mod_Vatras_GDG_Lernen);
};

FUNC VOID Info_Mod_Vatras_GDG_Lernen_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_MANA_MAX, 5, 300);

	Info_ClearChoices	(Info_Mod_Vatras_GDG_Lernen);

	Info_AddChoice		(Info_Mod_Vatras_GDG_Lernen, DIALOG_BACK, INFO_MOD_Vatras_GDG_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Vatras_GDG_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Vatras_GDG_Lernen_5);
	Info_AddChoice		(Info_Mod_Vatras_GDG_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Vatras_GDG_Lernen_1);
};

FUNC VOID Info_Mod_Vatras_GDG_Lernen_1()
{
	B_TeachAttributePoints (self, hero, ATR_MANA_MAX, 1, 300);

	Info_ClearChoices	(Info_Mod_Vatras_GDG_Lernen);

	Info_AddChoice		(Info_Mod_Vatras_GDG_Lernen, DIALOG_BACK, INFO_MOD_Vatras_GDG_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Vatras_GDG_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Vatras_GDG_Lernen_5);
	Info_AddChoice		(Info_Mod_Vatras_GDG_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Vatras_GDG_Lernen_1);
};

INSTANCE Info_Mod_Vatras_GDG_EXIT (C_INFO)
{
	npc		= Mod_6010_KDW_Vatras_GDG;
	nr		= 1;
	condition	= Info_Mod_Vatras_GDG_EXIT_Condition;
	information	= Info_Mod_Vatras_GDG_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Vatras_GDG_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Vatras_GDG_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
