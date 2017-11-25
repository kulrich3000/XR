INSTANCE Info_Mod_GorNaKosh_Follow (C_INFO)
{
	npc		= Mod_1873_TPL_GorNaKosh_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaKosh_Follow_Condition;
	information	= Info_Mod_GorNaKosh_Follow_Info;
	permanent	= 1;
	important	= 0;
	description	= "Przyjedz ze mna.";
};

FUNC INT Info_Mod_GorNaKosh_Follow_Condition()
{
	if (self.aivar[AIV_PARTYMEMBER] == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_GorNaKosh_Follow_Info()
{
	AI_Output(hero, self, "Info_Mod_GorNaKosh_Follow_15_00"); //Przyjedz ze mna.
	AI_Output(self, hero, "Info_Mod_GorNaKosh_Follow_13_01"); //Oczywiscie tak jest. M�j miecz to tw�j miecz.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");

	self.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_GorNaKosh_Wait (C_INFO)
{
	npc		= Mod_1873_TPL_GorNaKosh_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaKosh_Wait_Condition;
	information	= Info_Mod_GorNaKosh_Wait_Info;
	permanent	= 1;
	important	= 0;
	description	= "Powinnismy ponownie sie rozstac.";
};

FUNC INT Info_Mod_GorNaKosh_Wait_Condition()
{
	if (self.aivar[AIV_PARTYMEMBER] == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_GorNaKosh_Wait_Info()
{
	AI_Output(hero, self, "Info_Mod_GorNaKosh_Wait_15_00"); //Powinnismy ponownie sie rozstac.
	AI_Output(self, hero, "Info_Mod_GorNaKosh_Wait_13_01"); //Cokolwiek m�wisz.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	self.aivar[AIV_PARTYMEMBER] = FALSE;
};

INSTANCE Info_Mod_GorNaKosh_Heiltrank (C_INFO)
{
	npc		= Mod_1873_TPL_GorNaKosh_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaKosh_Heiltrank_Condition;
	information	= Info_Mod_GorNaKosh_Heiltrank_Info;
	permanent	= 1;
	important	= 0;
	description	= "(goraczka lecznicza)";
};

FUNC INT Info_Mod_GorNaKosh_Heiltrank_Condition()
{
	if (self.aivar[AIV_Partymember] == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_GorNaKosh_Heiltrank_Info()
{
	Info_ClearChoices	(Info_Mod_GorNaKosh_Heiltrank);

	Info_AddChoice	(Info_Mod_GorNaKosh_Heiltrank, DIALOG_BACK, Info_Mod_GorNaKosh_Heiltrank_BACK);

	if (Npc_HasItems(hero, ItPo_Health_Addon_04) >= 1)
	{
		Info_AddChoice	(Info_Mod_GorNaKosh_Heiltrank, "Istota uzdrawiania", Info_Mod_GorNaKosh_Heiltrank_Health_04);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_GorNaKosh_Heiltrank, "Eliksir uzdrawiania", Info_Mod_GorNaKosh_Heiltrank_Health_03);
	};
	if (Npc_HasItems(hero, ItPo_Health_02) >= 1)
	{
		Info_AddChoice	(Info_Mod_GorNaKosh_Heiltrank, "Ekstrakt z ekstraktu leczniczego", Info_Mod_GorNaKosh_Heiltrank_Health_02);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_GorNaKosh_Heiltrank, "Istota uzdrawiania", Info_Mod_GorNaKosh_Heiltrank_Health_01);
	};
	if (Npc_HasItems(hero, ItPo_Health_07) >= 1)
	{
		Info_AddChoice	(Info_Mod_GorNaKosh_Heiltrank, "Nap�j lekkiego leczenia", Info_Mod_GorNaKosh_Heiltrank_Health_07);
	};
	if (Npc_HasItems(hero, ItPo_Health_06) >= 1)
	{
		Info_AddChoice	(Info_Mod_GorNaKosh_Heiltrank, "Lekki eliksir leczniczy", Info_Mod_GorNaKosh_Heiltrank_Health_06);
	};
	if (Npc_HasItems(hero, ItPo_Health_05) >= 1)
	{
		Info_AddChoice	(Info_Mod_GorNaKosh_Heiltrank, "Napoje szybko lecznicze", Info_Mod_GorNaKosh_Heiltrank_Health_05);
	};
};

FUNC VOID Info_Mod_GorNaKosh_Heiltrank_BACK ()
{
	Info_ClearChoices	(Info_Mod_GorNaKosh_Heiltrank);
};

FUNC VOID Info_Mod_GorNaKosh_Heiltrank_Health_04 ()
{
	Info_ClearChoices	(Info_Mod_GorNaKosh_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

FUNC VOID Info_Mod_GorNaKosh_Heiltrank_Health_03 ()
{
	Info_ClearChoices	(Info_Mod_GorNaKosh_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_03, 1);

	B_UseItem	(self, ItPo_Health_03);
};

FUNC VOID Info_Mod_GorNaKosh_Heiltrank_Health_02 ()
{
	Info_ClearChoices	(Info_Mod_GorNaKosh_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_02, 1);

	B_UseItem	(self, ItPo_Health_02);
};

FUNC VOID Info_Mod_GorNaKosh_Heiltrank_Health_01 ()
{
	Info_ClearChoices	(Info_Mod_GorNaKosh_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);
};

FUNC VOID Info_Mod_GorNaKosh_Heiltrank_Health_07 ()
{
	Info_ClearChoices	(Info_Mod_GorNaKosh_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_07, 1);

	B_UseItem	(self, ItPo_Health_07);
};

FUNC VOID Info_Mod_GorNaKosh_Heiltrank_Health_06 ()
{
	Info_ClearChoices	(Info_Mod_GorNaKosh_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_06, 1);

	B_UseItem	(self, ItPo_Health_06);
};

FUNC VOID Info_Mod_GorNaKosh_Heiltrank_Health_05 ()
{
	Info_ClearChoices	(Info_Mod_GorNaKosh_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_05, 1);

	B_UseItem	(self, ItPo_Health_05);
};

INSTANCE Info_Mod_GorNaKosh_EXIT (C_INFO)
{
	npc		= Mod_1873_TPL_GorNaKosh_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaKosh_EXIT_Condition;
	information	= Info_Mod_GorNaKosh_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_GorNaKosh_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_GorNaKosh_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
