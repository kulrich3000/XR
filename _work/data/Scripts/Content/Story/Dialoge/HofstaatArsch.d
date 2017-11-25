INSTANCE Info_Mod_HofstaatArsch_Hi (C_INFO)
{
	npc		= Mod_7283_HS_Arsch_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatArsch_Hi_Condition;
	information	= Info_Mod_HofstaatArsch_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatArsch_Hi_Condition()
{
	if (Mod_Sekte_Verheiratet == 1)
	|| (Mod_Sekte_TraderHaus01 == 1)
	|| (Mod_Sekte_TraderHaus02 == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatArsch_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Hi_16_00"); //(biurokratyczna) Takeah?

	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Hi_16_01"); //Jestem tylkiem króla.
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Hi_16_02"); //Jesli chcesz cos zmienic tutaj, nie fajkuj mi.
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Hi_16_03"); //Król kocha opinie swego tylka!

	Info_ClearChoices	(Info_Mod_HofstaatArsch_Hi);

	Info_AddChoice	(Info_Mod_HofstaatArsch_Hi, "Wtedy jestem pewien, ze mozecie powiedziec mi dobre slowo.", Info_Mod_HofstaatArsch_Hi_B);
	Info_AddChoice	(Info_Mod_HofstaatArsch_Hi, "To tylko gorace powietrze!", Info_Mod_HofstaatArsch_Hi_A);
};

FUNC VOID Info_Mod_HofstaatArsch_Hi_C()
{
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Hi_C_16_00"); //Tak czy inaczej, przeprawic sie przez pomieszczenie, wspiac sie po drabinie i z powrotem na koniec pomieszczenia.
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Hi_C_15_01"); //Co?
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Hi_C_16_02"); //Tam wlasnie znajda króla. Teraz pozwole sobie wrócic do pracy.

	B_LogEntry	(TOPIC_MOD_SEKTE_FREUDENSPENDER, "Droga do króla panstwa sadu jest jasna. On jest na podlodze nade mna.");

	Info_ClearChoices	(Info_Mod_HofstaatArsch_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_HofstaatArsch_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Hi_B_15_00"); //Wtedy jestem pewien, ze mozecie powiedziec mi dobre slowo.

	Info_Mod_HofstaatArsch_Hi_C();
};

FUNC VOID Info_Mod_HofstaatArsch_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Hi_A_15_00"); //To tylko gorace powietrze!

	Info_Mod_HofstaatArsch_Hi_C();
};

INSTANCE Info_Mod_HofstaatArsch_MagierTermin (C_INFO)
{
	npc		= Mod_7283_HS_Arsch_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatArsch_MagierTermin_Condition;
	information	= Info_Mod_HofstaatArsch_MagierTermin_Info;
	permanent	= 0;
	important	= 0;
	description	= "Potrzebuje spotkania z magikiem dworskim.";
};

FUNC INT Info_Mod_HofstaatArsch_MagierTermin_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatKoenig_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatArsch_MagierTermin_Info()
{
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_MagierTermin_15_00"); //Potrzebuje spotkania z magikiem dworskim.
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_MagierTermin_16_01"); //Czarodziej dworu królewskiego powita Cie. Wejdz do wiezy.

	B_StartOtherRoutine	(Mod_7011_HS_Alex_REL, "MAGIER");

	AI_Teleport	(Mod_7011_HS_Alex_REL, "REL_290");

	B_LogEntry	(TOPIC_MOD_SEKTE_FREUDENSPENDER, "Magik nadworny zobaczy mnie teraz.");
};

INSTANCE Info_Mod_HofstaatArsch_Drogenminister (C_INFO)
{
	npc		= Mod_7283_HS_Arsch_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatArsch_Drogenminister_Condition;
	information	= Info_Mod_HofstaatArsch_Drogenminister_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatArsch_Drogenminister_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatDrogenminister_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatArsch_Drogenminister_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Drogenminister_16_00"); //Ranking?
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Drogenminister_15_01"); //Jak?
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Drogenminister_16_02"); //Praca w klasie uzytkowej!
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Drogenminister_15_03"); //Um....
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Drogenminister_16_04"); //Czy oni upadli za to? Poczekaj.... Jestes królewska dziewczyna za wszystko, czyz nie jestes?
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Drogenminister_15_05"); //Tak.
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Drogenminister_16_06"); //Nieprawidlowe. Sa oni zwolnieni z urzedu ze skutkiem natychmiastowym, bezposrednio od góry. Zostales awansowany.
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Drogenminister_15_07"); //Wiec teraz jestem kobieta za wszystko i co?
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Drogenminister_16_08"); //Przepraszamy, miejsce jest juz zajete, król nie potrzebuje w tej chwili kolejnej dziewczyny przyjemnosci. Król mówil, cytuje:
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Drogenminister_06_09"); //Glos króla) Odtad nie bedzie to juz urzad królewskiej panny dla wszystkich, którzy ozdabiaja twoja istote. Wykazaliscie sie Panstwo ogromnym potencjalem i jeszcze wieksza sila dzialania.
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Drogenminister_06_10"); //Nastepnie, od tego momentu, zostaniesz uciszony, poniewaz Twoje problemy zostana po prostu wymazane ze stolu, zwanego królewskim zamachowcem! Opusc glowe.... w dumie!
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Drogenminister_15_11"); //Zbyt wiele szacunku. Bede te notatki przekazywal królowi.
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Drogenminister_16_12"); //On nie jest teraz dostepny, troszczy sie o niego.
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Drogenminister_15_13"); //Na sali tronowej?
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Drogenminister_16_14"); //Nie, nad rzeka wolna, w poblizu gospodarstw rolnych.

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Król troszczy sie o wolna rzeke w poblizu farm. Powinienem go zobaczyc i pokazac mu notatki.");
};

INSTANCE Info_Mod_HofstaatArsch_Orakel (C_INFO)
{
	npc		= Mod_7283_HS_Arsch_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatArsch_Orakel_Condition;
	information	= Info_Mod_HofstaatArsch_Orakel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatArsch_Orakel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatRaufbold_KoenigHilfe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatArsch_Orakel_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Orakel_16_00"); //Co moge dla Ciebie zrobic?
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Orakel_15_01"); //Chcialbym umówic sie z Toba na spotkanie w Oracle.
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Orakel_16_02"); //Wiec to nie moze isc dalej! Czy przedtem hodowalismy razem dwie owce?
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Orakel_15_03"); //Nie wiem o tym.
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Orakel_16_04"); //Wtedy uwazam za calkowicie niestosowne, ze zawsze powinni mnie przesladowac! Teraz natychmiast sie to zatrzymuje!

	Info_ClearChoices	(Info_Mod_HofstaatArsch_Orakel);

	Info_AddChoice	(Info_Mod_HofstaatArsch_Orakel, "Nic sie nie zatrzymasz!", Info_Mod_HofstaatArsch_Orakel_B);
	Info_AddChoice	(Info_Mod_HofstaatArsch_Orakel, "Przepraszam, przepraszam.", Info_Mod_HofstaatArsch_Orakel_A);
};

FUNC VOID Info_Mod_HofstaatArsch_Orakel_B()
{
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Orakel_B_15_00"); //Nic sie nie zatrzymasz!
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Orakel_B_16_01"); //Przepraszaj natychmiast, ogre!
	
	Info_ClearChoices	(Info_Mod_HofstaatArsch_Orakel);

	Info_AddChoice	(Info_Mod_HofstaatArsch_Orakel, "Nie bede niczym!", Info_Mod_HofstaatArsch_Orakel_D);
	Info_AddChoice	(Info_Mod_HofstaatArsch_Orakel, "Przepraszam, po prostu cie nie lubie.", Info_Mod_HofstaatArsch_Orakel_C);
};

FUNC VOID Info_Mod_HofstaatArsch_Orakel_A()
{
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Orakel_A_15_00"); //Przepraszam, przepraszam.
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Orakel_A_16_01"); //Ach, trzymaj sie z toba, to brzmi okropnie, gdy spróbujesz swojej reki na wysokim poziomie jezyka.
	
	Info_ClearChoices	(Info_Mod_HofstaatArsch_Orakel);
};

FUNC VOID Info_Mod_HofstaatArsch_Orakel_D()
{
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Orakel_D_15_00"); //Nie bede niczym!
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Orakel_D_16_01"); //Ta rozmowa trwa do momentu przeprosin!
	
	Info_ClearChoices	(Info_Mod_HofstaatArsch_Orakel);

	Mod_SL_Arsch_Entschuldigung = 1;
};

FUNC VOID Info_Mod_HofstaatArsch_Orakel_C()
{
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Orakel_C_15_00"); //Przepraszam, po prostu cie nie lubie.
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Orakel_C_16_01"); //Wszystko w prawo, zostan z toba.
	
	Info_ClearChoices	(Info_Mod_HofstaatArsch_Orakel);
};

INSTANCE Info_Mod_HofstaatArsch_Entschuldigung (C_INFO)
{
	npc		= Mod_7283_HS_Arsch_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatArsch_Entschuldigung_Condition;
	information	= Info_Mod_HofstaatArsch_Entschuldigung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Przepraszam, po prostu cie nie lubie.";
};

FUNC INT Info_Mod_HofstaatArsch_Entschuldigung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatArsch_Orakel))
	&& (Mod_SL_Arsch_Entschuldigung == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatArsch_Entschuldigung_Info()
{
	Info_Mod_HofstaatArsch_Orakel_C();

	Mod_SL_Arsch_Entschuldigung = 0;
};

INSTANCE Info_Mod_HofstaatArsch_OrakelTermin (C_INFO)
{
	npc		= Mod_7283_HS_Arsch_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatArsch_OrakelTermin_Condition;
	information	= Info_Mod_HofstaatArsch_OrakelTermin_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy moge teraz porozmawiac z wyrocznia?";
};

FUNC INT Info_Mod_HofstaatArsch_OrakelTermin_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatArsch_Orakel))
	&& (Mod_SL_Arsch_Entschuldigung == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatArsch_OrakelTermin_Info()
{
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_OrakelTermin_15_00"); //Czy moge teraz porozmawiac z wyrocznia?
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_OrakelTermin_16_01"); //Dopiero po umówieniu sie na spotkanie.
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_OrakelTermin_15_02"); //Kiedy nastepna darmowa wizyta?
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_OrakelTermin_16_03"); //W trzy minuty.
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_OrakelTermin_15_04"); //Wtedy bym tego chcial.
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_OrakelTermin_16_05"); //Przykro mi, ze to zostalo tylko przebaczone.
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_OrakelTermin_15_06"); //Czy nie ma innego powolania?
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_OrakelTermin_16_07"); //Tak, zawsze po wizycie w trzy minuty.
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_OrakelTermin_15_08"); //Zawsze? W kazdym razie chcialbym umówic sie na spotkanie.
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_OrakelTermin_16_09"); //Jestes na liscie, ale nie przegap spotkania.
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_OrakelTermin_15_10"); //A gdzie moge znalezc Oracle?
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_OrakelTermin_16_11"); //W sali tronowej. Bedzie oczekiwal jej.

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Mam teraz spotkanie z Oracle. Mówi sie, ze jest w pokoju tronu.");
};

INSTANCE Info_Mod_HofstaatArsch_Transportsystem (C_INFO)
{
	npc		= Mod_7283_HS_Arsch_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatArsch_Transportsystem_Condition;
	information	= Info_Mod_HofstaatArsch_Transportsystem_Info;
	permanent	= 0;
	important	= 0;
	description	= "Szukam wygodnej drogi przez bagna.";
};

FUNC INT Info_Mod_HofstaatArsch_Transportsystem_Condition()
{
	if (Mod_SL_Meer == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatArsch_Transportsystem_Info()
{
	AI_Output(hero, self, "Info_Mod_HofstaatArsch_Transportsystem_15_00"); //Szukam wygodnej drogi przez bagna.
	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Transportsystem_16_01"); //Odwrócic uwage! Jesli nie znikniesz na raz w cienkim powietrzu, dostaniesz kopniecie w tylek. Bolesny. Niezwykle bolesna!
};

INSTANCE Info_Mod_HofstaatArsch_Liste (C_INFO)
{
	npc		= Mod_7283_HS_Arsch_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatArsch_Liste_Condition;
	information	= Info_Mod_HofstaatArsch_Liste_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatArsch_Liste_Condition()
{
	if (Mod_SL_ListeSpawn == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatArsch_Liste_Info()
{
	AI_TurnToNpc	(self, Mod_7285_HS_Koenig_REL);

	AI_Output(self, hero, "Info_Mod_HofstaatArsch_Liste_16_00"); //Oto lista.....

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_HofstaatArsch_Pickpocket (C_INFO)
{
	npc		= Mod_7283_HS_Arsch_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatArsch_Pickpocket_Condition;
	information	= Info_Mod_HofstaatArsch_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_HofstaatArsch_Pickpocket_Condition()
{
	C_Beklauen	(59, ItMi_Freudenspender, 2);
};

FUNC VOID Info_Mod_HofstaatArsch_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HofstaatArsch_Pickpocket);

	Info_AddChoice	(Info_Mod_HofstaatArsch_Pickpocket, DIALOG_BACK, Info_Mod_HofstaatArsch_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HofstaatArsch_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HofstaatArsch_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HofstaatArsch_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HofstaatArsch_Pickpocket);
};

FUNC VOID Info_Mod_HofstaatArsch_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HofstaatArsch_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HofstaatArsch_Pickpocket);

		Info_AddChoice	(Info_Mod_HofstaatArsch_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HofstaatArsch_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HofstaatArsch_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HofstaatArsch_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HofstaatArsch_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HofstaatArsch_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HofstaatArsch_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HofstaatArsch_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HofstaatArsch_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HofstaatArsch_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HofstaatArsch_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HofstaatArsch_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HofstaatArsch_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HofstaatArsch_EXIT (C_INFO)
{
	npc		= Mod_7283_HS_Arsch_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatArsch_EXIT_Condition;
	information	= Info_Mod_HofstaatArsch_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatArsch_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatArsch_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
