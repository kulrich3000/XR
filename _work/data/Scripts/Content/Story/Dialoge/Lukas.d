INSTANCE Info_Mod_Lukas_Hi (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Hi_Condition;
	information	= Info_Mod_Lukas_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jaki jest Twój zawód?";
};

FUNC INT Info_Mod_Lukas_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lukas_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Lukas_Hi_15_00"); //Jaki jest Twój zawód?
	AI_Output(self, hero, "Info_Mod_Lukas_Hi_06_01"); //Slusarze, ciesle, barmanki,.... Robie wszystko, czego potrzebuje.
	AI_Output(self, hero, "Info_Mod_Lukas_Hi_06_02"); //Ale wole handel.
};

INSTANCE Info_Mod_Lukas_Lernen (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Lernen_Condition;
	information	= Info_Mod_Lukas_Lernen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy moge sie od Ciebie nauczyc?";
};

FUNC INT Info_Mod_Lukas_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lukas_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Lukas_Lernen_15_00"); //Czy moge sie od Ciebie nauczyc?
	AI_Output(self, hero, "Info_Mod_Lukas_Lernen_06_01"); //Oczywiscie. (smiech) Chcesz pracowac dla mnie lub co?

	Info_ClearChoices	(Info_Mod_Lukas_Lernen);

	Info_AddChoice	(Info_Mod_Lukas_Lernen, "Nie.", Info_Mod_Lukas_Lernen_B);
	Info_AddChoice	(Info_Mod_Lukas_Lernen, "Tak. Dostales cos?", Info_Mod_Lukas_Lernen_A);
};

FUNC VOID Info_Mod_Lukas_Lernen_B()
{
	AI_Output(hero, self, "Info_Mod_Lukas_Lernen_B_15_00"); //Nie.

	Info_ClearChoices	(Info_Mod_Lukas_Lernen);
};

FUNC VOID Info_Mod_Lukas_Lernen_A()
{
	AI_Output(hero, self, "Info_Mod_Lukas_Lernen_A_15_00"); //Tak. Dostales cos?
	AI_Output(self, hero, "Info_Mod_Lukas_Lernen_A_06_01"); //Ha, lubie Cie. Przejsc prosto do punktu.
	AI_Output(self, hero, "Info_Mod_Lukas_Lernen_A_06_02"); //Dopiero zanim oddam Ci prace, chce miec pewnosc, ze jestes czlowiekiem.
	AI_Output(hero, self, "Info_Mod_Lukas_Lernen_A_15_03"); //Jak moge dac ci moja....? aby udowodnic meskosc?
	AI_Output(self, hero, "Info_Mod_Lukas_Lernen_A_06_04"); //Slysze, jak rozpoczynaja sie coroczne polowania na szczury w Khorata. Tam mezczyzni rywalizuja miedzy soba w konkurencji.
	AI_Output(self, hero, "Info_Mod_Lukas_Lernen_A_06_05"); //Jesli wezmiesz udzial i zrobisz to dosc dobrze, bedziemy rozmawiac.
	AI_Output(self, hero, "Info_Mod_Lukas_Lernen_A_06_06"); //Porozmawiaj z Friedelem, przyblizy uczestnikom. Znajdziesz go w jednym z domów na brzegu jeziora.

	Mod_REL_Wettstreit = 1;

	Mod_REL_Wettstreit_Tag = Wld_GetDay()-1;

	Log_CreateTopic	(TOPIC_MOD_KHORATA_WETTSTREIT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_WETTSTREIT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_WETTSTREIT, "Rzemieslnik Lukas z Khoraty zaproponowal mi prace, jesli udowodnie swoja odwage podczas polowania na szczury. Mam odwiedzic Friedel na brzegu jeziora.");

	Info_ClearChoices	(Info_Mod_Lukas_Lernen);
};

INSTANCE Info_Mod_Lukas_Wettstreit (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Wettstreit_Condition;
	information	= Info_Mod_Lukas_Wettstreit_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wygralem polowanie na szczury.";
};

