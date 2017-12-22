INSTANCE Info_Mod_Gritta_Hi (C_INFO)
{
	npc		= Mod_580_NONE_Gritta_NW;
	nr		= 1;
	condition	= Info_Mod_Gritta_Hi_Condition;
	information	= Info_Mod_Gritta_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Gritta_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gritta_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Gritta_Hi_43_01"); //Jestem Gritta.
};

INSTANCE Info_Mod_Gritta_ThorbenLehrling (C_INFO)
{
	npc		= Mod_580_NONE_Gritta_NW;
	nr		= 1;
	condition	= Info_Mod_Gritta_ThorbenLehrling_Condition;
	information	= Info_Mod_Gritta_ThorbenLehrling_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gritta_ThorbenLehrling_Condition()
{
	if (Mod_Thorben_KO == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gritta_ThorbenLehrling_Info()
{
	AI_Output(self, hero, "Info_Mod_Gritta_ThorbenLehrling_43_00"); //Chcesz zobaczyc Thorben, czy nie?
	AI_Output(hero, self, "Info_Mod_Gritta_ThorbenLehrling_15_01"); //Tak..... Czy jest cos zlego?
	AI_Output(self, hero, "Info_Mod_Gritta_ThorbenLehrling_43_02"); //On.... Wyglada to zle. Lekarz uwaza, ze to byl udar i obudzi sie.
	AI_Output(self, hero, "Info_Mod_Gritta_ThorbenLehrling_43_03"); //Nikt jednak nie wie, ile pamieci traci.
	AI_Output(hero, self, "Info_Mod_Gritta_ThorbenLehrling_15_04"); //Przykro mi to slyszec. Czy jest cos, co moge dla niego zrobic?
	AI_Output(self, hero, "Info_Mod_Gritta_ThorbenLehrling_43_05"); //Jestes jego uczniem, czy nie? Jestem pewien, ze bedzie wdzieczny za maly domowy prezent.
	AI_Output(hero, self, "Info_Mod_Gritta_ThorbenLehrling_15_06"); //Pomysle o czyms. Teraz nalezy zachowac ostroznosc.

	Log_CreateTopic	(TOPIC_MOD_LEHRLING_THORBEN_FOUR, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_THORBEN_FOUR, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_LEHRLING_THORBEN_FOUR, "Thorben mocno go uderzyl. Jego siostrzenica mysli, ze bylby szczesliwy, gdyby otrzymal prezent. Cóz, to troche kiczowate, ale jesli pomaga..... Powinienem jeszcze raz poprosic Brahima o rysunek. Nawet jesli nie chce robic tego sam, moze mnie przekazac.");
};

INSTANCE Info_Mod_Gritta_ThorbenLehrling2 (C_INFO)
{
	npc		= Mod_580_NONE_Gritta_NW;
	nr		= 1;
	condition	= Info_Mod_Gritta_ThorbenLehrling2_Condition;
	information	= Info_Mod_Gritta_ThorbenLehrling2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gritta_ThorbenLehrling2_Condition()
{
	if (Mod_Thorben_Geschenk == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gritta_ThorbenLehrling2_Info()
{
	AI_Output(self, hero, "Info_Mod_Gritta_ThorbenLehrling2_43_00"); //Masz prezent dla wujka?
	AI_Output(hero, self, "Info_Mod_Gritta_ThorbenLehrling2_15_01"); //Tak. Czy jest swiadomy?
	AI_Output(self, hero, "Info_Mod_Gritta_ThorbenLehrling2_43_02"); //Od ostatniej nocy. Juz teraz czuje sie lepiej i wydaje mu sie, ze wszystko pamieta. Przynies mu swój prezent.
};

INSTANCE Info_Mod_Gritta_Shakir (C_INFO)
{
	npc		= Mod_580_NONE_Gritta_NW;
	nr		= 1;
	condition	= Info_Mod_Gritta_Shakir_Condition;
	information	= Info_Mod_Gritta_Shakir_Info;
	permanent	= 0;
	important	= 0;
	description	= "Innos, powitanie. Jak sie czujesz?";
};

FUNC INT Info_Mod_Gritta_Shakir_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jana_Shakir))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gritta_Shakir_Info()
{
	AI_Output(hero, self, "Info_Mod_Gritta_Shakir_15_00"); //Innos, powitanie. Jak sie czujesz?
	AI_Output(self, hero, "Info_Mod_Gritta_Shakir_43_01"); //Zle. Kto o to pyta?
	AI_Output(hero, self, "Info_Mod_Gritta_Shakir_15_02"); //Zwyciezca.
	AI_Output(self, hero, "Info_Mod_Gritta_Shakir_43_03"); //Chcesz mnie poslubic? Dlaczego?
	AI_Output(hero, self, "Info_Mod_Gritta_Shakir_15_04"); //Nie ten jeden. Mówia, ze lubisz piekne ubrania.
	AI_Output(self, hero, "Info_Mod_Gritta_Shakir_43_05"); //Tak wlasnie rozumiem. Masz jakies?
	AI_Output(hero, self, "Info_Mod_Gritta_Shakir_15_06"); //Nie. Móglbym cie jednak przekonac. Drobna tkanina, elegancki krój, najlepsza jakosc.
	AI_Output(self, hero, "Info_Mod_Gritta_Shakir_43_07"); //Daj mi ja! Czego oczekujesz?
	AI_Output(hero, self, "Info_Mod_Gritta_Shakir_15_08"); //Po prostu uprzejmosc. Mój dobry przyjaciel chce byc z kobieta.
	AI_Output(hero, self, "Info_Mod_Gritta_Shakir_15_09"); //Ma przytulne zakwaterowanie poza miastem....
	AI_Output(self, hero, "Info_Mod_Gritta_Shakir_43_10"); //Widze. Kiedy dostaje kawalek?
	AI_Output(hero, self, "Info_Mod_Gritta_Shakir_15_11"); //Mój przyjaciel ci ja przekaze.

	B_LogEntry	(TOPIC_MOD_ASS_SHAKIR_FRAU, "Móglbym 'wynajac' Gritte. Dostala ja sukienke od krawca w Khoracie i dala do Shakiru.");
};

INSTANCE Info_Mod_Gritta_Shakir2 (C_INFO)
{
	npc		= Mod_580_NONE_Gritta_NW;
	nr		= 1;
	condition	= Info_Mod_Gritta_Shakir2_Condition;
	information	= Info_Mod_Gritta_Shakir2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj! Dostalem to, czego chciales.";
};

FUNC INT Info_Mod_Gritta_Shakir2_Condition()
{
	if (Mod_ASS_Gritta == 0)
	&& (Mod_ASS_Schneider == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gritta_Shakir2_Info()
{
	AI_Output(hero, self, "Info_Mod_Gritta_Shakir2_15_00"); //Witaj! Dostalem to, czego chciales.
	AI_Output(self, hero, "Info_Mod_Gritta_Shakir2_43_01"); //Nowy strój?
	AI_Output(hero, self, "Info_Mod_Gritta_Shakir2_15_02"); //Oczywiscie. Haute couture z porazki gejów.
	AI_Output(self, hero, "Info_Mod_Gritta_Shakir2_43_03"); //Tak, i? Przynajmniej ci ludzie maja dobry smak.
	AI_Output(hero, self, "Info_Mod_Gritta_Shakir2_15_04"); //Cokolwiek mówisz. Idzmy dalej.

	Mod_ASS_Gritta = 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWTOSHAKIR");

	B_LogEntry	(TOPIC_MOD_ASS_SHAKIR_FRAU, "Zabrac ja do jaskini i powiedziec Shakir.");
};

INSTANCE Info_Mod_Gritta_Shakir3 (C_INFO)
{
	npc		= Mod_580_NONE_Gritta_NW;
	nr		= 1;
	condition	= Info_Mod_Gritta_Shakir3_Condition;
	information	= Info_Mod_Gritta_Shakir3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gritta_Shakir3_Condition()
{
	if (Mod_ASS_Gritta == 1)
	&& (Npc_GetDistToWP(hero, "NW_CITY_SMFOREST_05") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gritta_Shakir3_Info()
{
	AI_Output(self, hero, "Info_Mod_Gritta_Shakir3_43_00"); //Zadzwonisz do tego komfortowego zakwaterowania?
	AI_Output(hero, self, "Info_Mod_Gritta_Shakir3_15_01"); //No cóz, tak. W kazdym razie nie przeszkadza Ci to. To równiez ladne i cieple.
	AI_Output(self, hero, "Info_Mod_Gritta_Shakir3_43_02"); //A gdzie jest Twój dobry przyjaciel?
	AI_Output(hero, self, "Info_Mod_Gritta_Shakir3_15_03"); //Daje mu znac. Nazywa sie Shakir. W miedzyczasie, jesli tylko zechcesz, wlac troche wina.
	AI_Output(self, hero, "Info_Mod_Gritta_Shakir3_43_04"); //A mój strój?
	AI_Output(hero, self, "Info_Mod_Gritta_Shakir3_15_05"); //Przyniesie.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATSHAKIR");
};

INSTANCE Info_Mod_Gritta_Flugblaetter (C_INFO)
{
	npc		= Mod_580_NONE_Gritta_NW;
	nr		= 1;
	condition	= Info_Mod_Gritta_Flugblaetter_Condition;
	information	= Info_Mod_Gritta_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam dla Ciebie ulotke.";
};

FUNC INT Info_Mod_Gritta_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&&(!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Gritta_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gritta_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Gritta_Flugblaetter_43_01"); //(skutki) Hmm, Matteo ma piekne ubrania, ale nie sadze.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Gritta_Pickpocket (C_INFO)
{
	npc		= Mod_580_NONE_Gritta_NW;
	nr		= 1;
	condition	= Info_Mod_Gritta_Pickpocket_Condition;
	information	= Info_Mod_Gritta_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Gritta_Pickpocket_Condition()
{
	C_Beklauen	(36, ItMi_Gold, 19);
};

FUNC VOID Info_Mod_Gritta_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Gritta_Pickpocket);

	Info_AddChoice	(Info_Mod_Gritta_Pickpocket, DIALOG_BACK, Info_Mod_Gritta_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Gritta_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Gritta_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Gritta_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Gritta_Pickpocket);
};

FUNC VOID Info_Mod_Gritta_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Gritta_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Gritta_Pickpocket);

		Info_AddChoice	(Info_Mod_Gritta_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Gritta_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Gritta_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Gritta_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Gritta_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Gritta_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Gritta_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Gritta_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Gritta_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Gritta_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Gritta_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Gritta_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Gritta_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Gritta_EXIT (C_INFO)
{
	npc		= Mod_580_NONE_Gritta_NW;
	nr		= 1;
	condition	= Info_Mod_Gritta_EXIT_Condition;
	information	= Info_Mod_Gritta_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gritta_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gritta_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
