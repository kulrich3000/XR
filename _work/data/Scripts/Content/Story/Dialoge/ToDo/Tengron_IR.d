INSTANCE Info_Mod_Tengron_IR_Hi (C_INFO)
{
	npc		= Mod_7451_RIT_Tengron_IR;
	nr		= 1;
	condition	= Info_Mod_Tengron_IR_Hi_Condition;
	information	= Info_Mod_Tengron_IR_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "How was the trip and what do you say to the island?";
};

FUNC INT Info_Mod_Tengron_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Tengron_IR_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Tengron_IR_Hi_15_00"); //How was the trip and what do you say to the island?
	AI_Output(self, hero, "Info_Mod_Tengron_IR_Hi_07_01"); //The island... as if I were looking directly into the face of those dark creatures I met at night outside the city.
	AI_Output(self, hero, "Info_Mod_Tengron_IR_Hi_07_02"); //Yes, the evil manifests itself in this place in its most abominable form.
	AI_Output(self, hero, "Info_Mod_Tengron_IR_Hi_07_03"); //My blade is ready to wipe out these pathetic creatures with Inno's blessing... even if it won't be an easy test.
	AI_Output(hero, self, "Info_Mod_Tengron_IR_Hi_15_04"); //I praise myself for all that fighting spirit. It won't be long now.
};

INSTANCE Info_Mod_Tengron_IR_Hebel (C_INFO)
{
	npc		= Mod_7451_RIT_Tengron_IR;
	nr		= 1;
	condition	= Info_Mod_Tengron_IR_Hebel_Condition;
	information	= Info_Mod_Tengron_IR_Hebel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you use one lever while I move the other?";
};

