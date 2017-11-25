INSTANCE Info_Mod_Opolos_Daemonisch (C_INFO)
{
	npc		= Mod_923_NOV_Opolos_NW;
	nr		= 1;
	condition	= Info_Mod_Opolos_Daemonisch_Condition;
	information	= Info_Mod_Opolos_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Opolos_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Babo_Daemonisch2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Opolos_Drachenangriff))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Opolos_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Opolos_Daemonisch_31_00"); //Hmm, tak Babo, bardzo szybko sie odzyskal. Wystarczy troche swiezego powietrza, a on sie zmienil.
	AI_Output(hero, self, "Info_Mod_Opolos_Daemonisch_15_01"); //Uzyskac swieze powietrze? Co myslisz?
	AI_Output(self, hero, "Info_Mod_Opolos_Daemonisch_31_02"); //Cóz, mysle, ze inni nowicjusze zachecili go do spaceru. I wtedy byl tak dobry jak nowy....
	AI_Output(self, hero, "Info_Mod_Opolos_Daemonisch_31_03"); //Tak, tak, tak, chlopaki wyszli ostatnio duzo, jakis rodzaj tawerny czy miasta.
	AI_Output(self, hero, "Info_Mod_Opolos_Daemonisch_31_04"); //Ale musze tu pozostac i zajac sie owcami. No cóz, przynajmniej choroba zoladka nie przylapala mnie.
	AI_Output(hero, self, "Info_Mod_Opolos_Daemonisch_15_05"); //Choroba zoladka?
	AI_Output(self, hero, "Info_Mod_Opolos_Daemonisch_31_06"); //Tak, niektórzy nowicjusze maja problemy z zoladkiem juz od kilku dni i nie moga nic zjesc.
	AI_Output(self, hero, "Info_Mod_Opolos_Daemonisch_31_07"); //Oni nawet nie toleruja na razie wina klasztoru po modlitwie.
	AI_Output(self, hero, "Info_Mod_Opolos_Daemonisch_31_08"); //Lekko wycienczony z powodu zaistnialej sytuacji i zdolny do wykonywania tylko lekkich zadan, jak np. spraw.

	B_GivePlayerXP	(200);

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Uh-huh. Mówi sie, ze krótki wieczorny spacer pomógl Babo w powrocie na nogi, do czego zachecali go inni nowicjusze. W miedzyczasie choroba zoladka uniemozliwia wielu nowicjuszom spozywanie wina klasztornego. Mówi sie, ze maja zauwazalnie zmniejszona mase ciala, mówi Opolos.");
};

INSTANCE Info_Mod_Opolos_Drachenangriff (C_INFO)
{
	npc		= Mod_923_NOV_Opolos_NW;
	nr		= 1;
	condition	= Info_Mod_Opolos_Drachenangriff_Condition;
	information	= Info_Mod_Opolos_Drachenangriff_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj, co tu robisz?";
};

FUNC INT Info_Mod_Opolos_Drachenangriff_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragon_Kloster))
	&& (Mod_NL_DragonKloster == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Opolos_Drachenangriff_Info()
{
	AI_Output(hero, self, "Info_Mod_Opolos_Drachenangriff_15_00"); //Witaj, co tu robisz? Czy nie powinienes odrobic pracy domowej w klasztorze?
	AI_Output(self, hero, "Info_Mod_Opolos_Drachenangriff_31_01"); //Moje obowiazki!
	AI_Output(self, hero, "Info_Mod_Opolos_Drachenangriff_31_02"); //Kiedy horda demonów przyszla na nasz klasztor, wszystkie owce, które mialem chronic, zostaly zjedzone.
	AI_Output(self, hero, "Info_Mod_Opolos_Drachenangriff_31_03"); //Zostalem teraz wyrzucony z klasztoru, poniewaz oskarzono mnie, ze nie wypelnialem tego zadania wystarczajaco sumiennie.
	AI_Output(self, hero, "Info_Mod_Opolos_Drachenangriff_31_04"); //(krótka pauza) Oh, Innos wydaje sie byc bardzo daleko w te ciemne dni.
};

INSTANCE Info_Mod_Opolos_Unkraut (C_INFO)
{
	npc		= Mod_923_NOV_Opolos_NW;
	nr		= 1;
	condition	= Info_Mod_Opolos_Unkraut_Condition;
	information	= Info_Mod_Opolos_Unkraut_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Opolos_Unkraut_Condition()
{
	if (Npc_HasItems(hero, ItPl_Unkraut_Gorax) == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Opolos_Unkraut_Info()
{
	AI_Output(self, hero, "Info_Mod_Opolos_Unkraut_31_00"); //Hej, jak widzialem, wyrwaliscie wszystkie chwasty wokól winorosli.
	AI_Output(hero, self, "Info_Mod_Opolos_Unkraut_15_01"); //Tak, dlaczego?
	AI_Output(self, hero, "Info_Mod_Opolos_Unkraut_31_02"); //Cóz, poniewaz bardzo dobrze smakuja z moja owca. Jak widac, na lace nie ma chwastów.
	AI_Output(self, hero, "Info_Mod_Opolos_Unkraut_31_03"); //Oczywiscie nie moglem ich wyslac do winorosli, bo w przeciwnym razie zjedliby je.
	AI_Output(self, hero, "Info_Mod_Opolos_Unkraut_31_04"); //Ale od czasu, gdy je wszystkie wyryles....
	AI_Output(hero, self, "Info_Mod_Opolos_Unkraut_15_05"); //Oczywiscie, nie potrzebuje ich..... tu masz ja.

	B_GiveInvItems	(hero, self, ItPl_Unkraut_Gorax, 8);

	AI_Output(self, hero, "Info_Mod_Opolos_Unkraut_31_06"); //Wspanialy.

	AI_GotoNpc	(self, Sheep_Opolos_01);

	AI_TurnToNpc	(self, Sheep_Opolos_01);

	AI_PlayAni	(self, "T_PLUNDER");

	AI_GotoNpc	(self, hero);

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Opolos_Unkraut_31_07"); //Tak, podoba im sie...... Dziekuje, dziekuje.

	B_GivePlayerXP	(80);
};

INSTANCE Info_Mod_Opolos_Pickpocket (C_INFO)
{
	npc		= Mod_923_NOV_Opolos_NW;
	nr		= 1;
	condition	= Info_Mod_Opolos_Pickpocket_Condition;
	information	= Info_Mod_Opolos_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Opolos_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 17);
};

FUNC VOID Info_Mod_Opolos_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Opolos_Pickpocket);

	Info_AddChoice	(Info_Mod_Opolos_Pickpocket, DIALOG_BACK, Info_Mod_Opolos_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Opolos_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Opolos_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Opolos_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Opolos_Pickpocket);
};

FUNC VOID Info_Mod_Opolos_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Opolos_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Opolos_Pickpocket);

		Info_AddChoice	(Info_Mod_Opolos_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Opolos_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Opolos_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Opolos_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Opolos_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Opolos_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Opolos_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Opolos_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Opolos_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Opolos_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Opolos_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Opolos_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Opolos_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Opolos_EXIT (C_INFO)
{
	npc		= Mod_923_NOV_Opolos_NW;
	nr		= 1;
	condition	= Info_Mod_Opolos_EXIT_Condition;
	information	= Info_Mod_Opolos_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Opolos_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Opolos_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
