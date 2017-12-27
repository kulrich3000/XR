INSTANCE Info_Mod_Angar_IR_Hi (C_INFO)
{
	npc		= Mod_7455_TPL_Angar_IR;
	nr		= 1;
	condition	= Info_Mod_Angar_IR_Hi_Condition;
	information	= Info_Mod_Angar_IR_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "So, what do you say?";
};

FUNC INT Info_Mod_Angar_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Angar_IR_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Angar_IR_Hi_15_00"); //Well, what do you say?
	AI_Output(self, hero, "Info_Mod_Angar_IR_Hi_34_01"); //Yes, that is the destination of our journey.
	AI_Output(self, hero, "Info_Mod_Angar_IR_Hi_34_02"); //Here I will wield my sword against those who are guilty of the death of Master Y' berion.
	AI_Output(self, hero, "Info_Mod_Angar_IR_Hi_34_03"); //Only when his death has been atoned 100 times by the shattered bodies of our enemies, can I rest again.
	AI_Output(hero, self, "Info_Mod_Angar_IR_Hi_15_04"); //Ohh, that's exactly the kind of attitude we need for this expedition.
};

INSTANCE Info_Mod_Angar_IR_Hebel (C_INFO)
{
	npc		= Mod_7455_TPL_Angar_IR;
	nr		= 1;
	condition	= Info_Mod_Angar_IR_Hebel_Condition;
	information	= Info_Mod_Angar_IR_Hebel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you use one lever while I move the other?";
};

FUNC INT Info_Mod_Angar_IR_Hebel_Condition()
{
	if (Mod_IR_Angar == 1)
	&& (Mod_IR_HebelProb2 >= 2)
	&& (Mod_IR_Hebel == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Angar_IR_Hebel_Info()
{
	B_Say	(hero, self, "$IRDORATHHEBEL");

	AI_Output(self, hero, "Info_Mod_Angar_IR_Hebel_34_00"); //Of course it is. Maybe if it's going to get us somewhere...

	Mod_IR_Hebel = 1;

	Mod_IR_Hebelmann = Hlp_GetNpc(self);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Angar_IR_GehtLos (C_INFO)
{
	npc		= Mod_7455_TPL_Angar_IR;
	nr		= 1;
	condition	= Info_Mod_Angar_IR_GehtLos_Condition;
	information	= Info_Mod_Angar_IR_GehtLos_Info;
	permanent	= 1;
	important	= 0;
	description	= "Let's get going. Will you escort me to the island?";
};

FUNC INT Info_Mod_Angar_IR_GehtLos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Angar_IR_Hi))
	&& (Mod_IR_Dabei < 7)
	&& (Mod_IR_Angar == 0)
	&& (!Npc_IsDead(Dragon_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Angar_IR_GehtLos_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHTLOS");

	AI_Output(self, hero, "Info_Mod_Angar_IR_GehtLos_34_00"); //Of course it is. When the situation demands it, a man should convince not only by words but also by his actions.

	Mod_IR_Dabei += 1;

	Mod_IR_Angar = 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");
};

INSTANCE Info_Mod_Angar_IR_GehBack (C_INFO)
{
	npc		= Mod_7455_TPL_Angar_IR;
	nr		= 1;
	condition	= Info_Mod_Angar_IR_GehBack_Condition;
	information	= Info_Mod_Angar_IR_GehBack_Info;
	permanent	= 1;
	important	= 0;
	description	= "Go back to the ship.";
};

FUNC INT Info_Mod_Angar_IR_GehBack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Angar_IR_Hi))
	&& (Mod_IR_Angar == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Angar_IR_GehBack_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHBACK");

	AI_Output(self, hero, "Info_Mod_Angar_IR_GehBack_34_00"); //Well, if you need me, you know where to find me.

	Mod_IR_Dabei -= 1;

	Mod_IR_Angar = 0;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Angar_IR_Kram (C_INFO)
{
	npc		= Mod_7455_TPL_Angar_IR;
	nr		= 1;
	condition	= Info_Mod_Angar_IR_Kram_Condition;
	information	= Info_Mod_Angar_IR_Kram_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me something?";
};

FUNC INT Info_Mod_Angar_IR_Kram_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Angar_IR_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Angar_IR_Kram_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Angar_IR_Kram_34_01"); //I can teach you to wield the two-handed sword and show you how to use the powers of your body more effectively.
};

INSTANCE Info_Mod_Angar_IR_Lernen (C_INFO)
{
	npc		= Mod_7455_TPL_Angar_IR;
	nr		= 1;
	condition	= Info_Mod_Angar_IR_Lernen_Condition;
	information	= Info_Mod_Angar_IR_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to learn.";
};

