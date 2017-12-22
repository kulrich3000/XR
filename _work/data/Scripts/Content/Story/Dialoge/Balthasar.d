INSTANCE Info_Mod_Balthasar_Hi (C_INFO)
{
	npc		= Mod_101_BAU_Balthasar_NW;
	nr		= 1;
	condition	= Info_Mod_Balthasar_Hi_Condition;
	information	= Info_Mod_Balthasar_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Balthasar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Balthasar_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Balthasar_Hi_01_01"); //Jestem Balthazar i tu jestem pasterzem.
};

INSTANCE Info_Mod_Balthasar_Untier (C_INFO)
{
	npc		= Mod_101_BAU_Balthasar_NW;
	nr		= 1;
	condition	= Info_Mod_Balthasar_Untier_Condition;
	information	= Info_Mod_Balthasar_Untier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nie zdarzylo sie, ze ostatnio nie spotkales sie z drapieznikiem, który.....";
};

FUNC INT Info_Mod_Balthasar_Untier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Balthasar_Hi))
	&& (Mod_Cronos_Artefakt == 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_Artefakt_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Balthasar_Untier_Info()
{
	AI_Output(hero, self, "Info_Mod_Balthasar_Untier_15_00"); //Nie zdarzylo sie, ze ostatnio nie spotkales sie z drapieznikiem, który.....
	AI_Output(self, hero, "Info_Mod_Balthasar_Untier_01_01"); //Tak, to chce powiedziec. Zaledwie dwa dni temu trudno bylo mi przetrwac na skórze.
	AI_Output(self, hero, "Info_Mod_Balthasar_Untier_01_02"); //Bylo wczesnie rano, wlasnie wstalem i popedzilem owce na pastwisko, gdy uslyszalem halas za stodola.
	AI_Output(self, hero, "Info_Mod_Balthasar_Untier_01_03"); //Ciekawe i zmartwione, wyciagnalem pistolet i poszedlem w jego poszukiwaniu.
	AI_Output(self, hero, "Info_Mod_Balthasar_Untier_01_04"); //Kiedy jednak wyszedlem za stodole, wstrzymal sie mój oddech: na wszystkich czworakach i syczac we mnie stala ludzka bestia.
	AI_Output(self, hero, "Info_Mod_Balthasar_Untier_01_05"); //Jeszcze zanim zdolalem nadrobic cios, skoczyla na mnie i moja bron spadla na ziemie.

	Info_ClearChoices	(Info_Mod_Balthasar_Untier);

	Info_AddChoice	(Info_Mod_Balthasar_Untier, "Nie mam teraz zbyt wiele czasu na rozmowy.", Info_Mod_Balthasar_Untier_B);
	Info_AddChoice	(Info_Mod_Balthasar_Untier, "(wiecej)", Info_Mod_Balthasar_Untier_A);
};

FUNC VOID Info_Mod_Balthasar_Untier_C()
{
	AI_Output(hero, self, "Info_Mod_Balthasar_Untier_C_15_00"); //Dziekuje, to wszystko, co chcialem wiedziec.
	
	Info_ClearChoices	(Info_Mod_Balthasar_Untier);

	B_LogEntry	(TOPIC_MOD_ADANOS_NOVIZE, "Balthasar doniósl, ze zostal zaatakowany przez bestie, która nastepnie skierowala sie w strone tawerny.");

	B_GivePlayerXP	(100);
};

FUNC VOID Info_Mod_Balthasar_Untier_B()
{
	AI_Output(hero, self, "Info_Mod_Balthasar_Untier_B_15_00"); //Nie mam teraz zbyt wiele czasu na rozmowy. Znika ponownie? Jesli tak, to gdzie.
	AI_Output(self, hero, "Info_Mod_Balthasar_Untier_B_01_01"); //Uh, tak, dotarl do tawerny Orlana.
	
	Info_Mod_Balthasar_Untier_C();
};

FUNC VOID Info_Mod_Balthasar_Untier_A()
{
	AI_Output(self, hero, "Info_Mod_Balthasar_Untier_A_01_00"); //Stalo ponad mna wygieta i chciala siegnac do zgryzienia, kiedy szybko chwycilem jego glowe i scisnalem ja.
	AI_Output(self, hero, "Info_Mod_Balthasar_Untier_A_01_01"); //Tak, jako pasterz musisz byc w stanie dzialac szybko, gdy ma to znaczenie.
	AI_Output(self, hero, "Info_Mod_Balthasar_Untier_A_01_02"); //Druga reka uderzylem go piesciami i w koncu wcisnalem go palcami w oczy, po czym herbatalem i wbiegl w kierunku tawerny Orlana.
	
	Info_Mod_Balthasar_Untier_C();
};

INSTANCE Info_Mod_Balthasar_Unheil (C_INFO)
{
	npc		= Mod_101_BAU_Balthasar_NW;
	nr		= 1;
	condition	= Info_Mod_Balthasar_Unheil_Condition;
	information	= Info_Mod_Balthasar_Unheil_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy cos niezwyklego wydarzylo sie ostatnio?";
};

FUNC INT Info_Mod_Balthasar_Unheil_Condition()
{
	if (Mod_WM_Boeden == 14)
	|| (Mod_WM_Boeden == 13)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Balthasar_Unheil_Info()
{
	AI_Output(hero, self, "Info_Mod_Balthasar_Unheil_15_00"); //Czy cos niezwyklego wydarzylo sie ostatnio?
	AI_Output(self, hero, "Info_Mod_Balthasar_Unheil_01_01"); //(nieco moroniczny) Tak, rzeczywiscie. Wokól cmentarza biegna okropne nieumarli.
	AI_Output(self, hero, "Info_Mod_Balthasar_Unheil_01_02"); //Moje owce nie czuja sie obecnie tak dobrze. Niektóre z nich zaczely nawet byc kiepskie.

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Owce Balthazara sa chropowate.");

	Mod_HinweiseDerBauernZuHexen += 1;
};

INSTANCE Info_Mod_Balthasar_Hirte (C_INFO)
{
	npc		= Mod_101_BAU_Balthasar_NW;
	nr		= 1;
	condition	= Info_Mod_Balthasar_Hirte_Condition;
	information	= Info_Mod_Balthasar_Hirte_Info;
	permanent	= 0;
	important	= 0;
	description	= "Sekob uwaza, ze masz dla mnie cos do zrobienia.";
};

FUNC INT Info_Mod_Balthasar_Hirte_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sekob_Bauer))
	&& (Npc_KnowsInfo(hero, Info_Mod_Balthasar_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Balthasar_Hirte_Info()
{
	AI_Output(hero, self, "Info_Mod_Balthasar_Hirte_15_00"); //Sekob uwaza, ze masz dla mnie cos do zrobienia.
	AI_Output(self, hero, "Info_Mod_Balthasar_Hirte_01_01"); //Mozna bylo ogladac owce przez minute, bo ja musze jechac.
	AI_Output(self, hero, "Info_Mod_Balthasar_Hirte_01_02"); //Daj mi znac, kiedy bedziesz gotowy.

	Log_CreateTopic	(TOPIC_MOD_BALTHASAR_SCHAFE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BALTHASAR_SCHAFE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BALTHASAR_SCHAFE, "Mialem zadbac o jego owce dla Balthasara, a on sam sie od niego odciaza.");
};

INSTANCE Info_Mod_Balthasar_Bereit (C_INFO)
{
	npc		= Mod_101_BAU_Balthasar_NW;
	nr		= 1;
	condition	= Info_Mod_Balthasar_Bereit_Condition;
	information	= Info_Mod_Balthasar_Bereit_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dobrze, jestem gotowy.";
};

FUNC INT Info_Mod_Balthasar_Bereit_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Balthasar_Hirte))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Balthasar_Bereit_Info()
{
	AI_Output(hero, self, "Info_Mod_Balthasar_Bereit_15_00"); //Dobrze, jestem gotowy.
	AI_Output(self, hero, "Info_Mod_Balthasar_Bereit_01_01"); //Z cala prawda, jestem poza nia.

	AI_StopProcessInfos	(self);

	Mdl_ApplyOverlayMds	(self, "HUMANS_FLEE.MDS");

	Npc_ExchangeRoutine	(self, "WOLF");
};