FUNC INT Info_Mod_Tengron_IR_Hebel_Condition()
{
	if (Mod_IR_Tengron == 1)
	&& (Mod_IR_HebelProb2 >= 2)
	&& (Mod_IR_Hebel == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tengron_IR_Hebel_Info()
{
	B_Say	(hero, self, "$IRDORATHHEBEL");

	AI_Output(self, hero, "Info_Mod_Tengron_IR_Hebel_07_00"); //Of course it is. Maybe if it's going to get us somewhere...

	Mod_IR_Hebel = 1;

	Mod_IR_Hebelmann = Hlp_GetNpc(self);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Tengron_IR_Ambient01 (C_INFO)
{
	npc		= Mod_7451_RIT_Tengron_IR;
	nr		= 1;
	condition	= Info_Mod_Tengron_IR_Ambient01_Condition;
	information	= Info_Mod_Tengron_IR_Ambient01_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Tengron_IR_Ambient01_Condition()
{
	if (Npc_GetDistToWP(hero, "DI_ENTER_02") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tengron_IR_Ambient01_Info()
{
	AI_Output(self, hero, "Info_Mod_Tengron_IR_Ambient01_07_00"); //Hideous, sinister creatures. May Inno's blessed light banish them and put an end to their presence.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Tengron_IR_GehtLos (C_INFO)
{
	npc		= Mod_7451_RIT_Tengron_IR;
	nr		= 1;
	condition	= Info_Mod_Tengron_IR_GehtLos_Condition;
	information	= Info_Mod_Tengron_IR_GehtLos_Info;
	permanent	= 1;
	important	= 0;
	description	= "Let's get going. Will you escort me to the island?";
};

FUNC INT Info_Mod_Tengron_IR_GehtLos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Tengron_IR_Hi))
	&& (Mod_IR_Dabei < 7)
	&& (Mod_IR_Tengron == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tengron_IR_GehtLos_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHTLOS");

	AI_Output(self, hero, "Info_Mod_Tengron_IR_GehtLos_07_00"); //Yeah, of course I'll go with you. It was the urge to act and not the leisure that saved our city from worse.
	AI_Output(self, hero, "Info_Mod_Tengron_IR_GehtLos_07_01"); //That's how I'm going to do my utmost.

	Mod_IR_Dabei += 1;

	Mod_IR_Tengron = 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");
};

INSTANCE Info_Mod_Tengron_IR_GehBack (C_INFO)
{
	npc		= Mod_7451_RIT_Tengron_IR;
	nr		= 1;
	condition	= Info_Mod_Tengron_IR_GehBack_Condition;
	information	= Info_Mod_Tengron_IR_GehBack_Info;
	permanent	= 1;
	important	= 0;
	description	= "Go back to the ship.";
};

FUNC INT Info_Mod_Tengron_IR_GehBack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Tengron_IR_Hi))
	&& (Mod_IR_Tengron == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tengron_IR_GehBack_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHBACK");

	AI_Output(self, hero, "Info_Mod_Tengron_IR_GehBack_07_00"); //Well, if you need me, you know where to find me.

	Mod_IR_Dabei -= 1;

	Mod_IR_Tengron = 0;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Tengron_IR_Heiltrank (C_INFO)
{
	npc		= Mod_7451_RIT_Tengron_IR;
	nr		= 1;
	condition	= Info_Mod_Tengron_IR_Heiltrank_Condition;
	information	= Info_Mod_Tengron_IR_Heiltrank_Info;
	permanent	= 1;
	important	= 0;
	description	= "(give healing potion)";
};

FUNC INT Info_Mod_Tengron_IR_Heiltrank_Condition()
{
	if (self.aivar[AIV_Partymember] == TRUE)
	&& (Mod_IR_Tengron == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tengron_IR_Heiltrank_Info()
{
	Info_ClearChoices	(Info_Mod_Tengron_IR_Heiltrank);

	Info_AddChoice	(Info_Mod_Tengron_IR_Heiltrank, DIALOG_BACK, Info_Mod_Tengron_IR_Heiltrank_BACK);

	if (Npc_HasItems(hero, ItPo_Health_Addon_04) >= 1)
	{
		Info_AddChoice	(Info_Mod_Tengron_IR_Heiltrank, "Essence of Healing", Info_Mod_Tengron_IR_Heiltrank_Health_04);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Tengron_IR_Heiltrank, "Elixir of Healing", Info_Mod_Tengron_IR_Heiltrank_Health_03);
	};
	if (Npc_HasItems(hero, ItPo_Health_02) >= 1)
	{
		Info_AddChoice	(Info_Mod_Tengron_IR_Heiltrank, "Extract of Healing", Info_Mod_Tengron_IR_Heiltrank_Health_02);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Tengron_IR_Heiltrank, "Essence of Healing", Info_Mod_Tengron_IR_Heiltrank_Health_01);
	};
	if (Npc_HasItems(hero, ItPo_Health_07) >= 1)
	{
		Info_AddChoice	(Info_Mod_Tengron_IR_Heiltrank, "Drink of light healing", Info_Mod_Tengron_IR_Heiltrank_Health_07);
	};
	if (Npc_HasItems(hero, ItPo_Health_06) >= 1)
	{
		Info_AddChoice	(Info_Mod_Tengron_IR_Heiltrank, "Light healing potion", Info_Mod_Tengron_IR_Heiltrank_Health_06);
	};
	if (Npc_HasItems(hero, ItPo_Health_05) >= 1)
	{
		Info_AddChoice	(Info_Mod_Tengron_IR_Heiltrank, "Potion of Quick Healing", Info_Mod_Tengron_IR_Heiltrank_Health_05);
	};
};

FUNC VOID Info_Mod_Tengron_IR_Heiltrank_BACK ()
{
	Info_ClearChoices	(Info_Mod_Tengron_IR_Heiltrank);
};

FUNC VOID Info_Mod_Tengron_IR_Heiltrank_Health_04 ()
{
	Info_ClearChoices	(Info_Mod_Tengron_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

FUNC VOID Info_Mod_Tengron_IR_Heiltrank_Health_03 ()
{
	Info_ClearChoices	(Info_Mod_Tengron_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_03, 1);

	B_UseItem	(self, ItPo_Health_03);
};

FUNC VOID Info_Mod_Tengron_IR_Heiltrank_Health_02 ()
{
	Info_ClearChoices	(Info_Mod_Tengron_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_02, 1);

	B_UseItem	(self, ItPo_Health_02);
};

FUNC VOID Info_Mod_Tengron_IR_Heiltrank_Health_01 ()
{
	Info_ClearChoices	(Info_Mod_Tengron_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);
};

FUNC VOID Info_Mod_Tengron_IR_Heiltrank_Health_07 ()
{
	Info_ClearChoices	(Info_Mod_Tengron_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_07, 1);

	B_UseItem	(self, ItPo_Health_07);
};

FUNC VOID Info_Mod_Tengron_IR_Heiltrank_Health_06 ()
{
	Info_ClearChoices	(Info_Mod_Tengron_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_06, 1);

	B_UseItem	(self, ItPo_Health_06);
};

FUNC VOID Info_Mod_Tengron_IR_Heiltrank_Health_05 ()
{
	Info_ClearChoices	(Info_Mod_Tengron_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_05, 1);

	B_UseItem	(self, ItPo_Health_05);
};

INSTANCE Info_Mod_Tengron_IR_EXIT (C_INFO)
{
	npc		= Mod_7451_RIT_Tengron_IR;
	nr		= 1;
	condition	= Info_Mod_Tengron_IR_EXIT_Condition;
	information	= Info_Mod_Tengron_IR_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Tengron_IR_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Tengron_IR_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
