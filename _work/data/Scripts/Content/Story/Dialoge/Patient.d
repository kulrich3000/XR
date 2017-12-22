INSTANCE Info_Mod_Patient_Endres (C_INFO)
{
	npc		= Mod_7491_OUT_Patient_REL;
	nr		= 1;
	condition	= Info_Mod_Patient_Endres_Condition;
	information	= Info_Mod_Patient_Endres_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy to prawda, ze uzdrowiciel byl z wami, kiedy Endres zostal zamordowany (....)? )";
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
	AI_Output(hero, self, "Info_Mod_Patient_Endres_15_00"); //Czy to prawda, ze uzdrowiciel byl z Toba, kiedy Endres zostal zamordowany?
	AI_Output(self, hero, "Info_Mod_Patient_Endres_01_01"); //Nie moge powiedziec na pewno. Tego dnia zasnalem w poludnie i tylko obudzilem sie wieczorem.
	AI_Output(self, hero, "Info_Mod_Patient_Endres_01_02"); //Lecz uzdrowiciel byl tam zanim zasnalem i po obudzeniu sie obudzilem.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Pacjent przeszedl przez wiekszosc dnia dosc dziwnie. Wiec alibi uzdrowiciela jest kiepski.");
};

INSTANCE Info_Mod_Patient_WasFehlt (C_INFO)
{
	npc		= Mod_7491_OUT_Patient_REL;
	nr		= 1;
	condition	= Info_Mod_Patient_WasFehlt_Condition;
	information	= Info_Mod_Patient_WasFehlt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Cóz, czego nam brakuje?";
};

FUNC INT Info_Mod_Patient_WasFehlt_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Patient_WasFehlt_Info()
{
	AI_Output(hero, self, "Info_Mod_Patient_WasFehlt_15_00"); //Cóz, czego nam brakuje?
	AI_Output(self, hero, "Info_Mod_Patient_WasFehlt_01_01"); //Narkotyczny. Masz na sobie cos ciezkiego?

	Info_ClearChoices	(Info_Mod_Patient_WasFehlt);

	Info_AddChoice	(Info_Mod_Patient_WasFehlt, "Nie mam nic dla Ciebie.", Info_Mod_Patient_WasFehlt_B);

	if (Npc_HasItems(hero, ItFo_Booze) >= 1)
	|| (Npc_HasItems(hero, ItFo_Addon_Grog) >= 1)
	|| (Npc_HasItems(hero, ItFo_Addon_Rum) >= 1)
	{
		Info_AddChoice	(Info_Mod_Patient_WasFehlt, "Oczywiscie.", Info_Mod_Patient_WasFehlt_A);
	};
};

FUNC VOID Info_Mod_Patient_WasFehlt_B()
{
	AI_Output(hero, self, "Info_Mod_Patient_WasFehlt_B_15_00"); //Nie mam nic dla Ciebie.

	Info_ClearChoices	(Info_Mod_Patient_WasFehlt);
};

FUNC VOID Info_Mod_Patient_WasFehlt_A()
{
	AI_Output(hero, self, "Info_Mod_Patient_WasFehlt_A_15_00"); //Oczywiscie.
	AI_Output(self, hero, "Info_Mod_Patient_WasFehlt_A_01_01"); //Co masz na mysli?

	Info_ClearChoices	(Info_Mod_Patient_WasFehlt);

	if (Npc_HasItems(hero, ItFo_Booze) >= 1)
	{
		Info_AddChoice	(Info_Mod_Patient_WasFehlt, "Grog z pewnoscia pomoze Ci.", Info_Mod_Patient_WasFehlt_E);
	};
	if (Npc_HasItems(hero, ItFo_Addon_Rum) >= 1)
	{
		Info_AddChoice	(Info_Mod_Patient_WasFehlt, "A co z rumem?", Info_Mod_Patient_WasFehlt_D);
	};
	if (Npc_HasItems(hero, ItFo_Booze) >= 1)
	{
		Info_AddChoice	(Info_Mod_Patient_WasFehlt, "Tutaj mam jalowca.", Info_Mod_Patient_WasFehlt_C);
	};
};

FUNC VOID Info_Mod_Patient_WasFehlt_F(var C_Item itm)
{
	B_GiveInvItems	(hero, self, itm, 1);

	AI_Output(self, hero, "Info_Mod_Patient_WasFehlt_F_01_00"); //Dzieki, czlowiek.

	B_UseItem	(self, itm);

	AI_Output(self, hero, "Info_Mod_Patient_WasFehlt_F_01_01"); //Ten pieprzacy zabieg chirurgii piersi naprawde idzie na moje nerki.
	AI_Output(hero, self, "Info_Mod_Patient_WasFehlt_F_15_02"); //Jaka operacja piersia?
	AI_Output(self, hero, "Info_Mod_Patient_WasFehlt_F_01_03"); //Moja watroba wydaje sie rozkladac. Tak mówi uzdrowiciel.
	AI_Output(self, hero, "Info_Mod_Patient_WasFehlt_F_01_04"); //Ale czulem sie lepiej, gdy jeszcze nie bylo mnie tutaj.

	B_GivePlayerXP	(50);

	Info_ClearChoices	(Info_Mod_Patient_WasFehlt);
};

FUNC VOID Info_Mod_Patient_WasFehlt_E()
{
	AI_Output(hero, self, "Info_Mod_Patient_WasFehlt_E_15_00"); //Grog z pewnoscia pomoze Ci.

	Info_Mod_Patient_WasFehlt_F(ItFo_Addon_Grog);
};

FUNC VOID Info_Mod_Patient_WasFehlt_D()
{
	AI_Output(hero, self, "Info_Mod_Patient_WasFehlt_D_15_00"); //A co z rumem?

	Info_Mod_Patient_WasFehlt_F(ItFo_Addon_Rum);
};

FUNC VOID Info_Mod_Patient_WasFehlt_C()
{
	AI_Output(hero, self, "Info_Mod_Patient_WasFehlt_C_15_00"); //Tutaj mam jalowca.

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
