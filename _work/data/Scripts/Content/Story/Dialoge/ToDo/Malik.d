INSTANCE Info_Mod_Malik_Aufgabe (C_INFO)
{
	npc		= Mod_7123_ASS_Malik_NW;
	nr		= 1;
	condition	= Info_Mod_Malik_Aufgabe_Condition;
	information	= Info_Mod_Malik_Aufgabe_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Malik_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Masut_Jack))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Malik_Aufgabe_Info()
{
	AI_Output(self, hero, "Info_Mod_Malik_Aufgabe_13_00"); //Aha, nowy facet! Glosujac nad lapaniem slysze.
	AI_Output(hero, self, "Info_Mod_Malik_Aufgabe_15_01"); //M�wisz to. Ile wynosi twoja kwota?
	AI_Output(self, hero, "Info_Mod_Malik_Aufgabe_13_02"); //Uprzejmosc. Troche zyczliwosci.
	AI_Output(hero, self, "Info_Mod_Malik_Aufgabe_15_03"); //I co to jest?
	AI_Output(self, hero, "Info_Mod_Malik_Aufgabe_13_04"); //Stajesz sie stary. Nie spisz dobrze na twardych l�zkach. Potrzebuje czegos miekkiego pod glowa.
	AI_Output(hero, self, "Info_Mod_Malik_Aufgabe_15_05"); //A co z plaszczem od owcy?
	AI_Output(self, hero, "Info_Mod_Malik_Aufgabe_13_06"); //Nie, nie, nie, nie, nie. To bedzie ciezkie i smierdzace. To ma byc cos cieplego, miekkiego i czystego.
	AI_Output(hero, self, "Info_Mod_Malik_Aufgabe_15_07"); //Sprawdze sprzedawc�w.
	AI_Output(self, hero, "Info_Mod_Malik_Aufgabe_13_08"); //Co najwazniejsze, Khorata. M�wia, ze maja byc tak zaawansowane.
	AI_Output(hero, self, "Info_Mod_Malik_Aufgabe_15_09"); //Dobry pomysl. Do zobaczenia p�zniej.

	Log_CreateTopic	(TOPIC_MOD_ASS_KISSEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_KISSEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_KISSEN, "Cos miekkiego dla glowy! Co tam jest. Mysle, ze przede wszystkim zapytam Matteo, ze jest prawdopodobnie najlepszym sprzedawca w miescie. W przeciwnym razie bede musial rozejrzec sie po Khoracie.");
};

INSTANCE Info_Mod_Malik_Kissen (C_INFO)
{
	npc		= Mod_7123_ASS_Malik_NW;
	nr		= 1;
	condition	= Info_Mod_Malik_Kissen_Condition;
	information	= Info_Mod_Malik_Kissen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto Tw�j miekki dla glowy.";
};

FUNC INT Info_Mod_Malik_Kissen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Malik_Aufgabe))
	&& (Npc_HasItems(hero, ItMi_Kissen) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Malik_Kissen_Info()
{
	AI_Output(hero, self, "Info_Mod_Malik_Kissen_15_00"); //Oto Tw�j miekki dla glowy.

	B_GiveInvItems	(hero, self, ItMi_Kissen, 1);

	AI_Output(self, hero, "Info_Mod_Malik_Kissen_13_01"); //Czym jest to pieklo? Fioletowy kwadrat.
	AI_Output(hero, self, "Info_Mod_Malik_Kissen_15_02"); //Pol�z sie i zr�b to pod glowa.

	AI_GotoWP	(self, "WP_ASSASSINE_31");

	AI_UseMob	(self, "BEDHIGH", 1);
	AI_UseMob	(self, "BEDHIGH", -1);

	AI_GotoNpc	(self, hero);

	AI_Output(hero, self, "Info_Mod_Malik_Kissen_15_03"); //A co? Zadowolony?
	AI_Output(self, hero, "Info_Mod_Malik_Kissen_13_04"); //Z wszystkimi duchami. Wspaniale miekkie i pachnace. Jestem wiecej niz zadowolony.
	AI_Output(hero, self, "Info_Mod_Malik_Kissen_15_05"); //Wtedy mam tw�j glos?
	AI_Output(self, hero, "Info_Mod_Malik_Kissen_13_06"); //Ale tak, tak, tak. Dalbym ci nawet dwa, gdybys m�gl. Ale teraz pozw�l mi spac.
	AI_Output(self, hero, "Info_Mod_Malik_Kissen_13_07"); //Och, jeszcze jedna rzecz. Sinbad szuka cie.

	B_LogEntry	(TOPIC_MOD_ASS_KRIEGER, "Malik byl bardzo zadowolony. Jestem pewien jego glosu. Przejdzmy do Sinbad.");
	B_SetTopicStatus	(TOPIC_MOD_ASS_KISSEN, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SLEEP");
};

INSTANCE Info_Mod_Malik_Pickpocket (C_INFO)
{
	npc		= Mod_7123_ASS_Malik_NW;
	nr		= 1;
	condition	= Info_Mod_Malik_Pickpocket_Condition;
	information	= Info_Mod_Malik_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Malik_Pickpocket_Condition()
{
	C_Beklauen	(117, ItMi_Gold, 40);
};

FUNC VOID Info_Mod_Malik_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Malik_Pickpocket);

	Info_AddChoice	(Info_Mod_Malik_Pickpocket, DIALOG_BACK, Info_Mod_Malik_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Malik_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Malik_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Malik_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Malik_Pickpocket);
};

FUNC VOID Info_Mod_Malik_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Malik_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Malik_Pickpocket);

		Info_AddChoice	(Info_Mod_Malik_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Malik_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Malik_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Malik_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Malik_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Malik_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Malik_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Malik_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Malik_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Malik_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Malik_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Malik_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Malik_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Malik_EXIT (C_INFO)
{
	npc		= Mod_7123_ASS_Malik_NW;
	nr		= 1;
	condition	= Info_Mod_Malik_EXIT_Condition;
	information	= Info_Mod_Malik_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Malik_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Malik_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
