INSTANCE Info_Mod_Milten_IR_Hi (C_INFO)
{
	npc		= Mod_7443_KDF_Milten_IR;
	nr		= 1;
	condition	= Info_Mod_Milten_IR_Hi_Condition;
	information	= Info_Mod_Milten_IR_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "So, what do you think of this so far?";
};

FUNC INT Info_Mod_Milten_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Milten_IR_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_IR_Hi_15_00"); //So, what do you think of this so far?
	AI_Output(self, hero, "Info_Mod_Milten_IR_Hi_03_01"); //Well, this dark place does credit to the magician Xeres.
	AI_Output(self, hero, "Info_Mod_Milten_IR_Hi_03_02"); //Inno's illuminating fire is what this place has been missing for a long time.
	AI_Output(self, hero, "Info_Mod_Milten_IR_Hi_03_03"); //His blessing will hopefully serve us well when it comes to banishing the demonic brood that nests here.
	AI_Output(hero, self, "Info_Mod_Milten_IR_Hi_15_04"); //Ohh, very unusual sounds. You speak like a fire magician of your own free will.
	AI_Output(self, hero, "Info_Mod_Milten_IR_Hi_03_05"); //Well, it is surely the cold and darkness that brings me closer to Inno.
	AI_Output(self, hero, "Info_Mod_Milten_IR_Hi_03_06"); //Here I notice what I have in him.
};

INSTANCE Info_Mod_Milten_IR_Hebel (C_INFO)
{
	npc		= Mod_7443_KDF_Milten_IR;
	nr		= 1;
	condition	= Info_Mod_Milten_IR_Hebel_Condition;
	information	= Info_Mod_Milten_IR_Hebel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you use one lever while I move the other?";
};

FUNC INT Info_Mod_Milten_IR_Hebel_Condition()
{
	if (Mod_IR_Milten == 1)
	&& (Mod_IR_HebelProb2 >= 2)
	&& (Mod_IR_Hebel == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_IR_Hebel_Info()
{
	B_Say	(hero, self, "$IRDORATHHEBEL");

	AI_Output(self, hero, "Info_Mod_Milten_IR_Hebel_03_00"); //Of course it is. Maybe if it's going to get us somewhere...

	Mod_IR_Hebel = 1;

	Mod_IR_Hebelmann = Hlp_GetNpc(self);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Milten_IR_Ambient01 (C_INFO)
{
	npc		= Mod_7443_KDF_Milten_IR;
	nr		= 1;
	condition	= Info_Mod_Milten_IR_Ambient01_Condition;
	information	= Info_Mod_Milten_IR_Ambient01_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Milten_IR_Ambient01_Condition()
{
	if (Npc_GetDistToWP(hero, "DI_SHIP_08") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_IR_Ambient01_Info()
{
	AI_Output(self, hero, "Info_Mod_Milten_IR_Ambient01_03_00"); //Ashes to ashes, and dust to dust. Inno's fire leads the bones of these undead to their right destiny.
	AI_Output(hero, self, "Info_Mod_Milten_IR_Ambient01_15_01"); //Yes, the fire of Inno is doing its best to turn the dried bones of these fiends into ashes.

	AI_StopProcessInfos	(hero);
};

INSTANCE Info_Mod_Milten_IR_GehtLos (C_INFO)
{
	npc		= Mod_7443_KDF_Milten_IR;
	nr		= 1;
	condition	= Info_Mod_Milten_IR_GehtLos_Condition;
	information	= Info_Mod_Milten_IR_GehtLos_Info;
	permanent	= 1;
	important	= 0;
	description	= "Let's get going. Will you escort me to the island?";
};

FUNC INT Info_Mod_Milten_IR_GehtLos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Milten_IR_Hi))
	&& (Mod_IR_Dabei < 7)
	&& (Mod_IR_Milten == 0)
	&& (!Npc_IsDead(Dragon_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_IR_GehtLos_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHTLOS");

	AI_Output(self, hero, "Info_Mod_Milten_IR_GehtLos_03_00"); //Of course I'll go with you. May Inno's fire set fire to the fiends.

	Mod_IR_Dabei += 1;

	Mod_IR_Milten = 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");
};

INSTANCE Info_Mod_Milten_IR_GehBack (C_INFO)
{
	npc		= Mod_7443_KDF_Milten_IR;
	nr		= 1;
	condition	= Info_Mod_Milten_IR_GehBack_Condition;
	information	= Info_Mod_Milten_IR_GehBack_Info;
	permanent	= 1;
	important	= 0;
	description	= "Go back to the ship.";
};

FUNC INT Info_Mod_Milten_IR_GehBack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Milten_IR_Hi))
	&& (Mod_IR_Milten == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_IR_GehBack_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHBACK");

	AI_Output(self, hero, "Info_Mod_Milten_IR_GehBack_03_00"); //Well, if you need me, you know where to find me.

	Mod_IR_Dabei -= 1;

	Mod_IR_Milten = 0;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Milten_IR_Kram (C_INFO)
{
	npc		= Mod_7443_KDF_Milten_IR;
	nr		= 1;
	condition	= Info_Mod_Milten_IR_Kram_Condition;
	information	= Info_Mod_Milten_IR_Kram_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me something?";
};

FUNC INT Info_Mod_Milten_IR_Kram_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_IR_Kram))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_IR_Kram_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Milten_IR_Kram_03_01"); //Yes, of course. I can teach you to increase your magic power.
	AI_Output(self, hero, "Info_Mod_Milten_IR_Kram_03_02"); //I also have some of the monastery's spell rolls with me, if you want to have a look at them.
};

INSTANCE Info_Mod_Milten_IR_Lernen (C_INFO)
{
	npc		= Mod_7443_KDF_Milten_IR;
	nr		= 1;
	condition	= Info_Mod_Milten_IR_Lernen_Condition;
	information	= Info_Mod_Milten_IR_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to increase my magical powers.";
};

FUNC INT Info_Mod_Milten_IR_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_IR_Kram))
	&& (hero.attribute[ATR_MANA_MAX] <= 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_IR_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Milten_IR_Lernen_15_00"); //I want to increase my magical powers.

	Info_ClearChoices	(Info_Mod_Milten_IR_Lernen);

	Info_AddChoice		(Info_Mod_Milten_IR_Lernen, DIALOG_BACK, Info_Mod_Milten_IR_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Milten_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Milten_IR_Lernen_5);
	Info_AddChoice		(Info_Mod_Milten_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Milten_IR_Lernen_1);
};