FUNC INT Info_Mod_Angar_IR_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Angar_IR_Kram))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Angar_IR_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Angar_IR_Lernen_15_00"); //I want to learn.

	Info_ClearChoices	(Info_Mod_Angar_IR_Lernen);

	Info_AddChoice		(Info_Mod_Angar_IR_Lernen, DIALOG_BACK, Info_Mod_Angar_IR_Lernen_Zweihand_BACK);
	Info_AddChoice		(Info_Mod_Angar_IR_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H))		,Info_Mod_Angar_IR_Lernen_Zweihand_5);
	Info_AddChoice		(Info_Mod_Angar_IR_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1))		,Info_Mod_Angar_IR_Lernen_Zweihand_1);
};

FUNC VOID Info_Mod_Angar_IR_Lernen_Zweihand_BACK()
{
	Info_ClearChoices	(Info_Mod_Angar_IR_Lernen);
};

FUNC VOID Info_Mod_Angar_IR_Lernen_Zweihand_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_2H, 5, 100)
	{
		Info_ClearChoices	(Info_Mod_Angar_IR_Lernen);

		Info_AddChoice		(Info_Mod_Angar_IR_Lernen, DIALOG_BACK, Info_Mod_Angar_IR_Lernen_Zweihand_BACK);
		Info_AddChoice		(Info_Mod_Angar_IR_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H))		,Info_Mod_Angar_IR_Lernen_Zweihand_5);
		Info_AddChoice		(Info_Mod_Angar_IR_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1))		,Info_Mod_Angar_IR_Lernen_Zweihand_1);
	};
};

FUNC VOID Info_Mod_Angar_IR_Lernen_Zweihand_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_2H, 1, 100)
	{
		Info_ClearChoices	(Info_Mod_Angar_IR_Lernen);

		Info_AddChoice		(Info_Mod_Angar_IR_Lernen, DIALOG_BACK, Info_Mod_Angar_IR_Lernen_Zweihand_BACK);
		Info_AddChoice		(Info_Mod_Angar_IR_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H))		,Info_Mod_Angar_IR_Lernen_Zweihand_5);
		Info_AddChoice		(Info_Mod_Angar_IR_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1))		,Info_Mod_Angar_IR_Lernen_Zweihand_1);
	};
};

INSTANCE Info_Mod_Angar_IR_Staerke (C_INFO)
{
	npc		= Mod_7455_TPL_Angar_IR;
	nr		= 1;
	condition	= Info_Mod_Angar_IR_Staerke_Condition;
	information	= Info_Mod_Angar_IR_Staerke_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to get stronger.";
};

FUNC INT Info_Mod_Angar_IR_Staerke_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Angar_IR_Kram))
	&& (hero.attribute[ATR_STRENGTH] < 200)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Angar_IR_Staerke_Info()
{
	AI_Output(hero, self, "Info_Mod_Angar_IR_Staerke_15_00"); //I want to be stronger.

	Info_ClearChoices	(Info_Mod_Angar_IR_Staerke);

	Info_AddChoice 		(Info_Mod_Angar_IR_Staerke, DIALOG_BACK, Info_Mod_Angar_IR_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Angar_IR_Staerke, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Angar_IR_Staerke_5);
	Info_AddChoice		(Info_Mod_Angar_IR_Staerke, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Angar_IR_Staerke_1);
};

FUNC VOID Info_Mod_Angar_IR_Staerke_BACK()
{
	Info_ClearChoices	(Info_Mod_Angar_IR_Staerke);
};

func void Info_Mod_Angar_IR_Staerke_1()
{
	B_TeachAttributePoints (self, other, ATR_STRENGTH, 1, 200);

	Info_ClearChoices	(Info_Mod_Angar_IR_Staerke);
	Info_AddChoice		(Info_Mod_Angar_IR_Staerke, DIALOG_BACK, Info_Mod_Angar_IR_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Angar_IR_Staerke, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Angar_IR_Staerke_5);
	Info_AddChoice		(Info_Mod_Angar_IR_Staerke, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Angar_IR_Staerke_1);
};

FUNC VOID Info_Mod_Angar_IR_Staerke_5()
{
	B_TeachAttributePoints_New (self, other, ATR_STRENGTH, 5, 020);
	
	Info_ClearChoices	(Info_Mod_Angar_IR_Staerke);
	Info_AddChoice		(Info_Mod_Angar_IR_Staerke, DIALOG_BACK, Info_Mod_Angar_IR_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Angar_IR_Staerke, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Angar_IR_Staerke_5);
	Info_AddChoice		(Info_Mod_Angar_IR_Staerke, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Angar_IR_Staerke_1);
};

