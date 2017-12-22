INSTANCE Info_Mod_Hilda_Hi (C_INFO)
{
	npc		= Mod_909_BAU_Hilda_NW;
	nr		= 1;
	condition	= Info_Mod_Hilda_Hi_Condition;
	information	= Info_Mod_Hilda_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj, piekna kobieta.";
};

FUNC INT Info_Mod_Hilda_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hilda_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Hilda_Hi_15_00"); //Witaj, piekna kobieta.
	AI_Output(self, hero, "Info_Mod_Hilda_Hi_26_01"); //Czego chcesz?
	AI_Output(hero, self, "Info_Mod_Hilda_Hi_15_02"); //Dlaczego tak wrogosc?
	AI_Output(self, hero, "Info_Mod_Hilda_Hi_26_03"); //Rozpuszczony) Oh, ostatnio tak wielu obcych ludzi mija tutaj, ze nie wiesz nawet, co robisz.
	AI_Output(self, hero, "Info_Mod_Hilda_Hi_26_04"); //Nie wszystkie spotkania mialy przyjemna nature.
};

INSTANCE Info_Mod_Hilda_Argez (C_INFO)
{
	npc		= Mod_909_BAU_Hilda_NW;
	nr		= 1;
	condition	= Info_Mod_Hilda_Argez_Condition;
	information	= Info_Mod_Hilda_Argez_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kto tu jest?";
};

FUNC INT Info_Mod_Hilda_Argez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hilda_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hilda_Argez_Info()
{
	AI_Output(hero, self, "Info_Mod_Hilda_Argez_15_00"); //Kto tu jest?
	AI_Output(self, hero, "Info_Mod_Hilda_Argez_26_01"); //Wszyscy oni, od rozboju po paladyne i nie wiesz, kim sa teraz dobrzy mezczyzni i kim sa zli!
	AI_Output(self, hero, "Info_Mod_Hilda_Argez_26_02"); //Od tygodni banda rabusiów okradala okolice, a niektóre z naszych owiec okradala noca.
	AI_Output(self, hero, "Info_Mod_Hilda_Argez_26_03"); //Oczywiscie zadzwonilismy do nas z milicja, do nas dolaczyl oddzial wojskowy, który sluchal naszych problemów - a potem nic sie nie wydarzylo, obóz rozbojowy nie zostal odnaleziony lub atak byl zbyt grozny.
	AI_Output(self, hero, "Info_Mod_Hilda_Argez_26_04"); //Najwazniejsze bylo to, ze po wizycie milicjantów zabraklo wiecej rzeczy niz rabusi ukradli nam.
	AI_Output(self, hero, "Info_Mod_Hilda_Argez_26_05"); //To sa wszystkie brudne dranie, zadne z nich nie ma zadnej wartosci.
	AI_Output(self, hero, "Info_Mod_Hilda_Argez_26_06"); //I od czasu upadku zapory dawni skazani ciagle mijaja, ale milczec, poniewaz Lobart ma wielkie serce.
	AI_Output(self, hero, "Info_Mod_Hilda_Argez_26_07"); //Stalo sie to dla niego zbyt wiele tylko z tatuazem. Naprawde przestraszyl go.
	AI_Output(self, hero, "Info_Mod_Hilda_Argez_26_08"); //Prosil tylko o prace, ale w tak zabawny sposób, jakby w nastepnej chwili szalal.

	if (!Npc_KnowsInfo(hero, Info_Mod_Argez_NW_InCity))
	{
		AI_Output(self, hero, "Info_Mod_Hilda_Argez_26_09"); //Dalem mu zupe do wyjazdu, ale poniewaz prawdopodobnie nie zostal on wpuszczony do miasta, wciaz stoi na drodze przed polami.
		AI_Output(self, hero, "Info_Mod_Hilda_Argez_26_10"); //Jesli go wyprowadzisz, jestem pewien, ze moglismy spac lepiej.

		Log_CreateTopic	(TOPIC_MOD_HILDA_ARGEZ, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_HILDA_ARGEZ, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_HILDA_ARGEZ, "W drodze do bramy miasta, mówi sie, ze jest tam dziwny obcy obcy, którego Hilda, zona rolnika, obawia sie. Ona naprawde chcialaby, zeby sie z niego wydostal.");

		Mod_Hilda_Argez = 1;
	};
};

INSTANCE Info_Mod_Hilda_Argez2 (C_INFO)
{
	npc		= Mod_909_BAU_Hilda_NW;
	nr		= 1;
	condition	= Info_Mod_Hilda_Argez2_Condition;
	information	= Info_Mod_Hilda_Argez2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Obcy jest teraz w miescie.";
};

FUNC INT Info_Mod_Hilda_Argez2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_NW_InCity))
	&& (Mod_Hilda_Argez == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hilda_Argez2_Info()
{
	AI_Output(hero, self, "Info_Mod_Hilda_Argez2_15_00"); //Obcy jest teraz w miescie.
	AI_Output(self, hero, "Info_Mod_Hilda_Argez2_26_01"); //Dostaje ladunek z klatki piersiowej. Tutaj zjesc ciepla zupe.

	B_GiveInvItems	(self, hero, ItFo_Fleischeintopf, 1);

	B_GivePlayerXP	(50);

	CurrentNQ += 1;

		B_LogEntry	(TOPIC_MOD_HILDA_ARGEZ, "Powiedzialem Hildzie, ze Argez jest teraz w miescie. Teraz nalezy ja uspokoic.");
	B_SetTopicStatus	(TOPIC_MOD_HILDA_ARGEZ, LOG_SUCCESS);
};

INSTANCE Info_Mod_Hilda_Pickpocket (C_INFO)
{
	npc		= Mod_909_BAU_Hilda_NW;
	nr		= 1;
	condition	= Info_Mod_Hilda_Pickpocket_Condition;
	information	= Info_Mod_Hilda_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Hilda_Pickpocket_Condition()
{
	C_Beklauen	(45, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Hilda_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Hilda_Pickpocket);

	Info_AddChoice	(Info_Mod_Hilda_Pickpocket, DIALOG_BACK, Info_Mod_Hilda_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Hilda_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Hilda_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Hilda_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Hilda_Pickpocket);
};

FUNC VOID Info_Mod_Hilda_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Hilda_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Hilda_Pickpocket);

		Info_AddChoice	(Info_Mod_Hilda_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Hilda_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Hilda_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Hilda_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Hilda_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Hilda_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Hilda_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Hilda_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Hilda_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Hilda_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Hilda_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Hilda_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Hilda_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Hilda_EXIT (C_INFO)
{
	npc		= Mod_909_BAU_Hilda_NW;
	nr		= 1;
	condition	= Info_Mod_Hilda_EXIT_Condition;
	information	= Info_Mod_Hilda_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hilda_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hilda_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
