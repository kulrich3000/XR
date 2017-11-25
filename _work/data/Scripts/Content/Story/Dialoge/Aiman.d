INSTANCE Info_Mod_Aiman_Hi (C_INFO)
{
	npc		= Mod_7152_ASS_Aiman_NW;
	nr		= 1;
	condition	= Info_Mod_Aiman_Hi_Condition;
	information	= Info_Mod_Aiman_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Aiman_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mirza_Amulett))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aiman_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Aiman_Hi_05_00"); //Och, tam jestescie.
	AI_Output(hero, self, "Info_Mod_Aiman_Hi_15_01"); //Postaram sie robic, co moge. Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Aiman_Hi_05_02"); //Czy slyszales kiedys o kubkach na krew?
	AI_Output(hero, self, "Info_Mod_Aiman_Hi_15_03"); //Juz raz dostalem go na Amir. Od pozyczkodawcy w Khorinis. On nie zyje.
	AI_Output(self, hero, "Info_Mod_Aiman_Hi_05_04"); //Oczywiscie w przeciwnym razie puchar nie mialby zadnej wartosci. Aby kielichy staly sie skuteczne, wlasciciel musi umrzec.
	AI_Output(hero, self, "Info_Mod_Aiman_Hi_15_05"); //Ile kielichów jest?
	AI_Output(self, hero, "Info_Mod_Aiman_Hi_05_06"); //To jest trzy. Wedlug naszych informacji, jeden z nich nalezy do sedziów w Khorinis. Tego wlasnie chce wielka Rada.
	AI_Output(hero, self, "Info_Mod_Aiman_Hi_15_07"); //Wtedy zamorduje sedziego i naucze pucharu.
	AI_Output(self, hero, "Info_Mod_Aiman_Hi_05_08"); //Inteligentny facet. Jesli sie uda, dostaniesz miejsce z kandydatami,
	AI_Output(hero, self, "Info_Mod_Aiman_Hi_15_09"); //Wtedy chce spojrzec....

	AI_TurnAway	(hero, self);

	if (Mod_ASS_Krieger == 1)
	{
		AI_Output(hero, self, "Info_Mod_Aiman_Hi_15_10"); //Zrób najpierw odpowiednia trucizne. Zapytaj magów z tylu.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Aiman_Hi_15_11"); //Zrób najpierw odpowiednia trucizne. Moze Kamal moze pomoze.
	};

	AI_TurnToNpc	(hero, self);

	Log_CreateTopic	(TOPIC_MOD_ASS_BLUTKELCH, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_BLUTKELCH, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_BLUTKELCH, "Mam zajac drugie miejsce w radzie. Pobierz kubek krwi. Sedzia w Khorinis prawdopodobnie go ma. Musi umrzec, ale nie powinno to wywolac poruszenia. Odpowiednim srodkiem zaradczym dla zabójcy bylaby trucizna. Gdzies tam byl alchemik....");
};

INSTANCE Info_Mod_Aiman_Pickpocket (C_INFO)
{
	npc		= Mod_7152_ASS_Aiman_NW;
	nr		= 1;
	condition	= Info_Mod_Aiman_Pickpocket_Condition;
	information	= Info_Mod_Aiman_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Aiman_Pickpocket_Condition()
{
	C_Beklauen	(164, ItMi_Gold, 107);
};

FUNC VOID Info_Mod_Aiman_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Aiman_Pickpocket);

	Info_AddChoice	(Info_Mod_Aiman_Pickpocket, DIALOG_BACK, Info_Mod_Aiman_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Aiman_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Aiman_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Aiman_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Aiman_Pickpocket);
};

FUNC VOID Info_Mod_Aiman_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Aiman_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Aiman_Pickpocket);

		Info_AddChoice	(Info_Mod_Aiman_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Aiman_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Aiman_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Aiman_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Aiman_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Aiman_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Aiman_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Aiman_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Aiman_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Aiman_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Aiman_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Aiman_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Aiman_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Aiman_EXIT (C_INFO)
{
	npc		= Mod_7152_ASS_Aiman_NW;
	nr		= 1;
	condition	= Info_Mod_Aiman_EXIT_Condition;
	information	= Info_Mod_Aiman_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Aiman_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Aiman_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
