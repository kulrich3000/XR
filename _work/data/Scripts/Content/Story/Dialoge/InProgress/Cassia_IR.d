INSTANCE Info_Mod_Cassia_IR_Hi (C_INFO)
{
	npc		= Mod_7465_NONE_Cassia_IR;
	nr		= 1;
	condition	= Info_Mod_Cassia_IR_Hi_Condition;
	information	= Info_Mod_Cassia_IR_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cassia_IR_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_IR_Hi_17_00"); //Hmm, this sanctuary of mighty demons doesn't look very magnificent.
	AI_Output(self, hero, "Info_Mod_Cassia_IR_Hi_17_01"); //I hope the journey will be worthwhile.... the few gold coins on the ship have not yet replaced the effort.
	AI_Output(hero, self, "Info_Mod_Cassia_IR_Hi_15_02"); //All in good time. If we go further into the interior of the island, one or the other precious piece will surely fall off.
	AI_Output(self, hero, "Info_Mod_Cassia_IR_Hi_17_03"); //We'll see...
};

INSTANCE Info_Mod_Cassia_IR_Bones (C_INFO)
{
	npc		= Mod_7465_NONE_Cassia_IR;
	nr		= 1;
	condition	= Info_Mod_Cassia_IR_Bones_Condition;
	information	= Info_Mod_Cassia_IR_Bones_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tell me, do you know what's wrong with Bones?";
};

FUNC INT Info_Mod_Cassia_IR_Bones_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Bones_IR_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_IR_Bones_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_IR_Bones_15_00"); //Tell me, do you know what's wrong with Bones?
	AI_Output(self, hero, "Info_Mod_Cassia_IR_Bones_17_01"); //Bones? Oh, you mean that unwashed pirate.
	AI_Output(self, hero, "Info_Mod_Cassia_IR_Bones_17_02"); //Well, I put him in a little bit of a corner with my sword when he wanted to get too pushy.
	AI_Output(self, hero, "Info_Mod_Cassia_IR_Bones_17_03"); //Hmm, but somehow it seems to me that I had seen him years ago... Yes, with my father....
	AI_Output(hero, self, "Info_Mod_Cassia_IR_Bones_15_04"); //Your father?
	AI_Output(self, hero, "Info_Mod_Cassia_IR_Bones_17_05"); //Yes, he was a sailor. Left me and my mother behind when he set sail again. Gregor was his name....
};

INSTANCE Info_Mod_Cassia_IR_Hebel (C_INFO)
{
	npc		= Mod_7465_NONE_Cassia_IR;
	nr		= 1;
	condition	= Info_Mod_Cassia_IR_Hebel_Condition;
	information	= Info_Mod_Cassia_IR_Hebel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you use one lever while I move the other?";
};

