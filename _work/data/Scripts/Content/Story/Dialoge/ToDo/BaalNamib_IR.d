INSTANCE Info_Mod_Namib_IR_Hi (C_INFO)
{
	npc		= Mod_7457_GUR_BaalNamib_IR;
	nr		= 1;
	condition	= Info_Mod_Namib_IR_Hi_Condition;
	information	= Info_Mod_Namib_IR_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Namib_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Namib_IR_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Namib_IR_Hi_02_00"); //This aura... yes, a mighty demon on this island is not unlike the sleeper as we knew him.
	AI_Output(self, hero, "Info_Mod_Namib_IR_Hi_02_01"); //You have the same master, there's no doubt about it. I can feel that.
	AI_Output(self, hero, "Info_Mod_Namib_IR_Hi_02_02"); //I look forward to what we will find here.
};

INSTANCE Info_Mod_Namib_IR_GehtLos (C_INFO)
{
	npc		= Mod_7457_GUR_BaalNamib_IR;
	nr		= 1;
	condition	= Info_Mod_Namib_IR_GehtLos_Condition;
	information	= Info_Mod_Namib_IR_GehtLos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Let's get going. Will you escort me to the island?";
};

FUNC INT Info_Mod_Namib_IR_GehtLos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Namib_IR_Hi))
	&& (Mod_IR_Dabei < 7)
	&& (!Npc_IsDead(Dragon_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_IR_GehtLos_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHTLOS");

	AI_Output(self, hero, "Info_Mod_Namib_IR_GehtLos_02_00"); //Oh, I think I'm already too old to keep up. I'll hold the position here.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Namib_IR_Kram (C_INFO)
{
	npc		= Mod_7457_GUR_BaalNamib_IR;
	nr		= 1;
	condition	= Info_Mod_Namib_IR_Kram_Condition;
	information	= Info_Mod_Namib_IR_Kram_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you have something for me that can help me?";
};

FUNC INT Info_Mod_Namib_IR_Kram_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_IR_Kram))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_IR_Kram_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_IR_Kram_15_00"); //Do you have something for me that can help me?
	AI_Output(self, hero, "Info_Mod_Namib_IR_Kram_02_01"); //I have some of my brotherhood's spell roles with me.
	AI_Output(self, hero, "Info_Mod_Namib_IR_Kram_02_02"); //Besides, I can show you how to increase your magic power.
};

INSTANCE Info_Mod_Namib_IR_Lernen (C_INFO)
{
	npc		= Mod_7457_GUR_BaalNamib_IR;
	nr		= 1;
	condition	= Info_Mod_Namib_IR_Lernen_Condition;
	information	= Info_Mod_Namib_IR_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to increase my magic powers.";
};

FUNC INT Info_Mod_Namib_IR_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_IR_Kram))
	&& (hero.attribute[ATR_MANA_MAX] <= 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_IR_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_IR_Lernen_15_00"); //I want to increase my magical powers.

	Info_ClearChoices	(Info_Mod_Namib_IR_Lernen);

	Info_AddChoice		(Info_Mod_Namib_IR_Lernen, DIALOG_BACK, Info_Mod_Namib_IR_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Namib_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Namib_IR_Lernen_5);
	Info_AddChoice		(Info_Mod_Namib_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Namib_IR_Lernen_1);
};

FUNC VOID Info_Mod_Namib_IR_Lernen_BACK()
{
	if (hero.attribute[ATR_MANA_MAX] >= 300)
	{
		AI_Output(self, hero, "Info_Mod_Namib_IR_Lernen_BACK_14_01"); //Your magic skills are so good now, I can't teach you anything.
	};
	Info_ClearChoices	(Info_Mod_Namib_IR_Lernen);
};

FUNC VOID Info_Mod_Namib_IR_Lernen_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_MANA_MAX, 5, 300);

	Info_ClearChoices	(Info_Mod_Namib_IR_Lernen);

	Info_AddChoice		(Info_Mod_Namib_IR_Lernen, DIALOG_BACK, Info_Mod_Namib_IR_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Namib_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Namib_IR_Lernen_5);
	Info_AddChoice		(Info_Mod_Namib_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Namib_IR_Lernen_1);
};

FUNC VOID Info_Mod_Namib_IR_Lernen_1()
{
	B_TeachAttributePoints (self, hero, ATR_MANA_MAX, 1, 300);

	Info_ClearChoices	(Info_Mod_Namib_IR_Lernen);

	Info_AddChoice		(Info_Mod_Namib_IR_Lernen, DIALOG_BACK, Info_Mod_Namib_IR_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Namib_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Namib_IR_Lernen_5);
	Info_AddChoice		(Info_Mod_Namib_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Namib_IR_Lernen_1);
};

INSTANCE Info_Mod_Namib_IR_Trade (C_INFO)
{
	npc		= Mod_7457_GUR_BaalNamib_IR;
	nr		= 1;
	condition	= Info_Mod_Namib_IR_Trade_Condition;
	information	= Info_Mod_Namib_IR_Trade_Info;
	permanent	= 1;
	important	= 0;
	trade		= 1;
	description	= DIALOG_TRADE;
};

FUNC INT Info_Mod_Namib_IR_Trade_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_IR_Kram))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_IR_Trade_Info()
{
	B_Say (hero, self, "$TRADE_1");
};

INSTANCE Info_Mod_Namib_IR_EXIT (C_INFO)
{
	npc		= Mod_7457_GUR_BaalNamib_IR;
	nr		= 1;
	condition	= Info_Mod_Namib_IR_EXIT_Condition;
	information	= Info_Mod_Namib_IR_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Namib_IR_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Namib_IR_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
