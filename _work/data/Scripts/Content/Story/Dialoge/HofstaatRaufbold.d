INSTANCE Info_Mod_HofstaatRaufbold_Hi (C_INFO)
{
	npc		= Mod_7284_HS_Raufbold_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatRaufbold_Hi_Condition;
	information	= Info_Mod_HofstaatRaufbold_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatRaufbold_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatRaufbold_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_Hi_13_00"); //Witaj!

	AI_StopProcessInfos	(self);

	Mod_HS_Raufbold = 1;

	B_Attack	(self, hero, AR_None, 0);
};

INSTANCE Info_Mod_HofstaatRaufbold_KoenigSorge (C_INFO)
{
	npc		= Mod_7284_HS_Raufbold_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatRaufbold_KoenigSorge_Condition;
	information	= Info_Mod_HofstaatRaufbold_KoenigSorge_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatRaufbold_KoenigSorge_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatArsch_Drogenminister))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatRaufbold_KoenigSorge_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_KoenigSorge_13_00"); //Zatrzymaj sie, tutaj nie mozesz isc dalej. Król przez niepokojaca rzeke.
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_KoenigSorge_13_01"); //Nie chce byc zaklócany, zwlaszcza przez dziewczyne za wszystko.
	AI_Output(hero, self, "Info_Mod_HofstaatRaufbold_KoenigSorge_15_02"); //Królewska dziewczyna za wszystko, jesli moge zapytac, a ja nie jestem. Stalem sie królewskim zamachowcem!
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_KoenigSorge_13_03"); //Tak czy inaczej, nie mozna sie tu dostac, to królewski porzadek.
	AI_Output(hero, self, "Info_Mod_HofstaatRaufbold_KoenigSorge_15_04"); //Bilem cie raz wczesniej i ciesze sie, ze moge to zrobic jeszcze raz.
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_KoenigSorge_13_05"); //Spójrz, mam tylko trzy rózne narkotyki.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

INSTANCE Info_Mod_HofstaatRaufbold_KoenigHilfe (C_INFO)
{
	npc		= Mod_7284_HS_Raufbold_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatRaufbold_KoenigHilfe_Condition;
	information	= Info_Mod_HofstaatRaufbold_KoenigHilfe_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatRaufbold_KoenigHilfe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatKoenig_Sorge))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatRaufbold_KoenigHilfe_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_KoenigHilfe_13_00"); //Król niepokoi sie.... Musimy cos zrobic.
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_KoenigHilfe_13_01"); //Powinienes odwiedzic królewska wyrocznie, powie ci ona, jak sprawic, by król znów byl szczesliwy!
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_KoenigHilfe_13_02"); //Bede jechal rzeka, która sprawia, ze król jest smutny!
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_KoenigHilfe_13_03"); //Jedna z nas musi odniesc sukces i wierzcie mi, ta rzeka zyczy sobie, aby nigdy sie nie narodzila.

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Szorstka kark poradzila mi odwiedzic królewska wyrocznie. Zastanawiam sie, gdzie moge ja znalezc.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLUSSFIGHT");
};

INSTANCE Info_Mod_HofstaatRaufbold_Meer (C_INFO)
{
	npc		= Mod_7284_HS_Raufbold_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatRaufbold_Meer_Condition;
	information	= Info_Mod_HofstaatRaufbold_Meer_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatRaufbold_Meer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Meer_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatRaufbold_Meer_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_Meer_13_00"); //Ty wygrales/as..... Czy znalazles odpowiedz?
	AI_Output(hero, self, "Info_Mod_HofstaatRaufbold_Meer_15_01"); //Poczekaj chwile, jak wyszedles z rzeki?
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_Meer_13_02"); //Uratowala mnie rodzina wydrów! Ale to teraz nie ma znaczenia. Mówcie, co widzieliscie?
	AI_Output(hero, self, "Info_Mod_HofstaatRaufbold_Meer_15_03"); //bagno. W dawnym Minental. Twierdzil on, ze jest odpowiedzia.
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_Meer_13_04"); //Oczywiscie! Jest jasne jak swiatlo dzienne! Odpowiedzia jest bagno. Do czego tak naprawde?
	AI_Output(hero, self, "Info_Mod_HofstaatRaufbold_Meer_15_05"); //Król zyczyl sobie morza. Byc moze jest sposób na uczynienie bagna czescia panstwa.
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_Meer_13_06"); //PODEJMIEMY GO! Jesli to sprawi, ze król znów stanie sie szczesliwy, zabijemy wszystko to, co jest na drodze i zabierzemy z nami bagno.

	Info_ClearChoices	(Info_Mod_HofstaatRaufbold_Meer);

	Info_AddChoice	(Info_Mod_HofstaatRaufbold_Meer, "Rzeka powiedziala ci, ze masz zapach.", Info_Mod_HofstaatRaufbold_Meer_D);
	Info_AddChoice	(Info_Mod_HofstaatRaufbold_Meer, "Cokolwiek bierzesz, bierz mniej.... lub wiecej.", Info_Mod_HofstaatRaufbold_Meer_C);
	Info_AddChoice	(Info_Mod_HofstaatRaufbold_Meer, "Jak szybko mozna uciec z tego miejsca do miasta?", Info_Mod_HofstaatRaufbold_Meer_B);
	Info_AddChoice	(Info_Mod_HofstaatRaufbold_Meer, "Zamknij sie i pozwólcie mi to zrobic.", Info_Mod_HofstaatRaufbold_Meer_A);
};

