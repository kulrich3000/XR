INSTANCE Info_Mod_Bronko_Hi (C_INFO)
{
	npc		= Mod_103_BAU_Bronko_NW;
	nr		= 1;
	condition	= Info_Mod_Bronko_Hi_Condition;
	information	= Info_Mod_Bronko_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bronko_Hi_Condition()
{
	if (!Npc_IsDead(Mod_541_NONE_Till_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bronko_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Bronko_Hi_11_00"); //Tam dostales minute?
	AI_Output(hero, self, "Info_Mod_Bronko_Hi_15_01"); //Oczywiscie tak jest.
	AI_Output(self, hero, "Info_Mod_Bronko_Hi_11_02"); //Powiedz Till, aby przeniesc jego tylek na pole. Caly dzien robi przerwe.

	AI_StopProcessInfos	(self);

	Log_CreateTopic	(TOPIC_MOD_BRONKO_STREIT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BRONKO_STREIT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BRONKO_STREIT, "Widocznie konczy sie koniec pracy Tilla. Zobaczmy, co ma do powiedzenia.");
};

INSTANCE Info_Mod_Bronko_Streit02 (C_INFO)
{
	npc		= Mod_103_BAU_Bronko_NW;
	nr		= 1;
	condition	= Info_Mod_Bronko_Streit02_Condition;
	information	= Info_Mod_Bronko_Streit02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do tej pory nakazal ci zrobic to samemu.";
};

FUNC INT Info_Mod_Bronko_Streit02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Till_Bronko))
	&& (!Npc_IsDead(Mod_541_NONE_Till_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bronko_Streit02_Info()
{
	AI_Output(hero, self, "Info_Mod_Bronko_Streit02_15_00"); //Do tej pory nakazal ci zrobic to samemu.
	AI_Output(self, hero, "Info_Mod_Bronko_Streit02_11_01"); //Najpierw powinien oczyscic nos!

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_BRONKO_STREIT, "Niech najpierw oczysci nos.");
};

INSTANCE Info_Mod_Bronko_Streit03 (C_INFO)
{
	npc		= Mod_103_BAU_Bronko_NW;
	nr		= 1;
	condition	= Info_Mod_Bronko_Streit03_Condition;
	information	= Info_Mod_Bronko_Streit03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do tej pory zastanawiasz sie, czy mozesz dodac jedna i druga razem.";
};

FUNC INT Info_Mod_Bronko_Streit03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Till_Bronko02))
	&& (!Npc_IsDead(Mod_541_NONE_Till_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bronko_Streit03_Info()
{
	AI_Output(hero, self, "Info_Mod_Bronko_Streit03_15_00"); //Do tej pory zastanawiasz sie, czy mozesz dodac jedna i druga razem.
	AI_Output(self, hero, "Info_Mod_Bronko_Streit03_11_01"); //Oczywiscie moge! To sa.... um, jedenascie. Powiedz mu to.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_BRONKO_STREIT, "Bronko polozyl razem jeden i jeden i wymyslil jedenascie.");
};

INSTANCE Info_Mod_Bronko_Streit04 (C_INFO)
{
	npc		= Mod_103_BAU_Bronko_NW;
	nr		= 1;
	condition	= Info_Mod_Bronko_Streit04_Condition;
	information	= Info_Mod_Bronko_Streit04_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce powiedziec, ze jestes synem suki.";
};

FUNC INT Info_Mod_Bronko_Streit04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Till_Bronko03))
	&& (!Npc_IsDead(Mod_541_NONE_Till_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bronko_Streit04_Info()
{
	AI_Output(hero, self, "Info_Mod_Bronko_Streit04_15_00"); //Chce powiedziec, ze jestes synem suki.
	AI_Output(self, hero, "Info_Mod_Bronko_Streit04_11_01"); //Lubie to? Czy jest to od Till? Bedzie mial klopoty. Powiedz mu to.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_BRONKO_STREIT, "Musze powiedziec, ze Till jest w klopotach.");
};

INSTANCE Info_Mod_Bronko_Ambient (C_INFO)
{
	npc		= Mod_103_BAU_Bronko_NW;
	nr		= 1;
	condition	= Info_Mod_Bronko_Ambient_Condition;
	information	= Info_Mod_Bronko_Ambient_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jaka prace wykonales/as dzisiaj?";
};

FUNC INT Info_Mod_Bronko_Ambient_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Till_Bronko04))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bronko_Ambient_Info()
{
	AI_Output(hero, self, "Info_Mod_Bronko_Ambient_15_00"); //Jaka prace wykonales/as dzisiaj?
	AI_Output(self, hero, "Info_Mod_Bronko_Ambient_11_01"); //Og�lnie rzecz biorac, zapewniam tutaj pok�j i bezpieczenstwo. Wymaga to mojej stalej uwagi.
};

