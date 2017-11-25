INSTANCE Info_Mod_Hymir_Hi (C_INFO)
{
	npc		= Mod_1016_KGD_Hymir_MT;
	nr		= 1;
	condition	= Info_Mod_Hymir_Hi_Condition;
	information	= Info_Mod_Hymir_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hymir_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_LeibwacheHymir_DarfDurch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hymir_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Hymir_Hi_08_00"); //Jestes wiec jednym z tych, o których wszyscy mówia. Wykonales dla nas wiele pracy.
	AI_Output(self, hero, "Info_Mod_Hymir_Hi_08_01"); //Nie mozemy jednak jeszcze wydobywac rudy, poniewaz w kopalni znajduja sie te dziwne kamienne potwory.
	AI_Output(self, hero, "Info_Mod_Hymir_Hi_08_02"); //Potrzebujemy troche wiecej czasu na przygotowanie sie, a potem bedziemy szturmowac kopalnie.
	AI_Output(self, hero, "Info_Mod_Hymir_Hi_08_03"); //Wróccie wiec pózniej.

	Log_CreateTopic	(TOPIC_MOD_KG_STEINMONSTER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KG_STEINMONSTER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "Hymir potrzebuje troche czasu na przygotowania. Wróce do kopalni pózniej, potem mozemy szturmowac.");
};

INSTANCE Info_Mod_Hymir_MineLos (C_INFO)
{
	npc		= Mod_1016_KGD_Hymir_MT;
	nr		= 1;
	condition	= Info_Mod_Hymir_MineLos_Condition;
	information	= Info_Mod_Hymir_MineLos_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hymir_MineLos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hymir_Hi))
	&& (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hymir_MineLos_Info()
{
	AI_Output(self, hero, "Info_Mod_Hymir_MineLos_08_00"); //Jestesmy juz gotowi. Dookola kopalni wciaz kreca sie kamienne potwory.
	AI_Output(self, hero, "Info_Mod_Hymir_MineLos_08_01"); //Teraz to od panstwa zalezy zniszczenie ich i otwarcie kopalni.
	AI_Output(self, hero, "Info_Mod_Hymir_MineLos_08_02"); //Idz do Granmaru, czeka na Ciebie w kopalni. Pomoze ci on w wykonaniu twojego zadania.

	B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "Mam pracowac z Granmarem, aby wyeliminowac potwory w kopalni. On juz czeka na mnie w kopalni. Jako bron do walki wrecz na pewno powinienem miec przy sobie klub.");

	B_RemoveNpc	(Mod_1017_KGD_Granmar_MT);

	Mod_7537_KG_Minenwache_MT.aivar[AIV_PassGate] = TRUE;
};

INSTANCE Info_Mod_Hymir_MineFertig (C_INFO)
{
	npc		= Mod_1016_KGD_Hymir_MT;
	nr		= 1;
	condition	= Info_Mod_Hymir_MineFertig_Condition;
	information	= Info_Mod_Hymir_MineFertig_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kopalnia jest teraz wolna od potworów i pracuje z powrotem.";
};

FUNC INT Info_Mod_Hymir_MineFertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Granmar_VM_Trent2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hymir_MineFertig_Info()
{
	AI_Output(hero, self, "Info_Mod_Hymir_MineFertig_15_00"); //Kopalnia jest teraz wolna od potworów i pracuje z powrotem.
	AI_Output(self, hero, "Info_Mod_Hymir_MineFertig_08_01"); //To milo slyszec, wiec udalo Ci sie dostac do malej linii archprince.
	AI_Output(self, hero, "Info_Mod_Hymir_MineFertig_08_02"); //I prosze mi wierzyc, bardzo niewiele osób zdolalo to zrobic w tak krótkim czasie.
	AI_Output(self, hero, "Info_Mod_Hymir_MineFertig_08_03"); //Teraz stanowia Panstwo 10% dochodu kopalni. Pieniadze z Ole mozna otrzymac co tydzien.

	B_GiveInvItems	(self, hero, ItMi_Nugget, 5);

	AI_Output(self, hero, "Info_Mod_Hymir_MineFertig_08_04"); //Oczywiscie teraz dostajesz nowa zbroje.

	CreateInvItems	(hero, ItAr_Erzbaron_Blau, 1);

	B_ShowGivenThings	("Królewska zbroja arcyksiecia otrzymala");

	AI_Output(self, hero, "Info_Mod_Hymir_MineFertig_08_05"); //Nawiasem mówiac, Paladyn byl z mna tuz przed wami. Powiedzial, ze zawdziecza wam swoje zycie.
	AI_Output(self, hero, "Info_Mod_Hymir_MineFertig_08_06"); //Pan Andre wraz z milicja wyslal go osobiscie do Minentala. Powiedz im, zeby szpiegowali na orkach.
	AI_Output(self, hero, "Info_Mod_Hymir_MineFertig_08_07"); //Nawiasem mówiac, Lord Andre chcial ponownie z wami porozmawiac, ale mysle, ze jest jeszcze czas.

	B_SetTopicStatus	(TOPIC_MOD_KG_STEINMONSTER, LOG_SUCCESS);

	B_GivePlayerXP	(500);

	Mod_KG_OleErz = Wld_GetDay();
};

