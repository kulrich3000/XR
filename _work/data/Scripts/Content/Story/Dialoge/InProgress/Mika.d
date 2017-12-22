INSTANCE Info_Mod_Mika_Hi (C_INFO)
{
	npc		= Mod_598_MIL_Mika_NW;
	nr		= 1;
	condition	= Info_Mod_Mika_Hi_Condition;
	information	= Info_Mod_Mika_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mika_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Mika_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Mika_Hi_28_00"); //Hej, widzialem cie tutaj. Musisz byc nowy w miescie.
	AI_Output(hero, self, "Info_Mod_Mika_Hi_15_01"); //Jest to mozliwe.
	AI_Output(self, hero, "Info_Mod_Mika_Hi_28_02"); //Daje wam rade, abyscie przy wyjezdzie z miasta zadbali o siebie.
	AI_Output(self, hero, "Info_Mod_Mika_Hi_28_03"); //Ostatnio coraz wiecej jest doniesien o raczej niesamowitych wydarzeniach.

	Info_ClearChoices	(Info_Mod_Mika_Hi);

	Info_AddChoice	(Info_Mod_Mika_Hi, "O jakich wydarzeniach mówisz?", Info_Mod_Mika_Hi_B);
	Info_AddChoice	(Info_Mod_Mika_Hi, "Nie jestem zainteresowany.", Info_Mod_Mika_Hi_A);
};

FUNC VOID Info_Mod_Mika_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Mika_Hi_B_15_00"); //O jakich wydarzeniach mówisz?
	AI_Output(self, hero, "Info_Mod_Mika_Hi_B_28_01"); //No cóz, pogloski mówia, ze ciemne moce klóca sie miedzy soba. Ludzie znikaja, inni nagle powaznie choruja.
	AI_Output(self, hero, "Info_Mod_Mika_Hi_B_28_02"); //Niektórzy mówili nawet o tym, ze umarli wzniesli sie z grobów i jako nieumarli powoduja straszne ich zlosliwosc.

	Info_ClearChoices	(Info_Mod_Mika_Hi);

	Info_AddChoice	(Info_Mod_Mika_Hi, "(wiecej)", Info_Mod_Mika_Hi_D);
	Info_AddChoice	(Info_Mod_Mika_Hi, "Nie oznacza to niczego.", Info_Mod_Mika_Hi_C);
};

FUNC VOID Info_Mod_Mika_Hi_E()
{
	AI_Output(self, hero, "Info_Mod_Mika_Hi_E_28_00"); //Dobrze, cokolwiek powiesz. Nie biegajcie, gdy juz po tobie sa nieumarle lub inne zlowieszcze stworzenia.

	Info_ClearChoices	(Info_Mod_Mika_Hi);
};

FUNC VOID Info_Mod_Mika_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Mika_Hi_A_15_00"); //Nie jestem zainteresowany.

	Info_Mod_Mika_Hi_E();
};

FUNC VOID Info_Mod_Mika_Hi_D()
{
	AI_Output(self, hero, "Info_Mod_Mika_Hi_D_28_00"); //I dopiero jakis czas temu widzialem niesamowita, zlowieszcza sylwetke z doliny przed miastem.
	AI_Output(hero, self, "Info_Mod_Mika_Hi_D_15_01"); //Ciemna figura? Gdzie poszla?
	AI_Output(self, hero, "Info_Mod_Mika_Hi_D_28_02"); //Kontynuujcie sciezke. Albo w kierunku Akilsa Hof, który znajduje sie po lewej stronie drogi, albo prosto w kierunku Taverne.
	AI_Output(self, hero, "Info_Mod_Mika_Hi_D_28_03"); //Nie bylem bardzo szczesliwy, ten kolega.

	Info_ClearChoices	(Info_Mod_Mika_Hi);

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_DUNKLERPILGER, "Ciemni pielgrzymi najwyrazniej omineli miasto i skierowali sie w strone farmy Akila czy tawerny Orlanu.");
};

