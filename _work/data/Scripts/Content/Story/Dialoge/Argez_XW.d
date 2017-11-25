INSTANCE Info_Mod_Argez_XW_Vorsicht (C_INFO)
{
	npc		= PC_Friend_XW;
	nr		= 1;
	condition	= Info_Mod_Argez_XW_Vorsicht_Condition;
	information	= Info_Mod_Argez_XW_Vorsicht_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argez_XW_Vorsicht_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Argez_XW_Vorsicht_Info()
{
	AI_Output(self, hero, "Info_Mod_Argez_XW_Vorsicht_01_00"); //Patrz, to pulapka!

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Schattenlord_998_Urnol, "KNASTGANG_02");
};

INSTANCE Info_Mod_Argez_XW_Gefangen (C_INFO)
{
	npc		= PC_Friend_XW;
	nr		= 1;
	condition	= Info_Mod_Argez_XW_Gefangen_Condition;
	information	= Info_Mod_Argez_XW_Gefangen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argez_XW_Gefangen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Urnol_XW_Gefangen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_XW_Gefangen_Info()
{
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_00"); //Dziekuje za przybycie.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen_15_01"); //Nie zrobilo to juz tak wiele dobrego.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_02"); //No cóz, tak.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen_15_03"); //Dlaczego byles oznakowany?
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_04"); //Pamietasz, ze zwierze ucieklo od mnie w chwili, gdy robilem magie?
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_05"); //Sprawdzilem po prostu, czy jest pan wolny od markera i to byl pan sam. Dlatego juz o tym nie myslalem.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_06"); //W rzeczywistosci jednak znakowanie nie przeskoczylo do zwierzecia, ale do mnie.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen_15_07"); //Przykro mi to slyszec.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_08"); //Tak wlasnie jest.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen_15_09"); //Jak mam cie wyprowadzic z tego miejsca? Moge teleportowac w kazdej chwili, ale nie moge sie do Ciebie dostac.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_10"); //Nie bedzie to mozliwe. Nie ma teleportu z królestwa Xeres. Swiat ten jest calkowicie osloniety od naszego wlasnego.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen_15_11"); //Jak wiec mamy uciec?
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_12"); //Musielibysmy uciec. Potem przeslij sie do bramy. Brak mozliwosci.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen_15_13"); //Co jest z Toba? Zazwyczaj nie jestes tak beznadziejny.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_14"); //.... Nie moge ci to powiedziec. Ale badzcie pewni, ze mój ponury nastrój jest calkowicie uzasadniony.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen_15_15"); //Dobrze, wlóz glowe do piasku. Bede szukal drogi ucieczki.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen_01_16"); //Powodzenia.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_ARGEZ, "Jestem uwieziony obok Argeza w celi próbujacej uciec. Zbyt wiele mozliwosci nie jest dostepnych.");

	Wld_InsertNpc	(Monster_11074_Leprechaun_XW, "KNASTGANG_02");
};

INSTANCE Info_Mod_Argez_XW_Gefangen2 (C_INFO)
{
	npc		= PC_Friend_XW;
	nr		= 1;
	condition	= Info_Mod_Argez_XW_Gefangen2_Condition;
	information	= Info_Mod_Argez_XW_Gefangen2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Argez_XW_Gefangen2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Leprechaun_XW_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_XW_Gefangen2_Info()
{
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen2_01_00"); //Czy nie sadzisz, ze powinnismy byc ostrozni? Jesli to jest test, to gra w te tredowatosc?
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen2_15_01"); //Co musimy stracic? To moze byc nasza ostatnia szansa.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen2_01_02"); //A zatem wszystko w porzadku.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen2_15_03"); //Czy jestes oslabiony? Czy uda Ci sie to cofnac?
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen2_01_04"); //Mam nadzieje, ze nie bedzie to konieczne.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen2_01_05"); //Jestem pewien, ze Xeres ma wlasna platforme teleportowa, za pomoca której moze podrózowac do bramy wiezienia.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen2_01_06"); //Teleporta w tym swiecie jest przynajmniej mozliwa i z pewnoscia wpadnie on na pomysl, aby w ciagu kilku sekund stanac przy wejsciu do wiezienia.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Gefangen2_15_07"); //Nastepnie burzmy jego prywatne komnaty.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Gefangen2_01_08"); //Ale nie ma objazdów. Nie ma czasu dla bohaterów.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLUCHT");

	B_LogEntry	(TOPIC_MOD_ARGEZ, "Leprechaun porzucil klucz komórkowy, wiec moglem uwolnic siebie i Argeza. Argez zaklada, ze Xeres posiada prywatna platforme teleportacyjna w swoich komorach. Nadszedl czas, aby ich znalezc i uciec z tego oszolomionego podziemia.");
};

INSTANCE Info_Mod_Argez_XW_Ende (C_INFO)
{
	npc		= PC_Friend_XW;
	nr		= 1;
	condition	= Info_Mod_Argez_XW_Ende_Condition;
	information	= Info_Mod_Argez_XW_Ende_Info;
	permanent	= 0;
	important	= 0;
	description	= "Argez, co tu robisz?";
};

