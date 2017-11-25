INSTANCE Info_Mod_Fellan_Hi (C_INFO)
{
	npc		= Mod_574_NONE_Fellan_NW;
	nr		= 1;
	condition	= Info_Mod_Fellan_Hi_Condition;
	information	= Info_Mod_Fellan_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Fellan_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Fellan_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Fellan_Hi_06_01"); //Nie martw sie o mnie. Musze sie zastanowic, jak uniknac deszczu w moim domu.
};

INSTANCE Info_Mod_Fellan_Regenproblem (C_INFO)
{
	npc		= Mod_574_NONE_Fellan_NW;
	nr		= 1;
	condition	= Info_Mod_Fellan_Regenproblem_Condition;
	information	= Info_Mod_Fellan_Regenproblem_Info;
	permanent	= 0;
	important	= 0;
	description	= "Pada deszcz w Twoim domu?";
};

FUNC INT Info_Mod_Fellan_Regenproblem_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fellan_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fellan_Regenproblem_Info()
{
	AI_Output(hero, self, "Info_Mod_Fellan_Regenproblem_15_00"); //Pada deszcz w Twoim domu?
	AI_Output(self, hero, "Info_Mod_Fellan_Regenproblem_06_01"); //Tak. Wyglada jak gdzies jest dziura. Co mam teraz zrobic?

	Info_ClearChoices	(Info_Mod_Fellan_Regenproblem);

	Info_AddChoice	(Info_Mod_Fellan_Regenproblem, "Nie moge Ci tez pomóc.", Info_Mod_Fellan_Regenproblem_B);
	Info_AddChoice	(Info_Mod_Fellan_Regenproblem, "Czy slyszalem kiedys o deskach i paznokciach?", Info_Mod_Fellan_Regenproblem_A);
};

FUNC VOID Info_Mod_Fellan_Regenproblem_B()
{
	AI_Output(hero, self, "Info_Mod_Fellan_Regenproblem_B_15_00"); //Nie moge Ci tez pomóc.
	AI_Output(self, hero, "Info_Mod_Fellan_Regenproblem_B_06_01"); //Co ja robie?

	Info_ClearChoices	(Info_Mod_Fellan_Regenproblem);
};

FUNC VOID Info_Mod_Fellan_Regenproblem_A()
{
	AI_Output(hero, self, "Info_Mod_Fellan_Regenproblem_A_15_00"); //Czy slyszalem kiedys o deskach i paznokciach?
	AI_Output(self, hero, "Info_Mod_Fellan_Regenproblem_A_06_01"); //Uh.... teraz, ze mówisz to.....
	AI_Output(hero, self, "Info_Mod_Fellan_Regenproblem_A_15_02"); //Potrzebujesz mlotka.
	AI_Output(self, hero, "Info_Mod_Fellan_Regenproblem_A_06_03"); //Skad moge ja odzyskac?

	Info_ClearChoices	(Info_Mod_Fellan_Regenproblem);

	Info_AddChoice	(Info_Mod_Fellan_Regenproblem, "To Twój problem.", Info_Mod_Fellan_Regenproblem_D);
	Info_AddChoice	(Info_Mod_Fellan_Regenproblem, "Dostane cie jeden.", Info_Mod_Fellan_Regenproblem_C);
};

FUNC VOID Info_Mod_Fellan_Regenproblem_D()
{
	AI_Output(hero, self, "Info_Mod_Fellan_Regenproblem_D_15_00"); //To Twój problem.
	AI_Output(self, hero, "Info_Mod_Fellan_Regenproblem_D_06_01"); //(sighs) Prawdopodobnie utopie sie w moim domu.

	Info_ClearChoices	(Info_Mod_Fellan_Regenproblem);
};