FUNC INT Info_Mod_Lukas_Wettstreit_Condition()
{
	if (Mod_REL_Wettstreit == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Wettstreit_Info()
{
	AI_Output(hero, self, "Info_Mod_Lukas_Wettstreit_15_00"); //Wygralem polowanie na szczury.
	AI_Output(self, hero, "Info_Mod_Lukas_Wettstreit_06_01"); //Slowo zebralo sie! Bylbym zaszczycony, gdybys dal mi reke.
	AI_Output(hero, self, "Info_Mod_Lukas_Wettstreit_15_02"); //Co nalezy zrobic?
	AI_Output(self, hero, "Info_Mod_Lukas_Wettstreit_06_03"); //Jestem posrodku mojej pracy i koncze sie z paznokci.
	AI_Output(self, hero, "Info_Mod_Lukas_Wettstreit_06_04"); //Mozesz przyniesc mi z rynku trzy paczki paznokci, co mi pomoze.
	AI_Output(self, hero, "Info_Mod_Lukas_Wettstreit_06_05"); //Wystarczy poprosic dealerów, aby dowiedzieli sie, kto sprzedaje te rzeczy.
	AI_Output(hero, self, "Info_Mod_Lukas_Wettstreit_15_06"); //To juz wszystko.

	B_SetTopicStatus	(TOPIC_MOD_KHORATA_WETTSTREIT, LOG_SUCCESS);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;

	Log_CreateTopic	(TOPIC_MOD_KHORATA_NAGELNACHSCHUB, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_NAGELNACHSCHUB, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_NAGELNACHSCHUB, "Mam dostac lucas trzy paczki paznokci z rynku w khoracie.");
};

INSTANCE Info_Mod_Lukas_Nagelnachschub (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Nagelnachschub_Condition;
	information	= Info_Mod_Lukas_Nagelnachschub_Info;
	permanent	= 0;
	important	= 0;
	description	= "Trzy pakiety wypelnione gwozdziami, zgodnie z zamówieniem.";
};

FUNC INT Info_Mod_Lukas_Nagelnachschub_Condition()
{
	if (Npc_HasItems(hero, ItMi_Nagelpaket) == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Nagelnachschub_Info()
{
	AI_Output(hero, self, "Info_Mod_Lukas_Nagelnachschub_15_00"); //Trzy pakiety wypelnione gwozdziami, zgodnie z zamówieniem.

	B_GiveInvItems	(hero, self, ItMi_Nagelpaket, 3);

	AI_Output(self, hero, "Info_Mod_Lukas_Nagelnachschub_06_01"); //Bardzo dobrze zrobione! Dlatego tez pozwalam na skakanie po rzeczy.

	B_GiveInvItems	(self, hero, ItMi_Gold, 150);

	B_GivePlayerXP	(100);

	B_SetTopicStatus	(TOPIC_MOD_KHORATA_NAGELNACHSCHUB, LOG_SUCCESS);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;
};

INSTANCE Info_Mod_Lukas_NochWasZuTun (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_NochWasZuTun_Condition;
	information	= Info_Mod_Lukas_NochWasZuTun_Info;
	permanent	= 0;
	important	= 0;
	description	= "Masz dla mnie cos innego do zrobienia?";
};

FUNC INT Info_Mod_Lukas_NochWasZuTun_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lukas_Nagelnachschub))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_NochWasZuTun_Info()
{
	AI_Output(hero, self, "Info_Mod_Lukas_NochWasZuTun_15_00"); //Masz dla mnie cos innego do zrobienia?
	AI_Output(self, hero, "Info_Mod_Lukas_NochWasZuTun_06_01"); //Jestem bardzo wdzieczny za pomoc.
	AI_Output(self, hero, "Info_Mod_Lukas_NochWasZuTun_06_02"); //Dlaczego nie pytasz mojego praktykanta, jesli masz problemy, jesli jeszcze tego nie zrobiles?
};

INSTANCE Info_Mod_Lukas_Unruhen (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Unruhen_Condition;
	information	= Info_Mod_Lukas_Unruhen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy chcialbys odziedziczyc Anselm?";
};

FUNC INT Info_Mod_Lukas_Unruhen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Unruhen2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Unruhen_Info()
{
	AI_Output(hero, self, "Info_Mod_Lukas_Unruhen_15_00"); //Czy chcialbys odziedziczyc Anselm?
	AI_Output(self, hero, "Info_Mod_Lukas_Unruhen_06_01"); //Hmm, na pewno. Usunelam niektóre bledy popelnione przez Anselm.
};

INSTANCE Info_Mod_Lukas_Unruhen2 (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Unruhen2_Condition;
	information	= Info_Mod_Lukas_Unruhen2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jakie bledy?";
};

FUNC INT Info_Mod_Lukas_Unruhen2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lukas_Unruhen))
	&& (Mod_REL_Kandidat < 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Unruhen2_Info()
{
	AI_Output(hero, self, "Info_Mod_Lukas_Unruhen2_15_00"); //Jakie bledy?
	AI_Output(self, hero, "Info_Mod_Lukas_Unruhen2_06_01"); //No cóz, rozluznienie praw przyjemnosci - na przyklad dla mieszkanców miast. Malo kto nie zostawil nikogo, kto dzialalby prawidlowo.
	AI_Output(self, hero, "Info_Mod_Lukas_Unruhen2_06_02"); //Anselm pozwolil na zsuniecie sie zalewki. Raz w miesiacu arbitralnie uwiezil kogos i dal mu wolnosc.
	AI_Output(self, hero, "Info_Mod_Lukas_Unruhen2_06_03"); //Pakiet zlodziei biegnie po otwartej drodze.
};

INSTANCE Info_Mod_Lukas_Unruhen3 (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Unruhen3_Condition;
	information	= Info_Mod_Lukas_Unruhen3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak czujesz sie o konflikcie Buddlera?";
};

FUNC INT Info_Mod_Lukas_Unruhen3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lukas_Unruhen))
	&& (Mod_REL_Kandidat < 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Unruhen3_Info()
{
	AI_Output(hero, self, "Info_Mod_Lukas_Unruhen3_15_00"); //Jak czujesz sie o konflikcie Buddlera?
	AI_Output(self, hero, "Info_Mod_Lukas_Unruhen3_06_01"); //Jest tylko jedna pozycja! Buddysci musza placic za swoja zdrade.
	AI_Output(hero, self, "Info_Mod_Lukas_Unruhen3_15_02"); //Jak sobie to wyobrazasz?
	AI_Output(self, hero, "Info_Mod_Lukas_Unruhen3_06_03"); //Zlozymy odpowiedni oddzial i podejmiemy dzialania przeciwko nim. Jesli sie sprzeciwia, to zostaja zabici.
	AI_Output(self, hero, "Info_Mod_Lukas_Unruhen3_06_04"); //Reszta spedza reszte zycia z wielka kamienna pilka na nogach.
	AI_Output(self, hero, "Info_Mod_Lukas_Unruhen3_06_05"); //Tak czy owak nie moge zaufac takim problemom w moim zyciu.

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "Lukasz uwaza, ze górnicy powinni odpoczac sila.");
};

