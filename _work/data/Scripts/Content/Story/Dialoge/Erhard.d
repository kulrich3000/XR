INSTANCE Info_Mod_Erhard_NeuHier (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_NeuHier_Condition;
	information	= Info_Mod_Erhard_NeuHier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestem tu nowy. Jak szybko dotrzec do Khoraty?";
};

FUNC INT Info_Mod_Erhard_NeuHier_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_August_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Erhard_NeuHier_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_NeuHier_15_00"); //Jestem tu nowy. Jak szybko dotrzec do Khoraty?
	AI_Output(self, hero, "Info_Mod_Erhard_NeuHier_06_01"); //Nowy? A nie ma dealera? Rzadko zdarza sie, ze odwiedzamy.
	AI_Output(self, hero, "Info_Mod_Erhard_NeuHier_06_02"); //Najkrótsza droga prowadzi za moim domem przez waski, skalisty przelecz.
	AI_Output(self, hero, "Info_Mod_Erhard_NeuHier_06_03"); //Nastepnie znajdziecie Panstwo droge prowadzaca w lewo do bramy miejskiej.
};

INSTANCE Info_Mod_Erhard_Arbeit (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Arbeit_Condition;
	information	= Info_Mod_Erhard_Arbeit_Info;
	permanent	= 0;
	important	= 0;
	description	= "Masz dla mnie prace?";
};

FUNC INT Info_Mod_Erhard_Arbeit_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Erhard_Arbeit_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Arbeit_15_00"); //Masz dla mnie prace?
	AI_Output(self, hero, "Info_Mod_Erhard_Arbeit_06_01"); //Nah, czlowiek. Bedziemy miec racje.
	AI_Output(self, hero, "Info_Mod_Erhard_Arbeit_06_02"); //W miescie jest z pewnoscia ktos, kto ma dla ciebie cos do zrobienia.
};

INSTANCE Info_Mod_Erhard_Moor (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Moor_Condition;
	information	= Info_Mod_Erhard_Moor_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mi cos powiedziec o moczarze?";
};

FUNC INT Info_Mod_Erhard_Moor_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Erhard_Moor_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Moor_15_00"); //Czy mozesz mi cos powiedziec o moczarze?
	AI_Output(self, hero, "Info_Mod_Erhard_Moor_06_01"); //Tak, moglem to zrobic. Nie sprawiloby to, ze dzis wieczorem mielibyscie przyjemne marzenia.
	AI_Output(hero, self, "Info_Mod_Erhard_Moor_15_02"); //Skorzystam z mozliwosci.
	AI_Output(self, hero, "Info_Mod_Erhard_Moor_06_03"); //Niektórzy z nich mieszkaja tam pod kciukiem starej czarownicy.
	AI_Output(self, hero, "Info_Mod_Erhard_Moor_06_04"); //Od kilku pokolen, odkad jej przodkowie musieli opuscic Khorate z powodu niektórych rytualów.
	AI_Output(self, hero, "Info_Mod_Erhard_Moor_06_05"); //Cóz, teraz sa jeszcze bardziej szalone niz przecietny komornik sadowy.
	AI_Output(hero, self, "Info_Mod_Erhard_Moor_15_06"); //Rolnik sadowy?
	AI_Output(self, hero, "Info_Mod_Erhard_Moor_06_07"); //Jezu Chryste, nie slyszales o nich?
	AI_Output(self, hero, "Info_Mod_Erhard_Moor_06_08"); //Odkryli bardzo skuteczny lek, który nazywaja przyjemnoscia - dawca.
	AI_Output(self, hero, "Info_Mod_Erhard_Moor_06_09"); //A teraz chodza po wszystkich ukamienowanych przez caly dzien.
	AI_Output(self, hero, "Info_Mod_Erhard_Moor_06_10"); //Nie pytajcie mnie, jak wciaz udaje im sie handlowac tym towarem.
	AI_Output(self, hero, "Info_Mod_Erhard_Moor_06_11"); //Ale jest tez bardzo popularny w Khoracie. Jestem pewien, ze tak wlasnie jest....
};

