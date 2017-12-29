INSTANCE Info_Mod_Ethan_IR_Hi (C_INFO)
{
	npc		= Mod_7450_HTR_Ethan_IR;
	nr		= 1;
	condition	= Info_Mod_Ethan_IR_Hi_Condition;
	information	= Info_Mod_Ethan_IR_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Keeper of the water, what do you think about our excursion so far?";
};

FUNC INT Info_Mod_Ethan_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ethan_IR_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Ethan_IR_Hi_15_00"); //Keeper of the water, what do you think about our excursion so far?
	AI_Output(self, hero, "Info_Mod_Ethan_IR_Hi_13_01"); //Well, the first part of our journey we have mastered without danger, without incident.
	AI_Output(self, hero, "Info_Mod_Ethan_IR_Hi_13_02"); //This dark island with its demonic inhabitants, however, will undoubtedly prove to be very stubborn towards us.
	AI_Output(self, hero, "Info_Mod_Ethan_IR_Hi_13_03"); //With battle and magic, we will have to do our utmost to survive here.
};

INSTANCE Info_Mod_Ethan_IR_Hebel (C_INFO)
{
	npc		= Mod_7450_HTR_Ethan_IR;
	nr		= 1;
	condition	= Info_Mod_Ethan_IR_Hebel_Condition;
	information	= Info_Mod_Ethan_IR_Hebel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you use one lever while I move the other?";
};

