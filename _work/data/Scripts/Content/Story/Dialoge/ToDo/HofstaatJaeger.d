INSTANCE Info_Mod_HofstaatJaeger_Hi (C_INFO)
{
	npc		= Mod_7289_HS_Jaeger_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatJaeger_Hi_Condition;
	information	= Info_Mod_HofstaatJaeger_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy jestes mysliwy?";
};

FUNC INT Info_Mod_HofstaatJaeger_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatBarde_Sporen))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Namib_Sporen))
	|| (Npc_KnowsInfo(hero, Info_Mod_Namib_Motivation)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatJaeger_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_00"); //Czy jestes mysliwy?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_01"); //No cóz, czy tak wygladam?
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_02"); //.... na pewno nie jestes zwyklym mysliwym....
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_03"); //AAAAAHA! Zlapalem cie! Pracujesz dla konwencji!
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_04"); //Konwencja? Co to jest?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_05"); //Wlasnie o to chcialem Cie poprosic, poniewaz pracujesz dla niej....
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_06"); //Czy jestes mysliwy, czy nie?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_07"); //Ach, wiesz, ze jesli uwazasz, ze to swietnie i mocno wierzysz, mozesz byc AAAAAAAALY wszystko, co chcesz.
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_08"); //Wszystko? Powiedz mi wtedy, czy jestes mysliwym, czy nie!
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_09"); //Szukasz wiec mysliwego? Nie ma go tutaj teraz.
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_10"); //Nie tutaj?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_11"); //Jop.
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_12"); //A gdzie on jest?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_13"); //Wakacje.
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_14"); //Kiedy wróci?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_15"); //W ogóle nie.
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_16"); //W ogóle nie?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_17"); //Jop.
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_18"); //...
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_19"); //(humbing)
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_20"); //Co masz na mysli?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_21"); //Jest na urlopie stalym.
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_22"); //Potem zostal wypuszczony na wolnosc?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_23"); //Gdyby zostal zwolniony, trudno by mu bylo miec urlop.
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_24"); //Och, zapomnij o tym.
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_25"); //Okay. Tak, jesli spotkasz mysliwego, powiedz mu to ode mnie:"Bananarama".
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_26"); //Bananarama?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_27"); //Kto ci to powiedzial?
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_28"); //Czy?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_29"); //Dlaczego powiedzialbym ci slowo kodowe?
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_30"); //No cóz, wiec moge powiedziec mysliwemu.
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_31"); //Witaj.
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_32"); //CO JEST Z TOBA?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_33"); //Nie stresowac mnie, jestem na wakacjach!
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_34"); //Masz napad..... Pozwólcie mi sie domyslic. Jestes mysliwym?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_35"); //A GDZIE TO WIESZ?
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_36"); //Uciac byk. Król mnie poslal.
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_37"); //Król! Czego chce?
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_38"); //Chce, zebys mi wskazal droge do sekretarza narkotyków.
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_39"); //Ah.... Cóz, przyjdzcie ze mna.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "DROGENMINISTER");

	if (Npc_KnowsInfo(hero, Info_Mod_Namib_Motivation))
	{
		B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Poszedlem zobaczyc mysliwego, a on jest gonna zabrac mnie do sekretarza narkotyków teraz.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Postanowilem pójsc na dwór królewski i odwiedzic mysliwego. To prowadzi mnie teraz do sekretarza narkotyków.");
	};
};

INSTANCE Info_Mod_HofstaatJaeger_Drogenminister (C_INFO)
{
	npc		= Mod_7289_HS_Jaeger_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatJaeger_Drogenminister_Condition;
	information	= Info_Mod_HofstaatJaeger_Drogenminister_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatJaeger_Drogenminister_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatJaeger_Hi))
	&& (Npc_GetDistToWP(self, "REL_301") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatJaeger_Drogenminister_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Drogenminister_09_00"); //Jestesmy tutaj!
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Drogenminister_15_01"); //To wlasnie tam mieszka sekretarz ds. narkotyków?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Drogenminister_09_02"); //Tak.
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Drogenminister_15_03"); //Jak sie tam dostac?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Drogenminister_09_04"); //Ach, chcesz byc po drugiej stronie?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Drogenminister_09_05"); //Wtedy mozna albo spróbowac tam dostac sie przez line i przelamac szyje, albo mozna udac sie do ministra równowagi i sam sie przeniesc.
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Drogenminister_15_06"); //A gdzie moge znalezc ministra równowagi?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Drogenminister_09_07"); //Zabiore cie tam.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GLEICHGEWICHTSMINISTER");

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Na szczycie w poblizu twierdzy mieszka Minister Narkotyków. Z tego wzgórza prowadzi do niego tylko sznur, ale bieganie nad nim byloby pewna smiercia. Lowca zabiera mnie do ministra równowagi, który mial mnie przejac.");
};

INSTANCE Info_Mod_HofstaatJaeger_Pickpocket (C_INFO)
{
	npc		= Mod_7289_HS_Jaeger_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatJaeger_Pickpocket_Condition;
	information	= Info_Mod_HofstaatJaeger_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_HofstaatJaeger_Pickpocket_Condition()
{
	C_Beklauen	(55, ItAt_Claw, 3);
};

FUNC VOID Info_Mod_HofstaatJaeger_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HofstaatJaeger_Pickpocket);

	Info_AddChoice	(Info_Mod_HofstaatJaeger_Pickpocket, DIALOG_BACK, Info_Mod_HofstaatJaeger_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HofstaatJaeger_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HofstaatJaeger_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HofstaatJaeger_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HofstaatJaeger_Pickpocket);
};

FUNC VOID Info_Mod_HofstaatJaeger_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HofstaatJaeger_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HofstaatJaeger_Pickpocket);

		Info_AddChoice	(Info_Mod_HofstaatJaeger_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HofstaatJaeger_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HofstaatJaeger_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HofstaatJaeger_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HofstaatJaeger_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HofstaatJaeger_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HofstaatJaeger_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HofstaatJaeger_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HofstaatJaeger_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HofstaatJaeger_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HofstaatJaeger_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HofstaatJaeger_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HofstaatJaeger_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HofstaatJaeger_EXIT (C_INFO)
{
	npc		= Mod_7289_HS_Jaeger_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatJaeger_EXIT_Condition;
	information	= Info_Mod_HofstaatJaeger_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatJaeger_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatJaeger_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