INSTANCE Info_Mod_Bronko_Ambient01 (C_INFO)
{
	npc		= Mod_103_BAU_Bronko_NW;
	nr		= 1;
	condition	= Info_Mod_Bronko_Ambient01_Condition;
	information	= Info_Mod_Bronko_Ambient01_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bronko_Ambient01_Condition()
{
	if ((hero.guild == GIL_PAL)
	|| (hero.guild == GIL_VLK))
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bronko_Ambient01_Info()
{
	AI_Output(self, hero, "Info_Mod_Bronko_Ambient01_11_00"); //To dla nas zaszczyt powitac tak wierna wizyte w naszej skromnej farmie.
	AI_Output(self, hero, "Info_Mod_Bronko_Ambient01_11_01"); //Moze bys mial dobroc bronic nas przed drapieznymi najemnikami?

	Info_ClearChoices	(Info_Mod_Bronko_Ambient01);

	Info_AddChoice	(Info_Mod_Bronko_Ambient01, "M�dlcie sie do Innos, a on wam pomoze.", Info_Mod_Bronko_Ambient01_B);
	Info_AddChoice	(Info_Mod_Bronko_Ambient01, "Jaki jest problem?", Info_Mod_Bronko_Ambient01_A);
};

FUNC VOID Info_Mod_Bronko_Ambient01_B()
{
	AI_Output(hero, self, "Info_Mod_Bronko_Ambient01_B_15_00"); //M�dlcie sie do Innos, a on wam pomoze.

	Info_ClearChoices	(Info_Mod_Bronko_Ambient01);
};

FUNC VOID Info_Mod_Bronko_Ambient01_A()
{
	AI_Output(hero, self, "Info_Mod_Bronko_Ambient01_A_15_00"); //Jaki jest problem?
	AI_Output(self, hero, "Info_Mod_Bronko_Ambient01_A_11_01"); //Te oszolomy zjadaja wszystko, co uprawiamy. Trzeba polozyc temu kres!
	AI_Output(hero, self, "Info_Mod_Bronko_Ambient01_A_15_02"); //Czy powinienem wiec usunac farme Onar?
	AI_Output(self, hero, "Info_Mod_Bronko_Ambient01_A_11_03"); //Nie, nie, nie musimy isc tak daleko. Wystarczy, ze najemnicy nie znajda u nas juz wiecej zapas�w.
	AI_Output(self, hero, "Info_Mod_Bronko_Ambient01_A_11_04"); //Na p�lnoc od jeziora w drodze do tawerny Orlanu znajduje sie jaskinia.
	AI_Output(self, hero, "Info_Mod_Bronko_Ambient01_A_11_05"); //W duzym obszarze wejsciowym wlozymy te piec work�w na make do duzego wejscia, a na razie bedziemy nam pomagac.

	B_GiveInvItems	(self, hero, ItMi_Mehlsack_Bronko, 5);

	Log_CreateTopic	(TOPIC_MOD_BRONKO_MEHLSACK, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BRONKO_MEHLSACK, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BRONKO_MEHLSACK, "Bronko von Sekobs Hof powierzyl mi worki na make, kt�re mialem umiescic w strefie wejscia do jaskini na p�lnoc od jeziora w drodze do tawerny Orlanu.");

	Mod_BronkoMehlsack = 1;

	Info_ClearChoices	(Info_Mod_Bronko_Ambient01);
};

INSTANCE Info_Mod_Bronko_Ambient02 (C_INFO)
{
	npc		= Mod_103_BAU_Bronko_NW;
	nr		= 1;
	condition	= Info_Mod_Bronko_Ambient02_Condition;
	information	= Info_Mod_Bronko_Ambient02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bronko_Ambient02_Condition()
{
	if (Mod_BronkoMehlsack > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bronko_Ambient02_Info()
{
	if (Mod_BronkoMehlsack == 2)
	{
		AI_Output(self, hero, "Info_Mod_Bronko_Ambient02_11_00"); //Czy jestes gotowy? Teraz moga przyjsc wl�czedzy. (smiertelnicy)
		AI_Output(self, hero, "Info_Mod_Bronko_Ambient02_11_01"); //Wykonal pan dobra prace.

		B_GivePlayerXP	(100);

		B_G�ttergefallen (1, 1);

		B_SetTopicStatus	(TOPIC_MOD_BRONKO_MEHLSACK, LOG_SUCCESS);

		CurrentNQ += 1;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Bronko_Ambient02_11_02"); //Co myslisz, ze robisz? Wydaje mi sie, ze nie widzisz jak biegniesz prosto do Pennerhofu Onar' s?
		AI_Output(self, hero, "Info_Mod_Bronko_Ambient02_11_03"); //Nie mozna juz nawet polegac na Innosie?

		B_SetTopicStatus	(TOPIC_MOD_BRONKO_MEHLSACK, LOG_FAILED);
	};
};

INSTANCE Info_Mod_Bronko_Lehrer (C_INFO)
{
	npc		= Mod_103_BAU_Bronko_NW;
	nr		= 1;
	condition	= Info_Mod_Bronko_Lehrer_Condition;
	information	= Info_Mod_Bronko_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie czegos nauczyc?";
};

FUNC INT Info_Mod_Bronko_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bronko_Hi))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bronko_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Bronko_Lehrer_11_00"); //No c�z, dostalem dosc dobry cios. Moze pomoze wam troche mocniejszy.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_BAUERN, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_BAUERN, "Bronko moze mi pom�c wzmocnic sie.");
};

INSTANCE Info_Mod_Bronko_Lernen (C_INFO)
{
	npc		= Mod_103_BAU_Bronko_NW;
	nr		= 1;
	condition	= Info_Mod_Bronko_Lernen_Condition;
	information	= Info_Mod_Bronko_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Pokaz mi, jak sie poteguje.";
};

FUNC INT Info_Mod_Bronko_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bronko_Lehrer))
	&& (hero.attribute[ATR_STRENGTH] < 100)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bronko_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Bronko_Lernen_15_00"); //Pokaz mi, jak byc silniejszym.

	Info_ClearChoices	(Info_Mod_Bronko_Lernen);

	Info_AddChoice	(Info_Mod_Bronko_Lernen, DIALOG_BACK, Info_Mod_Bronko_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Bronko_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Bronko_Lernen_5);
	Info_AddChoice	(Info_Mod_Bronko_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Bronko_Lernen_1);
};

