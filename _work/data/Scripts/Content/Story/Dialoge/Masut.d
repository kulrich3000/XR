INSTANCE Info_Mod_Masut_Hi (C_INFO)
{
	npc		= Mod_7119_ASS_Masut_NW;
	nr		= 1;
	condition	= Info_Mod_Masut_Hi_Condition;
	information	= Info_Mod_Masut_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj! Udowodnilem swoja wartosc z oszustami (....). )";
};

FUNC INT Info_Mod_Masut_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Shakir_GaunerWerden2))
	&& (Assassinen_Dabei == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Masut_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Masut_Hi_15_00"); //Witaj! Udowodnilam sie do oszust�w i chcialbym byc teraz awansowana na wojownika.
	AI_Output(self, hero, "Info_Mod_Masut_Hi_13_01"); //Slyszelismy o Tobie. W kr�tkim czasie zrobiles niesamowite rzeczy.
	AI_Output(self, hero, "Info_Mod_Masut_Hi_13_02"); //Ale nawet u nas trzeba sie jeszcze udowodnic.
	AI_Output(hero, self, "Info_Mod_Masut_Hi_15_03"); //Co chcesz, abym zrobil?
	AI_Output(self, hero, "Info_Mod_Masut_Hi_13_04"); //Obecnie nic sie nie dzieje. Wr�c do domu p�zniej. Musisz miec inne rzeczy do zrobienia.
	AI_Output(hero, self, "Info_Mod_Masut_Hi_15_05"); //Oczywiscie. Do zobaczenia dookola.

	B_LogEntry	(TOPIC_MOD_ASS_VERTRAUEN, "Masut nie ma teraz nic dla mnie. Mam wr�cic p�zniej.");
	B_SetTopicStatus	(TOPIC_MOD_ASS_VERTRAUEN, LOG_SUCCESS);
};