INSTANCE Info_Mod_Erhard_Hofstaat (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Hofstaat_Condition;
	information	= Info_Mod_Erhard_Hofstaat_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak dojsc do sadu?";
};

FUNC INT Info_Mod_Erhard_Hofstaat_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Erhard_Moor))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Erhard_Hofstaat_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Hofstaat_15_00"); //Jak dojsc do sadu?
	AI_Output(self, hero, "Info_Mod_Erhard_Hofstaat_06_01"); //To dluga droga.
	AI_Output(self, hero, "Info_Mod_Erhard_Hofstaat_06_02"); //Jesli nadal podazacie ta droga przed moim domem i bedziecie trzymac sie w prawo przy zakretach przy wejsciu na bagno, w koncu dojdziecie do dlugiej jaskini, za która znajduje sie dwór królewski.
	AI_Output(self, hero, "Info_Mod_Erhard_Hofstaat_06_03"); //Sad nie jest jednak rekomendowany wszystkim tym, którzy sa wciaz dosc jasni w ich umyslach.
};

INSTANCE Info_Mod_Erhard_Korndiebe (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Korndiebe_Condition;
	information	= Info_Mod_Erhard_Korndiebe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jest cos, co musze ci powiedziec....";
};

FUNC INT Info_Mod_Erhard_Korndiebe_Condition()
{
	if (Mod_REL_Korndiebe == 2)
	&& (Npc_HasItems(hero, ItMi_Kornballen) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Erhard_Korndiebe_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Korndiebe_15_00"); //Jest cos, co musze ci powiedziec....
	AI_Output(self, hero, "Info_Mod_Erhard_Korndiebe_06_01"); //Co masz na mysli?
	AI_Output(hero, self, "Info_Mod_Erhard_Korndiebe_15_02"); //Zas banda rozbojów wyslala mnie, abym przywiózl wasze ziarno.
	AI_Output(self, hero, "Info_Mod_Erhard_Korndiebe_06_03"); //(smiech) Oh, to nic nowego, ze próbuja ukrasc moje plony.
	AI_Output(self, hero, "Info_Mod_Erhard_Korndiebe_06_04"); //Pewnego razu ktos zaskakuje do mojego domu w poludnie.
	AI_Output(self, hero, "Info_Mod_Erhard_Korndiebe_06_05"); //Wszyscy go obserwowali, ale nie zdawal sobie z tego sprawy, dopóki nie wyszedl z ziarnem na ramie.
	AI_Output(self, hero, "Info_Mod_Erhard_Korndiebe_06_06"); //Nie martw sie o chlopców, powiedzialem juz ci w miescie.
	AI_Output(self, hero, "Info_Mod_Erhard_Korndiebe_06_07"); //Twój obóz nie bedzie trwal dluzej.

	B_LogEntry	(TOPIC_MOD_KHORATA_KORNDIEBE, "Zdradzilem zlodziei kukurydzy. Powinienes trzymac glupie gry chlopca.");

	B_GivePlayerXP	(100);

	B_Göttergefallen (1, 1);

	B_SetTopicStatus	(TOPIC_MOD_KHORATA_KORNDIEBE, LOG_SUCCESS);
};

INSTANCE Info_Mod_Erhard_Dokumente (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Dokumente_Condition;
	information	= Info_Mod_Erhard_Dokumente_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy zdarzylo Ci sie znalezc tutaj jakies zagubione notatki?";
};

FUNC INT Info_Mod_Erhard_Dokumente_Condition()
{
	if (Mod_REL_Dokumente == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Erhard_Dokumente_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Dokumente_15_00"); //Czy zdarzylo Ci sie znalezc tutaj jakies zagubione notatki?
	AI_Output(self, hero, "Info_Mod_Erhard_Dokumente_06_01"); //Mozesz sie zalozyc! Kilka dni temu, za domem.
	AI_Output(self, hero, "Info_Mod_Erhard_Dokumente_06_02"); //Musze powiedziec, zona i ja moglem sie z tego wiele nauczyc!
	AI_Output(hero, self, "Info_Mod_Erhard_Dokumente_15_03"); //Czy moge miec strony?
	AI_Output(self, hero, "Info_Mod_Erhard_Dokumente_06_04"); //Nie obwiniam Cie za chec spojrzenia.
	AI_Output(self, hero, "Info_Mod_Erhard_Dokumente_06_05"); //Przykro mi jednak, ze zawiode cie; Wkrótce potem przekazalem je swojemu przyjacielowi.
	AI_Output(hero, self, "Info_Mod_Erhard_Dokumente_15_06"); //Gdzie moge znalezc dealera?
	AI_Output(self, hero, "Info_Mod_Erhard_Dokumente_06_07"); //Nie zawsze w tym samym miejscu! Ale teraz jest w Khorinis, jesli sie nie myle.
	AI_Output(self, hero, "Info_Mod_Erhard_Dokumente_06_08"); //Baltram to jego imie.
	AI_Output(hero, self, "Info_Mod_Erhard_Dokumente_15_09"); //Dziekujemy za informacje.

	B_LogEntry	(TOPIC_MOD_KHORATA_DOKUMENTE, "Erhard mial dokumenty przez krótki czas, ale przekazal je Baltramowi, którego odnajduje w miescie Khorini.");

	Mod_REL_Dokumente = 2;
};

INSTANCE Info_Mod_Erhard_Hopfensack (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Hopfensack_Condition;
	information	= Info_Mod_Erhard_Hopfensack_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zabraklo piwa, poniewaz nie dostarczasz chmielu.";
};

FUNC INT Info_Mod_Erhard_Hopfensack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brauer_August02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Erhard_Hopfensack_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Hopfensack_15_00"); //Zabraklo piwa, poniewaz nie dostarczasz chmielu.
	AI_Output(self, hero, "Info_Mod_Erhard_Hopfensack_06_01"); //Co wiec? Czy powinni palic lub polknac ten przysmak?
	AI_Output(self, hero, "Info_Mod_Erhard_Hopfensack_06_02"); //Powaznie. Dostalem trzy worki chmielu. Sluga powinien zabrac go do piwowaru. Ale on jest zaginiony.
	AI_Output(hero, self, "Info_Mod_Erhard_Hopfensack_15_03"); //Nie moze tak sie stac. Wlasnie wrócilem od browaru.
	AI_Output(self, hero, "Info_Mod_Erhard_Hopfensack_06_04"); //Mam na mysli sluge. Mial zabrac worki do miasta. Odszedl na dwa dni. Jesli jest to pilne, moze móglbys....
	AI_Output(hero, self, "Info_Mod_Erhard_Hopfensack_15_06"); //Widze. Bede zabieralem torebki ze soba.
	AI_Output(self, hero, "Info_Mod_Erhard_Hopfensack_06_07"); //To obrzek. Oto kilka portretów. I powiedz browarnikowi, ze jest winien 150 zlota.

	CreateInvItems	(hero, ItMi_Gold, 30);
	CreateInvItems	(hero, ItMi_Hopfensack, 3);

	B_ShowGivenThings	("30 Otrzymane worki zlote i 3 chmielowe");
};

INSTANCE Info_Mod_Erhard_RebellischesSchaf (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_RebellischesSchaf_Condition;
	information	= Info_Mod_Erhard_RebellischesSchaf_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam doprowadzic jedna z Twoich owiec do rzeznika.";
};

FUNC INT Info_Mod_Erhard_RebellischesSchaf_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Metzger_Schaf))
	&& (Mod_Metzger_Schaf == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Erhard_RebellischesSchaf_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_RebellischesSchaf_15_00"); //Mam doprowadzic jedna z Twoich owiec do rzeznika.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_01"); //Ktos wreszcie nadchodzi!
	AI_Output(hero, self, "Info_Mod_Erhard_RebellischesSchaf_15_02"); //Dlaczego jest pan z tego tak zadowolony?
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_03"); //Mam bardzo mloda owce, co sprawia, ze caly czas mam problemy.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_04"); //Kilka lat temu jeden z moich kombajnów ukradl kilka jagniat i uwolnil je pózniej.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_05"); //Te jagnieta przetrwaly przypadkowo i obecnie staly sie malym stadem.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_06"); //Od kiedy Vincent opadl na zywca kosci, przestal dbac o regulacje populacji zwierzat.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_07"); //W ten sposób dzika populacja owiec stale rosnie.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_08"); //Mój baranek Emma uciekl ode mnie jakis czas temu i prawdopodobnie nawiazal kontakt z ta grupa.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_09"); //Od tamtej pory wykorzystywala kazda dywersje do ucieczki.
	AI_Output(hero, self, "Info_Mod_Erhard_RebellischesSchaf_15_10"); //Dlaczego nie pozwolisz po prostu Emmie odejsc?
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_11"); //Czy wiesz ile zlota przynosi jagniecina? Oczywiscie nie, albo nie prosilbys.
	AI_Output(hero, self, "Info_Mod_Erhard_RebellischesSchaf_15_12"); //Dlaczego w zamian nie zlapiesz jakichs okazów z dzikiego stada? Byc moze sa bardziej oszczedne.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_13"); //Nie. Ich mieso prawie nie przynosi zadnych zysków na rynku.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_14"); //W warunkach naturalnych owce rzadko zbieraja zapasy tluszczu, a ich chudy miazsz jest twardy i sinewski.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_15"); //Nikt nie jest z tego zadowolony.
	AI_Output(hero, self, "Info_Mod_Erhard_RebellischesSchaf_15_16"); //A zatem wszystko w porzadku. Wtedy zabiore Emme ze mna do rzeznika.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_17"); //Wlasnie to zamierzalem zaproponowac. Ale nie daj sie zwiesc zwierzeciu!
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_18"); //Stado dzikich zwierzat pasie sie na lace z opuszczonym domem, naprzeciwko wodospadu.
	AI_Output(self, hero, "Info_Mod_Erhard_RebellischesSchaf_06_19"); //Powinienes je duzo obejsc.

	B_LogEntry	(TOPIC_MOD_METZGER_SCHAF, "Baranka Emma ostatnio powodowala problemy Erharda, poniewaz chciala przelewac sie do dzikiego stada owiec. Zakoncze ja, zabierajac Emme do rzeznika. Nie moge dostrzec stada owiec, wiec nie trace Emmy.");

	Wld_InsertNpc	(Hammel_Emma_01,	"REL_SURFACE_225");
	Wld_InsertNpc	(Hammel_Emma_02,	"REL_SURFACE_225");

	Wld_InsertNpc	(Schaf_Emma_01,	"REL_SURFACE_225");
	Wld_InsertNpc	(Schaf_Emma_02,	"REL_SURFACE_225");
	Wld_InsertNpc	(Schaf_Emma_03,	"REL_SURFACE_225");
	Wld_InsertNpc	(Schaf_Emma_04,	"REL_SURFACE_225");
	Wld_InsertNpc	(Schaf_Emma_05,	"REL_SURFACE_225");
};