FUNC INT Info_Mod_Argez_XW_Ende_Condition()
{
	if (Kapitel == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Argez_XW_Ende_Info()
{
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_00"); //Argez, co tu robisz?
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_01"); //Przyszedlem tutaj, aby raz na zawsze usunac Xeres z powierzchni ziemi.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_02"); //Wiec to wlasnie wygnaliscie Xeres z eonów....
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_03"); //Tak, to prawda.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_04"); //Stad Twoja znajomosc starej kultury....
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_05"); //Panstwa interwencja nie bedzie juz jednak konieczna. Wraz z Urizielem udalo mi sie wyslac Xeres i jego mocodawców na wieczne tereny lowieckie.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_06"); //Mylisz sie.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_07"); //Choc byc moze wygnaliscie sypialera z powrotem do srodkowego swiata, zanim mógl sie obudzic, i byc moze wyrwaliscie ich dusze z kamieni od pozostalych trzech mocarstw.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_08"); //Jednak dopóki ostatni z jego mocarzy nadal bedzie chodzil po ziemi, dopóki Xeres nigdy nie wejdzie poza swiat.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_09"); //Piaty nosnik zasilania?
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_10"); //Magicy nie potrafili sie dowiedziec, czy nawet istnieje, nawet tam, gdzie moze byc. Co wiesz o nim?
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_11"); //Wszystko! Odzyskalem pamiec, a wydarzenia z przeszlosci sa znowu dostepne dla mojej swiadomosci.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_12"); //Jakim jest on stworzeniem? Gdzie on sie znajduje?
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_13"); //On jest przed toba. To ja!
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_14"); //Co? To niemozliwe.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_15"); //To wy wy wygnaliscie kiedys Xeres i jego poteznicy do srodkowego swiata.... Wiecej
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_16"); //Tak! Jestem nieudanym stworzeniem.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_17"); //To ja bylam karmiona nie wola Xeresa, ale tylko jego moca.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_18"); //Jestem tym, którego istnienie poplecznicy Xeresa chcieli wymazac wszelkie zeznania pozbawiajac mnie pamieci.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_19"); //I to ja teraz, z jego egzystencja, zagraza naszemu zyciu....
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_20"); //Co robisz? Co mówisz?
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_21"); //Wiesz, ze..... Nie bedziesz mógl go trwale zniszczyc, dopóki nie umre.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_22"); //Pospiesz sie wiec, zanim odzyska zdrowie. Zabijcie mnie i przynoszcie swiatu pokój.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_15_23"); //Nie! Nie moge tego zrobic. Walka ta kosztowala juz zbyt wiele istnien ludzkich.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_01_24"); //Musisz! W przeciwnym razie sam sie poswiece!

	Info_ClearChoices	(Info_Mod_Argez_XW_Ende);

	Info_AddChoice	(Info_Mod_Argez_XW_Ende, "Jest inna droga.", Info_Mod_Argez_XW_Ende_B);
	Info_AddChoice	(Info_Mod_Argez_XW_Ende, "A zatem wszystko w porzadku. Prosil pan o to.", Info_Mod_Argez_XW_Ende_A);
};

FUNC VOID Info_Mod_Argez_XW_Ende_B()
{
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_B_15_00"); //Jest inna droga.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_B_01_01"); //Nie. Tak dlugo jak zyje, Xeres równiez nie jest calkowicie martwy.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_B_15_02"); //Xeres nie musi koniecznie umierac.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_B_15_03"); //Moglibysmy go ponownie naprawic. Tym razem nie ma tylnych drzwi. Pali sie tutaj na zawsze.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_B_01_04"); //Niebezpieczenstwo, ze Xeres moze w jakis sposób wybuchnac, bedzie zawsze istnialo.
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_B_15_05"); //Nie zrobilby tego po tysiacach lat bez Foki.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_B_01_06"); //Tak naprawde myslisz?
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_B_15_07"); //Tak. Zrobiles normalne zycie.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_B_01_08"); //Wszystkie sluszne, wszystkie sluszne. Dajmy jej strzal.
	AI_Output(self, hero, "Info_Mod_Argez_XW_Ende_B_01_09"); //Upewnij sie, ze Xeres nie wstanie. Przygotowuje teleport.

	Info_ClearChoices	(Info_Mod_Argez_XW_Ende);

	AI_StopProcessInfos	(self);
	
	B_StartOtherRoutine(self, "RITUAL");

	AI_Teleport	(Xeres_02, "TOT");
	Wld_InsertNpc	(Xeres_03,	"ARENA_01");
};

FUNC VOID Info_Mod_Argez_XW_Ende_A()
{
	AI_Output(hero, self, "Info_Mod_Argez_XW_Ende_A_15_00"); //A zatem wszystko w porzadku. Prosil pan o to.
	AI_Output(self, hero, "DEFAULT"); //

	Info_ClearChoices	(Info_Mod_Argez_XW_Ende);

	AI_StopProcessInfos	(self);

	self.flags = 0;

	AI_UnequipArmor	(self);

	AI_Teleport	(Xeres_02, "TOT");
	Wld_InsertNpc	(Xeres_03,	"ARENA_01");
};