INSTANCE Info_Mod_Masut_Later (C_INFO)
{
	npc		= Mod_7119_ASS_Masut_NW;
	nr		= 1;
	condition	= Info_Mod_Masut_Later_Condition;
	information	= Info_Mod_Masut_Later_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Masut_Later_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Masut_Hi))
	&& (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Masut_Later_Info()
{
	AI_Output(self, hero, "Info_Mod_Masut_Later_13_00"); //Przytrzymaj go. Zaawansowany!
	AI_Output(hero, self, "Info_Mod_Masut_Later_15_01"); //Jestem zaawansowany. Wyslales mnie tamtego dnia, bo nie miales dla mnie nic do zrobienia.
	AI_Output(self, hero, "Info_Mod_Masut_Later_13_02"); //Oh, tak. C�z, mam cos do dyspozycji, ale najpierw musze wam wyjasnic, co sie tu dzieje.
	AI_Output(hero, self, "Info_Mod_Masut_Later_15_03"); //Slucham.
	AI_Output(self, hero, "Info_Mod_Masut_Later_13_04"); //Musisz teraz zdecydowac, w kt�ra strone chcesz isc.
	AI_Output(self, hero, "Info_Mod_Masut_Later_13_05"); //Jesli chcesz byc wojownikiem, znalazles sie we wlasciwym miejscu.
	AI_Output(self, hero, "Info_Mod_Masut_Later_13_06"); //Ale jesli chcesz zostac magikiem, skontaktuj sie z Aadel. Znajdziesz go dalej.

	Info_ClearChoices	(Info_Mod_Masut_Later);

	Info_AddChoice	(Info_Mod_Masut_Later, "Chce byc magikiem.", Info_Mod_Masut_Later_B);
	Info_AddChoice	(Info_Mod_Masut_Later, "Chce dolaczyc do wojownik�w.", Info_Mod_Masut_Later_A);
};

FUNC VOID Info_Mod_Masut_Later_B()
{
	AI_Output(hero, self, "Info_Mod_Masut_Later_B_15_00"); //Chce byc magikiem.
	AI_Output(self, hero, "Info_Mod_Masut_Later_B_13_01"); //Dopasuj sie do siebie. Idz do Aadel, on cie zobowiaze.

	Mod_ASS_Magier = 1;

	Log_CreateTopic	(TOPIC_MOD_ASS_MAGIER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MoD_ASS_MAGIER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_MAGIER, "Jesli chce zostac magikiem, musze udac sie do Aadel. Dalej z powrotem w jaskini.");

	Info_ClearChoices	(Info_Mod_Masut_Later);
};

FUNC VOID Info_Mod_Masut_Later_A()
{
	AI_Output(hero, self, "Info_Mod_Masut_Later_A_15_00"); //Chce dolaczyc do wojownik�w.
	AI_Output(self, hero, "Info_Mod_Masut_Later_A_13_01"); //To jest to, co lubie slyszec, zawsze potrzebujemy dobrych ludzi. Mam nadzieje, ze mnie nie zawiedziesz....
	AI_Output(hero, self, "Info_Mod_Masut_Later_A_15_02"); //Zrobie wszystko, co w mojej mocy. Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Masut_Later_A_13_03"); //Jestem pewien, ze chcesz isc dalej i potrzebujesz glos�w.
	AI_Output(hero, self, "Info_Mod_Masut_Later_A_15_04"); //Dlatego pytam, co sie dzieje.
	AI_Output(self, hero, "Info_Mod_Masut_Later_A_13_05"); //To wlasnie chce ci to powiedziec. Ten Jack zyje w latarni morskiej.
	AI_Output(hero, self, "Info_Mod_Masut_Later_A_15_06"); //Czy....?
	AI_Output(self, hero, "Info_Mod_Masut_Later_A_13_07"); //Chce, zebys go pozbyl sie. Chcemy zajmowac wieze, wiec mozemy patrzec na miasto.
	AI_Output(self, hero, "Info_Mod_Masut_Later_A_13_08"); //Nie mamy tu wystarczajaco duzo. I mamy tylko Amir out. On nie widzi wszystkiego.
	AI_Output(hero, self, "Info_Mod_Masut_Later_A_15_09"); //Nie bedzie to problem. Moge wytrzymac jego miecz.
	AI_Output(self, hero, "Info_Mod_Masut_Later_A_13_10"); //P�zniej spiesz sie.
	AI_Output(hero, self, "Info_Mod_Masut_Later_A_15_11"); //Jest w drodze.

	Mod_ASS_Krieger = 1;

	Log_CreateTopic	(TOPIC_MOD_ASS_KRIEGER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MoD_ASS_KRIEGER, LOG_RUNNING);

	Log_CreateTopic	(TOPIC_MOD_ASS_JACK, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MoD_ASS_JACK, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_JACK, "Najpierw mam zabic Jacka w latarni morskiej. Hm.... biedny facet. Wlasciwie jest to dosc nieszkodliwe.");

	Info_ClearChoices	(Info_Mod_Masut_Later);
};

INSTANCE Info_Mod_Masut_Jack (C_INFO)
{
	npc		= Mod_7119_ASS_Masut_NW;
	nr		= 1;
	condition	= Info_Mod_Masut_Jack_Condition;
	information	= Info_Mod_Masut_Jack_Info;
	permanent	= 0;
	important	= 0;
	description	= "Misja zostala zrealizowana. Ten Jack jest historia.";
};

FUNC INT Info_Mod_Masut_Jack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Masut_Later))
	&& (Mod_ASS_Jack > 0)
	&& (Npc_HasItems(hero, ItMw_Degen_Jack) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Masut_Jack_Info()
{
	AI_Output(hero, self, "Info_Mod_Masut_Jack_15_00"); //Misja zostala zrealizowana. Ten Jack jest historia.
	AI_Output(self, hero, "Info_Mod_Masut_Jack_13_01"); //To bylo szybkie.
	AI_Output(hero, self, "Info_Mod_Masut_Jack_15_02"); //Stary czlowiek. Nie bylo to trudne. Tutaj jego miecz jako dow�d.

	B_GiveInvItems	(hero, self, ItMw_Degen_Jack, 1);

	AI_Output(hero, self, "Info_Mod_Masut_Jack_15_03"); //Sam rzucilem go nad skale.
	AI_Output(self, hero, "Info_Mod_Masut_Jack_13_04"); //Czysta praca. Mozesz byc uzyteczny.
	AI_Output(hero, self, "Info_Mod_Masut_Jack_15_05"); //Tak wlasnie rozumiem. Wiec oddaje sw�j glos?
	AI_Output(self, hero, "Info_Mod_Masut_Jack_13_06"); //Oczywiscie tak jest. I Malik prawdopodobnie ma cos dla Ciebie. Zawsze narzeka.
	AI_Output(hero, self, "Info_Mod_Masut_Jack_15_07"); //Uh-huh. Gdzie moge go znalezc?
	AI_Output(self, hero, "Info_Mod_Masut_Jack_13_08"); //Dalsza przyszlosc. Staje z kandydatami.

	B_SetTopicStatus	(TOPIC_MoD_ASS_JACK, LOG_SUCCESS);

	B_LogEntry	(TOPIC_MOD_ASS_KRIEGER, "Wydaje sie, ze Malik m�gl skorzystac z pomocy. M�wi sie, ze jest on w czol�wce kandydat�w.");
};

INSTANCE Info_Mod_Masut_GotoAzhar (C_INFO)
{
	npc		= Mod_7119_ASS_Masut_NW;
	nr		= 1;
	condition	= Info_Mod_Masut_GotoAzhar_Condition;
	information	= Info_Mod_Masut_GotoAzhar_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Masut_GotoAzhar_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Azhar_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Azhar_Later))
	&& (Mod_ASS_Krieger == 1)
	&& (Kapitel >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Masut_GotoAzhar_Info()
{
	AI_Output(self, hero, "Info_Mod_Masut_GotoAzhar_13_00"); //Gdzie byles/as? Azhar czeka na Ciebie.
	AI_Output(hero, self, "Info_Mod_Masut_GotoAzhar_15_01"); //Czego chcesz? Ten facet wyslal mnie ostatni raz.
	AI_Output(self, hero, "Info_Mod_Masut_GotoAzhar_13_02"); //Teraz jednak potrzebuje cie.
	AI_Output(hero, self, "Info_Mod_Masut_GotoAzhar_15_03"); //Zobacze.
};

INSTANCE Info_Mod_Masut_Zeremoniendolch (C_INFO)
{
	npc		= Mod_7119_ASS_Masut_NW;
	nr		= 1;
	condition	= Info_Mod_Masut_Zeremoniendolch_Condition;
	information	= Info_Mod_Masut_Zeremoniendolch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Masut_Zeremoniendolch_Condition()
{
	if (Npc_HasItems(hero, ItMw_Avaquar) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Masut_Zeremoniendolch_Info()
{
	AI_Output(self, hero, "Info_Mod_Masut_Zeremoniendolch_13_00"); //Gdzie zn�w spedzasz czas? Natychmiast do Mustafy!
	AI_Output(hero, self, "Info_Mod_Masut_Zeremoniendolch_15_01"); //Wtedy nie powstrzymaj mnie.
	AI_Output(self, hero, "Info_Mod_Masut_Zeremoniendolch_13_02"); //Nie otw�rz usta tak szeroko otwarte, kandydata!
};

INSTANCE Info_Mod_Masut_Blutkelch (C_INFO)
{
	npc		= Mod_7119_ASS_Masut_NW;
	nr		= 1;
	condition	= Info_Mod_Masut_Blutkelch_Condition;
	information	= Info_Mod_Masut_Blutkelch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tyle dla kandydata. Mustafa m�wi, ze cos zauwazyles.";
};

FUNC INT Info_Mod_Masut_Blutkelch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mustafa_Zeremoniendolch2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Masut_Blutkelch_Info()
{
	AI_Output(hero, self, "Info_Mod_Masut_Blutkelch_15_00"); //Tyle dla kandydata. Mustafa m�wi, ze cos zauwazyles.
	AI_Output(self, hero, "Info_Mod_Masut_Blutkelch_13_01"); //Jak szybko zostales wojownikiem?
	AI_Output(hero, self, "Info_Mod_Masut_Blutkelch_15_02"); //Do punktu. Co wiesz?
	AI_Output(self, hero, "Info_Mod_Masut_Blutkelch_13_03"); //Ostatnio noca w nocy przedostalo sie tu mn�stwo mag�w.
	AI_Output(hero, self, "Info_Mod_Masut_Blutkelch_15_04"); //Kogo dokladnie masz na mysli?
	AI_Output(self, hero, "Info_Mod_Masut_Blutkelch_13_05"); //Nie moge tak powiedziec. Z nasza zbroja, jesli ktos nie chce byc rozpoznany, to latwo.
	AI_Output(hero, self, "Info_Mod_Masut_Blutkelch_15_06"); //Nie masz wiec imie?
	AI_Output(self, hero, "Info_Mod_Masut_Blutkelch_13_07"); //Nie, boje sie nie.
	AI_Output(hero, self, "Info_Mod_Masut_Blutkelch_15_08"); //Hmm..... Przyjrzyjmy sie. Byc moze Shakir cos zauwazyl.

	B_LogEntry	(TOPIC_MOD_ASS_LASTBLUTKELCH, "Masut widzial czarodziej�w, ale nie zna nazwiska. Chcialbym zapytac Shakir.");
};

INSTANCE Info_Mod_Masut_Pickpocket (C_INFO)
{
	npc		= Mod_7119_ASS_Masut_NW;
	nr		= 1;
	condition	= Info_Mod_Masut_Pickpocket_Condition;
	information	= Info_Mod_Masut_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Masut_Pickpocket_Condition()
{
	C_Beklauen	(97, ItMi_Gold, 39);
};

FUNC VOID Info_Mod_Masut_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Masut_Pickpocket);

	Info_AddChoice	(Info_Mod_Masut_Pickpocket, DIALOG_BACK, Info_Mod_Masut_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Masut_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Masut_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Masut_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Masut_Pickpocket);
};

FUNC VOID Info_Mod_Masut_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Masut_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Masut_Pickpocket);

		Info_AddChoice	(Info_Mod_Masut_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Masut_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Masut_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Masut_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Masut_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Masut_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Masut_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Masut_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Masut_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Masut_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Masut_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Masut_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Masut_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Masut_EXIT (C_INFO)
{
	npc		= Mod_7119_ASS_Masut_NW;
	nr		= 1;
	condition	= Info_Mod_Masut_EXIT_Condition;
	information	= Info_Mod_Masut_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Masut_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Masut_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