INSTANCE Info_Mod_Erhard_Bierhexen (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Bierhexen_Condition;
	information	= Info_Mod_Erhard_Bierhexen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jeczmien piwowara jest zanieczyszczony moczem.";
};

FUNC INT Info_Mod_Erhard_Bierhexen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brauer_Bierhexen4))
	&& (Mod_Bierhexen == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Erhard_Bierhexen_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Bierhexen_15_00"); //Jeczmien piwowara jest zanieczyszczony moczem. Co wiesz o tym?
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen_06_01"); //Ktos ten musi uniewaznic swój pecherz. (luskanie
	AI_Output(hero, self, "Info_Mod_Erhard_Bierhexen_15_02"); //Masz z tym cos wspólnego?
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen_06_03"); //Czy to gonna jest przesluchaniem czy czyms? Oczywiscie na jeczmieniu oczywiscie ocisne, zanim je wyslemy. (smiertelnicy)
	AI_Output(hero, self, "Info_Mod_Erhard_Bierhexen_15_04"); //Spokój, czy ty sie uspokoisz? Jestem dosc powazny.
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen_06_05"); //Wszystko w porzadku, nawet jesli jest ciezko.
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen_06_06"); //Co wiec chcesz, abym z tym zrobil?
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen_06_07"); //Jeczmien jest skladowany w magazynie po zmieleniu. Gdyby ktos chcial na mnie zartowac, móglby to zrobic.
	AI_Output(hero, self, "Info_Mod_Erhard_Bierhexen_15_08"); //A kto chcialby wykonac na Tobie sztuczke?
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen_06_09"); //Melvin i jego banda wydrazonych cebul, to na pewno.
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen_06_10"); //Chociaz jestem pewien, ze nie pozostana niezauwazeni. Nie masz po prostu talentu.
};