FUNC VOID Info_Mod_Milten_IR_Lernen_BACK()
{
	if (hero.attribute[ATR_MANA_MAX] >= 300)
	{
		AI_Output(self, hero, "Info_Mod_Milten_IR_Lernen_BACK_14_01"); //Your magic skills are so good now, I can't teach you anything.
	};
	Info_ClearChoices	(Info_Mod_Milten_IR_Lernen);
};

FUNC VOID Info_Mod_Milten_IR_Lernen_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_MANA_MAX, 5, 300);

	Info_ClearChoices	(Info_Mod_Milten_IR_Lernen);

	Info_AddChoice		(Info_Mod_Milten_IR_Lernen, DIALOG_BACK, Info_Mod_Milten_IR_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Milten_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Milten_IR_Lernen_5);
	Info_AddChoice		(Info_Mod_Milten_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Milten_IR_Lernen_1);
};

FUNC VOID Info_Mod_Milten_IR_Lernen_1()
{
	B_TeachAttributePoints (self, hero, ATR_MANA_MAX, 1, 300);

	Info_ClearChoices	(Info_Mod_Milten_IR_Lernen);

	Info_AddChoice		(Info_Mod_Milten_IR_Lernen, DIALOG_BACK, Info_Mod_Milten_IR_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Milten_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Milten_IR_Lernen_5);
	Info_AddChoice		(Info_Mod_Milten_IR_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Milten_IR_Lernen_1);
};

INSTANCE Info_Mod_Milten_IR_Trade (C_INFO)
{
	npc		= Mod_7443_KDF_Milten_IR;
	nr		= 1;
	condition	= Info_Mod_Milten_IR_Trade_Condition;
	information	= Info_Mod_Milten_IR_Trade_Info;
	permanent	= 1;
	important	= 0;
	trade		= 1;
	description	= DIALOG_TRADE;
};

FUNC INT Info_Mod_Milten_IR_Trade_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Milten_IR_Kram))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_IR_Trade_Info()
{
	B_Say (hero, self, "$TRADE_1");
};

