INSTANCE Info_Mod_Rega_Unheil (C_INFO)
{
	npc		= Mod_104_BAU_Rega_NW;
	nr		= 1;
	condition	= Info_Mod_Rega_Unheil_Condition;
	information	= Info_Mod_Rega_Unheil_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj, piekne dziecko.";
};

FUNC INT Info_Mod_Rega_Unheil_Condition()
{
	if (Mod_WM_Boeden == 14)
	|| (Mod_WM_Boeden == 13)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rega_Unheil_Info()
{
	AI_Output(hero, self, "Info_Mod_Rega_Unheil_15_00"); //Witaj, piekne dziecko.
	AI_Output(self, hero, "Info_Mod_Rega_Unheil_17_01"); //Witaj, wedrowca? Co przywodzi na mysl te mroczne dni?
	AI_Output(hero, self, "Info_Mod_Rega_Unheil_15_02"); //Och, po prostu chcialem sie rozejrzec i zapytac, czy cos niezwyklego wydarzylo sie tutaj w ostatnich dniach i tygodniach.
	AI_Output(self, hero, "Info_Mod_Rega_Unheil_17_03"); //Och, to po prostu straszne. W tym roku Trybunal w tym roku uderzyl w Trybunal bardzo mocno. A teraz ci nieumarli na cmentarzu.
	AI_Output(self, hero, "Info_Mod_Rega_Unheil_17_04"); //Nie obwiniaj innych, jesli wydaja sie nieco nieprzyjazne. Ale dzis jest to bardzo trudne.
};

INSTANCE Info_Mod_Rega_Pickpocket (C_INFO)
{
	npc		= Mod_104_BAU_Rega_NW;
	nr		= 1;
	condition	= Info_Mod_Rega_Pickpocket_Condition;
	information	= Info_Mod_Rega_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Rega_Pickpocket_Condition()
{
	C_Beklauen	(36, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Rega_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Rega_Pickpocket);

	Info_AddChoice	(Info_Mod_Rega_Pickpocket, DIALOG_BACK, Info_Mod_Rega_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Rega_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Rega_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Rega_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Rega_Pickpocket);
};

FUNC VOID Info_Mod_Rega_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Rega_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Rega_Pickpocket);

		Info_AddChoice	(Info_Mod_Rega_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Rega_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Rega_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Rega_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Rega_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Rega_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Rega_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Rega_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Rega_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Rega_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Rega_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Rega_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Rega_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Rega_EXIT (C_INFO)
{
	npc		= Mod_104_BAU_Rega_NW;
	nr		= 1;
	condition	= Info_Mod_Rega_EXIT_Condition;
	information	= Info_Mod_Rega_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Rega_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Rega_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