INSTANCE Info_Mod_Erhard_Bierhexen2 (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Bierhexen2_Condition;
	information	= Info_Mod_Erhard_Bierhexen2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestem gonna wziac Melvin.";
};

FUNC INT Info_Mod_Erhard_Bierhexen2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Erhard_Bierhexen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Erhard_Bierhexen2_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Bierhexen2_15_00"); //Jestem gonna wziac Melvin.
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen2_06_01"); //Nie mam nic przeciwko temu, jesli wybijecie z niego gówno. Z pewnoscia na to zasluguje.

	B_LogEntry	(TOPIC_MOD_KHORATA_BIERHEXEN, "Erhard przekierowal podejrzliwosc do Melvina i jego gangu, którzy sa dostepni dla takich dowcipów.");
};

INSTANCE Info_Mod_Erhard_Bierhexen3 (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Bierhexen3_Condition;
	information	= Info_Mod_Erhard_Bierhexen3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Gdzie jest on i jego oddzial?";
};

FUNC INT Info_Mod_Erhard_Bierhexen3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Erhard_Bierhexen))
	&& (Mod_Bierhexen == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Erhard_Bierhexen3_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Bierhexen3_15_00"); //Gdzie jest on i jego oddzial?
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen3_06_01"); //W pólnocno-wschodniej Relendel. Stamtad idziesz w kierunku wrzosowiska, ale nie podazaj sciezka do niego, ale idziesz prosto przez maly las.
	AI_Output(self, hero, "Info_Mod_Erhard_Bierhexen3_06_02"); //Za nimi na malej polanie stoja ich skromne namioty.
};

