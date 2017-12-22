INSTANCE Info_Mod_Horatio_Hi (C_INFO)
{
	npc		= Mod_2001_BAU_Horatio_MT;
	nr		= 1;
	condition	= Info_Mod_Horatio_Hi_Condition;
	information	= Info_Mod_Horatio_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Horatio_Hi_Condition()
{
	if (Mod_LeftysBauern >= 3)
	&& (Mod_Lefty_Horatio_Down == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Horatio_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Horatio_Hi_09_00"); //Pokazalem wam wtedy, jak ciezej trafic. A teraz jestes gonna uderzyl nas chlop�w. Jestem bardzo rozczarowany.
};

INSTANCE Info_Mod_Horatio_DankeProBauern (C_INFO)
{
	npc		= Mod_2001_BAU_Horatio_MT;
	nr		= 1;
	condition	= Info_Mod_Horatio_DankeProBauern_Condition;
	information	= Info_Mod_Horatio_DankeProBauern_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Horatio_DankeProBauern_Condition()
{
	if (Npc_KnowsInfo(hero, Info_ReisBau_2_DankeProBauer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Horatio_DankeProBauern_Info()
{
	AI_Output(self, hero, "Info_Mod_Horatio_DankeProBauern_09_00"); //Dzieki temu, co dla nas zrobiles, udowodniles, ze jestes prawdziwym obronca sprawiedliwosci.
	AI_Output(self, hero, "Info_Mod_Horatio_DankeProBauern_09_01"); //Niewiele mozemy Ci sprzedac za podziekowanie, ale polaczylismy sie.

	B_ShowGivenThings	("110 zloto, 19 rudy, 8 jablek, 10 ryz�w i 2 ser�w zakonserwowanych");

	CreateInvItems	(hero, ItMi_Gold, 110);
	CreateInvItems	(hero, ItMi_Nugget, 19);
	CreateInvItems	(hero, ItFo_Apple, 8);
	CreateInvItems	(hero, ItPl_Riceplant, 10);
	CreateInvItems	(hero, ItFo_Cheese, 2);

	AI_Output(self, hero, "Info_Mod_Horatio_DankeProBauern_09_02"); //Pokazalem juz, jak ciezej cie uderzyc.
	AI_Output(self, hero, "Info_Mod_Horatio_DankeProBauern_09_03"); //Teraz wyjasnie, jak mozna sprawniej prowadzic stal w dloni.
	AI_Output(self, hero, "Info_Mod_Horatio_DankeProBauern_09_04"); //Kiedy rozpoczynasz udar, powinienes starac sie uzyskac jak najwieksza sile rozpedu.
	AI_Output(self, hero, "Info_Mod_Horatio_DankeProBauern_09_05"); //Dopiero na kr�tko przed trafieniem w strzal tworzysz napiecie miesniowe, aby dac strzalowi odpowiednia twardosc.

	B_RaiseFightTalent (hero, NPC_TALENT_1H, 2);
	B_RaiseFightTalent (hero, NPC_TALENT_2H, 2);

	AI_PrintScreen	("2 Jedna i dwie osoby", -1, -1, FONT_Screen, 2);

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Horatio_Pickpocket (C_INFO)
{
	npc		= Mod_2001_BAU_Horatio_MT;
	nr		= 1;
	condition	= Info_Mod_Horatio_Pickpocket_Condition;
	information	= Info_Mod_Horatio_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Horatio_Pickpocket_Condition()
{
	C_Beklauen	(11, ItPl_Riceplant, 3);
};

FUNC VOID Info_Mod_Horatio_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Horatio_Pickpocket);

	Info_AddChoice	(Info_Mod_Horatio_Pickpocket, DIALOG_BACK, Info_Mod_Horatio_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Horatio_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Horatio_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Horatio_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Horatio_Pickpocket);
};

FUNC VOID Info_Mod_Horatio_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Horatio_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Horatio_Pickpocket);

		Info_AddChoice	(Info_Mod_Horatio_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Horatio_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Horatio_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Horatio_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Horatio_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Horatio_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Horatio_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Horatio_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Horatio_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Horatio_Pickpocket);

		AI_StopProcessInfos	(self);

		B_Attack (self, hero, AR_Theft, 1);
	}
	else
	{
		if (rnd >= 75)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 200);
		}
		else if (rnd >= 50)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 100);
		}
		else if (rnd >= 25)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 50);
		};

		B_Say	(self, hero, "$PICKPOCKET_BESTECHUNG_01");

		Info_ClearChoices	(Info_Mod_Horatio_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Horatio_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Horatio_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Horatio_EXIT (C_INFO)
{
	npc		= Mod_2001_BAU_Horatio_MT;
	nr		= 1;
	condition	= Info_Mod_Horatio_EXIT_Condition;
	information	= Info_Mod_Horatio_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Horatio_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Horatio_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
