INSTANCE Info_Mod_Brandick_Hi (C_INFO)
{
	npc		= Mod_7799_SMK_Brandick_OM;
	nr		= 1;
	condition	= Info_Mod_Brandick_Hi_Condition;
	information	= Info_Mod_Brandick_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak wyglada praca w kopalni?";
};

FUNC INT Info_Mod_Brandick_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Brandick_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Brandick_Hi_15_00"); //Jak wyglada praca w kopalni?
	AI_Output(self, hero, "Info_Mod_Brandick_Hi_11_01"); //Och, bylem lepszy. Kiedys mialem w kieszeni wiecej rudy..... kiedy Alef jeszcze tam byl....
	AI_Output(hero, self, "Info_Mod_Brandick_Hi_15_02"); //Co myslisz?
	AI_Output(self, hero, "Info_Mod_Brandick_Hi_11_03"); //.... on byl..... Dosyc umiejetnie w niekt�rych rzeczach i zaplacil mi dobra rude za to, ze kiedys przymknalem oko, jesli nie pracowal ciezko. Ale zostal uderzony przez trzesienie.
	AI_Output(hero, self, "Info_Mod_Brandick_Hi_15_04"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Brandick_Hi_11_05"); //Zaledwie kilka metr�w od nas upadl. Natychmiast musi byc martwy..... jego szczescia. Oszczedzil mu duzo pieniedzy.....
	AI_Output(self, hero, "Info_Mod_Brandick_Hi_11_06"); //Szkoda, ze dzien wczesniej nie zaplacilam mu..... a wraz z brakujacym kluczem Santino mam podejrzenie.
};

INSTANCE Info_Mod_Brandick_Pickpocket (C_INFO)
{
	npc		= Mod_7799_SMK_Brandick_OM;
	nr		= 1;
	condition	= Info_Mod_Brandick_Pickpocket_Condition;
	information	= Info_Mod_Brandick_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Brandick_Pickpocket_Condition()
{
	C_Beklauen	(66, ItMi_Nugget, 5);
};

FUNC VOID Info_Mod_Brandick_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Brandick_Pickpocket);

	Info_AddChoice	(Info_Mod_Brandick_Pickpocket, DIALOG_BACK, Info_Mod_Brandick_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Brandick_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Brandick_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Brandick_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Brandick_Pickpocket);
};

FUNC VOID Info_Mod_Brandick_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Brandick_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Brandick_Pickpocket);

		Info_AddChoice	(Info_Mod_Brandick_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Brandick_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Brandick_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Brandick_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Brandick_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Brandick_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Brandick_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Brandick_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Brandick_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Brandick_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Brandick_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Brandick_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Brandick_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Brandick_EXIT (C_INFO)
{
	npc		= Mod_7799_SMK_Brandick_OM;
	nr		= 1;
	condition	= Info_Mod_Brandick_EXIT_Condition;
	information	= Info_Mod_Brandick_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Brandick_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Brandick_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
