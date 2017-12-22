INSTANCE Info_Mod_Grom_Hi (C_INFO)
{
	npc		= Mod_766_NONE_Grom_NW;
	nr		= 1;
	condition	= Info_Mod_Grom_Hi_Condition;
	information	= Info_Mod_Grom_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi.";
};

FUNC INT Info_Mod_Grom_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Grom_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Grom_Hi_15_00"); //Hi.
	AI_Output(self, hero, "Info_Mod_Grom_Hi_08_01"); //Hi.
};

INSTANCE Info_Mod_Grom_WhoAreYou (C_INFO)
{
	npc		= Mod_766_NONE_Grom_NW;
	nr		= 1;
	condition	= Info_Mod_Grom_WhoAreYou_Condition;
	information	= Info_Mod_Grom_WhoAreYou_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy jestes Gromem?";
};

FUNC INT Info_Mod_Grom_WhoAreYou_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Grom_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grom_WhoAreYou_Info()
{
	AI_Output(hero, self, "Info_Mod_Grom_WhoAreYou_15_00"); //Czy jestes Gromem?
	AI_Output(self, hero, "Info_Mod_Grom_WhoAreYou_08_01"); //Tak..... czego chcesz?
};

INSTANCE Info_Mod_Grom_Dragomir (C_INFO)
{
	npc		= Mod_766_NONE_Grom_NW;
	nr		= 1;
	condition	= Info_Mod_Grom_Dragomir_Condition;
	information	= Info_Mod_Grom_Dragomir_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dragomir mnie poslal.";
};

FUNC INT Info_Mod_Grom_Dragomir_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Grom_WhoAreYou))
	&& (Npc_KnowsInfo(hero, Info_Mod_Dragomir_Mitmachen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grom_Dragomir_Info()
{
	AI_Output(hero, self, "Info_Mod_Grom_Dragomir_15_00"); //Ja powinienem zapytac Dragomira, czy dowiedziales sie czegos nowego o okolicy.
	AI_Output(self, hero, "Info_Mod_Grom_Dragomir_08_01"); //Teraz pozwala nawet poczatkujacym biec przez lasy, nieprawdopodobny. Ale jesli jest to absolutnie konieczne....
	AI_Output(hero, self, "Info_Mod_Grom_Dragomir_15_02"); //Tak, trzeba to zrobic. Teraz powiedz mi, co wiesz. Dzis chce pójsc dalej.
	AI_Output(self, hero, "Info_Mod_Grom_Dragomir_08_03"); //Nie, do tej pory niewiele nowych wiadomosci. Leniwi najemnicy czaja sie tu przez caly czas i maltretowali kazda gre w promieniu kilku mil.
	AI_Output(self, hero, "Info_Mod_Grom_Dragomir_08_04"); //Ostatnio jednak grabieze wydaja sie byc bardziej agresywne niz zwykle.
	AI_Output(self, hero, "Info_Mod_Grom_Dragomir_08_05"); //Dalej ida na pola i atakuja chlopów, co jest zalem najemników.
	AI_Output(self, hero, "Info_Mod_Grom_Dragomir_08_06"); //(smiech zabrudzony) To tam znów podnosza swoje osly.

	B_LogEntry	(TOPIC_MOD_JG_JAGDGEBIETE, "Nie ma nic nowego w Gromie, poza tym, ze grabieze sa bardziej agresywne niz zwykle.");
};

INSTANCE Info_Mod_Grom_WerBistDu (C_INFO)
{
	npc		= Mod_766_NONE_Grom_NW;
	nr		= 1;
	condition	= Info_Mod_Grom_KeinBock_Condition;
	information	= Info_Mod_Grom_KeinBock_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nie bardzo sie to tu podoba.";
};

FUNC INT Info_Mod_Grom_KeinBock_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Grom_WhoAreYou))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grom_KeinBock_Info()
{
	AI_Output(hero, self, "Info_Mod_Grom_KeinBock_15_00"); //Nie bardzo sie to tu podoba.
	AI_Output(self, hero, "Info_Mod_Grom_KeinBock_08_01"); //Nie, nie mozna tego powiedziec. Ten nieswiadomy ksiaze moze tylko rozpuscic usta i podeptac wszystko, co napotka, jak stado tlustych moleratów.
	AI_Output(self, hero, "Info_Mod_Grom_KeinBock_08_02"); //Czy widziales kiedys jedna z ich jaskin? Obrzydliwy!
};