INSTANCE Info_Mod_Erhard_Freudenspender (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Freudenspender_Condition;
	information	= Info_Mod_Erhard_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Chcesz dac przyjemnosc?";
};                       

FUNC INT Info_Mod_Erhard_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Erhard_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Erhard_Freudenspender_15_00"); //Chcesz dac przyjemnosc?
	AI_Output(self, hero, "Info_Mod_Erhard_Freudenspender_06_01"); //Chlopiec, jestem na to za stary. W moim wieku jestes szczesliwy, ze kazdego dnia mozesz miec jasny umysl.
};

INSTANCE Info_Mod_Erhard_Pickpocket (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_Pickpocket_Condition;
	information	= Info_Mod_Erhard_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Erhard_Pickpocket_Condition()
{
	C_Beklauen	(71, ItMi_Gold, 26);
};

FUNC VOID Info_Mod_Erhard_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Erhard_Pickpocket);

	Info_AddChoice	(Info_Mod_Erhard_Pickpocket, DIALOG_BACK, Info_Mod_Erhard_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Erhard_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Erhard_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Erhard_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Erhard_Pickpocket);
};

FUNC VOID Info_Mod_Erhard_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Erhard_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Erhard_Pickpocket);

		Info_AddChoice	(Info_Mod_Erhard_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Erhard_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Erhard_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Erhard_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Erhard_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Erhard_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Erhard_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Erhard_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Erhard_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Erhard_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Erhard_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Erhard_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Erhard_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Erhard_EXIT (C_INFO)
{
	npc		= Mod_7506_OUT_Erhard_REL;
	nr		= 1;
	condition	= Info_Mod_Erhard_EXIT_Condition;
	information	= Info_Mod_Erhard_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Erhard_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Erhard_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
