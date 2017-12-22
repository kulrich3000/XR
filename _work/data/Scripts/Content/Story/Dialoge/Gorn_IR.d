INSTANCE Info_Mod_Gorn_IR_Hi (C_INFO)
{
	npc		= Mod_7444_SLD_Gorn_IR;
	nr		= 1;
	condition	= Info_Mod_Gorn_IR_Hi_Condition;
	information	= Info_Mod_Gorn_IR_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "A co sadzisz o wyspie?";
};

FUNC INT Info_Mod_Gorn_IR_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gorn_IR_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Gorn_IR_Hi_15_00"); //A co sadzisz o wyspie?
	AI_Output(self, hero, "Info_Mod_Gorn_IR_Hi_03_01"); //Nie wiem, jak radzic sobie z magiczna falbanka.... ale jestem pewien, ze moge uzyc siekiery, by kopnac ciezka osade na nieumarlych dranie demoniczne.
};

INSTANCE Info_Mod_Gorn_IR_Hebel (C_INFO)
{
	npc		= Mod_7444_SLD_Gorn_IR;
	nr		= 1;
	condition	= Info_Mod_Gorn_IR_Hebel_Condition;
	information	= Info_Mod_Gorn_IR_Hebel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz uzyc jednej dzwigni, gdy poruszam druga?";
};