INSTANCE Info_Mod_Milten_IR_Heiltrank (C_INFO)
{
	npc		= Mod_7443_KDF_Milten_IR;
	nr		= 1;
	condition	= Info_Mod_Milten_IR_Heiltrank_Condition;
	information	= Info_Mod_Milten_IR_Heiltrank_Info;
	permanent	= 1;
	important	= 0;
	description	= "(healing potion)";
};

FUNC INT Info_Mod_Milten_IR_Heiltrank_Condition()
{
	if (self.aivar[AIV_Partymember] == TRUE)
	&& (Mod_IR_Milten == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Milten_IR_Heiltrank_Info()
{
	Info_ClearChoices	(Info_Mod_Milten_IR_Heiltrank);

	Info_AddChoice	(Info_Mod_Milten_IR_Heiltrank, DIALOG_BACK, Info_Mod_Milten_IR_Heiltrank_BACK);

	if (Npc_HasItems(hero, ItPo_Health_Addon_04) >= 1)
	{
		Info_AddChoice	(Info_Mod_Milten_IR_Heiltrank, "Essence of Healing", Info_Mod_Milten_IR_Heiltrank_Health_04);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Milten_IR_Heiltrank, "Elixir of Healing", Info_Mod_Milten_IR_Heiltrank_Health_03);
	};
	if (Npc_HasItems(hero, ItPo_Health_02) >= 1)
	{
		Info_AddChoice	(Info_Mod_Milten_IR_Heiltrank, "Extract of Healing", Info_Mod_Milten_IR_Heiltrank_Health_02);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Milten_IR_Heiltrank, "Essence of Healing", Info_Mod_Milten_IR_Heiltrank_Health_01);
	};
	if (Npc_HasItems(hero, ItPo_Health_07) >= 1)
	{
		Info_AddChoice	(Info_Mod_Milten_IR_Heiltrank, "Drink of light healing", Info_Mod_Milten_IR_Heiltrank_Health_07);
	};
	if (Npc_HasItems(hero, ItPo_Health_06) >= 1)
	{
		Info_AddChoice	(Info_Mod_Milten_IR_Heiltrank, "Light healing potion", Info_Mod_Milten_IR_Heiltrank_Health_06);
	};
	if (Npc_HasItems(hero, ItPo_Health_05) >= 1)
	{
		Info_AddChoice	(Info_Mod_Milten_IR_Heiltrank, "Drink of fast healing", Info_Mod_Milten_IR_Heiltrank_Health_05);
	};
};

FUNC VOID Info_Mod_Milten_IR_Heiltrank_BACK ()
{
	Info_ClearChoices	(Info_Mod_Milten_IR_Heiltrank);
};

FUNC VOID Info_Mod_Milten_IR_Heiltrank_Health_04 ()
{
	Info_ClearChoices	(Info_Mod_Milten_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

FUNC VOID Info_Mod_Milten_IR_Heiltrank_Health_03 ()
{
	Info_ClearChoices	(Info_Mod_Milten_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_03, 1);

	B_UseItem	(self, ItPo_Health_03);
};

FUNC VOID Info_Mod_Milten_IR_Heiltrank_Health_02 ()
{
	Info_ClearChoices	(Info_Mod_Milten_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_02, 1);

	B_UseItem	(self, ItPo_Health_02);
};

FUNC VOID Info_Mod_Milten_IR_Heiltrank_Health_01 ()
{
	Info_ClearChoices	(Info_Mod_Milten_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);
};

FUNC VOID Info_Mod_Milten_IR_Heiltrank_Health_07 ()
{
	Info_ClearChoices	(Info_Mod_Milten_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_07, 1);

	B_UseItem	(self, ItPo_Health_07);
};

FUNC VOID Info_Mod_Milten_IR_Heiltrank_Health_06 ()
{
	Info_ClearChoices	(Info_Mod_Milten_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_06, 1);

	B_UseItem	(self, ItPo_Health_06);
};

FUNC VOID Info_Mod_Milten_IR_Heiltrank_Health_05 ()
{
	Info_ClearChoices	(Info_Mod_Milten_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_05, 1);

	B_UseItem	(self, ItPo_Health_05);
};

INSTANCE Info_Mod_Milten_IR_EXIT (C_INFO)
{
	npc		= Mod_7443_KDF_Milten_IR;
	nr		= 1;
	condition	= Info_Mod_Milten_IR_EXIT_Condition;
	information	= Info_Mod_Milten_IR_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Milten_IR_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Milten_IR_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
