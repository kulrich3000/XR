INSTANCE Info_Mod_HSBuerger_03_Orakel (C_INFO)
{
	npc		= Mod_7598_HS_Hofstaatler_REL;
	nr		= 1;
	condition	= Info_Mod_HSBuerger_03_Orakel_Condition;
	information	= Info_Mod_HSBuerger_03_Orakel_Info;
	permanent	= 1;
	important	= 0;
	description	= "Szukam Oracle.";
};

FUNC INT Info_Mod_HSBuerger_03_Orakel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatRaufbold_KoenigHilfe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HSBuerger_03_Orakel_Info()
{
	AI_Output(hero, self, "Info_Mod_HSBuerger_03_Orakel_15_00"); //Szukam Oracle.
	AI_Output(self, hero, "Info_Mod_HSBuerger_03_Orakel_03_01"); //Oracle? Nie ma takiej rzeczy. Powinienes zapytac królewskiego wyrocznia, gdzie mozna go znalezc, to jest calkiem madre.
	AI_Output(hero, self, "Info_Mod_HSBuerger_03_Orakel_15_02"); //A gdzie jest królewski wyrocznia?
	AI_Output(self, hero, "Info_Mod_HSBuerger_03_Orakel_03_03"); //Bedziesz musial umówic sie na wizyte u króla.
};

INSTANCE Info_Mod_HSBuerger_03_Teleport (C_INFO)
{
	npc		= Mod_7598_HS_Hofstaatler_REL;
	nr		= 1;
	condition	= Info_Mod_HSBuerger_03_Teleport_Condition;
	information	= Info_Mod_HSBuerger_03_Teleport_Info;
	permanent	= 1;
	important	= 0;
	description	= "Szukam najkrótszej drogi do bagna.";
};

FUNC INT Info_Mod_HSBuerger_03_Teleport_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatKoenig_Gemaelde))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HSBuerger_03_Teleport_Info()
{
	AI_Output(hero, self, "Info_Mod_HSBuerger_03_Teleport_15_00"); //Szukam najkrótszej drogi do bagna.
	AI_Output(self, hero, "Info_Mod_HSBuerger_03_Teleport_03_01"); //Lepiej zapytac kogos, kto potrafi zrobic magie lub cos innego..... nie ma pojecia.
};

INSTANCE Info_Mod_HSBuerger_03_Pickpocket (C_INFO)
{
	npc		= Mod_7598_HS_Hofstaatler_REL;
	nr		= 1;
	condition	= Info_Mod_HSBuerger_03_Pickpocket_Condition;
	information	= Info_Mod_HSBuerger_03_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_HSBuerger_03_Pickpocket_Condition()
{
	C_Beklauen	(13, ItMi_Gold, 12);
};

FUNC VOID Info_Mod_HSBuerger_03_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HSBuerger_03_Pickpocket);

	Info_AddChoice	(Info_Mod_HSBuerger_03_Pickpocket, DIALOG_BACK, Info_Mod_HSBuerger_03_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HSBuerger_03_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HSBuerger_03_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HSBuerger_03_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HSBuerger_03_Pickpocket);
};

FUNC VOID Info_Mod_HSBuerger_03_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HSBuerger_03_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HSBuerger_03_Pickpocket);

		Info_AddChoice	(Info_Mod_HSBuerger_03_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HSBuerger_03_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HSBuerger_03_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HSBuerger_03_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HSBuerger_03_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HSBuerger_03_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HSBuerger_03_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HSBuerger_03_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HSBuerger_03_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HSBuerger_03_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HSBuerger_03_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HSBuerger_03_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HSBuerger_03_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HSBuerger_03_EXIT (C_INFO)
{
	npc		= Mod_7598_HS_Hofstaatler_REL;
	nr		= 1;
	condition	= Info_Mod_HSBuerger_03_EXIT_Condition;
	information	= Info_Mod_HSBuerger_03_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HSBuerger_03_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HSBuerger_03_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