FUNC INT Info_Mod_Cassia_IR_Hebel_Condition()
{
	if (Mod_IR_Cassia == 1)
	&& (Mod_IR_HebelProb2 >= 2)
	&& (Mod_IR_Hebel == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_IR_Hebel_Info()
{
	B_Say	(hero, self, "$IRDORATHHEBEL");

	AI_Output(self, hero, "Info_Mod_Cassia_IR_Hebel_17_00"); //Of course it is. Maybe if it's going to get us somewhere...

	Mod_IR_Hebel = 1;

	Mod_IR_Hebelmann = Hlp_GetNpc(self);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Cassia_IR_Ambient01 (C_INFO)
{
	npc		= Mod_7465_NONE_Cassia_IR;
	nr		= 1;
	condition	= Info_Mod_Cassia_IR_Ambient01_Condition;
	information	= Info_Mod_Cassia_IR_Ambient01_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cassia_IR_Ambient01_Condition()
{
	if (Npc_GetDistToWP(hero, "DI_ORKAREA_10") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_IR_Ambient01_Info()
{
	AI_Output(self, hero, "Info_Mod_Cassia_IR_Ambient01_17_00"); //Well, hardly any gold so far, but various antiques.
	AI_Output(self, hero, "Info_Mod_Cassia_IR_Ambient01_17_01"); //They should also make a pretty penny for some traders and fences.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Cassia_IR_GehtLos (C_INFO)
{
	npc		= Mod_7465_NONE_Cassia_IR;
	nr		= 1;
	condition	= Info_Mod_Cassia_IR_GehtLos_Condition;
	information	= Info_Mod_Cassia_IR_GehtLos_Info;
	permanent	= 1;
	important	= 0;
	description	= "Let's get going. Will you escort me to the island?";
};

FUNC INT Info_Mod_Cassia_IR_GehtLos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Cassia_IR_Hi))
	&& (Mod_IR_Dabei < 7)
	&& (Mod_IR_Cassia == 0)
	&& (!Npc_IsDead(Dragon_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_IR_GehtLos_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHTLOS");

	AI_Output(self, hero, "Info_Mod_Cassia_IR_GehtLos_17_00"); //Yeah, alright. Let's see what treasures are hidden in this hole.

	Mod_IR_Dabei += 1;

	Mod_IR_Cassia = 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");
};

INSTANCE Info_Mod_Cassia_IR_GehBack (C_INFO)
{
	npc		= Mod_7465_NONE_Cassia_IR;
	nr		= 1;
	condition	= Info_Mod_Cassia_IR_GehBack_Condition;
	information	= Info_Mod_Cassia_IR_GehBack_Info;
	permanent	= 1;
	important	= 0;
	description	= "Go back to the ship.";
};

FUNC INT Info_Mod_Cassia_IR_GehBack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Cassia_IR_Hi))
	&& (Mod_IR_Cassia == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_IR_GehBack_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHBACK");

	AI_Output(self, hero, "Info_Mod_Cassia_IR_GehBack_17_00"); //Well, if you need me, you know where to find me.

	Mod_IR_Dabei -= 1;

	Mod_IR_Cassia = 0;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Cassia_IR_Lehrer (C_INFO)
{
	npc		= Mod_7465_NONE_Cassia_IR;
	nr		= 1;
	condition	= Info_Mod_Cassia_IR_Lehrer_Condition;
	information	= Info_Mod_Cassia_IR_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me something?";
};

FUNC INT Info_Mod_Cassia_IR_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_IR_Hi))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_IR_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Cassia_IR_Lehrer_17_01"); //I can teach you how to use one-handed weapons and improve your skills.
};

INSTANCE Info_Mod_Cassia_IR_Lernen_Einhand (C_INFO)
{
	npc		= Mod_7465_NONE_Cassia_IR;
	nr		= 1;
	condition	= Info_Mod_Cassia_IR_Lernen_Einhand_Condition;
	information	= Info_Mod_Cassia_IR_Lernen_Einhand_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me one-handed combat.";
};

FUNC INT Info_Mod_Cassia_IR_Lernen_Einhand_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_IR_Lehrer))
	&& (hero.hitchance[NPC_TALENT_1H] < 100)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_IR_Lernen_Einhand_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_IR_Lernen_Einhand_15_00"); //Teach me one-handed combat.

	Info_ClearChoices	(Info_Mod_Cassia_IR_Lernen_Einhand);
	
	Info_AddChoice	(Info_Mod_Cassia_IR_Lernen_Einhand, "Back off.", Info_Mod_Cassia_IR_Lernen_Einhand_BACK);
	Info_AddChoice	(Info_Mod_Cassia_IR_Lernen_Einhand, B_BuildLearnString(PRINT_Learn1H5, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Cassia_IR_Lernen_Einhand_5);
	Info_AddChoice	(Info_Mod_Cassia_IR_Lernen_Einhand, B_BuildLearnString(PRINT_Learn1H1, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Cassia_IR_Lernen_Einhand_1);
};

FUNC VOID Info_Mod_Cassia_IR_Lernen_Einhand_BACK()
{
	Info_ClearChoices	(Info_Mod_Cassia_IR_Lernen_Einhand);
};

FUNC VOID Info_Mod_Cassia_IR_Lernen_Einhand_5()
{
	B_TeachFightTalentPercent_New (self, hero, NPC_TALENT_1H, 5, 100);

	Info_ClearChoices	(Info_Mod_Cassia_IR_Lernen_Einhand);

	Info_AddChoice	(Info_Mod_Cassia_IR_Lernen_Einhand, "Back off.", Info_Mod_Cassia_IR_Lernen_Einhand_BACK);
	Info_AddChoice	(Info_Mod_Cassia_IR_Lernen_Einhand, B_BuildLearnString(PRINT_Learn1H5, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Cassia_IR_Lernen_Einhand_5);
	Info_AddChoice	(Info_Mod_Cassia_IR_Lernen_Einhand, B_BuildLearnString(PRINT_Learn1H1, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Cassia_IR_Lernen_Einhand_1);
};

FUNC VOID Info_Mod_Cassia_IR_Lernen_Einhand_1()
{
	B_TeachFightTalentPercent (self, hero, NPC_TALENT_1H, 1, 100);

	Info_ClearChoices	(Info_Mod_Cassia_IR_Lernen_Einhand);

	Info_AddChoice	(Info_Mod_Cassia_IR_Lernen_Einhand, "Back off.", Info_Mod_Cassia_IR_Lernen_Einhand_BACK);
	Info_AddChoice	(Info_Mod_Cassia_IR_Lernen_Einhand, B_BuildLearnString(PRINT_Learn1H5, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Cassia_IR_Lernen_Einhand_5);
	Info_AddChoice	(Info_Mod_Cassia_IR_Lernen_Einhand, B_BuildLearnString(PRINT_Learn1H1, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Cassia_IR_Lernen_Einhand_1);
};

INSTANCE Info_Mod_Cassia_IR_Lernen_DEX (C_INFO)
{
	npc		= Mod_7465_NONE_Cassia_IR;
	nr		= 1;
	condition	= Info_Mod_Cassia_IR_Lernen_DEX_Condition;
	information	= Info_Mod_Cassia_IR_Lernen_DEX_Info;
	permanent	= 1;
	important	= 0;
	description	= "Show me how to be more skillful.";
};

FUNC INT Info_Mod_Cassia_IR_Lernen_DEX_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_IR_Lehrer))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_IR_Lernen_DEX_Info()
{
	AI_Output(hero, self, "Info_Mod_Cassia_IR_Lernen_DEX_15_00"); //Show me how to be more skillful.
	AI_Output(self, hero, "Info_Mod_Cassia_IR_Lernen_DEX_17_01"); //What do you want to learn?

	Info_ClearChoices	(Info_Mod_Cassia_IR_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Cassia_IR_Lernen_DEX, DIALOG_BACK, Info_Mod_Cassia_IR_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Cassia_IR_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_IR_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Cassia_IR_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_IR_Lernen_DEX_Geschick_1);
};

FUNC VOID Info_Mod_Cassia_IR_Lernen_DEX_BACK()
{
	Info_ClearChoices (Info_Mod_Cassia_IR_Lernen_DEX);
};

FUNC VOID Info_Mod_Cassia_IR_Lernen_DEX_Geschick_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_DEXTERITY, 5, 200);
	
	Info_ClearChoices	(Info_Mod_Cassia_IR_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Cassia_IR_Lernen_DEX, DIALOG_BACK, Info_Mod_Cassia_IR_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Cassia_IR_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_IR_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Cassia_IR_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_IR_Lernen_DEX_Geschick_1);
};

FUNC VOID Info_Mod_Cassia_IR_Lernen_DEX_Geschick_1()
{
	B_TeachAttributePoints (self, hero, ATR_DEXTERITY, 1, 200);
	
	Info_ClearChoices	(Info_Mod_Cassia_IR_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Cassia_IR_Lernen_DEX, DIALOG_BACK, Info_Mod_Cassia_IR_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Cassia_IR_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_IR_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Cassia_IR_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Cassia_IR_Lernen_DEX_Geschick_1);
};

INSTANCE Info_Mod_Cassia_IR_Heiltrank (C_INFO)
{
	npc		= Mod_7465_NONE_Cassia_IR;
	nr		= 1;
	condition	= Info_Mod_Cassia_IR_Heiltrank_Condition;
	information	= Info_Mod_Cassia_IR_Heiltrank_Info;
	permanent	= 1;
	important	= 0;
	description	= "(give healing potion)";
};

FUNC INT Info_Mod_Cassia_IR_Heiltrank_Condition()
{
	if (self.aivar[AIV_Partymember] == TRUE)
	&& (Mod_IR_Cassia == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cassia_IR_Heiltrank_Info()
{
	Info_ClearChoices	(Info_Mod_Cassia_IR_Heiltrank);

	Info_AddChoice	(Info_Mod_Cassia_IR_Heiltrank, DIALOG_BACK, Info_Mod_Cassia_IR_Heiltrank_BACK);

	if (Npc_HasItems(hero, ItPo_Health_Addon_04) >= 1)
	&& (self.attribute[ATR_HITPOINTS] < self.attribute[ATR_HITPOINTS_MAX]-HP_Elixier)
	{
		Info_AddChoice	(Info_Mod_Cassia_IR_Heiltrank, "Essence of Healing", Info_Mod_Cassia_IR_Heiltrank_Health_04);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 3)
	&& (self.attribute[ATR_HITPOINTS] <= self.attribute[ATR_HITPOINTS_MAX]-HP_Elixier)
	{
		Info_AddChoice	(Info_Mod_Cassia_IR_Heiltrank, "Elixir of Healing", Info_Mod_Cassia_IR_Heiltrank_Health_03);
	};
	if (Npc_HasItems(hero, ItPo_Health_02) >= 1)
	&& (self.attribute[ATR_HITPOINTS] <= self.attribute[ATR_HITPOINTS_MAX]-HP_Extrakt)
	{
		Info_AddChoice	(Info_Mod_Cassia_IR_Heiltrank, "Extract of Healing", Info_Mod_Cassia_IR_Heiltrank_Health_02);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	&& (self.attribute[ATR_HITPOINTS] <= self.attribute[ATR_HITPOINTS_MAX]-HP_Essenz)
	{
		Info_AddChoice	(Info_Mod_Cassia_IR_Heiltrank, "Essence of Healing", Info_Mod_Cassia_IR_Heiltrank_Health_01);
	};
	if (Npc_HasItems(hero, ItPo_Health_07) >= 1)
	&& (self.attribute[ATR_HITPOINTS] <= self.attribute[ATR_HITPOINTS_MAX]-HP_06)
	{
		Info_AddChoice	(Info_Mod_Cassia_IR_Heiltrank, "Drink of light healing", Info_Mod_Cassia_IR_Heiltrank_Health_07);
	};
	if (Npc_HasItems(hero, ItPo_Health_06) >= 1)
	&& (self.attribute[ATR_HITPOINTS] <= self.attribute[ATR_HITPOINTS_MAX]-HP_06)
	{
		Info_AddChoice	(Info_Mod_Cassia_IR_Heiltrank, "Light healing potion", Info_Mod_Cassia_IR_Heiltrank_Health_06);
	};
	if (Npc_HasItems(hero, ItPo_Health_05) >= 1)
	&& (self.attribute[ATR_HITPOINTS] <= self.attribute[ATR_HITPOINTS_MAX]-HP_05)
	{
		Info_AddChoice	(Info_Mod_Cassia_IR_Heiltrank, "Drink of fast healing", Info_Mod_Cassia_IR_Heiltrank_Health_05);
	};
};

FUNC VOID Info_Mod_Cassia_IR_Heiltrank_BACK ()
{
	Info_ClearChoices	(Info_Mod_Cassia_IR_Heiltrank);
};

FUNC VOID Info_Mod_Cassia_IR_Heiltrank_Health_04 ()
{
	Info_ClearChoices	(Info_Mod_Cassia_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

FUNC VOID Info_Mod_Cassia_IR_Heiltrank_Health_03 ()
{
	Info_ClearChoices	(Info_Mod_Cassia_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_03, 1);

	B_UseItem	(self, ItPo_Health_03);
};

FUNC VOID Info_Mod_Cassia_IR_Heiltrank_Health_02 ()
{
	Info_ClearChoices	(Info_Mod_Cassia_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_02, 1);

	B_UseItem	(self, ItPo_Health_02);
};

FUNC VOID Info_Mod_Cassia_IR_Heiltrank_Health_01 ()
{
	Info_ClearChoices	(Info_Mod_Cassia_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);
};

FUNC VOID Info_Mod_Cassia_IR_Heiltrank_Health_07 ()
{
	Info_ClearChoices	(Info_Mod_Cassia_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_07, 1);

	B_UseItem	(self, ItPo_Health_07);
};

FUNC VOID Info_Mod_Cassia_IR_Heiltrank_Health_06 ()
{
	Info_ClearChoices	(Info_Mod_Cassia_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_06, 1);

	B_UseItem	(self, ItPo_Health_06);
};

FUNC VOID Info_Mod_Cassia_IR_Heiltrank_Health_05 ()
{
	Info_ClearChoices	(Info_Mod_Cassia_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_05, 1);

	B_UseItem	(self, ItPo_Health_05);
};

INSTANCE Info_Mod_Cassia_IR_EXIT (C_INFO)
{
	npc		= Mod_7465_NONE_Cassia_IR;
	nr		= 1;
	condition	= Info_Mod_Cassia_IR_EXIT_Condition;
	information	= Info_Mod_Cassia_IR_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cassia_IR_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cassia_IR_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