FUNC INT Info_Mod_Gorn_IR_Hebel_Condition()
{
	if (Mod_IR_Gorn == 1)
	&& (Mod_IR_HebelProb2 >= 2)
	&& (Mod_IR_Hebel == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_IR_Hebel_Info()
{
	B_Say	(hero, self, "$IRDORATHHEBEL");

	AI_Output(self, hero, "Info_Mod_Gorn_IR_Hebel_03_00"); //Oczywiscie tak jest. Moze to moze, ze gdzies nas zaprowadzi....

	Mod_IR_Hebel = 1;

	Mod_IR_Hebelmann = Hlp_GetNpc(self);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Gorn_IR_Ambient01 (C_INFO)
{
	npc		= Mod_7444_SLD_Gorn_IR;
	nr		= 1;
	condition	= Info_Mod_Gorn_IR_Ambient01_Condition;
	information	= Info_Mod_Gorn_IR_Ambient01_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gorn_IR_Ambient01_Condition()
{
	if (Npc_GetDistToWP(hero, "DI_ORKAREA_21") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_IR_Ambient01_Info()
{
	AI_Output(self, hero, "Info_Mod_Gorn_IR_Ambient01_03_00"); //Czlowiek, oh, czlowiek, nieumarly i demony moga byc trudne i pchajace.
	AI_Output(hero, self, "Info_Mod_Gorn_IR_Ambient01_15_01"); //Mam nadzieje, ze nadal sie trzymasz?
	AI_Output(self, hero, "Info_Mod_Gorn_IR_Ambient01_03_02"); //Czy kochasz mnie? Najwyzszy czas nadszedl najwyzszy czas, aby dostali na kapeluszu ciezki kawalek stali.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Gorn_IR_GehtLos (C_INFO)
{
	npc		= Mod_7444_SLD_Gorn_IR;
	nr		= 1;
	condition	= Info_Mod_Gorn_IR_GehtLos_Condition;
	information	= Info_Mod_Gorn_IR_GehtLos_Info;
	permanent	= 1;
	important	= 0;
	description	= "Idzmy dalej. Czy odprowadzisz mnie na wyspe?";
};

FUNC INT Info_Mod_Gorn_IR_GehtLos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Gorn_IR_Hi))
	&& (Mod_IR_Dabei < 7)
	&& (Mod_IR_Gorn == 0)
	&& (!Npc_IsDead(Dragon_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_IR_GehtLos_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHTLOS");

	AI_Output(self, hero, "Info_Mod_Gorn_IR_GehtLos_03_00"); //Pewne. Zanim zas mój topór zostanie calkowicie zjedzony przez slona wode, wówczas czaszka jakiejs nieumarlej czaszki powinna sie rozbic.

	Mod_IR_Dabei += 1;

	Mod_IR_Gorn = 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");
};

INSTANCE Info_Mod_Gorn_IR_GehBack (C_INFO)
{
	npc		= Mod_7444_SLD_Gorn_IR;
	nr		= 1;
	condition	= Info_Mod_Gorn_IR_GehBack_Condition;
	information	= Info_Mod_Gorn_IR_GehBack_Info;
	permanent	= 1;
	important	= 0;
	description	= "Wróc do statku.";
};

FUNC INT Info_Mod_Gorn_IR_GehBack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_IR_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Gorn_IR_Hi))
	&& (Mod_IR_Gorn == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_IR_GehBack_Info()
{
	B_Say	(hero, self, "$IRDORATHGEHBACK");

	AI_Output(self, hero, "Info_Mod_Gorn_IR_GehBack_06_00"); //Cóz, jesli mnie potrzebujesz, wiesz, gdzie mnie znalezc.

	Mod_IR_Dabei -= 1;

	Mod_IR_Gorn = 0;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Gorn_IR_Heiltrank (C_INFO)
{
	npc		= Mod_7444_SLD_Gorn_IR;
	nr		= 1;
	condition	= Info_Mod_Gorn_IR_Heiltrank_Condition;
	information	= Info_Mod_Gorn_IR_Heiltrank_Info;
	permanent	= 1;
	important	= 0;
	description	= "(goraczka lecznicza)";
};

FUNC INT Info_Mod_Gorn_IR_Heiltrank_Condition()
{
	if (self.aivar[AIV_Partymember] == TRUE)
	&& (Mod_IR_Gorn == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gorn_IR_Heiltrank_Info()
{
	Info_ClearChoices	(Info_Mod_Gorn_IR_Heiltrank);

	Info_AddChoice	(Info_Mod_Gorn_IR_Heiltrank, DIALOG_BACK, Info_Mod_Gorn_IR_Heiltrank_BACK);

	if (Npc_HasItems(hero, ItPo_Health_Addon_04) >= 1)
	{
		Info_AddChoice	(Info_Mod_Gorn_IR_Heiltrank, "Istota uzdrawiania", Info_Mod_Gorn_IR_Heiltrank_Health_04);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Gorn_IR_Heiltrank, "Eliksir uzdrawiania", Info_Mod_Gorn_IR_Heiltrank_Health_03);
	};
	if (Npc_HasItems(hero, ItPo_Health_02) >= 1)
	{
		Info_AddChoice	(Info_Mod_Gorn_IR_Heiltrank, "Ekstrakt z ekstraktu leczniczego", Info_Mod_Gorn_IR_Heiltrank_Health_02);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Gorn_IR_Heiltrank, "Istota uzdrawiania", Info_Mod_Gorn_IR_Heiltrank_Health_01);
	};
	if (Npc_HasItems(hero, ItPo_Health_07) >= 1)
	{
		Info_AddChoice	(Info_Mod_Gorn_IR_Heiltrank, "Napój lekkiego leczenia", Info_Mod_Gorn_IR_Heiltrank_Health_07);
	};
	if (Npc_HasItems(hero, ItPo_Health_06) >= 1)
	{
		Info_AddChoice	(Info_Mod_Gorn_IR_Heiltrank, "Lekki eliksir leczniczy", Info_Mod_Gorn_IR_Heiltrank_Health_06);
	};
	if (Npc_HasItems(hero, ItPo_Health_05) >= 1)
	{
		Info_AddChoice	(Info_Mod_Gorn_IR_Heiltrank, "Napoje szybko lecznicze", Info_Mod_Gorn_IR_Heiltrank_Health_05);
	};
};

FUNC VOID Info_Mod_Gorn_IR_Heiltrank_BACK ()
{
	Info_ClearChoices	(Info_Mod_Gorn_IR_Heiltrank);
};

FUNC VOID Info_Mod_Gorn_IR_Heiltrank_Health_04 ()
{
	Info_ClearChoices	(Info_Mod_Gorn_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

FUNC VOID Info_Mod_Gorn_IR_Heiltrank_Health_03 ()
{
	Info_ClearChoices	(Info_Mod_Gorn_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_03, 1);

	B_UseItem	(self, ItPo_Health_03);
};

FUNC VOID Info_Mod_Gorn_IR_Heiltrank_Health_02 ()
{
	Info_ClearChoices	(Info_Mod_Gorn_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_02, 1);

	B_UseItem	(self, ItPo_Health_02);
};

FUNC VOID Info_Mod_Gorn_IR_Heiltrank_Health_01 ()
{
	Info_ClearChoices	(Info_Mod_Gorn_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);
};

FUNC VOID Info_Mod_Gorn_IR_Heiltrank_Health_07 ()
{
	Info_ClearChoices	(Info_Mod_Gorn_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_07, 1);

	B_UseItem	(self, ItPo_Health_07);
};

FUNC VOID Info_Mod_Gorn_IR_Heiltrank_Health_06 ()
{
	Info_ClearChoices	(Info_Mod_Gorn_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_06, 1);

	B_UseItem	(self, ItPo_Health_06);
};

FUNC VOID Info_Mod_Gorn_IR_Heiltrank_Health_05 ()
{
	Info_ClearChoices	(Info_Mod_Gorn_IR_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_05, 1);

	B_UseItem	(self, ItPo_Health_05);
};

INSTANCE Info_Mod_Gorn_IR_EXIT (C_INFO)
{
	npc		= Mod_7444_SLD_Gorn_IR;
	nr		= 1;
	condition	= Info_Mod_Gorn_IR_EXIT_Condition;
	information	= Info_Mod_Gorn_IR_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gorn_IR_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gorn_IR_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