FUNC VOID Info_Mod_Mika_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Mika_Hi_C_15_00"); //Nie oznacza to niczego.

	Info_Mod_Mika_Hi_E();
};

INSTANCE Info_Mod_Mika_Yasin (C_INFO)
{
	npc		= Mod_598_MIL_Mika_NW;
	nr		= 1;
	condition	= Info_Mod_Mika_Yasin_Condition;
	information	= Info_Mod_Mika_Yasin_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hej, Mika.";
};

FUNC INT Info_Mod_Mika_Yasin_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mika_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Yasin_Aufgabe))
	&& (Wld_IsTime(20,00,06,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mika_Yasin_Info()
{
	AI_Output(hero, self, "Info_Mod_Mika_Yasin_15_00"); //Hej, Mika.

	if (!Npc_KnowsInfo(hero, Info_Mod_Urnol_WerBistDu))
	{
		AI_Output(hero, self, "Info_Mod_Mika_Yasin_15_01"); //Nie znalazlem pielgrzyma, o którym mówiles.
		AI_Output(hero, self, "Info_Mod_Mika_Yasin_15_02"); //Ale nie wiem, grupa bandytów czy zlodziei.
		AI_Output(self, hero, "Info_Mod_Mika_Yasin_28_03"); //Czy chodzi do miasta? Powiedz mi.
		AI_Output(hero, self, "Info_Mod_Mika_Yasin_15_04"); //Mysle, ze tak, tak. Czaja sie w tej jaskini przed soba, po lewej stronie drogi.
		AI_Output(self, hero, "Info_Mod_Mika_Yasin_28_05"); //Musisz byc szalony, ale dobry, szczescie!
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Mika_Yasin_15_06"); //Zlapalem pielgrzyma, o którym mówiles. I jeszcze wiecej.
		AI_Output(self, hero, "Info_Mod_Mika_Yasin_28_07"); //Powiedz mi o tym.
		AI_Output(hero, self, "Info_Mod_Mika_Yasin_15_08"); //Jest tu ta jaskinia troche w góre, po lewej stronie jest ta jaskinia.
		AI_Output(hero, self, "Info_Mod_Mika_Yasin_15_09"); //Widzialem tam kilku zlych ludzi. Mówie, ze bandyci lub zlodzieje.
	};

	AI_Output(self, hero, "Info_Mod_Mika_Yasin_28_10"); //Chce to sprawdzic, po co tu jestem? Miales mój powrót?
	AI_Output(hero, self, "Info_Mod_Mika_Yasin_15_11"); //Oczywiscie.

	B_LogEntry	(TOPIC_MOD_ASS_YASIN_MIKA, "Mika wpadl w moja pulapke.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "MORD");
};

INSTANCE Info_Mod_Mika_Yasin2 (C_INFO)
{
	npc		= Mod_598_MIL_Mika_NW;
	nr		= 1;
	condition	= Info_Mod_Mika_Yasin2_Condition;
	information	= Info_Mod_Mika_Yasin2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mika_Yasin2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mika_Yasin))
	&& (Npc_GetDistToWP(self, "NW_CITY_TO_FOREST_04_05") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mika_Yasin2_Info()
{
	AI_Output(self, hero, "Info_Mod_Mika_Yasin2_28_00"); //Nie ma tu nikogo. Ptaki musza wyplynac.
	AI_Output(hero, self, "Info_Mod_Mika_Yasin2_15_01"); //Nie do konca. Zostala jedna.
	AI_Output(self, hero, "Info_Mod_Mika_Yasin2_28_02"); //Gdzie?
	AI_Output(hero, self, "Info_Mod_Mika_Yasin2_15_03"); //Gdzie stoisz.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 2);
};

INSTANCE Info_Mod_Mika_Banditen (C_INFO)
{
	npc		= Mod_598_MIL_Mika_NW;
	nr		= 1;
	condition	= Info_Mod_Mika_Banditen_Condition;
	information	= Info_Mod_Mika_Banditen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wszystko nowe tutaj?";
};

FUNC INT Info_Mod_Mika_Banditen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mika_Hi))
	&& ((Mod_Gilde == 1)
	|| (Mod_Gilde == 2)
	|| (Mod_Gilde == 3))
	&& (Kapitel > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mika_Banditen_Info()
{
	AI_Output(hero, self, "Info_Mod_Mika_Banditen_15_00"); //Wszystko nowe tutaj?
	AI_Output(self, hero, "Info_Mod_Mika_Banditen_28_01"); //Od wielu dni milicja goni za mala grupa bandytów, którzy nieustannie atakuja handlarzy.
	AI_Output(self, hero, "Info_Mod_Mika_Banditen_28_02"); //Zanim je zdobedziemy, zawsze znikaja w lasach kolo Akila Hofa.
	AI_Output(self, hero, "Info_Mod_Mika_Banditen_28_03"); //Nie ma mowy o tym, ze idziemy tam. Jest pelen zwierzat.
	AI_Output(hero, self, "Info_Mod_Mika_Banditen_15_04"); //Co dalbys mi, gdybym zabil tych bandytów!
	AI_Output(self, hero, "Info_Mod_Mika_Banditen_28_05"); //Cóz, 100 sztuk zlota bedzie w nim dla Ciebie. Czy to oznacza, ze zabijasz tych facetów?
	AI_Output(hero, self, "Info_Mod_Mika_Banditen_15_06"); //Tak, to wlasnie to oznacza!
	AI_Output(self, hero, "Info_Mod_Mika_Banditen_28_07"); //Musisz byc szalony, ale dobry, szczescie!

	Log_CreateTopic	(TOPIC_MOD_MIKA_BANDITEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MIKA_BANDITEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MIKA_BANDITEN, "Milicja ma klopoty z mala grupa bandytów. Chowaja sie w lesie niedaleko farmy Akila. Bede musial sie tym zajac.");
};

INSTANCE Info_Mod_Mika_BanditenTot (C_INFO)
{
	npc		= Mod_598_MIL_Mika_NW;
	nr		= 1;
	condition	= Info_Mod_Mika_BanditenTot_Condition;
	information	= Info_Mod_Mika_BanditenTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bandyci sa historia!";
};

FUNC INT Info_Mod_Mika_BanditenTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mika_Banditen))
	&& (Npc_IsDead(Mod_1969_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_1970_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_1971_BDT_Bandit_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mika_BanditenTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Mika_BanditenTot_15_00"); //Bandyci sa historia!
	AI_Output(self, hero, "Info_Mod_Mika_BanditenTot_28_01"); //Nie sadzilem, zebys mógl to zrobic na wlasna reke, kiddo. Oto zloto, które mi obiecales!

	CreateInvItems	(self, ItMi_Gold, 100);
	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	B_GivePlayerXP	(250);

	B_Göttergefallen(1, 1);

	B_LogEntry	(TOPIC_MOD_MIKA_BANDITEN, "Bandyci sa skonczeni, a Mika jest zadowolony.");
	B_SetTopicStatus	(TOPIC_MOD_MIKA_BANDITEN, LOG_SUCCESS);
};

INSTANCE Info_Mod_Mika_Randolph (C_INFO)
{
	npc		= Mod_598_MIL_Mika_NW;
	nr		= 1;
	condition	= Info_Mod_Mika_Randolph_Condition;
	information	= Info_Mod_Mika_Randolph_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mika_Randolph_Condition()
{
	if (Mod_Randolph_Started == 11)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Parlaf_Randolph))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mika_Randolph_Info()
{
	AI_Output(self, hero, "Info_Mod_Mika_Randolph_28_00"); //Lepiej szybko dotrzec do miasta.
	AI_Output(self, hero, "Info_Mod_Mika_Randolph_28_01"); //W chwili obecnej wokól nich plywaja demony, nie pozostawiajac nikogo zywego, kto móglby ich przekroczyc.
	AI_Output(hero, self, "Info_Mod_Mika_Randolph_15_02"); //Demony? Skad one pochodza?
	AI_Output(self, hero, "Info_Mod_Mika_Randolph_28_03"); //Nie wiem, oni sa po lasach w poblizu miasta. A w sasiedztwie dworu Lobarta jest takze nieznana postac.
	AI_Output(self, hero, "Info_Mod_Mika_Randolph_28_04"); //Tak czy inaczej, musze byc teraz ostrozny i nie mam juz czasu na rozmowe.
};

INSTANCE Info_Mod_Mika_RandolphWeg (C_INFO)
{
	npc		= Mod_598_MIL_Mika_NW;
	nr		= 1;
	condition	= Info_Mod_Mika_RandolphWeg_Condition;
	information	= Info_Mod_Mika_RandolphWeg_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mika_RandolphWeg_Condition()
{
	if ((Mod_Randolph_Started == 13)
	|| (Mod_Randolph_Started == 16))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Parlaf_RandolphWeg))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mika_RandolphWeg_Info()
{
	AI_Output(self, hero, "Info_Mod_Mika_RandolphWeg_28_00"); //To dobra wiadomosc. Wydaje sie, ze demony znów zniknely.
	AI_Output(self, hero, "Info_Mod_Mika_RandolphWeg_28_01"); //Przypuszczam, ze musieli zdac sobie sprawe, ze nie pasuja do nas.
	AI_Output(self, hero, "Info_Mod_Mika_RandolphWeg_28_02"); //Mozesz wiec spokojnie wrócic do miasta.

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Mika_Dokumente (C_INFO)
{
	npc		= Mod_598_MIL_Mika_NW;
	nr		= 1;
	condition	= Info_Mod_Mika_Dokumente_Condition;
	information	= Info_Mod_Mika_Dokumente_Info;
	permanent	= 1;
	important	= 0;
	description	= "Konfiskujesz notatki Baltrama?";
};

FUNC INT Info_Mod_Mika_Dokumente_Condition()
{
	if (Mod_REL_Dokumente == 3)
	|| (Mod_REL_Dokumente == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mika_Dokumente_Info()
{
	AI_Output(hero, self, "Info_Mod_Mika_Dokumente_15_00"); //Konfiskujesz notatki Baltrama?
	AI_Output(self, hero, "Info_Mod_Mika_Dokumente_28_01"); //Poprawne.
	AI_Output(hero, self, "Info_Mod_Mika_Dokumente_15_02"); //I sa jeszcze w twoim posiadaniu?
	AI_Output(self, hero, "Info_Mod_Mika_Dokumente_28_03"); //Prawo.
	AI_Output(hero, self, "Info_Mod_Mika_Dokumente_15_04"); //Czy móglbys to ugotowac....?
	AI_Output(self, hero, "Info_Mod_Mika_Dokumente_28_05"); //200 zlota.

	Info_ClearChoices	(Info_Mod_Mika_Dokumente);

	if (Mod_Verhandlungsgeschick > 0)
	&& (Mod_REL_Dokumente == 3)
	{
		Info_AddChoice	(Info_Mod_Mika_Dokumente, "Co powiedzialby Pan Hagen, mówiac:....", Info_Mod_Mika_Dokumente_C);
	};

	Info_AddChoice	(Info_Mod_Mika_Dokumente, "Wróce pózniej.", Info_Mod_Mika_Dokumente_B);

	if (Npc_HasItems(hero, ItMi_Gold) >= 200)
	{
		Info_AddChoice	(Info_Mod_Mika_Dokumente, "Ladunek.", Info_Mod_Mika_Dokumente_A);
	};
};

FUNC VOID Info_Mod_Mika_Dokumente_C()
{
	AI_Output(hero, self, "Info_Mod_Mika_Dokumente_C_15_00"); //Co powiedzialby Lord Hagen o zatrzymywaniu skonfiskowanych towarów?

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Mika_Dokumente_C_28_01"); //Och, wezcie to juz teraz, nie moge nic z tym zrobic.

		CreateInvItems	(hero, ItWr_Lehrling01, 1);
		CreateInvItems	(hero, ItWr_Lehrling02, 1);
		B_ShowGivenThings	("Pozyskiwanie arkuszy praktykanta");

		Npc_RemoveInvItems	(self, ItWr_Lehrling01, 1);
		Npc_RemoveInvItems	(self, ItWr_Lehrling02, 1);

		B_RaiseHandelsgeschick (5);

		Mod_REL_Dokumente = 5;

		B_LogEntry	(TOPIC_MOD_KHORATA_DOKUMENTE, "W koncu weszlam w posiadanie lisci i musze tylko zwrócic je praktykantowi. Wyglada jak cos naprawde goracego....");

		Info_ClearChoices	(Info_Mod_Mika_Dokumente);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Mika_Dokumente_C_28_02"); //200 zlota lub brak banknotów.

		Mod_REL_Dokumente = 4;
	};
};

FUNC VOID Info_Mod_Mika_Dokumente_B()
{
	AI_Output(hero, self, "Info_Mod_Mika_Dokumente_B_15_00"); //Wróce pózniej.

	Info_ClearChoices	(Info_Mod_Mika_Dokumente);
};

FUNC VOID Info_Mod_Mika_Dokumente_A()
{
	AI_Output(hero, self, "Info_Mod_Mika_Dokumente_A_15_00"); //Ladunek.

	Npc_RemoveInvItems	(hero, ItMi_Gold, 200);
	CreateInvItems	(hero, ItWr_Lehrling01, 1);
	CreateInvItems	(hero, ItWr_Lehrling02, 1);

	Npc_RemoveInvItems	(self, ItWr_Lehrling01, 1);
	Npc_RemoveInvItems	(self, ItWr_Lehrling02, 1);

	B_ShowGivenThings	("200 zlota i lisci uzyskanego ucznia");

	Mod_REL_Dokumente = 5;

	B_LogEntry	(TOPIC_MOD_KHORATA_DOKUMENTE, "W koncu weszlam w posiadanie lisci i musze tylko zwrócic je praktykantowi. Wyglada jak cos naprawde goracego....");

	Info_ClearChoices	(Info_Mod_Mika_Dokumente);
};

INSTANCE Info_Mod_Mika_VinoBrennerei (C_INFO)
{
	npc		= Mod_598_MIL_Mika_NW;
	nr		= 1;
	condition	= Info_Mod_Mika_VinoBrennerei_Condition;
	information	= Info_Mod_Mika_VinoBrennerei_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mika_VinoBrennerei_Condition()
{
	if (Kapitel >= 3)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Lobart_VinoBrennerei))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mika_VinoBrennerei_Info()
{
	AI_Output(self, hero, "Info_Mod_Mika_VinoBrennerei_28_00"); //Trzymac przez sekunde.
	AI_Output(hero, self, "Info_Mod_Mika_VinoBrennerei_15_01"); //Co to jest?
	AI_Output(self, hero, "Info_Mod_Mika_VinoBrennerei_28_02"); //Duzo podrózujesz tam. Widziales Vino wszedzie?
	AI_Output(self, hero, "Info_Mod_Mika_VinoBrennerei_28_03"); //Lobart jest bardzo zaniepokojony, poniewaz opuscil gospodarstwo dwa dni temu i jeszcze nie wrócil.
	AI_Output(self, hero, "Info_Mod_Mika_VinoBrennerei_28_04"); //I pamietam tylko, ze tu przejezdzal przez brame miasta.
	AI_Output(self, hero, "Info_Mod_Mika_VinoBrennerei_28_05"); //Nie wiem jednak, dokad poszedl pózniej.
	AI_Output(hero, self, "Info_Mod_Mika_VinoBrennerei_15_06"); //Nie, jeszcze go nie widzialem.
	AI_Output(self, hero, "Info_Mod_Mika_VinoBrennerei_28_07"); //Nikt w gospodarstwie Lobarta nie chce wiedziec, dokad sie udal.
	AI_Output(self, hero, "Info_Mod_Mika_VinoBrennerei_28_08"); //Jest na polu przez caly dzien z innymi rolnikami.
	AI_Output(self, hero, "Info_Mod_Mika_VinoBrennerei_28_09"); //Ktos musial cos uslyszec.
	AI_Output(self, hero, "Info_Mod_Mika_VinoBrennerei_28_10"); //I wolno mi tu wstac i zadawac pytania.

	Log_CreateTopic	(TOPIC_MOD_VINO_WO, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_VINO_WO, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_VINO_WO, "W gospodarstwie Lobarta brakuje Vino.");
	B_LogEntry_NS	(TOPIC_MOD_VINO_WO, "Mika widzial Vino mijalo wschodnia brame, ale nie pamietal, dokad poszedl.");
	B_LogEntry_NS	(TOPIC_MOD_VINO_WO, "Moze powinienem porozmawiac z jego chlopami na polu.");
};

INSTANCE Info_Mod_Mika_AndreVermaechtnis (C_INFO)
{
	npc		= Mod_598_MIL_Mika_NW;
	nr		= 1;
	condition	= Info_Mod_Mika_AndreVermaechtnis_Condition;
	information	= Info_Mod_Mika_AndreVermaechtnis_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mika_AndreVermaechtnis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_AndreVermaechtnis))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mika_AndreVermaechtnis_Info()
{
	AI_Output(self, hero, "Info_Mod_Mika_AndreVermaechtnis_28_00"); //Damn.....
	AI_Output(hero, self, "Info_Mod_Mika_AndreVermaechtnis_15_01"); //Co tu mamy? Gorace rzeczy?
	AI_Output(self, hero, "Info_Mod_Mika_AndreVermaechtnis_28_02"); //I.... ..... Szal, wyjdzmy tutaj.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Mika_AndreVermaechtnis2 (C_INFO)
{
	npc		= Mod_598_MIL_Mika_NW;
	nr		= 1;
	condition	= Info_Mod_Mika_AndreVermaechtnis2_Condition;
	information	= Info_Mod_Mika_AndreVermaechtnis2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mika_AndreVermaechtnis2_Condition()
{
	if (Mod_PAL_MikaHehler == 1)
	&& (Npc_GetDistToWP(self, "WP_ASSASSINE_08") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mika_AndreVermaechtnis2_Info()
{
	AI_Output(self, hero, "Info_Mod_Mika_AndreVermaechtnis2_28_00"); //Poszlismy, jestesmy uwiezieni. Walcz o swoje zycie, bo w koncu jak Yasin.

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild	(self, GIL_STRF);

	Mod_587_NONE_Jesper_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_587_NONE_Jesper_NW, GIL_STRF);
};

INSTANCE Info_Mod_Mika_Pflanzensammler (C_INFO)
{
	npc		= Mod_598_MIL_Mika_NW;
	nr		= 1;
	condition	= Info_Mod_Mika_Pflanzensammler_Condition;
	information	= Info_Mod_Mika_Pflanzensammler_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mika_Pflanzensammler_Condition()
{
	if (Npc_HasItems(hero, ItPl_Health_Herb_01) >= 150)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mika_Pflanzensammler_Info()
{
	AI_Output(self, hero, "Info_Mod_Mika_Pflanzensammler_28_00"); //Hej, trzymaj go tam!
	AI_Output(hero, self, "Info_Mod_Mika_Pflanzensammler_15_01"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Mika_Pflanzensammler_28_02"); //Ziolowcy skarzyli sie, ze caly czas zbieracie wszystkie rosliny lecznicze w okolicy i trzymacie je dla siebie.
	AI_Output(self, hero, "Info_Mod_Mika_Pflanzensammler_28_03"); //Istniejace juz istniejace nie wystarcza na pokrycie zapotrzebowania.
	AI_Output(hero, self, "Info_Mod_Mika_Pflanzensammler_15_04"); //Nie wiedzialem, ze zabrania sie samodzielnego zbierania roslin. Czego od mnie oczekujesz?
	AI_Output(self, hero, "Info_Mod_Mika_Pflanzensammler_28_05"); //Dajesz mi 50 roslin leczniczych, a ja zaplace ci prawie tak dobrze jak jeden z kupców.
	AI_Output(self, hero, "Info_Mod_Mika_Pflanzensammler_28_06"); //Nie dostajesz za to zadnych klopotów.

	Info_ClearChoices	(Info_Mod_Mika_Pflanzensammler);

	Info_AddChoice	(Info_Mod_Mika_Pflanzensammler, "To jest wymuszenie. (... )", Info_Mod_Mika_Pflanzensammler_B);
	Info_AddChoice	(Info_Mod_Mika_Pflanzensammler, "A zatem wszystko w porzadku. Mam nadzieje, ze to pomaga.", Info_Mod_Mika_Pflanzensammler_A);
};

FUNC VOID Info_Mod_Mika_Pflanzensammler_B()
{
	AI_Output(hero, self, "Info_Mod_Mika_Pflanzensammler_B_15_00"); //To jest wymuszenie. Nikt nie moze mi zabronic zbierania ziól!
	AI_Output(self, hero, "Info_Mod_Mika_Pflanzensammler_B_28_01"); //Zaluje panskiej decyzji.
	AI_Output(self, hero, "Info_Mod_Mika_Pflanzensammler_B_28_02"); //Zmusza mnie do potepienia mojej pomocy w przypadku, gdy zostaniesz zaatakowany poza brama miasta.
	AI_Output(self, hero, "Info_Mod_Mika_Pflanzensammler_B_28_03"); //I teraz: idzcie.

	Info_ClearChoices	(Info_Mod_Mika_Pflanzensammler);

	Mod_Mika_Pflanzen = 2;
};

FUNC VOID Info_Mod_Mika_Pflanzensammler_A()
{
	AI_Output(hero, self, "Info_Mod_Mika_Pflanzensammler_A_15_00"); //A zatem wszystko w porzadku. Mam nadzieje, ze to pomaga.

	B_GiveInvItems	(hero, self, ItPl_Health_Herb_01, 50);

	Npc_RemoveInvItems	(self, ItPl_Health_Herb_01, 50);

	AI_Output(self, hero, "Info_Mod_Mika_Pflanzensammler_A_28_01"); //Madra decyzja. Milego dnia.

	B_GiveInvItems	(self, hero, ItMi_Gold, 60);

	B_GivePlayerXP	(150);

	Info_ClearChoices	(Info_Mod_Mika_Pflanzensammler);

	Mod_Mika_Pflanzen = 1;
};

INSTANCE Info_Mod_Mika_Pickpocket (C_INFO)
{
	npc		= Mod_598_MIL_Mika_NW;
	nr		= 1;
	condition	= Info_Mod_Mika_Pickpocket_Condition;
	information	= Info_Mod_Mika_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Mika_Pickpocket_Condition()
{
	C_Beklauen	(80, ItMi_Gold, 25);
};

FUNC VOID Info_Mod_Mika_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Mika_Pickpocket);

	Info_AddChoice	(Info_Mod_Mika_Pickpocket, DIALOG_BACK, Info_Mod_Mika_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Mika_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Mika_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Mika_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Mika_Pickpocket);
};

FUNC VOID Info_Mod_Mika_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Mika_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Mika_Pickpocket);

		Info_AddChoice	(Info_Mod_Mika_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Mika_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Mika_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Mika_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Mika_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Mika_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Mika_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Mika_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Mika_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Mika_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Mika_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Mika_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Mika_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Mika_EXIT (C_INFO)
{
	npc		= Mod_598_MIL_Mika_NW;
	nr		= 1;
	condition	= Info_Mod_Mika_EXIT_Condition;
	information	= Info_Mod_Mika_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Mika_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Mika_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