INSTANCE Info_Mod_Lukas_Unruhen4 (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Unruhen4_Condition;
	information	= Info_Mod_Lukas_Unruhen4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam zaszczytne zadanie....";
};

FUNC INT Info_Mod_Lukas_Unruhen4_Condition()
{
	if (Mod_REL_Kandidat == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Unruhen4_Info()
{
	AI_Output(hero, self, "Info_Mod_Lukas_Unruhen4_15_00"); //Mam zaszczytne zadanie....
	AI_Output(self, hero, "Info_Mod_Lukas_Unruhen4_06_01"); //Tak, wszystko w porzadku. Oswietlmy palacych sie powstanców pod ich tylkiem, czyzbysmy my?
	AI_Output(self, hero, "Info_Mod_Lukas_Unruhen4_06_02"); //No cóz, oto plan: kupie ci maly oddzial dobrych mezczyzn, a ty wypuszczisz szkodnik do gniazda ostatniego czlowieka.
	AI_Output(self, hero, "Info_Mod_Lukas_Unruhen4_06_03"); //Ewentualne zdarzenia..... Aresztowac ich. Ale nie badzcie zbyt piskliwi.
	AI_Output(hero, self, "Info_Mod_Lukas_Unruhen4_15_04"); //Kto powinien mnie zabrac ze soba?
	AI_Output(self, hero, "Info_Mod_Lukas_Unruhen4_06_05"); //Trzech twardych facetów: Friedela, Vona i kata. Oni maja kawalek opróznia ich tylek; Wystarczy tylko podpalic je.
	AI_Output(hero, self, "Info_Mod_Lukas_Unruhen4_15_06"); //Jestem na drodze.

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "Mam zabrac Friedela i kata, a nastepnie sila wypedzic górników z muru.");

	B_StartOtherRoutine	(self, "STADTHALTER");

	Mod_7618_OUT_Norman_REL.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7618_OUT_Norman_REL, GIL_STRF);

	Mod_7613_OUT_Schuerfer_REL.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7613_OUT_Schuerfer_REL, GIL_STRF);

	Mod_7614_OUT_Schuerfer_REL.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7614_OUT_Schuerfer_REL, GIL_STRF);

	Mod_7615_OUT_Schuerfer_REL.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7615_OUT_Schuerfer_REL, GIL_STRF);

	Mod_7616_OUT_Schuerfer_REL.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7616_OUT_Schuerfer_REL, GIL_STRF);

	Mod_7617_OUT_Schuerfer_REL.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7617_OUT_Schuerfer_REL, GIL_STRF);

	Mod_7492_OUT_Roman_REL.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7492_OUT_Roman_REL, GIL_STRF);
};