INSTANCE Info_Mod_Angar_IR_Heiltrank (C_INFO)
{
	npc		= Mod_7455_TPL_Angar_IR;
	nr		= 1;
	condition	= Info_Mod_Angar_IR_Heiltrank_Condition;
	information	= Info_Mod_Angar_IR_Heiltrank_Info;
	permanent	= 1;
	important	= 0;
	description	= "(give healing potion)";
};

FUNC INT Info_Mod_Angar_IR_Heiltrank_Condition()
{
	if (self.aivar[AIV_Partymember] == TRUE)
	&& (Mod_IR_Angar == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Angar_IR_Heiltrank_Info()
{
	Info_ClearChoices	(Info_Mod_Angar_IR_Heiltrank);

	Info_AddChoice	(Info_Mod_Angar_IR_Heiltrank, DIALOG_BACK, Info_Mod_Angar_IR_Heiltrank_BACK);

	if (Npc_HasItems(hero, ItPo_Health_Addon_04) >= 1)
	{
		Info_AddChoice	(Info_Mod_Angar_IR_Heiltrank, "Essence of Healing", Info_Mod_Angar_IR_Heiltrank_Health_04);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Angar_IR_Heiltrank, "Elixir of Healing", Info_Mod_Angar_IR_Heiltrank_Health_03);
	};
	if (Npc_HasItems(hero, ItPo_Health_02) >= 1)
	{
		Info_AddChoice	(Info_Mod_Angar_IR_Heiltrank, "Extract of Healing", Info_Mod_Angar_IR_Heiltrank_Health_02);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Angar_IR_Heiltrank, "Essence of Healing", Info_Mod_Angar_IR_Heiltrank_Health_01);
	};
	if (Npc_HasItems(hero, ItPo_Health_07) >= 1)
	{
		Info_AddChoice	(Info_Mod_Angar_IR_Heiltrank, "Drink of light healing", Info_Mod_Angar_IR_Heiltrank_Health_07);
	};
	if (Npc_HasItems(hero, ItPo_Health_06) >= 1)
	{
		Info_AddChoice	(Info_Mod_Angar_IR_Heiltrank, "Light healing potion", Info_Mod_Angar_IR_Heiltrank_Health_06);
	};
	if (Npc_HasItems(hero, ItPo_Health_05) >= 1)
	{
		Info_AddChoice	(Info_Mod_Angar_IR_Heiltrank, "Drink of fast healing", Info_Mod_Angar_IR_Heiltrank_Health_05);
	};
};

FUNC VOID Info_Mod_Angar_IR_Heiltrank_BACK ()
{
	Info_ClearChoices	(Info_Mod_Angar_IR_Heiltrank);
};

FUNC VOID Info_Mod_Angar_IR_Heiltrank_Health_04 ()
{
	Info_ClearChoices	(Info_Mod_Angar_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

FUNC VOID Info_Mod_Angar_IR_Heiltrank_Health_03 ()
{
	Info_ClearChoices	(Info_Mod_Angar_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_03, 1);

	B_UseItem	(self, ItPo_Health_03);
};

FUNC VOID Info_Mod_Angar_IR_Heiltrank_Health_02 ()
{
	Info_ClearChoices	(Info_Mod_Angar_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_02, 1);

	B_UseItem	(self, ItPo_Health_02);
};

FUNC VOID Info_Mod_Angar_IR_Heiltrank_Health_01 ()
{
	Info_ClearChoices	(Info_Mod_Angar_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);
};

FUNC VOID Info_Mod_Angar_IR_Heiltrank_Health_07 ()
{
	Info_ClearChoices	(Info_Mod_Angar_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_07, 1);

	B_UseItem	(self, ItPo_Health_07);
};

FUNC VOID Info_Mod_Angar_IR_Heiltrank_Health_06 ()
{
	Info_ClearChoices	(Info_Mod_Angar_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_06, 1);

	B_UseItem	(self, ItPo_Health_06);
};

FUNC VOID Info_Mod_Angar_IR_Heiltrank_Health_05 ()
{
	Info_ClearChoices	(Info_Mod_Angar_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_05, 1);

	B_UseItem	(self, ItPo_Health_05);
};

INSTANCE Info_Mod_Angar_IR_EXIT (C_INFO)
{
	npc		= Mod_7455_TPL_Angar_IR;
	nr		= 1;
	condition	= Info_Mod_Angar_IR_EXIT_Condition;
	information	= Info_Mod_Angar_IR_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Angar_IR_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Angar_IR_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
