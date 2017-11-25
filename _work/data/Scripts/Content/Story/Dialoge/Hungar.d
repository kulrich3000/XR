INSTANCE Info_Mod_Hungar_Hey (C_INFO)
{
	npc		= Mod_7522_JG_Hungar_JL;
	nr		= 1;
	condition	= Info_Mod_Hungar_Hey_Condition;
	information	= Info_Mod_Hungar_Hey_Info;
	permanent	= 0;
	important	= 0;
	description	= "Widze, ze jestes dobrze posortowany.";
};

FUNC INT Info_Mod_Hungar_Hey_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hungar_Hey_Info()
{
	AI_Output(hero, self, "Info_Mod_Hungar_Hey_15_00"); //Widze, ze jestes dobrze posortowany.
	AI_Output(self, hero, "Info_Mod_Hungar_Hey_08_01"); //Musi tak byc. Jestesmy tu troche odizolowani.
	AI_Output(hero, self, "Info_Mod_Hungar_Hey_15_02"); //Skad to wszystko pochodzi?
	AI_Output(self, hero, "Info_Mod_Hungar_Hey_08_03"); //Kupuje w obozach. A mieso jest nauczane przez mysliwych.
	AI_Output(hero, self, "Info_Mod_Hungar_Hey_15_04"); //Mozesz teraz dostac sie do miasta.
	AI_Output(self, hero, "Info_Mod_Hungar_Hey_08_05"); //Stalo sie to dla mnie zbyt daleko i zbyt niebezpieczne.
	AI_Output(self, hero, "Info_Mod_Hungar_Hey_08_06"); //Wszyscy mordercy i bandyci, kt�rzy przyjechali tu z kopula. A stworzenia wszedzie.
	AI_Output(self, hero, "Info_Mod_Hungar_Hey_08_07"); //Nie bylo juz tak wiele.
	AI_Output(hero, self, "Info_Mod_Hungar_Hey_15_08"); //Byles tu dluzej?
	AI_Output(self, hero, "Info_Mod_Hungar_Hey_08_09"); //Oczywiscie. Byl jednym z pierwszych w obozie. Przed bariera. Nazywam sie Wegr�w.
	AI_Output(hero, self, "Info_Mod_Hungar_Hey_15_10"); //C�z, zobaczmy co dostales....

	Log_CreateTopic	(TOPIC_MOD_HAENDLER_WALDIS, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_HAENDLER_WALDIS, "Wegrzy wydaja sie sprzedawac zywnosc Rangersowi.");
};

INSTANCE Info_Mod_Hungar_Trade (C_INFO)
{
	npc		= Mod_7522_JG_Hungar_JL;
	nr		= 1;
	condition	= Info_Mod_Hungar_Trade_Condition;
	information	= Info_Mod_Hungar_Trade_Info;
	permanent	= 1;
	important	= 0;
	trade		= 1;
	description	= DIALOG_TRADE;
};

FUNC INT Info_Mod_Hungar_Trade_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hungar_Hey))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hungar_Trade_Info()
{
	Backup_Questitems();

	B_GiveTradeInv (self);
	B_Say (hero, self, "$TRADE_1");
};

INSTANCE Info_Mod_Hungar_Pickpocket (C_INFO)
{
	npc		= Mod_7522_JG_Hungar_JL;
	nr		= 1;
	condition	= Info_Mod_Hungar_Pickpocket_Condition;
	information	= Info_Mod_Hungar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Hungar_Pickpocket_Condition()
{
	C_Beklauen	(77, ItFo_MuttonRaw, 12);
};

FUNC VOID Info_Mod_Hungar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Hungar_Pickpocket);

	Info_AddChoice	(Info_Mod_Hungar_Pickpocket, DIALOG_BACK, Info_Mod_Hungar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Hungar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Hungar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Hungar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Hungar_Pickpocket);
};

FUNC VOID Info_Mod_Hungar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Hungar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Hungar_Pickpocket);

		Info_AddChoice	(Info_Mod_Hungar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Hungar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Hungar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Hungar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Hungar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Hungar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Hungar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Hungar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Hungar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Hungar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Hungar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Hungar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Hungar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Hungar_EXIT (C_INFO)
{
	npc		= Mod_7522_JG_Hungar_JL;
	nr		= 1;
	condition	= Info_Mod_Hungar_EXIT_Condition;
	information	= Info_Mod_Hungar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hungar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hungar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