INSTANCE Info_Mod_Lukas_Unruhen5 (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Unruhen5_Condition;
	information	= Info_Mod_Lukas_Unruhen5_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wszyscy górnicy sa umarli.";
};

FUNC INT Info_Mod_Lukas_Unruhen5_Condition()
{
	if (Mod_REL_LukasS == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Unruhen5_Info()
{
	AI_Output(hero, self, "Info_Mod_Lukas_Unruhen5_15_00"); //Wszyscy górnicy sa umarli.
	AI_Output(self, hero, "Info_Mod_Lukas_Unruhen5_06_01"); //To prawda, oni zasluguja na to. Jestem z Toba zadowolony.
	AI_Output(self, hero, "Info_Mod_Lukas_Unruhen5_06_02"); //Od tej pory Khorata bedzie troche trudniejsza, to sie upewnie. To miasto nie wyladuje jak sad!

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "Ofiary górników byly prawdopodobnie niezbedne do rozwiazania konfliktu. Od teraz powinienem byc w stanie trzymac sie z dala od polityki.");
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_UNRUHEN, LOG_SUCCESS);

	B_GivePlayerXP	(800);

	Mod_REL_Stadthalter = 3;

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Lukas_Theodorus (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Theodorus_Condition;
	information	= Info_Mod_Lukas_Theodorus_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lukas_Theodorus_Condition()
{
	if (Mod_REL_TheodorusS == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Theodorus_Info()
{
	AI_Output(self, hero, "Info_Mod_Lukas_Theodorus_06_00"); //Takim zlodziejem lezacym w buszu powinien byc nasz nowy gubernator, z obcym brakiem, który nawet nas nie zna?
	AI_Output(self, hero, "Info_Mod_Lukas_Theodorus_06_01"); //Wolalbym raczej umrzec niz przyjac taka hanbe!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Lukas_Plagenquest (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Plagenquest_Condition;
	information	= Info_Mod_Lukas_Plagenquest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wydaje mi sie, ze potrzebujesz eksterminatora.";
};

FUNC INT Info_Mod_Lukas_Plagenquest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Plagenquest))
	&& (Mod_REL_Stadthalter == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Plagenquest_Info()
{
	B_Say	(hero, self, "$PLAGENQUEST01");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_06_01"); //Tak, wyslalismy juz przez miasto kilka mlotków mysliwych.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_06_02"); //Ale nawet mlotkami nie udalo sie powstrzymac szkodników.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_06_03"); //Bez wzgledu na to, jak czesto ich bijesz, wracaja oni do nas i w towarzystwie wielu swoich rodaków.
	B_Say	(hero, self, "$PLAGENQUEST02");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_06_05"); //W rzeczywistosci, obecnie badam kroniki miasta i spotkalem sie z czyms.....
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_06_06"); //Minie jednak troche czasu, zanim przejde do pelnej analizy tekstu.
	B_Say	(hero, self, "$PLAGENQUEST03");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_06_08"); //Tak, mozesz spróbowac szczescia jako mlotkowiec na dworze, w którym obecnie jest wiele brudnych stworzen.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_06_09"); //Moze odniesiesz wiekszy sukces.

	B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Wydaje sie, ze Lukasz znalazl pewne wskazówki w kronikach miasta. Do czasu, gdy on je do konca zglebi, mam wypróbowac mnie w dworcu do polowania na owady.");

	Wld_InsertNpc	(Insekt_01, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_01, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_01, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_01, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_01, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_02, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_02, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_02, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_02, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_03, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_03, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_03, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_03, "REL_CITY_341");
};

INSTANCE Info_Mod_Lukas_Plagenquest_02 (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Plagenquest_02_Condition;
	information	= Info_Mod_Lukas_Plagenquest_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lukas_Plagenquest_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Richter_Plagenquest))
	&& (Mod_REL_Stadthalter == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Plagenquest_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_00"); //Ach, dobrze, zeby cie zobaczyc, odkrylem cos waznego.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_01"); //Choroba, która obecnie dotyka miasto, istniala juz wiele stuleci temu - niedlugo po jego powstaniu.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_02"); //Aby zabezpieczyc blogoslawienstwo bogów dla miasta i jego otoczenia, w holdzie bogom uczyniono wówczas poswiecenia zwierzat.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_03"); //Kazdy mial obowiazek poswiecic pewna liczbe zwierzat.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_04"); //Jednak jeden z ich ojców zalozycieli byl tak skapy, ze zamiast owcy czy molate poswiecil owady.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_05"); //Bogowie byli tak wsciekli, ze przenosili ludzkie pragnienie bogatej populacji zwierzat na owady srodowiska.
	B_Say	(hero, self, "$PLAGENQUEST04");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_07"); //No cóz, z klubem chemicznym.
	B_Say	(hero, self, "$PLAGENQUEST05");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_09"); //Tak, przez dlugi czas bylo sie zupelnie bezradnym i wydawalo sie, ze trzeba sie bylo porzucic miasto.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_10"); //Ale wtedy sprawiedliwy i szanowany obywatel Chemos zostal wysypany snem.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_11"); //Otrzymal on instrukcje jak zbudowac bron, która moglaby wypedzic zaraze.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_12"); //Dlatego wlasnie nasz zwyczaj z mlotkami miejskimi musi przyjsc do walki z owadami.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_13"); //Mloty i kluby nie róznily sie wówczas zasadniczo.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_14"); //Nasze prawo w tym zakresie siega nieco pózniej, kiedy to mlotki nadano im charakterystyczny ksztalt, a kluby zostaly zastapione z powodów praktycznych.
	B_Say	(hero, self, "$PLAGENQUEST06");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_16"); //Nie, juz nie boje sie. A produkcja takiej broni nie jest nieskomplikowana. Znalazlem te instrukcje.....
	B_Say	(hero, self, "$PLAGENQUEST07");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_18"); //Oto jej kopia.

	B_GiveInvItems	(self, hero, ItWr_Bauplan_ChemischeKeule, 1);

	B_Say	(hero, self, "$PLAGENQUEST08");

	B_HeroFakeScroll ();

	B_Say	(hero, self, "$PLAGENQUEST09");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_21"); //Czy to prawda? Bedzie pan nam wszystkim przysluzyl sie swietnie.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_22"); //Jak tylko bedziesz miec wszystko razem, wróc tutaj i oddaj materialy do naszego kowala.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_02_06_23"); //A gdzies w miescie znajdziemy klub. Dziekuje, dziekuje.

	B_LogEntry_More	(TOPIC_MOD_ADANOS_PLAGE, TOPIC_MOD_ADANOS_DRECKSVIECHER, "Aha, plaga owadów opiera sie wiec na karze dla bogów za popelnione zniewagi.", "W porzadku, teraz moge szukac chemicznego materialu klubowego, który moze wypedzic bydlo. W Khoracie powinni byc w stanie sami znalezc klub w Khoracie....");

	B_GivePlayerXP	(200);

	Mod_WM_Plage_PartInsekt = 1;
};

