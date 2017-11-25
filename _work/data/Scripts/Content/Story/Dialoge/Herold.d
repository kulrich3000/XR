INSTANCE Info_Mod_Herold_Hi (C_INFO)
{
	npc		= Mod_7238_OUT_Herold_NW;
	nr		= 1;
	condition	= Info_Mod_Herold_Hi_Condition;
	information	= Info_Mod_Herold_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Herold_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Herold_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Herold_Hi_04_01"); //Jestem Herald. Moim zadaniem jest tu oglaszanie wiadomosci.
};

INSTANCE Info_Mod_Herold_Flugblaetter (C_INFO)
{
	npc		= Mod_7238_OUT_Herold_NW;
	nr		= 1;
	condition	= Info_Mod_Herold_Flugblaetter_Condition;
	information	= Info_Mod_Herold_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostalem tutaj ulotke. Czy nie mozna na to naglosnic?";
};

FUNC INT Info_Mod_Herold_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Herold_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Herold_Flugblaetter_Info()
{
	AI_Output(hero, self, "Info_Mod_Herold_Flugblaetter_15_00"); //Dostalem tutaj ulotke. Czy nie mozna na to naglosnic?

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Herold_Flugblaetter_04_01"); //Zobaczmy jak.....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Herold_Flugblaetter_04_02"); //Matteo oferuje ser w ofercie? Wlasciwie na chwile zaprezentuje oferte.

	Mod_Flugblaetter += 1;
	
	B_GivePlayerXP(50);
};

INSTANCE Info_Mod_Herold_Verbrecher (C_INFO)
{
	npc		= Mod_7238_OUT_Herold_NW;
	nr		= 1;
	condition	= Info_Mod_Herold_Verbrecher_Condition;
	information	= Info_Mod_Herold_Verbrecher_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nalezy zlozyc oswiadczenie.";
};

FUNC INT Info_Mod_Herold_Verbrecher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Herold_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Andre_Kerze))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Herold_Verbrecher_Info()
{
	AI_Output(hero, self, "Info_Mod_Herold_Verbrecher_15_00"); //Nalezy zlozyc oswiadczenie.
	AI_Output(self, hero, "Info_Mod_Herold_Verbrecher_04_01"); //Co o tym chodzi?
	AI_Output(hero, self, "Info_Mod_Herold_Verbrecher_15_02"); //Wczoraj wieczorem niebezpieczny maniak w kolorowym kostiumie z kolnierzem szachowym zamordowal czterech milicji.
	AI_Output(hero, self, "Info_Mod_Herold_Verbrecher_15_03"); //Nalezy o tym uprzedzic mieszkanców miasteczka.
	AI_Output(self, hero, "Info_Mod_Herold_Verbrecher_04_04"); //To okropne. Ciesze sie, ze przyszedles do mnie z tym.

	B_LogEntry	(TOPIC_MOD_PAL_BOT, "Jej zwiastun popedzi mieszkanców szalenstwa Khorini. Teraz wróccie do Pana Andre' a.");
};

INSTANCE Info_Mod_Herold_Pickpocket (C_INFO)
{
	npc		= Mod_7238_OUT_Herold_NW;
	nr		= 1;
	condition	= Info_Mod_Herold_Pickpocket_Condition;
	information	= Info_Mod_Herold_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Herold_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 18);
};

FUNC VOID Info_Mod_Herold_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Herold_Pickpocket);

	Info_AddChoice	(Info_Mod_Herold_Pickpocket, DIALOG_BACK, Info_Mod_Herold_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Herold_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Herold_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Herold_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Herold_Pickpocket);
};

FUNC VOID Info_Mod_Herold_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Herold_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Herold_Pickpocket);

		Info_AddChoice	(Info_Mod_Herold_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Herold_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Herold_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Herold_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Herold_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Herold_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Herold_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Herold_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Herold_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Herold_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Herold_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Herold_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Herold_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Herold_EXIT (C_INFO)
{
	npc		= Mod_7238_OUT_Herold_NW;
	nr		= 1;
	condition	= Info_Mod_Herold_EXIT_Condition;
	information	= Info_Mod_Herold_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Herold_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Herold_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