FUNC INT Info_Mod_Ethan_IR_Hebel_Condition()
{
	if (Mod_IR_Ethan == 1)
	&& (Mod_IR_HebelProb2 >= 2)
	&& (Mod_IR_Hebel == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_IR_Hebel_Info()
{
	B_Say	(hero, self, "$IRDORATHHEBEL");

	AI_Output(self, hero, "Info_Mod_Ethan_IR_Hebel_13_00"); //Of course it is. Maybe if it's going to get us somewhere...

	Mod_IR_Hebel = 1;

	Mod_IR_Hebelmann = Hlp_GetNpc(self);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Ethan_IR_GehtLos (C_INFO)
{
	npc		= Mod_7450_HTR_Ethan_IR;
	nr		= 1;
	condition	= Info_Mod_Ethan_IR_GehtLos_Condition;
	information	= Info_Mod_Ethan_IR_GehtLos_Info;
	permanent	= 1;
	important	= 0;
	description	= "Let's get going. Will you escort me to the island?";
};

FUNC INT Info_Mod_Ethan_IR_GehtLos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Ethan_IR_Hi))
	&& (Mod_IR_Dabei < 7)
	&& (Mod_IR_Ethan == 0)
	&& (!Npc_IsDead(Dragon_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_IR_GehtLos_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHTLOS");

	AI_Output(self, hero, "Info_Mod_Ethan_IR_Hi_13_00"); //Of course, of course. My experience as a champion of balance will help the just cause to win.

	Mod_IR_Dabei += 1;

	Mod_IR_Ethan = 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");
};

INSTANCE Info_Mod_Ethan_IR_GehBack (C_INFO)
{
	npc		= Mod_7450_HTR_Ethan_IR;
	nr		= 1;
	condition	= Info_Mod_Ethan_IR_GehBack_Condition;
	information	= Info_Mod_Ethan_IR_GehBack_Info;
	permanent	= 1;
	important	= 0;
	description	= "Go back to the ship.";
};

FUNC INT Info_Mod_Ethan_IR_GehBack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Ethan_IR_Hi))
	&& (Mod_IR_Ethan == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_IR_GehBack_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHBACK");

	AI_Output(self, hero, "Info_Mod_Ethan_IR_GehBack_13_00"); //Well, if you need me, you know where to find me.

	Mod_IR_Dabei -= 1;

	Mod_IR_Ethan = 0;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Ethan_IR_Heiltrank (C_INFO)
{
	npc		= Mod_7450_HTR_Ethan_IR;
	nr		= 1;
	condition	= Info_Mod_Ethan_IR_Heiltrank_Condition;
	information	= Info_Mod_Ethan_IR_Heiltrank_Info;
	permanent	= 1;
	important	= 0;
	description	= "(give healing potion)";
};

FUNC INT Info_Mod_Ethan_IR_Heiltrank_Condition()
{
	if (self.aivar[AIV_Partymember] == TRUE)
	&& (Mod_IR_Ethan == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ethan_IR_Heiltrank_Info()
{
	Info_ClearChoices	(Info_Mod_Ethan_IR_Heiltrank);

	Info_AddChoice	(Info_Mod_Ethan_IR_Heiltrank, DIALOG_BACK, Info_Mod_Ethan_IR_Heiltrank_BACK);

	if (Npc_HasItems(hero, ItPo_Health_Addon_04) >= 1)
	{
		Info_AddChoice	(Info_Mod_Ethan_IR_Heiltrank, "Essence of Healing", Info_Mod_Ethan_IR_Heiltrank_Health_04);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Ethan_IR_Heiltrank, "Elixir of Healing", Info_Mod_Ethan_IR_Heiltrank_Health_03);
	};
	if (Npc_HasItems(hero, ItPo_Health_02) >= 1)
	{
		Info_AddChoice	(Info_Mod_Ethan_IR_Heiltrank, "Extract of Healing", Info_Mod_Ethan_IR_Heiltrank_Health_02);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Ethan_IR_Heiltrank, "Essence of Healing", Info_Mod_Ethan_IR_Heiltrank_Health_01);
	};
	if (Npc_HasItems(hero, ItPo_Health_07) >= 1)
	{
		Info_AddChoice	(Info_Mod_Ethan_IR_Heiltrank, "Drink of light healing", Info_Mod_Ethan_IR_Heiltrank_Health_07);
	};
	if (Npc_HasItems(hero, ItPo_Health_06) >= 1)
	{
		Info_AddChoice	(Info_Mod_Ethan_IR_Heiltrank, "Light healing potion", Info_Mod_Ethan_IR_Heiltrank_Health_06);
	};
	if (Npc_HasItems(hero, ItPo_Health_05) >= 1)
	{
		Info_AddChoice	(Info_Mod_Ethan_IR_Heiltrank, "Potion of Quick Healing", Info_Mod_Ethan_IR_Heiltrank_Health_05);
	};
};

FUNC VOID Info_Mod_Ethan_IR_Heiltrank_BACK ()
{
	Info_ClearChoices	(Info_Mod_Ethan_IR_Heiltrank);
};

FUNC VOID Info_Mod_Ethan_IR_Heiltrank_Health_04 ()
{
	Info_ClearChoices	(Info_Mod_Ethan_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

FUNC VOID Info_Mod_Ethan_IR_Heiltrank_Health_03 ()
{
	Info_ClearChoices	(Info_Mod_Ethan_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_03, 1);

	B_UseItem	(self, ItPo_Health_03);
};

FUNC VOID Info_Mod_Ethan_IR_Heiltrank_Health_02 ()
{
	Info_ClearChoices	(Info_Mod_Ethan_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_02, 1);

	B_UseItem	(self, ItPo_Health_02);
};

FUNC VOID Info_Mod_Ethan_IR_Heiltrank_Health_01 ()
{
	Info_ClearChoices	(Info_Mod_Ethan_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);
};

FUNC VOID Info_Mod_Ethan_IR_Heiltrank_Health_07 ()
{
	Info_ClearChoices	(Info_Mod_Ethan_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_07, 1);

	B_UseItem	(self, ItPo_Health_07);
};

FUNC VOID Info_Mod_Ethan_IR_Heiltrank_Health_06 ()
{
	Info_ClearChoices	(Info_Mod_Ethan_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_06, 1);

	B_UseItem	(self, ItPo_Health_06);
};

FUNC VOID Info_Mod_Ethan_IR_Heiltrank_Health_05 ()
{
	Info_ClearChoices	(Info_Mod_Ethan_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_05, 1);

	B_UseItem	(self, ItPo_Health_05);
};

INSTANCE Info_Mod_Ethan_IR_EXIT (C_INFO)
{
	npc		= Mod_7450_HTR_Ethan_IR;
	nr		= 1;
	condition	= Info_Mod_Ethan_IR_EXIT_Condition;
	information	= Info_Mod_Ethan_IR_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ethan_IR_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ethan_IR_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
