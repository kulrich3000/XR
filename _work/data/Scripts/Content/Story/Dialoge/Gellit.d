INSTANCE Info_Mod_Gellit_Hi (C_INFO)
{
	npc		= Mod_1953_EIS_Gellit_EIS;
	nr		= 1;
	condition	= Info_Mod_Gellit_Hi_Condition;
	information	= Info_Mod_Gellit_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gellit_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tondral_Ken))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gellit_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Gellit_Hi_26_00"); //Kim jestes i skad jestes?
	AI_Output(hero, self, "Info_Mod_Gellit_Hi_15_01"); //Jestem z Minentala.
	AI_Output(self, hero, "Info_Mod_Gellit_Hi_26_02"); //Minental? Nigdy o tym nie slyszalem. Co Pan tutaj robi?
	AI_Output(hero, self, "Info_Mod_Gellit_Hi_15_03"); //Szukam zaklecia metamorfozy. Slysze, ze jest tam gdzies. Jestem tutaj w Gelato, czyz nie jestem?
	AI_Output(self, hero, "Info_Mod_Gellit_Hi_26_04"); //Tak. Ale nie mam nic wspólnego z czarodziejstwem. Porozmawiaj z szamanem wioski. Ale nie ma sztuczek.

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "Mezczyzna o nazwisku Gellit powiedzial mi, zebym poszedl do szamana na czar transformacji. Nie mam innego wyboru.");

	B_StartOtherRoutine	(self, "START");

	Info_ClearChoices	(Info_Mod_Gellit_Hi);

	Info_AddChoice	(Info_Mod_Gellit_Hi, "Myslalbym o tym sam.", Info_Mod_Gellit_Hi_A);
	Info_AddChoice	(Info_Mod_Gellit_Hi, "Dziekujemy za koncówke. Bede wiec w drodze.", Info_Mod_Gellit_Hi_B);
};

FUNC VOID Info_Mod_Gellit_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Gellit_Hi_B_15_00"); //Dziekujemy za koncówke. Bede wiec w drodze.
	AI_Output(self, hero, "Info_Mod_Gellit_Hi_B_26_01"); //Jeszcze jedna rzecz. Przyprowadz mu troche prezentu, bedzie bardziej przyjazny. Najlepiej polawiac ryby.
	AI_Output(hero, self, "Info_Mod_Gellit_Hi_B_15_02"); //Ryby? Skad pochodza ryby?
	AI_Output(self, hero, "Info_Mod_Gellit_Hi_B_26_03"); //Powiedzialem ci juz zbyt wiele, teraz wyjdz z tego miejsca.

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "Gellit wspomnial równiez, ze powinienem przyniesc szamanowi prezent, najlepiej rybe, poniewaz bylby on dla mnie bardziej przyjazny.");

	VMG_Second = 6;

	Info_ClearChoices	(Info_Mod_Gellit_Hi);
};

FUNC VOID Info_Mod_Gellit_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Gellit_Hi_A_15_00"); //Myslalbym o tym sam.
	AI_Output(self, hero, "Info_Mod_Gellit_Hi_A_26_01"); //Duze usta, huh? Ale nie jestem glupi i wchodze w potyczke. Wyjmij z niego pieklo.

	VMG_Second = 5;

	Info_ClearChoices	(Info_Mod_Gellit_Hi);
};

INSTANCE Info_Mod_Gellit_RaueSchneide (C_INFO)
{
	npc		= Mod_1953_EIS_Gellit_EIS;
	nr		= 1;
	condition	= Info_Mod_Gellit_RaueSchneide_Condition;
	information	= Info_Mod_Gellit_RaueSchneide_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gellit_RaueSchneide_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gellit_RaueSchneide_Info()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gellit_Hi))
	{
		AI_Output(self, hero, "Info_Mod_Gellit_RaueSchneide_26_00"); //Och, jeszcze jedna rzecz.
	};

	AI_Output(self, hero, "Info_Mod_Gellit_RaueSchneide_26_01"); //Jesli chcesz miec dobra reputacje w naszym kraju, skontaktuj sie z Commander Willingham. On wie, jak Cie uzywac.
	AI_Output(self, hero, "Info_Mod_Gellit_RaueSchneide_26_02"); //Baraki znajduja sie po drugiej stronie miasta. Tam wlasnie stacjonuja jego wojska.
};

