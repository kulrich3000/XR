INSTANCE Info_Mod_Pendler_02_Hi (C_INFO)
{
	npc		= Mod_7707_OUT_Pendler_REL;
	nr		= 1;
	condition	= Info_Mod_Pendler_02_Hi_Condition;
	information	= Info_Mod_Pendler_02_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wygladasz spragniony. A jak lykowi chlodnego piwa?";
};

FUNC INT Info_Mod_Pendler_02_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Pendler_02_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Pendler_02_Hi_15_00"); //Wygladasz spragniony. A jak lykowi chlodnego piwa?
	AI_Output(self, hero, "Info_Mod_Pendler_02_Hi_08_01"); //Daj, dajcie!

	Info_ClearChoices	(Info_Mod_Pendler_02_Hi);

	if (Npc_HasItems(hero, ItFo_Beer) >= 1)
	{
		Info_AddChoice	(Info_Mod_Pendler_02_Hi, "Odwrócilem mysl, obserwuje jak pije!", Info_Mod_Pendler_02_Hi_C);
	};
	Info_AddChoice	(Info_Mod_Pendler_02_Hi, "Juz jej nie mam.", Info_Mod_Pendler_02_Hi_B);
	if (Npc_HasItems(hero, ItFo_Beer) >= 1)
	{
		Info_AddChoice	(Info_Mod_Pendler_02_Hi, "Tam jest jeden.", Info_Mod_Pendler_02_Hi_A);
	};
};

FUNC VOID Info_Mod_Pendler_02_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Pendler_02_Hi_C_15_00"); //Odwrócilem mysl, obserwuje jak pije!

	B_UseItem	(hero, ItFo_Beer);

	AI_Output(self, hero, "Info_Mod_Pendler_02_Hi_C_08_01"); //Zepchnij sie, pije sie dziure!

	Info_ClearChoices	(Info_Mod_Pendler_02_Hi);
};

FUNC VOID Info_Mod_Pendler_02_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Pendler_02_Hi_B_15_00"); //Juz jej nie mam.
	AI_Output(self, hero, "Info_Mod_Pendler_02_Hi_B_08_01"); //Ja tez i ja, a mój jezyk juz ciagnie sie po ziemi.
	AI_Output(self, hero, "Info_Mod_Pendler_02_Hi_B_08_02"); //Nastepnie Ditmar bedzie mial dobry upadek.

	Info_ClearChoices	(Info_Mod_Pendler_02_Hi);
};

FUNC VOID Info_Mod_Pendler_02_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Pendler_02_Hi_A_15_00"); //Tam jest jeden.

	B_GiveInvItems	(hero, self, ItFo_Beer, 1);

	B_UseItem	(self, ItFo_Beer);

	AI_Output(self, hero, "Info_Mod_Pendler_02_Hi_A_08_01"); //Damn, to jedyna rzecz, o której moge pomyslec przez caly dzien. Dziekujemy czlowiekowi!

	B_GivePlayerXP	(25);

	Info_ClearChoices	(Info_Mod_Pendler_02_Hi);
};

INSTANCE Info_Mod_Pendler_02_EXIT (C_INFO)
{
	npc		= Mod_7707_OUT_Pendler_REL;
	nr		= 1;
	condition	= Info_Mod_Pendler_02_EXIT_Condition;
	information	= Info_Mod_Pendler_02_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Pendler_02_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Pendler_02_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
