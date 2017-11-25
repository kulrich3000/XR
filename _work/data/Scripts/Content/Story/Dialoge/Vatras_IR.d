INSTANCE Info_Mod_Vatras_IR_Hi (C_INFO)
{
	npc		= Mod_7449_KDW_Vatras_IR;
	nr		= 1;
	condition	= Info_Mod_Vatras_IR_Hi_Condition;
	information	= Info_Mod_Vatras_IR_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Vatras_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Vatras_IR_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Vatras_IR_Hi_04_00"); //Adanos must have led us here.
	AI_Output(self, hero, "Info_Mod_Vatras_IR_Hi_04_01"); //I hope we can continue to be aware of his protective hand.
	AI_Output(hero, self, "Info_Mod_Vatras_IR_Hi_15_02"); //Yes, I welcome the blessing of each of the three deities. We'll need them in this dark hole for sure.
};

INSTANCE Info_Mod_Vatras_IR_GehtLos (C_INFO)
{
	npc		= Mod_7449_KDW_Vatras_IR;
	nr		= 1;
	condition	= Info_Mod_Vatras_IR_GehtLos_Condition;
	information	= Info_Mod_Vatras_IR_GehtLos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Let's get going. Will you escort me to the island?";
};

FUNC INT Info_Mod_Vatras_IR_GehtLos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Vatras_IR_Hi))
	&& (Mod_IR_Dabei < 7)
	&& (!Npc_IsDead(Dragon_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_IR_GehtLos_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHTLOS");

	AI_Output(self, hero, "Info_Mod_Vatras_IR_GehtLos_04_00"); //Well, the days of youthful agility and fast legs lie many years back with me.
	AI_Output(self, hero, "Info_Mod_Vatras_IR_GehtLos_04_01"); //I will stay here, pray for the success of the mission and watch over the ship. May Adanos keep you safe.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Vatras_IR_Kram (C_INFO)
{
	npc		= Mod_7449_KDW_Vatras_IR;
	nr		= 1;
	condition	= Info_Mod_Vatras_IR_Kram_Condition;
	information	= Info_Mod_Vatras_IR_Kram_Info;
	permanent	= 0;
	important	= 0;
	description	= "How can you support me?";
};

FUNC INT Info_Mod_Vatras_IR_Kram_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_IR_Kram))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_IR_Kram_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_IR_Kram_15_00"); //How can you support me?
	AI_Output(self, hero, "Info_Mod_Vatras_IR_Kram_04_01"); //I can help you increase your magical power and provide you with some of my spell rolls and potions.
};

INSTANCE Info_Mod_Vatras_IR_Lernen (C_INFO)
{
	npc		= Mod_7449_KDW_Vatras_IR;
	nr		= 1;
	condition	= Info_Mod_Vatras_IR_Lernen_Condition;
	information	= Info_Mod_Vatras_IR_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to increase my magical powers.";
};

FUNC INT Info_Mod_Vatras_IR_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_IR_Kram))
	&& (hero.attribute[ATR_MANA_MAX] <= 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_IR_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_IR_Lernen_15_00"); //I want to increase my magical powers.

	Info_ClearChoices	(Info_Mod_Vatras_IR_Lernen);

	Info_AddChoice		(Info_Mod_Vatras_IR_Lernen, DIALOG_BACK, Info_Mod_Vatras_IR_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Vatras_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Vatras_IR_Lernen_5);
	Info_AddChoice		(Info_Mod_Vatras_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Vatras_IR_Lernen_1);
};

FUNC VOID Info_Mod_Vatras_IR_Lernen_BACK()
{
	if (hero.attribute[ATR_MANA_MAX] >= 300)
	{
		AI_Output(self, hero, "Info_Mod_Vatras_IR_Lernen_BACK_14_01"); //Your magic skills are so good now, I can't teach you anything.
	};
	Info_ClearChoices	(Info_Mod_Vatras_IR_Lernen);
};

FUNC VOID Info_Mod_Vatras_IR_Lernen_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_MANA_MAX, 5, 300);

	Info_ClearChoices	(Info_Mod_Vatras_IR_Lernen);

	Info_AddChoice		(Info_Mod_Vatras_IR_Lernen, DIALOG_BACK, Info_Mod_Vatras_IR_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Vatras_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Vatras_IR_Lernen_5);
	Info_AddChoice		(Info_Mod_Vatras_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Vatras_IR_Lernen_1);
};

FUNC VOID Info_Mod_Vatras_IR_Lernen_1()
{
	B_TeachAttributePoints (self, hero, ATR_MANA_MAX, 1, 300);

	Info_ClearChoices	(Info_Mod_Vatras_IR_Lernen);

	Info_AddChoice		(Info_Mod_Vatras_IR_Lernen, DIALOG_BACK, Info_Mod_Vatras_IR_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Vatras_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Vatras_IR_Lernen_5);
	Info_AddChoice		(Info_Mod_Vatras_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Vatras_IR_Lernen_1);
};

INSTANCE Info_Mod_Vatras_IR_Trade (C_INFO)
{
	npc		= Mod_7449_KDW_Vatras_IR;
	nr		= 1;
	condition	= Info_Mod_Vatras_IR_Trade_Condition;
	information	= Info_Mod_Vatras_IR_Trade_Info;
	permanent	= 1;
	important	= 0;
	trade		= 1;
	description	= DIALOG_TRADE;
};

FUNC INT Info_Mod_Vatras_IR_Trade_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_IR_Kram))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_IR_Trade_Info()
{
	B_Say (hero, self, "$TRADE_1");
};

INSTANCE Info_Mod_Vatras_IR_EXIT (C_INFO)
{
	npc		= Mod_7449_KDW_Vatras_IR;
	nr		= 1;
	condition	= Info_Mod_Vatras_IR_EXIT_Condition;
	information	= Info_Mod_Vatras_IR_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Vatras_IR_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Vatras_IR_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