INSTANCE Info_Mod_Gellit_Schneegeister (C_INFO)
{
	npc		= Mod_1953_EIS_Gellit_EIS;
	nr		= 1;
	condition	= Info_Mod_Gellit_Schneegeister_Condition;
	information	= Info_Mod_Gellit_Schneegeister_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gellit_Schneegeister_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thys_Eriskult))
	&& (Wld_GetDay()-4 > Mod_Thys_Schneegeister_Tag)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gellit_Schneegeister_Info()
{
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister_26_00"); //Poczekaj. Jestes dosc daleko w drodze.
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister_26_01"); //Badz ostrozny, poniewaz w tej chwili na zewnatrz jest znowu wiele duchów sniegu.
	AI_Output(hero, self, "Info_Mod_Gellit_Schneegeister_15_02"); //Wlasciwie, bede uwazny.
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister_26_03"); //Tak, dobrze bys zrobil. Nie mozna sie nimi oszukac.
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister_26_04"); //Kiedy mysle o tym, ze byl czas, kiedy wioska jeszcze nie ucierpiala......
	AI_Output(hero, self, "Info_Mod_Gellit_Schneegeister_15_05"); //Dlaczego? Myslalem, ze zawsze tam byli?
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister_26_06"); //Nie, od kilku dziesiecioleci stanowia one jedynie czesc tego krajobrazu.
	AI_Output(hero, self, "Info_Mod_Gellit_Schneegeister_15_07"); //Jak to sie stalo?
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister_26_08"); //Dobre pytanie. Nikt tak naprawde nie wie.
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister_26_09"); //Jedni widza w tym zlosliwosc Beliara, inni widza kare Inno za grzeszne zachowanie.
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister_26_10"); //Niektórzy z kolei obwiniaja demony, a nawet gwiazdy.... istnieje niezliczona liczba spekulacji.
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister_26_11"); //Slyszalem tez kiedys, ze ktos zostal wypedzony z wioski z powodu mrocznych rytualów.
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister_26_12"); //Niektórzy starsi ludzie uwazaja, ze moze to byc powiazane. Moze byc równiez nonsensem.
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister_26_13"); //Dlaczego nie pytasz naszej wioski starszej Thys, jesli chcesz wiedziec wiecej?

	Log_CreateTopic	(TOPIC_MOD_GELLIT_SCHNEEGEISTER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_GELLIT_SCHNEEGEISTER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_GELLIT_SCHNEEGEISTER, "Gellit powiedzial mi, ze duchy nie zawsze czynily okolice wioski niebezpieczna, ale nie wiedzialy wiecej o ich pochodzeniu. Moze Thys moze mi o tym powiedziec wiecej.");
};

INSTANCE Info_Mod_Gellit_Schneegeister2 (C_INFO)
{
	npc		= Mod_1953_EIS_Gellit_EIS;
	nr		= 1;
	condition	= Info_Mod_Gellit_Schneegeister2_Condition;
	information	= Info_Mod_Gellit_Schneegeister2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gellit_Schneegeister2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thys_Schneegeister3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gellit_Schneegeister2_Info()
{
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister2_26_00"); //Hej, niesamowite wiesci! Prawie wszystkie duchy sniegu zniknely.
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister2_26_01"); //Slyszalem plotki, ze niektórzy poszukiwacze przygód rzekomo znalezli korzenie zla i wyeliminowali je.
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister2_26_02"); //Czlowiek, uscisnelam mu rece i zaprosilam go na drinka w tawernie.
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister2_26_03"); //Czy moge sobie wyobrazic? W koncu juz wiecej duchów sniegu.

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Gellit_Pickpocket (C_INFO)
{
	npc		= Mod_1953_EIS_Gellit_EIS;
	nr		= 1;
	condition	= Info_Mod_Gellit_Pickpocket_Condition;
	information	= Info_Mod_Gellit_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Gellit_Pickpocket_Condition()
{
	C_Beklauen	(100, ItMi_Gold, 35);
};

FUNC VOID Info_Mod_Gellit_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Gellit_Pickpocket);

	Info_AddChoice	(Info_Mod_Gellit_Pickpocket, DIALOG_BACK, Info_Mod_Gellit_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Gellit_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Gellit_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Gellit_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Gellit_Pickpocket);
};

FUNC VOID Info_Mod_Gellit_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Gellit_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Gellit_Pickpocket);

		Info_AddChoice	(Info_Mod_Gellit_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Gellit_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Gellit_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Gellit_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Gellit_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Gellit_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Gellit_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Gellit_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Gellit_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Gellit_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Gellit_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Gellit_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Gellit_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Gellit_EXIT (C_INFO)
{
	npc		= Mod_1953_EIS_Gellit_EIS;
	nr		= 1;
	condition	= Info_Mod_Gellit_EXIT_Condition;
	information	= Info_Mod_Gellit_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gellit_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gellit_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
