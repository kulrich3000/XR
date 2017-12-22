INSTANCE Info_Mod_Ethan_IR_Hi (C_INFO)
{
	npc		= Mod_7450_HTR_Ethan_IR;
	nr		= 1;
	condition	= Info_Mod_Ethan_IR_Hi_Condition;
	information	= Info_Mod_Ethan_IR_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Trzymaj sie wody, co myslisz o naszej wycieczce?";
};

FUNC INT Info_Mod_Ethan_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ethan_IR_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Ethan_IR_Hi_15_00"); //Trzymaj sie wody, co myslisz o naszej wycieczce?
	AI_Output(self, hero, "Info_Mod_Ethan_IR_Hi_13_01"); //Cóz, pierwsza czesc naszej podrózy opanowalismy bez niebezpieczenstwa, bez incydentu.
	AI_Output(self, hero, "Info_Mod_Ethan_IR_Hi_13_02"); //Ta ciemna wyspa z demonicznymi mieszkancami niewatpliwie okaze sie jednak bardzo uparta wobec nas.
	AI_Output(self, hero, "Info_Mod_Ethan_IR_Hi_13_03"); //Z walka i magia bedziemy musieli zrobic wszystko, co w naszej mocy, aby tu przezyc.
};

INSTANCE Info_Mod_Ethan_IR_Hebel (C_INFO)
{
	npc		= Mod_7450_HTR_Ethan_IR;
	nr		= 1;
	condition	= Info_Mod_Ethan_IR_Hebel_Condition;
	information	= Info_Mod_Ethan_IR_Hebel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz uzyc jednej dzwigni, gdy poruszam druga?";
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

	AI_Output(self, hero, "Info_Mod_Ethan_IR_Hebel_13_00"); //Oczywiscie tak jest. Moze to moze, ze gdzies nas zaprowadzi....

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
	description	= "Idzmy dalej. Czy odprowadzisz mnie na wyspe?";
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

	AI_Output(self, hero, "Info_Mod_Ethan_IR_Hi_13_00"); //Oczywiscie oczywiscie. Moje doswiadczenie jako mistrza równowagi pomoze mi wygrac.

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
	description	= "Wróc do statku.";
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

	AI_Output(self, hero, "Info_Mod_Ethan_IR_GehBack_13_00"); //Cóz, jesli mnie potrzebujesz, wiesz, gdzie mnie znalezc.

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
	description	= "(goraczka lecznicza)";
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
		Info_AddChoice	(Info_Mod_Ethan_IR_Heiltrank, "Istota uzdrawiania", Info_Mod_Ethan_IR_Heiltrank_Health_04);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Ethan_IR_Heiltrank, "Eliksir uzdrawiania", Info_Mod_Ethan_IR_Heiltrank_Health_03);
	};
	if (Npc_HasItems(hero, ItPo_Health_02) >= 1)
	{
		Info_AddChoice	(Info_Mod_Ethan_IR_Heiltrank, "Ekstrakt z ekstraktu leczniczego", Info_Mod_Ethan_IR_Heiltrank_Health_02);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Ethan_IR_Heiltrank, "Istota uzdrawiania", Info_Mod_Ethan_IR_Heiltrank_Health_01);
	};
	if (Npc_HasItems(hero, ItPo_Health_07) >= 1)
	{
		Info_AddChoice	(Info_Mod_Ethan_IR_Heiltrank, "Napój lekkiego leczenia", Info_Mod_Ethan_IR_Heiltrank_Health_07);
	};
	if (Npc_HasItems(hero, ItPo_Health_06) >= 1)
	{
		Info_AddChoice	(Info_Mod_Ethan_IR_Heiltrank, "Lekki eliksir leczniczy", Info_Mod_Ethan_IR_Heiltrank_Health_06);
	};
	if (Npc_HasItems(hero, ItPo_Health_05) >= 1)
	{
		Info_AddChoice	(Info_Mod_Ethan_IR_Heiltrank, "Napoje szybko lecznicze", Info_Mod_Ethan_IR_Heiltrank_Health_05);
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