INSTANCE Info_Mod_Hymir_Trent (C_INFO)
{
	npc		= Mod_1016_KGD_Hymir_MT;
	nr		= 1;
	condition	= Info_Mod_Hymir_Trent_Condition;
	information	= Info_Mod_Hymir_Trent_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wyglada na to, ze otworzylem kolejna kopalnie.";
};

FUNC INT Info_Mod_Hymir_Trent_Condition()
{
	if (Mod_KG_OrkTot == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hymir_Trent_Info()
{
	AI_Output(hero, self, "Info_Mod_Hymir_Trent_15_00"); //Wyglada na to, ze otworzylem kolejna kopalnie.
	AI_Output(self, hero, "Info_Mod_Hymir_Trent_08_01"); //Co.....? Jeszcze nie dotarlismy jeszcze nawet do gonny. Moze Pan Andre posyla nam teraz nowych ludzi.
	AI_Output(self, hero, "Info_Mod_Hymir_Trent_08_02"); //W kazdym razie nalezy to swietowac. Udaj sie do Melcadoru i zaopatrz sie w bron rudy i swieze piwo.
	AI_Output(self, hero, "Info_Mod_Hymir_Trent_08_03"); //Nie ma juz dla Ciebie nic wiecej do zrobienia. Usiadz i ciesz sie zyciem tak samo jak ja!

	B_SetTopicStatus	(TOPIC_MOD_KG_RITUAL, LOG_SUCCESS);

	B_GivePlayerXP	(300);
};

INSTANCE Info_Mod_Hymir_Eroberung_06 (C_INFO)
{
	npc		= Mod_1016_KGD_Hymir_MT;
	nr		= 1;
	condition	= Info_Mod_Hymir_Eroberung_06_Condition;
	information	= Info_Mod_Hymir_Eroberung_06_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hymir_Eroberung_06_Condition()
{	
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_Eroberung_05))
	&& (!Npc_IsInState(Mod_761_BDT_Dexter_MT, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hymir_Eroberung_06_Info()
{
	AI_Output(self, hero, "Info_Mod_Hymir_Eroberung_06_08_00"); //... i weszlismy do obozu......
};

INSTANCE Info_Mod_Hymir_Treue (C_INFO)
{
	npc		= Mod_1016_KGD_Hymir_MT;
	nr		= 1;
	condition	= Info_Mod_Hymir_Treue_Condition;
	information	= Info_Mod_Hymir_Treue_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hymir_Treue_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_AndreVermaechtnis11))
	&& (Npc_HasItems(hero, ItWr_HagenForHymir) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hymir_Treue_Info()
{
	AI_Output(self, hero, "Info_Mod_Hymir_Treue_08_00"); //Przeslanie od Hagena? Zastanawiam sie, czego od mnie chce od siebie odwaga.

	B_GiveInvItems	(hero, self, ItWr_HagenForHymir, 1);

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Hymir_Treue_08_01"); //Ha, nie daj mi sie smiac. Teraz, gdy jego tylek plonie, mamy go wyciagnac z ognia.
	AI_Output(self, hero, "Info_Mod_Hymir_Treue_08_02"); //Wszelkie prawa. A jak....? Jestes nowym kapitanem? Caly czas staje sie to przyjemniejsze.
	AI_Output(self, hero, "Info_Mod_Hymir_Treue_08_03"); //A co z Andre ---. Jedyny, który ma troche przyzwoitosci i kregoslupa?
	AI_Output(hero, self, "Info_Mod_Hymir_Treue_15_04"); //On nie zyje. Ofiaruje sie za miasto, gdy bylo zagrozone.
	AI_Output(self, hero, "Info_Mod_Hymir_Treue_08_05"); //(wstrzasy) Co.... on nie zyje? Dla miasta....?

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Hymir_Treue_15_06"); //Moze wlasnie to sklania go teraz do myslenia?

	AI_TurnToNpc	(hero, self);

	AI_Output(self, hero, "Info_Mod_Hymir_Treue_08_07"); //Poswiecony? Nie mów mi nic.
	AI_Output(self, hero, "Info_Mod_Hymir_Treue_08_08"); //Hagen musial uzyc go jako pionka ofiary, aby potem uczynic z siebie szlachetnego zbawiciela.
	AI_Output(self, hero, "Info_Mod_Hymir_Treue_08_09"); //I teraz mamy wziac dla niego upadek. Tu wszystko sie konczy.
	AI_Output(self, hero, "Info_Mod_Hymir_Treue_08_10"); //Nie ma nawet przyzwoitosci, by sie pojawic, ale wysyla sprawnego chlopca.
	AI_Output(self, hero, "Info_Mod_Hymir_Treue_08_11"); //Nie.... Nie. a teraz lepiej wydostac sie z moich oczu.

	AI_GotoWP	(hero, "MC_WA_4");

	AI_Output(hero, self, "Info_Mod_Hymir_Treue_15_12"); //Nie poszlo to tak dobrze. Ale.... To prawda, czesc powiedzenia.
	AI_Output(self, hero, "DEFAULT"); //

	AI_StopProcessInfos	(self);

};

INSTANCE Info_Mod_Hymir_Treue2 (C_INFO)
{
	npc		= Mod_1016_KGD_Hymir_MT;
	nr		= 1;
	condition	= Info_Mod_Hymir_Treue2_Condition;
	information	= Info_Mod_Hymir_Treue2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hymir_Treue2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_MT_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hymir_Treue2_Info()
{
	var c_npc Hymir; Hymir = Hlp_GetNpc(Mod_1016_KGD_Hymir_MT);
	var c_npc Hagen; Hagen = Hlp_GetNpc(Mod_7698_PAL_Hagen_MT);

	TRIA_Invite(Hagen);
	TRIA_Start();

	TRIA_Next(Hymir);

	AI_TurnToNpc	(Hymir, Hagen);
	AI_TurnToNpc	(Hagen, Hymir);

	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_08_00"); //Czy jest to mozliwe? Hagen, Ty tutaj?

	TRIA_Next(Hagen);

	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_04_01"); //Tak, poniewaz moja prosba jest bardzo szeroka dla wszystkich Khorinis, osobiscie doszedlem do wyjasnienia tej sprawy.

	TRIA_Next(Hymir);

	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_08_02"); //l-- (znowu wychwytuje sie) Tak, otrzymalem Panski list.
	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_08_03"); //I nawet jesli stoisz tu przed mna, nie widze powodu, by w to wchodzic.
	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_08_04"); //Najlepiej wiesz, ze nasz pobyt w tej kolonii zawdzieczamy Tobie.
	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_08_05"); //A fakt, ze Andre zostawil swoje zycie pod twoim dowództwem nie do konca poprawia sytuacje.

	TRIA_Next(Hagen);

	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_04_06"); //Andre poswiecil sie bezinteresownie, poniewaz nie widzial innej drogi, aby uratowac miasto przed obezwladniajacym wrogiem.
	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_04_07"); //Ale tutaj przeczytaj ja samemu.

	B_ShowGivenThings	("Lord Hagen daje testament Hymir Andres");

	TRIA_Next(Hymir);

	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_08_08"); //(czyta) Aby rozpuscic roboty[....] maszyna mordercza[....] Ona wziela ich zycie od[...] nikt bez winy nie jest.....
	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_08_09"); //Hmm, to jest wlasciwie pismo odreczne Andresa.... i wydaje mi sie, ze to co powiedziales mi o swoim losie jest prawda.
	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_08_10"); //W swietle tych wydarzen nie chce juz zasadniczo sprzeciwiac sie wspólpracy z miastem.
	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_08_11"); //Z pewnoscia nie robie tego, aby zrobic ci przysluge, Hagen, ale dla dobra przykladu Andre nam dal.

	TRIA_Next(Hagen);

	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_04_12"); //Doceniam to. W obecnej sytuacji, miasto i królestwo zalezy od takich mezczyzn jak ty.
	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_04_13"); //Mam tutaj kilka zaklec, które pozwalaja na szybka podróz pomiedzy przelecza a miastem.

	TRIA_Next(Hymir);

	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_08_14"); //.... Zabiore Cie do miasta na kolejna odprawe.
    
	TRIA_Finish();

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_MILIZ_TREUE, "Hymir teleportowal sie do miasta z Lordem Hagenem. Czasami powinienem klasc sie.");

};

INSTANCE Info_Mod_Hymir_Pickpocket (C_INFO)
{
	npc		= Mod_1016_KGD_Hymir_MT;
	nr		= 1;
	condition	= Info_Mod_Hymir_Pickpocket_Condition;
	information	= Info_Mod_Hymir_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Hymir_Pickpocket_Condition()
{
	C_Beklauen	(174, ItMi_Gold, 94);
};

FUNC VOID Info_Mod_Hymir_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Hymir_Pickpocket);

	Info_AddChoice	(Info_Mod_Hymir_Pickpocket, DIALOG_BACK, Info_Mod_Hymir_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Hymir_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Hymir_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Hymir_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Hymir_Pickpocket);
};

FUNC VOID Info_Mod_Hymir_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Hymir_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Hymir_Pickpocket);

		Info_AddChoice	(Info_Mod_Hymir_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Hymir_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Hymir_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Hymir_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Hymir_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Hymir_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Hymir_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Hymir_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Hymir_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Hymir_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Hymir_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Hymir_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Hymir_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Hymir_EXIT (C_INFO)
{
	npc		= Mod_1016_KGD_Hymir_MT;
	nr		= 1;
	condition	= Info_Mod_Hymir_EXIT_Condition;
	information	= Info_Mod_Hymir_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hymir_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hymir_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