INSTANCE Info_Mod_Lukas_Plagenquest_03 (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Plagenquest_03_Condition;
	information	= Info_Mod_Lukas_Plagenquest_03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lukas_Plagenquest_03_Condition()
{
	if (Npc_HasItems(hero, ItMw_Chemo) == 1)
	&& (Mod_REL_Stadthalter == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Plagenquest_03_Info()
{
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_03_06_00"); //Slysze, ze dostales klub. Teraz nadszedl czas, aby wypedzic szkodniki z miasta.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_03_06_01"); //Wiele zwierzat zebralo sie na targowisku. Wez klub chemiczny i zniszcz go.

	B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Teraz nadszedl czas, aby sprawdzic, czy klub chemiczny dziala. Mam do czynienia z wszystkimi lupkami, które zebraly sie na rynku.");

	Wld_InsertNpc	(Insekt_04, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_04, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_04, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_04, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_04, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_05, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_05, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_05, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_05, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_06, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_06, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_06, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_06, "REL_CITY_102");
};

INSTANCE Info_Mod_Lukas_Plagenquest_04 (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Plagenquest_04_Condition;
	information	= Info_Mod_Lukas_Plagenquest_04_Info;
	permanent	= 0;
	important	= 0;
	description	= "Klub byl w stanie powstrzymac owady. Pokonalem ich wszystkich.";
};

FUNC INT Info_Mod_Lukas_Plagenquest_04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lukas_Plagenquest_03))
	&& (Npc_IsDead(Insekt_04))
	&& (Npc_IsDead(Insekt_05))
	&& (Npc_IsDead(Insekt_06))
	&& (Mod_REL_Stadthalter == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Plagenquest_04_Info()
{
	B_Say	(hero, self, "$PLAGENQUEST10");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_04_06_01"); //To wspanialy i pierwszy krok na drodze do ostatecznego wygnania zla.
	B_Say	(hero, self, "$PLAGENQUEST11");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_04_06_03"); //Tak, niestety dowiedzielismy sie, ze nowe pasozyty nadal pochodza z okolicznych lasów.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_04_06_04"); //Gdzies tam, gdzie musi byc korzen zla...... zlowieszczy olbrzymi blad, o którym mówily zródla.
	B_Say	(hero, self, "$PLAGENQUEST12");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_04_06_06"); //Jest cos, a raczej ktos, kto moze Ci w tym pomóc.
	B_Say	(hero, self, "$PLAGENQUEST13");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_04_06_08"); //Obywatel naszego miasta. Jego imie jest aksonem i nosi krew chemiczna, jak dowiedzialem sie kilka godzin temu.
	B_Say	(hero, self, "$PLAGENQUEST14");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_04_06_10"); //Cóz, z jednej strony rodowody daja jasne wskazówki, a z drugiej..... no cóz.....
	B_Say	(hero, self, "$PLAGENQUEST15");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_04_06_12"); //... Znalezlismy z nim klub chemiczny. Caly czas wisiala w salonie jego domu.
	B_Say	(hero, self, "$PLAGENQUEST16");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_04_06_14"); //W kazdym razie, powinien byc w stanie pomóc Ci wyczuc chrzaszcze, odkryc i zniszczyc olbrzymi blad. On juz czeka na Ciebie poza miastem.

	B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Grmpff, to jest coraz lepsze i lepsze. Caly czas klub chemiczny wisial wokól Axona, potomka chemoo.... No cóz, teraz pozwolono mi strzelac z nim do wielkiego bakcyla w lesie. Axon czeka na mnie poza miastem.");

	B_StartOtherRoutine	(Mod_7415_OUT_Axon_REL, "VORSTADT");
	AI_Teleport	(Mod_7415_OUT_Axon_REL, "REL_CITY_001");
};