INSTANCE Info_Mod_Grom_Sauhaufen (C_INFO)
{
	npc		= Mod_766_NONE_Grom_NW;
	nr		= 1;
	condition	= Info_Mod_Grom_Sauhaufen_Condition;
	information	= Info_Mod_Grom_Sauhaufen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tak, tu prawdziwa turnia.";
};

FUNC INT Info_Mod_Grom_Sauhaufen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Grom_WerBistDu))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grom_Sauhaufen_Info()
{
	AI_Output(hero, self, "Info_Mod_Grom_Sauhaufen_15_00"); //Tak, tu prawdziwa turnia.
	AI_Output(self, hero, "Info_Mod_Grom_Sauhaufen_08_01"); //Hm, powiedzmy, czy nie jestes zainteresowany malym zadaniem?
	AI_Output(hero, self, "Info_Mod_Grom_Sauhaufen_15_02"); //Zalezy od niego.
	AI_Output(self, hero, "Info_Mod_Grom_Sauhaufen_08_03"); //Chcialem spojrzec na sekretne magazyny najemników, ale ogladali jak smok przed jego komora. Chce, zebys jej cos dal..... rozproszenie uwagi.

	Info_ClearChoices	(Info_Mod_Grom_Sauhaufen);

	Info_AddChoice	(Info_Mod_Grom_Sauhaufen, "Nie, nie sadze, ze tak nie jest.", Info_Mod_Grom_Sauhaufen_Nein);
	Info_AddChoice	(Info_Mod_Grom_Sauhaufen, "Dzwieki niebezpieczne.", Info_Mod_Grom_Sauhaufen_Ja);
};

FUNC VOID Info_Mod_Grom_Sauhaufen_Nein()
{
	AI_Output(hero, self, "Info_Mod_Grom_Sauhaufen_Nein_15_00"); //Nie, nie sadze, ze tak nie jest.
	AI_Output(self, hero, "Info_Mod_Grom_Sauhaufen_Nein_08_01"); //Wtedy nie powstrzymaj mnie juz dluzej.

	Info_ClearChoices	(Info_Mod_Grom_Sauhaufen);
};

FUNC VOID Info_Mod_Grom_Sauhaufen_Ja()
{
	AI_Output(hero, self, "Info_Mod_Grom_Sauhaufen_Ja_15_00"); //Dzwieki niebezpieczne.
	AI_Output(self, hero, "Info_Mod_Grom_Sauhaufen_Ja_08_01"); //Nie. Posluchaj. Wystarczy wlac ten padlinozerca uziemienie do gulasz Theklas, jesli nikt nie patrzy.

	B_GiveInvItems	(self, hero, ItMi_Scavengerdung, 1);

	AI_Output(self, hero, "Info_Mod_Grom_Sauhaufen_Ja_08_02"); //najemnicy jedza z niej kazdego wieczoru i dostaniesz mnóstwo skurczów zoladkowych, na które mozesz liczyc.
	AI_Output(self, hero, "Info_Mod_Grom_Sauhaufen_Ja_08_03"); //Nie obawiam sie, jak to robisz, po prostu nie wolno im nic slyszec. Jesli to konieczne, spróbuj to w nocy, obornik nie boli, jesli moze ciagnac przez dlugi czas.

	if (Npc_HasItems(hero, ItMi_Pan) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Grom_Sauhaufen_Ja_08_04"); //Oto kolejna patelnia.

		B_GiveInvItems	(self, hero, ItMi_Pan, 1);
	};

	AI_Output(hero, self, "Info_Mod_Grom_Sauhaufen_Ja_15_05"); //Oczywiscie wkrótce wróce.

	Log_CreateTopic	(TOPIC_MOD_JG_DUNG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_DUNG, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_DUNG, "Hunter Grom chce obejrzec spizarnie najemników. Mam mieszac Scavengerdung w gulas Theklas.");

	Info_ClearChoices	(Info_Mod_Grom_Sauhaufen);
};