FUNC VOID Info_Mod_Bronko_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Bronko_Lernen);
};

FUNC VOID Info_Mod_Bronko_Lernen_5()
{
	B_TeachAttributePoints_New	(self, hero, ATR_STRENGTH, 5, 100);
	
	Info_ClearChoices	(Info_Mod_Bronko_Lernen);

	Info_AddChoice	(Info_Mod_Bronko_Lernen, DIALOG_BACK, Info_Mod_Bronko_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Bronko_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Bronko_Lernen_5);
	Info_AddChoice	(Info_Mod_Bronko_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Bronko_Lernen_1);
};

FUNC VOID Info_Mod_Bronko_Lernen_1()
{
	B_TeachAttributePoints	(self, hero, ATR_STRENGTH, 1, 100);

	Info_ClearChoices	(Info_Mod_Bronko_Lernen);

	Info_AddChoice	(Info_Mod_Bronko_Lernen, DIALOG_BACK, Info_Mod_Bronko_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Bronko_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Bronko_Lernen_5);
	Info_AddChoice	(Info_Mod_Bronko_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Bronko_Lernen_1);
};

INSTANCE Info_Mod_Bronko_Pickpocket (C_INFO)
{
	npc		= Mod_103_BAU_Bronko_NW;
	nr		= 1;
	condition	= Info_Mod_Bronko_Pickpocket_Condition;
	information	= Info_Mod_Bronko_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Bronko_Pickpocket_Condition()
{
	C_Beklauen	(15, ItMi_Gold, 11);
};

FUNC VOID Info_Mod_Bronko_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bronko_Pickpocket);

	Info_AddChoice	(Info_Mod_Bronko_Pickpocket, DIALOG_BACK, Info_Mod_Bronko_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bronko_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bronko_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bronko_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bronko_Pickpocket);
};

FUNC VOID Info_Mod_Bronko_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bronko_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bronko_Pickpocket);

		Info_AddChoice	(Info_Mod_Bronko_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bronko_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bronko_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bronko_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bronko_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bronko_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bronko_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bronko_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bronko_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bronko_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bronko_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bronko_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bronko_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bronko_EXIT (C_INFO)
{
	npc		= Mod_103_BAU_Bronko_NW;
	nr		= 1;
	condition	= Info_Mod_Bronko_EXIT_Condition;
	information	= Info_Mod_Bronko_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bronko_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bronko_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