INSTANCE Info_Mod_Lukas_Plagenquest_05 (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Plagenquest_05_Condition;
	information	= Info_Mod_Lukas_Plagenquest_05_Info;
	permanent	= 0;
	important	= 0;
	description	= "To sie dzieje. Ogromny luk zostaje pokonany.";
};

FUNC INT Info_Mod_Lukas_Plagenquest_05_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Axon_Plagenquest_02))
	&& (Npc_IsDead(Riesenbug))
	&& (Mod_REL_Stadthalter == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Plagenquest_05_Info()
{
	B_Say	(hero, self, "$PLAGENQUEST17");
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_05_06_01"); //To wspaniale. Uczyniles nasze miasto sluzba o nieocenionej wartosci i rozwiales zlo.
	AI_Output(self, hero, "Info_Mod_Lukas_Plagenquest_05_06_02"); //Wez to zloto i mlotek miejski jako podziekowania. Niech wam towarzyszy blogoslawienstwo bogów.

	B_ShowGivenThings	("1000 Otrzymane zloto i mlot miejski");

	CreateInvItems	(hero, ItMw_Stadthammer, 1);
	CreateInvItems	(hero, ItMi_Gold, 1000);

	B_SetTopicStatus	(TOPIC_MOD_ADANOS_DRECKSVIECHER, LOG_SUCCESS);

	B_GivePlayerXP	(800);

	if (!Npc_IsDead(Mod_7415_OUT_Axon_REL))
	{
		B_StartOtherRoutine	(Mod_7415_OUT_Axon_REL, "START");
	};

	B_Göttergefallen (2, 1);
};

INSTANCE Info_Mod_Lukas_Andre (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Andre_Condition;
	information	= Info_Mod_Lukas_Andre_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lukas_Andre_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Herold))
	&& (Mod_PAL_HeroBot == 17)
	&& (Mod_REL_Stadthalter == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lukas_Andre_Info()
{
	AI_Output(self, hero, "Info_Mod_Lukas_Andre_06_00"); //Dobry poranek, zolnierz. Czy tez powinienem wezwac Pana kapitana?
	B_Say	(hero, self, "$HEROBOTQUEST01");
	AI_Output(self, hero, "Info_Mod_Lukas_Andre_06_02"); //Pan Andres planowal dzialac, ale nie bylo mozliwosci wyjscia z wielkiego pieca, wiec on cie wyprzedzil, wlozyl kostium i zwabil robota do wielkiego pieca.
	AI_Output(self, hero, "Info_Mod_Lukas_Andre_06_03"); //Znalezlismy obok Ciebie zapieczetowana koperte. W nim Andre wyjasnil cala sprawe i mianowal cie swoim nastepca.
	AI_Output(self, hero, "Info_Mod_Lukas_Andre_06_04"); //Ale tutaj.... mozesz sam przeczytac szczególy.

	B_GiveInvItems	(self, hero, ItWr_AndreAbschied, 1);

	AI_Output(self, hero, "Info_Mod_Lukas_Andre_06_05"); //A ja powinienem wam dac ten klucz. Prawdopodobnie do pudelka w pokoju kapitana.

	B_GiveInvItems	(self, hero, ItKe_Andre, 1);

	B_Say	(hero, self, "$HEROBOTQUEST02");
	AI_Output(self, hero, "Info_Mod_Lukas_Andre_06_06"); //Dokladnie. Brakowalo Ci nabozenstwa, spales przez 32 godziny snu. Stary konik wydaje sie byc w bardzo dobrej formie.
	AI_Output(self, hero, "Info_Mod_Lukas_Andre_06_07"); //Jesli chcesz sie pozegnac, Andre jest teraz na cmentarzu. Przynajmniej jego prochy. Ale odpocznij najpierw, nie ucieknie od ciebie.
	AI_Output(self, hero, "Info_Mod_Lukas_Andre_06_08"); //O tak, zanim zapomne: operator wielkiego pieca poprosil cie o to, sprawdz go.

	B_Göttergefallen(1, 5);

	B_GivePlayerXP	(1000);

	Log_CreateTopic	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_PAL_BOT, TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, "Robot jest pokonany, ale Lord Andre musial poswiecic sie, aby to osiagnac. Teraz mianowal mnie swoim nastepca.", "Andre faktycznie poswiecil sie, aby zniszczyc robota. W liscie nazwal mnie swoim nastepca i dal mi klucz, który prawdopodobnie prowadzi mnie do jego klatki piersiowej w koszarach.");
	B_SetTopicStatus	(TOPIC_MOD_PAL_BOT, LOG_SUCCESS);

	B_LogEntry_NS	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, "Operator wielkiego pieca Robert chce mnie zobaczyc. Powinienem zatrzymac sie tam i zapytac, o co chodzi.");
};

