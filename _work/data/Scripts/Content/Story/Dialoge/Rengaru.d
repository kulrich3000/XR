INSTANCE Info_Mod_Rengaru_Hi (C_INFO)
{
	npc		= Mod_748_NONE_Rengaru_NW;
	nr		= 1;
	condition	= Info_Mod_Rengaru_Hi_Condition;
	information	= Info_Mod_Rengaru_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Rengaru_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Rengaru_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Rengaru_Hi_07_01"); //Czego od mnie oczekujesz?
};

INSTANCE Info_Mod_Rengaru_Dieb (C_INFO)
{
	npc		= Mod_748_NONE_Rengaru_NW;
	nr		= 1;
	condition	= Info_Mod_Rengaru_Dieb_Condition;
	information	= Info_Mod_Rengaru_Dieb_Info;
	permanent	= 0;
	important	= 0;
	description	= "(Pokaz znak zlodziejstwa)";
};

FUNC INT Info_Mod_Rengaru_Dieb_Condition()
{
	if (Diebe_Dabei == TRUE)
	&& (Npc_KnowsInfo(hero, Info_Mod_Rengaru_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rengaru_Dieb_Info()
{
	AI_PlayAni (hero, "T_YES");
	AI_Output(self, hero, "Info_Mod_Rengaru_Dieb_07_00"); //Wiec jestes z nami? C�z, moge nauczyc cie akrobatyki.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_STADT, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_STADT, "Rengaru moze nauczyc mnie akrobatyki.");
};

INSTANCE Info_Mod_Rengaru_Milizangriff (C_INFO)
{
	npc		= Mod_748_NONE_Rengaru_NW;
	nr		= 1;
	condition	= Info_Mod_Rengaru_Milizangriff_Condition;
	information	= Info_Mod_Rengaru_Milizangriff_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Rengaru_Milizangriff_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Rengaru_Dieb))
	&& (Npc_KnowsInfo(hero, Info_Mod_Ramirez_Bandenchef))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Ramirez_Flucht))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rengaru_Milizangriff_Info()
{
	AI_Output(self, hero, "Info_Mod_Rengaru_Milizangriff_07_00"); //Szukalismy dla Ciebie wszystkiego.
	AI_Output(hero, self, "Info_Mod_Rengaru_Milizangriff_15_01"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Rengaru_Milizangriff_07_02"); //Milicja wdarla sie do kanalizacji.
	AI_Output(hero, self, "Info_Mod_Rengaru_Milizangriff_15_03"); //Dlaczego wiec szukasz mnie?
	AI_Output(self, hero, "Info_Mod_Rengaru_Milizangriff_07_04"); //Attyla w wiezieniu, a ja slyszalem, ze wyjela pani caly gang.
	AI_Output(hero, self, "Info_Mod_Rengaru_Milizangriff_15_05"); //Widze, ze nie mam innej mozliwosci.

	Wld_InsertNpc	(Mod_1893_MIL_Miliz_NW,	"NW_CITY_KANAL_16");
	Wld_InsertNpc	(Mod_1894_MIL_Miliz_NW,	"NW_CITY_KANAL_16");

	Log_CreateTopic	(TOPIC_MOD_DIEB_MILIZANGRIFF, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DIEB_MILIZANGRIFF, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_DIEB_MILIZANGRIFF, "Rengaru powiedzial mi, ze milicja wlamala sie do kanal�w. Musze je wyjac.");
};

INSTANCE Info_Mod_Rengaru_Lernen (C_INFO)
{
	npc		= Mod_748_NONE_Rengaru_NW;
	nr		= 1;
	condition	= Info_Mod_Rengaru_Lernen_Condition;
	information	= Info_Mod_Rengaru_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Akrobatyka uczenia sie (5 LP)";
};

FUNC INT Info_Mod_Rengaru_Lernen_Condition()
{
	Info_Mod_Rengaru_Lernen.description = B_BuildLearnString("Akrobatyka uczenia sie", B_GetLearnCostTalent(hero, NPC_TALENT_ACROBAT, 1));

	if (Npc_KnowsInfo(hero, Info_Mod_Rengaru_Dieb))
	&& (Npc_GetTalentSkill (hero, NPC_TALENT_ACROBAT) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rengaru_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Rengaru_Lernen_15_00"); //Naucz mnie akrobatyki.

	if (B_TeachThiefTalent (self, hero, NPC_TALENT_ACROBAT))
	{
		AI_Output(self, hero, "Info_Mod_Rengaru_Lernen_07_01"); //Jesli kontrolujesz swoje cialo, bedziesz m�gl przeskoczyc znacznie dalej.
		AI_Output(self, hero, "Info_Mod_Rengaru_Lernen_07_02"); //Nauczysz sie sam sie nawijac i ladujesz prawidlowo od jesieni. Pamietaj jednak, ze nie jestes niesmiertelny!
		AI_Output(self, hero, "Info_Mod_Rengaru_Lernen_07_03"); //R�wniez w walce z akrobatyka jest bardzo pomocne. Mozesz szybko zmienic dystans do przeciwnika. Powodzenia!
	};
};

INSTANCE Info_Mod_Rengaru_Flugblaetter (C_INFO)
{
	npc		= Mod_748_NONE_Rengaru_NW;
	nr		= 1;
	condition	= Info_Mod_Rengaru_Flugblaetter_Condition;
	information	= Info_Mod_Rengaru_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam dla Ciebie ulotke.";
};

FUNC INT Info_Mod_Rengaru_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&&(!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Rengaru_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rengaru_Flugblaetter_Info()
{
	AI_Output(hero, self, "Info_Mod_Rengaru_Flugblaetter_15_00"); //Mam dla Ciebie ulotke.

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Rengaru_Flugblaetter_07_01"); //Dziekuje, dziekuje. Zobaczmy jak.....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Rengaru_Flugblaetter_07_02"); //Ah tak. Moze zatrzymam sie przy Matteo' s.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Rengaru_Pickpocket (C_INFO)
{
	npc		= Mod_748_NONE_Rengaru_NW;
	nr		= 1;
	condition	= Info_Mod_Rengaru_Pickpocket_Condition;
	information	= Info_Mod_Rengaru_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Rengaru_Pickpocket_Condition()
{
	C_Beklauen	(58, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_Rengaru_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Rengaru_Pickpocket);

	Info_AddChoice	(Info_Mod_Rengaru_Pickpocket, DIALOG_BACK, Info_Mod_Rengaru_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Rengaru_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Rengaru_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Rengaru_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Rengaru_Pickpocket);
};

FUNC VOID Info_Mod_Rengaru_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Rengaru_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Rengaru_Pickpocket);

		Info_AddChoice	(Info_Mod_Rengaru_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Rengaru_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Rengaru_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Rengaru_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Rengaru_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Rengaru_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Rengaru_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Rengaru_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Rengaru_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Rengaru_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Rengaru_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Rengaru_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Rengaru_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Rengaru_EXIT (C_INFO)
{
	npc		= Mod_748_NONE_Rengaru_NW;
	nr		= 1;
	condition	= Info_Mod_Rengaru_EXIT_Condition;
	information	= Info_Mod_Rengaru_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Rengaru_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Rengaru_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
