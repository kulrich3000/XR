INSTANCE Info_Mod_Shrat_Hi (C_INFO)
{
	npc		= Mod_1119_PSINOV_Shrat_MT;
	nr		= 1;
	condition	= Info_Mod_Shrat_Hi_Condition;
	information	= Info_Mod_Shrat_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Shrat_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Shrat_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Shrat_Hi_02_00"); //Nie zakl�caj mojego spokoju!
};

INSTANCE Info_Mod_Shrat_Woher (C_INFO)
{
	npc		= Mod_1119_PSINOV_Shrat_MT;
	nr		= 1;
	condition	= Info_Mod_Shrat_Woher_Condition;
	information	= Info_Mod_Shrat_Woher_Info;
	permanent	= 1;
	important	= 0;
	description	= "Dlaczego jestes sam w kabinie w bagnie?";
};

FUNC INT Info_Mod_Shrat_Woher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Shrat_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shrat_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Shrat_Woher_15_00"); //Dlaczego jestes sam w kabinie w bagnie?
	AI_Output(self, hero, "Info_Mod_Shrat_Woher_02_01"); //Poniewaz chce zostac sam. Nigdy nie bylem w pokoju.
	AI_Output(self, hero, "Info_Mod_Shrat_Woher_02_02"); //Najpierw musialem pracowac caly dzien na farmie Onar, az ucieklem z jedna z jego owiec.
	AI_Output(self, hero, "Info_Mod_Shrat_Woher_02_03"); //Kiedy wrzucili mnie do kolonii, pomyslalem, ze ob�z bagienny jest przytulny.
	AI_Output(self, hero, "Info_Mod_Shrat_Woher_02_04"); //Ale tam przez caly dzien wolno mi bylo strapac kapuste bagienna i nie tego chcialem.
	AI_Output(self, hero, "Info_Mod_Shrat_Woher_02_05"); //Potem ucieklem i zbudowalem tu mala chatke, a w koncu mam spok�j.
};

INSTANCE Info_Mod_Shrat_Pickpocket (C_INFO)
{
	npc		= Mod_1119_PSINOV_Shrat_MT;
	nr		= 1;
	condition	= Info_Mod_Shrat_Pickpocket_Condition;
	information	= Info_Mod_Shrat_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Shrat_Pickpocket_Condition()
{
	C_Beklauen	(23, ItMi_Gold, 12);
};

FUNC VOID Info_Mod_Shrat_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Shrat_Pickpocket);

	Info_AddChoice	(Info_Mod_Shrat_Pickpocket, DIALOG_BACK, Info_Mod_Shrat_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Shrat_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Shrat_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Shrat_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Shrat_Pickpocket);
};

FUNC VOID Info_Mod_Shrat_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Shrat_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Shrat_Pickpocket);

		Info_AddChoice	(Info_Mod_Shrat_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Shrat_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Shrat_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Shrat_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Shrat_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Shrat_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Shrat_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Shrat_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Shrat_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Shrat_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Shrat_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Shrat_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Shrat_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Shrat_EXIT (C_INFO)
{
	npc		= Mod_1119_PSINOV_Shrat_MT;
	nr		= 1;
	condition	= Info_Mod_Shrat_EXIT_Condition;
	information	= Info_Mod_Shrat_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Shrat_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Shrat_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