FUNC VOID Info_Mod_HofstaatRaufbold_Meer_D()
{
	AI_Output(hero, self, "Info_Mod_HofstaatRaufbold_Meer_D_15_00"); //Rzeka powiedziala ci, ze masz zapach.
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_Meer_D_13_01"); //Jeszcze nie masz dosc, goddamn River?
	
	Info_ClearChoices	(Info_Mod_HofstaatRaufbold_Meer);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_HofstaatRaufbold_Meer_C()
{
	AI_Output(hero, self, "Info_Mod_HofstaatRaufbold_Meer_C_15_00"); //Cokolwiek bierzesz, bierz mniej.... lub wiecej.
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_Meer_C_13_01"); //Zaczne od razu!
	
	Info_ClearChoices	(Info_Mod_HofstaatRaufbold_Meer);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

FUNC VOID Info_Mod_HofstaatRaufbold_Meer_B()
{
	AI_Output(hero, self, "Info_Mod_HofstaatRaufbold_Meer_B_15_00"); //Jak szybko mozna uciec z tego miejsca do miasta? Biegaj na górze, zaoszczedze Ci czas!
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_Meer_B_13_01"); //Sadzisz, ze jestem tak glupi skaczac na cos takiego lub co?
	AI_Output(hero, self, "Info_Mod_HofstaatRaufbold_Meer_B_15_02"); //Jeden, dwa, dwa, trzy, cztery....
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_Meer_B_13_03"); //Jeszcze nie ucieklam!
	
	Info_ClearChoices	(Info_Mod_HofstaatRaufbold_Meer);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "RENNEN");
};

FUNC VOID Info_Mod_HofstaatRaufbold_Meer_A()
{
	AI_Output(hero, self, "Info_Mod_HofstaatRaufbold_Meer_A_15_00"); //Zamknij sie i pozwólcie mi to zrobic.
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_Meer_A_13_01"); //Co za zdumienie! Jako kara, musisz zrezygnowac z mojego dalszego towarzystwa!
	
	Info_ClearChoices	(Info_Mod_HofstaatRaufbold_Meer);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_HofstaatRaufbold_Pickpocket (C_INFO)
{
	npc		= Mod_7284_HS_Raufbold_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatRaufbold_Pickpocket_Condition;
	information	= Info_Mod_HofstaatRaufbold_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_HofstaatRaufbold_Pickpocket_Condition()
{
	C_Beklauen	(53, ItMi_Gold, 19);
};

FUNC VOID Info_Mod_HofstaatRaufbold_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HofstaatRaufbold_Pickpocket);

	Info_AddChoice	(Info_Mod_HofstaatRaufbold_Pickpocket, DIALOG_BACK, Info_Mod_HofstaatRaufbold_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HofstaatRaufbold_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HofstaatRaufbold_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HofstaatRaufbold_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HofstaatRaufbold_Pickpocket);
};

FUNC VOID Info_Mod_HofstaatRaufbold_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HofstaatRaufbold_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HofstaatRaufbold_Pickpocket);

		Info_AddChoice	(Info_Mod_HofstaatRaufbold_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HofstaatRaufbold_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HofstaatRaufbold_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HofstaatRaufbold_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HofstaatRaufbold_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HofstaatRaufbold_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HofstaatRaufbold_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HofstaatRaufbold_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HofstaatRaufbold_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HofstaatRaufbold_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HofstaatRaufbold_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HofstaatRaufbold_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HofstaatRaufbold_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HofstaatRaufbold_EXIT (C_INFO)
{
	npc		= Mod_7284_HS_Raufbold_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatRaufbold_EXIT_Condition;
	information	= Info_Mod_HofstaatRaufbold_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatRaufbold_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatRaufbold_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