INSTANCE Info_Mod_Grom_DungDrin (C_INFO)
{
	npc		= Mod_766_NONE_Grom_NW;
	nr		= 1;
	condition	= Info_Mod_Grom_DungDrin_Condition;
	information	= Info_Mod_Grom_DungDrin_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tym razem nie powinienes miec zadnych problemów.";
};

FUNC INT Info_Mod_Grom_DungDrin_Condition()
{
	if (Npc_KnowsInfo(hero, PC_Herd_Scavengerdung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grom_DungDrin_Info()
{
	AI_Output(hero, self, "Info_Mod_Grom_DungDrin_15_00"); //Tym razem nie powinienes miec zadnych problemów.
	AI_Output(self, hero, "Info_Mod_Grom_DungDrin_08_01"); //Hej, dzieki Tobie. Moze sie myle co do Pana. Naprawde masz racje.
	AI_Output(self, hero, "Info_Mod_Grom_DungDrin_08_02"); //Oto jakas nagroda za zloto.

	B_GivePlayerXP	(100);

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	B_Göttergefallen(3, 1);

	B_LogEntry	(TOPIC_MOD_JG_DUNG, "Powiedzialem Gromowi, ze moze teraz rozejrzec sie po magazynach.");
	B_SetTopicStatus	(TOPIC_MOD_JG_DUNG, LOG_SUCCESS);
};

INSTANCE Info_Mod_Grom_Untier (C_INFO)
{
	npc		= Mod_766_NONE_Grom_NW;
	nr		= 1;
	condition	= Info_Mod_Grom_Untier_Condition;
	information	= Info_Mod_Grom_Untier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ostatnio widziales cos niezwyklego?";
};

FUNC INT Info_Mod_Grom_Untier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Grom_Hi))
	&& (Mod_Cronos_Artefakt == 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_Artefakt_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grom_Untier_Info()
{
	AI_Output(hero, self, "Info_Mod_Grom_Untier_15_00"); //Ostatnio widziales cos niezwyklego?
	AI_Output(self, hero, "Info_Mod_Grom_Untier_08_01"); //Hmm, nie, tak jak zwykle. Duzo drewna do pracy i dwa trolle.
};

INSTANCE Info_Mod_Grom_Pickpocket (C_INFO)
{
	npc		= Mod_766_NONE_Grom_NW;
	nr		= 1;
	condition	= Info_Mod_Grom_Pickpocket_Condition;
	information	= Info_Mod_Grom_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Grom_Pickpocket_Condition()
{
	C_Beklauen	(60, ItAt_LurkerSkin, 2);
};

FUNC VOID Info_Mod_Grom_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Grom_Pickpocket);

	Info_AddChoice	(Info_Mod_Grom_Pickpocket, DIALOG_BACK, Info_Mod_Grom_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Grom_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Grom_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Grom_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Grom_Pickpocket);
};

FUNC VOID Info_Mod_Grom_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Grom_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Grom_Pickpocket);

		Info_AddChoice	(Info_Mod_Grom_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Grom_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Grom_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Grom_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Grom_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Grom_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Grom_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Grom_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Grom_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Grom_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Grom_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Grom_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Grom_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Grom_EXIT (C_INFO)
{
	npc		= Mod_766_NONE_Grom_NW;
	nr		= 1;
	condition	= Info_Mod_Grom_EXIT_Condition;
	information	= Info_Mod_Grom_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Grom_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Grom_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