INSTANCE Info_Mod_Balthasar_Wolf (C_INFO)
{
	npc		= Mod_101_BAU_Balthasar_NW;
	nr		= 1;
	condition	= Info_Mod_Balthasar_Wolf_Condition;
	information	= Info_Mod_Balthasar_Wolf_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Balthasar_Wolf_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Balthasar_Bereit))
	&& (Mod_Balthasar_Wolf == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Balthasar_Wolf_Info()
{
	AI_Output(self, hero, "Info_Mod_Balthasar_Wolf_01_00"); //Co wydarzylo sie tutaj w piekle?
	AI_Output(hero, self, "Info_Mod_Balthasar_Wolf_15_01"); //Pakiet wilków zaatakowal mnie zaraz po wyjezdzie. Ale moglem je zatrzymac.
	AI_Output(self, hero, "Info_Mod_Balthasar_Wolf_01_02"); //Dziekuje, co bym zrobil bez Ciebie?
	AI_Output(self, hero, "Info_Mod_Balthasar_Wolf_01_03"); //Wez te monety jako podziekowania.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_BALTHASAR_SCHAFE, "Balthasar jest z mnie zadowolony.");
	B_SetTopicStatus	(TOPIC_MOD_BALTHASAR_SCHAFE, LOG_SUCCESS);

	Mdl_RemoveOverlayMDS (self,"HUMANS_FLEE.MDS");

	B_Göttergefallen(1, 1);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Balthasar_Pickpocket (C_INFO)
{
	npc		= Mod_101_BAU_Balthasar_NW;
	nr		= 1;
	condition	= Info_Mod_Balthasar_Pickpocket_Condition;
	information	= Info_Mod_Balthasar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Balthasar_Pickpocket_Condition()
{
	C_Beklauen	(10, ItMi_Gold, 12);
};

FUNC VOID Info_Mod_Balthasar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Balthasar_Pickpocket);

	Info_AddChoice	(Info_Mod_Balthasar_Pickpocket, DIALOG_BACK, Info_Mod_Balthasar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Balthasar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Balthasar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Balthasar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Balthasar_Pickpocket);
};

FUNC VOID Info_Mod_Balthasar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Balthasar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Balthasar_Pickpocket);

		Info_AddChoice	(Info_Mod_Balthasar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Balthasar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Balthasar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Balthasar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Balthasar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Balthasar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Balthasar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Balthasar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Balthasar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Balthasar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Balthasar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Balthasar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Balthasar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Balthasar_EXIT (C_INFO)
{
	npc		= Mod_101_BAU_Balthasar_NW;
	nr		= 1;
	condition	= Info_Mod_Balthasar_EXIT_Condition;
	information	= Info_Mod_Balthasar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Balthasar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Balthasar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