FUNC VOID Info_Mod_Fellan_Regenproblem_C()
{
	AI_Output(hero, self, "Info_Mod_Fellan_Regenproblem_C_15_00"); //Dostane cie jeden.
	AI_Output(self, hero, "Info_Mod_Fellan_Regenproblem_C_06_01"); //Naprawde? To byloby wspaniale.

	Log_CreateTopic	(TOPIC_MOD_FELLAN_REGEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FELLAN_REGEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FELLAN_REGEN, "Wydaje sie, ze Fellan ma problem z dachem swojego domu. Powiedzialem mu, ze potrzebuje desek i gwozdzi do naprawy, ale nie ma nawet mlotka. Zgodzilem sie na to, ze dostanie go mlotkiem.");

	Fellan_Hammer = 1;

	Info_ClearChoices	(Info_Mod_Fellan_Regenproblem);
};

INSTANCE Info_Mod_Fellan_HabHammer (C_INFO)
{
	npc		= Mod_574_NONE_Fellan_NW;
	nr		= 1;
	condition	= Info_Mod_Fellan_HabHammer_Condition;
	information	= Info_Mod_Fellan_HabHammer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto mloteczek.";
};

FUNC INT Info_Mod_Fellan_HabHammer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fellan_Regenproblem))
	&& (Npc_HasItems(hero, ItMi_Hammer) > 0)
	&& (Fellan_Hammer == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fellan_HabHammer_Info()
{
	AI_Output(hero, self, "Info_Mod_Fellan_HabHammer_15_00"); //Oto mloteczek.

	B_GiveInvItems	(hero, self, ItMi_Hammer, 1);

	AI_Output(self, hero, "Info_Mod_Fellan_HabHammer_06_01"); //Dziekuje, a potem zaczynam zamykac ten otwór.

	B_LogEntry	(TOPIC_MOD_FELLAN_REGEN, "Fellan ma teraz mlotek i chce zaczac zamykac otwór.");
	B_SetTopicStatus	(TOPIC_MOD_FELLAN_REGEN, LOG_SUCCESS);

	B_GivePlayerXP	(50);

	B_StartOtherRoutine	(self, "REPAIR");

	CurrentNQ += 1;

	Npc_SetRefuseTalk (self, 60);
};

INSTANCE Info_Mod_Fellan_NochAmHaemmern (C_INFO)
{
	npc		= Mod_574_NONE_Fellan_NW;
	nr		= 1;
	condition	= Info_Mod_Fellan_NochAmHaemmern_Condition;
	information	= Info_Mod_Fellan_NochAmHaemmern_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy wciaz jeszcze tego nie zrobiles?";
};

FUNC INT Info_Mod_Fellan_NochAmHaemmern_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fellan_HabHammer))
	&& (Npc_RefuseTalk(self) == FALSE)
	&& (Kapitel >= 2)
	&& (Mod_WilfriedsQuest >= 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fellan_NochAmHaemmern_Info()
{
	AI_Output(hero, self, "Info_Mod_Fellan_NochAmHaemmern_15_00"); //Czy wciaz jeszcze tego nie zrobiles?
	AI_Output(self, hero, "Info_Mod_Fellan_NochAmHaemmern_06_01"); //Ach, zdesperowany. Czasami tesknie za czasem, potem gwozdzie wygina sie.
	AI_Output(self, hero, "Info_Mod_Fellan_NochAmHaemmern_06_02"); //Czasami uderzylem zbyt mocno, potem tez pekly okalajace deski.
	AI_Output(self, hero, "Info_Mod_Fellan_NochAmHaemmern_06_03"); //Mam szczescie powiedziec, ze to wielkie cialo, które chce byc moim domem, wciaz stoi.

	Info_ClearChoices	(Info_Mod_Fellan_NochAmHaemmern);

	Info_AddChoice	(Info_Mod_Fellan_NochAmHaemmern, "Nie moge Ci tez pomóc.", Info_Mod_Fellan_NochAmHaemmern_B);
	Info_AddChoice	(Info_Mod_Fellan_NochAmHaemmern, "Wiem jedna rzecz.", Info_Mod_Fellan_NochAmHaemmern_A);
};

FUNC VOID Info_Mod_Fellan_NochAmHaemmern_B()
{
	AI_Output(hero, self, "Info_Mod_Fellan_NochAmHaemmern_B_15_00"); //Nie moge Ci tez pomóc.

	Info_ClearChoices	(Info_Mod_Fellan_NochAmHaemmern);
};

FUNC VOID Info_Mod_Fellan_NochAmHaemmern_A()
{
	AI_Output(hero, self, "Info_Mod_Fellan_NochAmHaemmern_A_15_00"); //Wiem jedna rzecz.
	AI_Output(self, hero, "Info_Mod_Fellan_NochAmHaemmern_A_06_01"); //Oh i gdzie?
	AI_Output(hero, self, "Info_Mod_Fellan_NochAmHaemmern_A_15_02"); //Po drugiej stronie portu. Mieszkal tam Wilfriedowie, ale to.... Zmarl.
	AI_Output(self, hero, "Info_Mod_Fellan_NochAmHaemmern_A_06_03"); //Cóz, dziekuje za koncówke. Musze sie zapytac.

	B_GivePlayerXP	(50);

	Mod_Fellan_Day = Wld_GetDay();

	Mod_Fellan_Umzug = 1;

	Info_ClearChoices	(Info_Mod_Fellan_NochAmHaemmern);
};

INSTANCE Info_Mod_Fellan_NochAmHaemmern2 (C_INFO)
{
	npc		= Mod_574_NONE_Fellan_NW;
	nr		= 1;
	condition	= Info_Mod_Fellan_NochAmHaemmern2_Condition;
	information	= Info_Mod_Fellan_NochAmHaemmern2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Fellan_NochAmHaemmern2_Condition()
{
	if (Mod_Fellan_Umzug == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fellan_NochAmHaemmern2_Info()
{
	AI_Output(self, hero, "Info_Mod_Fellan_NochAmHaemmern2_06_00"); //No cóz, gówno. Padl tu wczoraj wieczorem.
	AI_Output(self, hero, "Info_Mod_Fellan_NochAmHaemmern2_06_01"); //Wydaje sie, ze mlotkowanie jest moim przeznaczeniem do konca mojego dnia.
};

INSTANCE Info_Mod_Fellan_Flugblaetter (C_INFO)
{
	npc		= Mod_574_NONE_Fellan_NW;
	nr		= 1;
	condition	= Info_Mod_Fellan_Flugblaetter_Condition;
	information	= Info_Mod_Fellan_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam dla Ciebie ulotke.";
};

FUNC INT Info_Mod_Fellan_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&&(!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Fellan_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fellan_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Fellan_Flugblaetter_06_01"); //Dziekuje, dziekuje. Zobaczmy jak.....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Fellan_Flugblaetter_06_02"); //Ah tak. Moze zatrzymam sie przy Matteo' s.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Fellan_Pickpocket (C_INFO)
{
	npc		= Mod_574_NONE_Fellan_NW;
	nr		= 1;
	condition	= Info_Mod_Fellan_Pickpocket_Condition;
	information	= Info_Mod_Fellan_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Fellan_Pickpocket_Condition()
{
	C_Beklauen	(35, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Fellan_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Fellan_Pickpocket);

	Info_AddChoice	(Info_Mod_Fellan_Pickpocket, DIALOG_BACK, Info_Mod_Fellan_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Fellan_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Fellan_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Fellan_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Fellan_Pickpocket);
};

FUNC VOID Info_Mod_Fellan_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Fellan_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Fellan_Pickpocket);

		Info_AddChoice	(Info_Mod_Fellan_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Fellan_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Fellan_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Fellan_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Fellan_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Fellan_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Fellan_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Fellan_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Fellan_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Fellan_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Fellan_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Fellan_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Fellan_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Fellan_EXIT (C_INFO)
{
	npc		= Mod_574_NONE_Fellan_NW;
	nr		= 1;
	condition	= Info_Mod_Fellan_EXIT_Condition;
	information	= Info_Mod_Fellan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Fellan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Fellan_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
