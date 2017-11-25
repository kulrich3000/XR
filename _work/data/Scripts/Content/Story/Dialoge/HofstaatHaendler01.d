INSTANCE Info_Mod_HofstaatHaendler01_Hi (C_INFO)
{
	npc		= Mod_7274_HS_Haendler_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatHaendler01_Hi_Condition;
	information	= Info_Mod_HofstaatHaendler01_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy to jest Twoje miejsce?";
};

FUNC INT Info_Mod_HofstaatHaendler01_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatTuersteher_Hi))
	&& (Mod_HS_DarfZuKing == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatHaendler01_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_HofstaatHaendler01_Hi_15_00"); //Czy to jest Twoje miejsce?
	AI_Output(self, hero, "Info_Mod_HofstaatHaendler01_Hi_08_01"); //Tak.
	AI_Output(hero, self, "Info_Mod_HofstaatHaendler01_Hi_15_02"); //Daj mi ja.

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_HofstaatHaendler01_Hi_08_03"); //Okay.

		Mod_Sekte_TraderHaus01 = 1;

		B_StartOtherRoutine	(Mod_7020_HS_Tuersteher_REL, "DARFREIN");

		Mod_7020_HS_Tuersteher_REL.aivar[AIV_Passgate] = TRUE;

		Mod_HS_DarfZuKing = 1;

		B_LogEntry	(TOPIC_MOD_SEKTE_FREUDENSPENDER, "Teraz mam dom handlowca. Mialam przejsc obok bouncera.");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_HofstaatHaendler01_Hi_08_04"); //Nie, raczej nie.
	};
};

INSTANCE Info_Mod_HofstaatHaendler01_Pickpocket (C_INFO)
{
	npc		= Mod_7274_HS_Haendler_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatHaendler01_Pickpocket_Condition;
	information	= Info_Mod_HofstaatHaendler01_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_HofstaatHaendler01_Pickpocket_Condition()
{
	C_Beklauen	(64, ItMi_Freudenspender, 1);
};

FUNC VOID Info_Mod_HofstaatHaendler01_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HofstaatHaendler01_Pickpocket);

	Info_AddChoice	(Info_Mod_HofstaatHaendler01_Pickpocket, DIALOG_BACK, Info_Mod_HofstaatHaendler01_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HofstaatHaendler01_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HofstaatHaendler01_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HofstaatHaendler01_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HofstaatHaendler01_Pickpocket);
};

FUNC VOID Info_Mod_HofstaatHaendler01_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HofstaatHaendler01_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HofstaatHaendler01_Pickpocket);

		Info_AddChoice	(Info_Mod_HofstaatHaendler01_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HofstaatHaendler01_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HofstaatHaendler01_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HofstaatHaendler01_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HofstaatHaendler01_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HofstaatHaendler01_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HofstaatHaendler01_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HofstaatHaendler01_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HofstaatHaendler01_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HofstaatHaendler01_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HofstaatHaendler01_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HofstaatHaendler01_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HofstaatHaendler01_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HofstaatHaendler01_EXIT (C_INFO)
{
	npc		= Mod_7274_HS_Haendler_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatHaendler01_EXIT_Condition;
	information	= Info_Mod_HofstaatHaendler01_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatHaendler01_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatHaendler01_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