INSTANCE Info_Mod_Lukas_Judith (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Judith_Condition;
	information	= Info_Mod_Lukas_Judith_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Jak ty i twoja zona?";
};                       

FUNC INT Info_Mod_Lukas_Judith_Condition()
{
	if (Mod_JudithNacht == 3)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Lukas_Judith_Info()
{
	AI_Output(hero, self, "Info_Mod_Lukas_Judith_15_00"); //Jak ty i twoja zona?
	AI_Output(self, hero, "Info_Mod_Lukas_Judith_06_01"); //Mam racje. Zabawny powinien pan teraz o to prosic.
	AI_Output(self, hero, "Info_Mod_Lukas_Judith_06_02"); //Judyta dopiero niedawno przyznala mi sie, ze przez jakis czas oszukiwala.
	AI_Output(self, hero, "Info_Mod_Lukas_Judith_06_03"); //Ale ona mówi, ze to sie nie powtórzy.
	AI_Output(hero, self, "Info_Mod_Lukas_Judith_15_04"); //I wybaczyles jej?
	AI_Output(self, hero, "Info_Mod_Lukas_Judith_06_05"); //Cóz, nie moge dostac nowa staruszke w moim wieku.
	AI_Output(self, hero, "Info_Mod_Lukas_Judith_06_06"); //Wole raczej trzymac te, które juz mam.

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Lukas_Freudenspender (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Freudenspender_Condition;
	information	= Info_Mod_Lukas_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Poczuj sie jak danie radosci?";
};                       

FUNC INT Info_Mod_Lukas_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Lukas_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Lukas_Freudenspender_15_00"); //Poczuj sie jak danie radosci?
	AI_Output(self, hero, "Info_Mod_Lukas_Freudenspender_06_01"); //rzeczy diabelskie! Wyjsc stad!
};

INSTANCE Info_Mod_Lukas_Pickpocket (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_Pickpocket_Condition;
	information	= Info_Mod_Lukas_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Lukas_Pickpocket_Condition()
{
	C_Beklauen	(66, ItMi_Hammer, 1);
};

FUNC VOID Info_Mod_Lukas_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Lukas_Pickpocket);

	Info_AddChoice	(Info_Mod_Lukas_Pickpocket, DIALOG_BACK, Info_Mod_Lukas_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Lukas_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Lukas_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Lukas_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Lukas_Pickpocket);
};

FUNC VOID Info_Mod_Lukas_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Lukas_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Lukas_Pickpocket);

		Info_AddChoice	(Info_Mod_Lukas_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Lukas_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Lukas_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Lukas_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Lukas_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Lukas_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Lukas_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Lukas_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Lukas_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Lukas_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Lukas_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Lukas_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Lukas_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Lukas_EXIT (C_INFO)
{
	npc		= Mod_7516_OUT_Lukas_REL;
	nr		= 1;
	condition	= Info_Mod_Lukas_EXIT_Condition;
	information	= Info_Mod_Lukas_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lukas_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lukas_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
