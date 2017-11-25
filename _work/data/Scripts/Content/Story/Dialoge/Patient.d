INSTANCE Info_Mod_Patient_Endres (C_INFO)
{
	npc		= Mod_7491_OUT_Patient_REL;
	nr		= 1;
	condition	= Info_Mod_Patient_Endres_Condition;
	information	= Info_Mod_Patient_Endres_Info;
	permanent	= 0;
	important	= 0;
	description	= "Is it true that the healer was with you when Endres was murdered (... )";
};

FUNC INT Info_Mod_Patient_Endres_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Heiler_Endres03))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Patient_Endres_Info()
{
	AI_Output(hero, self, "Info_Mod_Patient_Endres_15_00"); //Is it true that the healer was with you when Endres was murdered?
	AI_Output(self, hero, "Info_Mod_Patient_Endres_04_01"); //I can't say for sure. On that day I fell asleep at noon and only woke up in the evening.
	AI_Output(self, hero, "Info_Mod_Patient_Endres_04_02"); //But the healer was there before I fell asleep and after I woke up.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "The patient overslept most of the day strangely enough. So the healer's alibi is lame.");
};

INSTANCE Info_Mod_Patient_WasFehlt (C_INFO)
{
	npc		= Mod_7491_OUT_Patient_REL;
	nr		= 1;
	condition	= Info_Mod_Patient_WasFehlt_Condition;
	information	= Info_Mod_Patient_WasFehlt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Well, what are we missing?";
};

FUNC INT Info_Mod_Patient_WasFehlt_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Patient_WasFehlt_Info()
{
	AI_Output(hero, self, "Info_Mod_Patient_WasFehlt_15_00"); //Well, what are we missing?
	AI_Output(self, hero, "Info_Mod_Patient_WasFehlt_04_01"); //The narcotic. Do you have anything heavy on you?

	Info_ClearChoices	(Info_Mod_Patient_WasFehlt);

	Info_AddChoice	(Info_Mod_Patient_WasFehlt, "I don't have anything for you.", Info_Mod_Patient_WasFehlt_B);

	if (Npc_HasItems(hero, ItFo_Booze) >= 1)
	|| (Npc_HasItems(hero, ItFo_Addon_Grog) >= 1)
	|| (Npc_HasItems(hero, ItFo_Addon_Rum) >= 1)
	{
		Info_AddChoice	(Info_Mod_Patient_WasFehlt, "Sure thing.", Info_Mod_Patient_WasFehlt_A);
	};
};

FUNC VOID Info_Mod_Patient_WasFehlt_B()
{
	AI_Output(hero, self, "Info_Mod_Patient_WasFehlt_B_15_00"); //I don't have anything for you.

	Info_ClearChoices	(Info_Mod_Patient_WasFehlt);
};

FUNC VOID Info_Mod_Patient_WasFehlt_A()
{
	AI_Output(hero, self, "Info_Mod_Patient_WasFehlt_A_15_00"); //Sure thing.
	AI_Output(self, hero, "Info_Mod_Patient_WasFehlt_A_04_01"); //What do you mean?

	Info_ClearChoices	(Info_Mod_Patient_WasFehlt);

	if (Npc_HasItems(hero, ItFo_Booze) >= 1)
	{
		Info_AddChoice	(Info_Mod_Patient_WasFehlt, "Grog will certainly help you.", Info_Mod_Patient_WasFehlt_E);
	};
	if (Npc_HasItems(hero, ItFo_Addon_Rum) >= 1)
	{
		Info_AddChoice	(Info_Mod_Patient_WasFehlt, "What about rum?", Info_Mod_Patient_WasFehlt_D);
	};
	if (Npc_HasItems(hero, ItFo_Booze) >= 1)
	{
		Info_AddChoice	(Info_Mod_Patient_WasFehlt, "Here I have juniper.", Info_Mod_Patient_WasFehlt_C);
	};
};

FUNC VOID Info_Mod_Patient_WasFehlt_F(var C_Item itm)
{
	B_GiveInvItems	(hero, self, itm, 1);

	AI_Output(self, hero, "Info_Mod_Patient_WasFehlt_F_04_00"); //Thanks, man.

	B_UseItem	(self, itm);

	AI_Output(self, hero, "Info_Mod_Patient_WasFehlt_F_04_01"); //This fucking breast surgery is really going to my kidneys.
	AI_Output(hero, self, "Info_Mod_Patient_WasFehlt_F_15_02"); //What breast surgery?
	AI_Output(self, hero, "Info_Mod_Patient_WasFehlt_F_04_03"); //My liver seems to be breaking down. That's what the healer says.
	AI_Output(self, hero, "Info_Mod_Patient_WasFehlt_F_04_04"); //But I felt better when I wasn't here yet.

	B_GivePlayerXP	(50);

	Info_ClearChoices	(Info_Mod_Patient_WasFehlt);
};

FUNC VOID Info_Mod_Patient_WasFehlt_E()
{
	AI_Output(hero, self, "Info_Mod_Patient_WasFehlt_E_15_00"); //Grog will certainly help you.

	Info_Mod_Patient_WasFehlt_F(ItFo_Addon_Grog);
};

FUNC VOID Info_Mod_Patient_WasFehlt_D()
{
	AI_Output(hero, self, "Info_Mod_Patient_WasFehlt_D_15_00"); //What about rum?

	Info_Mod_Patient_WasFehlt_F(ItFo_Addon_Rum);
};

FUNC VOID Info_Mod_Patient_WasFehlt_C()
{
	AI_Output(hero, self, "Info_Mod_Patient_WasFehlt_C_15_00"); //Here I have juniper.

	Info_Mod_Patient_WasFehlt_F(ItFo_Booze);
};

INSTANCE Info_Mod_Patient_EXIT (C_INFO)
{
	npc		= Mod_7491_OUT_Patient_REL;
	nr		= 1;
	condition	= Info_Mod_Patient_EXIT_Condition;
	information	= Info_Mod_Patient_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Patient_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Patient_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
