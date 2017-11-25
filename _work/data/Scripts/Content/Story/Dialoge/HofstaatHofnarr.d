INSTANCE Info_Mod_HofstaatHofnarr_Hi (C_INFO)
{
	npc		= Mod_7328_HS_Hofnarr_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatHofnarr_Hi_Condition;
	information	= Info_Mod_HofstaatHofnarr_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatHofnarr_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatArsch_OrakelTermin))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatHofnarr_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatHofnarr_Hi_27_00"); //Pozdrowienia, mój pot. Ten asshole opowiedzial mi o twoim przybyciu.
	AI_Output(hero, self, "Info_Mod_HofstaatHofnarr_Hi_15_01"); //Jestes Oracle? Myslalem, ze jestes blaznem dworskim.
	AI_Output(self, hero, "Info_Mod_HofstaatHofnarr_Hi_27_02"); //Tak wiec jestem ja.
	AI_Output(hero, self, "Info_Mod_HofstaatHofnarr_Hi_15_03"); //Jestes blaznem i wyrocznia?
	AI_Output(self, hero, "Info_Mod_HofstaatHofnarr_Hi_27_04"); //Ten jednooczy mezczyzna króluje posród niewidomych, ale medrzec jest glupcem wsród szalenców.
	AI_Output(hero, self, "Info_Mod_HofstaatHofnarr_Hi_15_05"); //Co masz na mysli?
	AI_Output(self, hero, "Info_Mod_HofstaatHofnarr_Hi_27_06"); //Ze kazda moneta ma dwie strony i nie mozna sie spodziewac tylko dlatego, ze glowa jest do znalezienia liczby ponizej.
	AI_Output(hero, self, "Info_Mod_HofstaatHofnarr_Hi_15_07"); //Czy to powiedzialas jeszcze o wyjezdzie?
	AI_Output(self, hero, "Info_Mod_HofstaatHofnarr_Hi_27_08"); //Oczywiscie nie, najpierw musi pan zadac swoje pytanie.
	AI_Output(hero, self, "Info_Mod_HofstaatHofnarr_Hi_15_09"); //Pewne, ze.... Moje pytanie. Szukam czegos, co sprawi, ze król znów bedzie szczesliwy.
	AI_Output(self, hero, "Info_Mod_HofstaatHofnarr_Hi_27_10"); //Oto Twoja odpowiedz.

	B_GiveInvItems	(self, hero, ItMi_Orakelpille, 1);

	AI_Output(hero, self, "Info_Mod_HofstaatHofnarr_Hi_15_11"); //Czy cukierki?
	AI_Output(self, hero, "Info_Mod_HofstaatHofnarr_Hi_27_12"); //Nazwijmy to pigulka drapiezna. Teraz, jesli mnie wybaczycie.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Oracle dal mi pigulke drapiezna. Powinnam ja polknac i zobaczyc, jak pomaga mi ona w rozwiazaniu mojego problemu.");
};

INSTANCE Info_Mod_HofstaatHofnarr_KingSorge (C_INFO)
{
	npc		= Mod_7328_HS_Hofnarr_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatHofnarr_KingSorge_Condition;
	information	= Info_Mod_HofstaatHofnarr_KingSorge_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatHofnarr_KingSorge_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatKoenig_Meer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatHofnarr_KingSorge_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatHofnarr_KingSorge_27_00"); //Widze, ze nie miales szczescia z Królem.
	AI_Output(hero, self, "Info_Mod_HofstaatHofnarr_KingSorge_15_01"); //Sadzisz, ze bagno nie bylo odpowiedzia?
	AI_Output(self, hero, "Info_Mod_HofstaatHofnarr_KingSorge_27_02"); //Byc moze jestem glupcem, ale bardzo powaznie podchodze do mojego zadania jako wyrocznia.
	AI_Output(self, hero, "Info_Mod_HofstaatHofnarr_KingSorge_27_03"); //Jezeli widziales bagno, to jest to równiez odpowiedz. Problem polega na tym, ze wlasnie go widziales, król uslyszal tylko o nim.
	AI_Output(self, hero, "Info_Mod_HofstaatHofnarr_KingSorge_27_04"); //Dam ci wskazówke, która nie wymaga polkniecia tabletek wyroczni. Idz do komnat królewskich, gdzie znajdziesz odpowiedz.

	AI_StopProcessInfos	(self);

	Wld_InsertItem	(ItWr_DMBildNotiz, "FP_ITEM_KOENIG_DMNACHRICHT");

	B_StartOtherRoutine	(self, "START");

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Problemem wydaje sie byc to, ze król nie widzial bagna. Rozwiazanie jest w komorze królewskiej, mówi blazen.");
};

INSTANCE Info_Mod_HofstaatHofnarr_Transportsystem (C_INFO)
{
	npc		= Mod_7328_HS_Hofnarr_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatHofnarr_Transportsystem_Condition;
	information	= Info_Mod_HofstaatHofnarr_Transportsystem_Info;
	permanent	= 0;
	important	= 0;
	description	= "Szukam przyjemnej drogi na bagna.";
};

FUNC INT Info_Mod_HofstaatHofnarr_Transportsystem_Condition()
{
	if (Mod_SL_Meer == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatHofnarr_Transportsystem_Info()
{
	AI_Output(hero, self, "Info_Mod_HofstaatHofnarr_Transportsystem_15_00"); //Szukam przyjemnej drogi na bagna.
	AI_Output(self, hero, "Info_Mod_HofstaatHofnarr_Transportsystem_27_01"); //Jestem po prostu prostym glupcem, nikogo, kto wam pomoze, mój drogi pot.
};

INSTANCE Info_Mod_HofstaatHofnarr_Pickpocket (C_INFO)
{
	npc		= Mod_7328_HS_Hofnarr_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatHofnarr_Pickpocket_Condition;
	information	= Info_Mod_HofstaatHofnarr_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_HofstaatHofnarr_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Freudenspender, 1);
};

FUNC VOID Info_Mod_HofstaatHofnarr_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HofstaatHofnarr_Pickpocket);

	Info_AddChoice	(Info_Mod_HofstaatHofnarr_Pickpocket, DIALOG_BACK, Info_Mod_HofstaatHofnarr_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HofstaatHofnarr_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HofstaatHofnarr_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HofstaatHofnarr_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HofstaatHofnarr_Pickpocket);
};

FUNC VOID Info_Mod_HofstaatHofnarr_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HofstaatHofnarr_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HofstaatHofnarr_Pickpocket);

		Info_AddChoice	(Info_Mod_HofstaatHofnarr_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HofstaatHofnarr_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HofstaatHofnarr_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HofstaatHofnarr_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HofstaatHofnarr_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HofstaatHofnarr_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HofstaatHofnarr_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HofstaatHofnarr_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HofstaatHofnarr_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HofstaatHofnarr_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HofstaatHofnarr_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HofstaatHofnarr_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HofstaatHofnarr_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HofstaatHofnarr_EXIT (C_INFO)
{
	npc		= Mod_7328_HS_Hofnarr_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatHofnarr_EXIT_Condition;
	information	= Info_Mod_HofstaatHofnarr_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatHofnarr_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatHofnarr_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
