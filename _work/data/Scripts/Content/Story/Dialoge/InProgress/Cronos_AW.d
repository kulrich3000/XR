INSTANCE Info_Mod_Cronos_AW_Artefakt_01 (C_INFO)
{
	npc		= Mod_9001_KDW_Cronos_AW;
	nr		= 1;
	condition	= Info_Mod_Cronos_AW_Artefakt_01_Condition;
	information	= Info_Mod_Cronos_AW_Artefakt_01_Info;
	permanent	= 0;
	important	= 0;
	description	= "Slyszalem, jak wy wysledziliscie artifakty....";
};

FUNC INT Info_Mod_Cronos_AW_Artefakt_01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_05))
	&& (Mod_Cronos_Artefakt == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_01_Info()
{
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_01_15_00"); //Slyszalem, jak wy wysledziliscie artifakty....
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_03_01"); //Ahh, Saturas opowiedzial ci o tym.... Cóz, to wiecej spekulacji, miekkich nadziei niz prawdziwych przywódców.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_03_02"); //Ach, to w rzeczywistosci bardzo malo prawdopodobne, niemal glupie myslenie, ze cos moze byc prawda.

	Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_01);

	Info_AddChoice	(Info_Mod_Cronos_AW_Artefakt_01, "Moja ciekawosc rozbudzilem.", Info_Mod_Cronos_AW_Artefakt_01_B);
	Info_AddChoice	(Info_Mod_Cronos_AW_Artefakt_01, "Widze. Wróce wtedy do swoich obowiazków.", Info_Mod_Cronos_AW_Artefakt_01_A);
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_01_D()
{
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_00"); //Opisy tej bestii przypomnialy mi o wydarzeniach, które mialy miejsce ponad 200 lat temu.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_01"); //Zgodnie z tradycja potezny artefakt - krysztal absorpcji - zostal przechowywany w swiatyni adano na wyspie Khorinis.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_02"); //Ale zwodniczy i chciwy nowicjusz zdobyl skarby swiatyni, zabil opiekuna tych sanktuariów i pochowal swoje cialo na pustyni.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_03"); //Kiedy drugi Adanoszmage zauwazyl rabunek skarbu i znikniecie ich opiekuna, wielu z nich przyjelo zalozenie, ze to on rabowal skarb, a nastepnie uciekl.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_04"); //Ale Adanos wyslal sen do jednego z magów wodnych, w którym zamordowany narzekal na swój los: ze zostal zamordowany przez sluge Adanosa i ze jego smiertelne szczatki zostaly narazone na spozycie dzikich zwierzat.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_05"); //W rezultacie wszczeto dochodzenie, w którym skonsolidowano dowody haniebnych nowicjuszy.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_06"); //Kiedy byl przesluchiwany, przysiegal, ze nic o wszystkim nie wiedzial i otwarcie blagal Adanosa, aby swiadczyl o swojej czystej naturze.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_07"); //Mówi sie, ze Adanos byl tak podekscytowany swietym zachowaniem nowicjusza, ze w tym samym momencie uczynil go krwiozerczym bestia przed oczami wszystkich, co odpowiadalo jego naturze.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_08"); //Magicy z przerazeniem obrócili swoja magie przeciwko bestii, ale to wydawalo sie nie miec zadnego efektu.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_09"); //Uciekl do okolicznych lasów. Mówi sie, ze kilka razy spotkalo tam mysliwych, których bron byla równiez nieskuteczna.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_10"); //Wsród nowicjuszy jednak wsród rzeczy, magowie znalezli niektóre z kradzionych skarbów, ale nie wazne artefakty.
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_01_D_15_11"); //W zwiazku z tym, musi on byc jeszcze w posiadaniu nowicjusza, uh, bestii?
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_12"); //Tak, takie jest zalozenie. Dopiero po kilku latach bestia zniknela bez sladu.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_13"); //A teraz, po tak wielu dziesiecioleciach, pierwsza wskazówka, choc malo prawdopodobna.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_14"); //Istota moze miec zupelnie inne pochodzenie, a nawet gdyby odpowiadala tradycji, nadal watpliwe byloby, czy artefakt jest jeszcze w jego posiadaniu.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_D_03_15"); //Oprócz faktu, ze boski zaklecie ochrony uniemozliwia jej zakonczenie nieszczesliwego istnienia.... Wiecej
	
	Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_01);

	Info_AddChoice	(Info_Mod_Cronos_AW_Artefakt_01, "I nawet jesli prawdopodobienstwo wydaje sie niskie (....). )", Info_Mod_Cronos_AW_Artefakt_01_F);
	Info_AddChoice	(Info_Mod_Cronos_AW_Artefakt_01, "Wtedy raczej nalezy sie poswiecic innym rzeczom (.....)'. )", Info_Mod_Cronos_AW_Artefakt_01_E);
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_01_B()
{
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_01_B_15_00"); //Moja ciekawosc rozbudzilem. Jaka jest ta tajemnicza sytuacja, z jaka mamy do czynienia?
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_B_03_01"); //Cóz, na poczatku bylo tylko pogloski, ze bylo doniesienia o krwiozerczej bestii, która podobno ma niepohamowany apetyt na mieso.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_B_03_02"); //Zgloszono, ze nie zaszkodzi jej zwykla bron ani magia stworzona przez czlowieka.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_B_03_03"); //Poczatkowo nie zwracalem na te reportaze wiekszej uwagi, myslalem, ze to fantazja i nonsens zwyklych ludzi.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_B_03_04"); //Ostatnio jednak takie doniesienia zostaly ostatnio zlozone, a nawet farmy w miescie i na dworze Onar mówi sie, ze zostaly zaatakowane przez bestie.

	Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_01);

	Info_AddChoice	(Info_Mod_Cronos_AW_Artefakt_01, "(wiecej)", Info_Mod_Cronos_AW_Artefakt_01_D);
	Info_AddChoice	(Info_Mod_Cronos_AW_Artefakt_01, "Ale co to wszystko ma wspólnego z artefaktem?", Info_Mod_Cronos_AW_Artefakt_01_C);
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_01_C()
{
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_01_C_15_00"); //Ale co to wszystko ma wspólnego z artefaktem?
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_C_03_01"); //Miec troche cierpliwosci. Wlasnie o tym mówilem.
	
	Info_Mod_Cronos_AW_Artefakt_01_D();
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_01_A()
{
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_01_A_15_00"); //Widze. Wróce wtedy do swoich obowiazków.

	Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_01);

	B_SetTopicStatus	(TOPIC_MOD_ADANOS_NOVIZE, LOG_FAILED);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_01_F()
{
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_01_F_15_00"); //I bez wzgledu na to, jak niskie moze sie wydawac prawdopodobienstwo: dla artefaktu, który moze pomóc w realizacji woli naszego Pana Adanosa, ryzyko i wysilki musza byc równiez wezwane. Bede go szukal.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_F_03_01"); //Mialem potajemna nadzieje, ze zgodzi sie pan to zrobic. Nie podejmuj jednak niepotrzebnego ryzyka w poszukiwaniu Adano.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_F_03_02"); //Spróbuj dowiedziec sie wiecej z mniejszych gospodarstw i mysliwych w okolicy.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_F_03_03"); //Moze wtedy stanie sie jasne, czy jest w nim cos zlego, czy tez nie. Ale jesli tak sie stanie...... Tutaj masz kilka rolek zaklec i eliksirów, które z pewnoscia przydadza sie Ci podczas wyszukiwania.

	B_ShowGivenThings ("Otrzymano 10 eliksirów i 7 rolek zaklec");

	CreateInvItems	(hero, ItPo_Mana_01, 7);
	CreateInvItems	(hero, ItPo_Speed, 3);
	CreateInvItems	(hero, ItSc_Icecube, 4);
	CreateInvItems	(hero, ItSc_LightHeal, 3);

	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_F_03_04"); //I nie zapominajmy, ze to stworzenie powinno wytrzymac kazdy rodzaj sztucznej magii i broni kierowanej.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_F_03_05"); //Wiec Twoja magia wody bedzie w stanie powstrzymac go - jesli w ogóle - tylko przez krótki czas.....
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_F_03_06"); //A teraz zycze panstwu wszelkich sukcesów. Niech Adanos zapewni Ci bezpieczenstwo na twoich drogach.
	
	Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_01);

	Mod_Cronos_Artefakt = 1;

	B_LogEntry	(TOPIC_MOD_ADANOS_NOVIZE, "Ja powinienem odwiedzic okoliczne farmy i mysliwych, aby znalezc szlak bestii, która podobno jest odporna na magie i zwykla bron, aby wyrwac z niej krysztal wchlaniania - jesli nadal ja nosi.");
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_01_E()
{
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_01_E_15_00"); //Wtedy trzeba sie raczej poswiecic innym rzeczom, które wymagaja naszej uwagi i oddania.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_01_E_03_01"); //Tak, przypuszczam, ze masz racje, to jest bardziej rozsadne....
	
	Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_01);

	AI_StopProcessInfos	(self);

	B_SetTopicStatus	(TOPIC_MOD_ADANOS_NOVIZE, LOG_FAILED);
};

INSTANCE Info_Mod_Cronos_AW_Artefakt_02 (C_INFO)
{
	npc		= Mod_9001_KDW_Cronos_AW;
	nr		= 1;
	condition	= Info_Mod_Cronos_AW_Artefakt_02_Condition;
	information	= Info_Mod_Cronos_AW_Artefakt_02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam artefakt.";
};

FUNC INT Info_Mod_Cronos_AW_Artefakt_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_Artefakt_01))
	&& (Mod_Cronos_Artefakt == 2)
	&& (Mod_AbsorbKristall == 1)
	&& (Npc_HasItems(hero, ItMi_AbsorbKristall) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_02_Info()
{
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_02_15_00"); //Mam artefakt.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_02_03_01"); //Co? Musisz mnie oszukiwac....

	B_GiveInvItems	(hero, self, ItMi_AbsorbKristall, 1);

	Npc_RemoveInvItems	(self, ItMi_AbsorbKristall, 1);

	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_02_03_02"); //Brak mozliwosci..... gdzie, podobnie jak
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_02_15_03"); //Pomiedzy duza iloscia brudów i brudu.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_02_03_04"); //Nie wiem, co powiedziec. Wartosc tej uslugi, jaka obdarzyles wspólnote Adanos, nie moge wyrazic w slowach.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_02_03_05"); //Musze to omówic z moimi bracmi. Wróc jutro.

	B_GivePlayerXP	(400);

	Mod_Cronos_Artefakt = 3;

	Mod_Cronos_AbsorberTest = Wld_GetDay();

	B_SetTopicStatus	(TOPIC_MOD_ADANOS_NOVIZE, LOG_SUCCESS);
};

INSTANCE Info_Mod_Cronos_AW_Artefakt_03 (C_INFO)
{
	npc		= Mod_9001_KDW_Cronos_AW;
	nr		= 1;
	condition	= Info_Mod_Cronos_AW_Artefakt_03_Condition;
	information	= Info_Mod_Cronos_AW_Artefakt_03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cronos_AW_Artefakt_03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_Artefakt_02))
	&& (Wld_GetDay() > Mod_Cronos_AbsorberTest)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_03_Info()
{
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_03_03_00"); //Niestety, jak sie dowiedzielismy, w miedzyczasie krysztal stracil swoja moc.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_03_03_01"); //Jednak mozliwosci przywrócenia mu sil do zycia nie zostaly jeszcze zbadane.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_03_03_02"); //Ale teraz za wasza wiecej niz zasluzona nagrode. Myxir niedawno przetlumaczyl kilka starych skryptów i od nich zdobyl ten przewodnik, aby stworzyc magiczny pierscien naszego Pana.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_03_03_03"); //Tutaj jako pierwszy otrzymasz moc tego pierscienia.

	B_GiveInvItems	(self, hero, ItWr_Bauplan_AdanosRing, 1);

	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_03_03_04"); //Poza tym, zostawiam Cie jako godna sluge Adanosa niektóre z naszych cennych powiedzen i eliksirów. Uzywaj go madrze.

	CreateInvItems	(hero, ItPo_Mana_01, 5);
	CreateInvItems	(hero, ItPo_Mana_02, 5);
	CreateInvItems	(hero, ItPo_Mana_03, 5);
	CreateInvItems	(hero, ItSc_IceCube, 3);
	CreateInvItems	(hero, ItSc_IceWave, 2);
	CreateInvItems	(hero, ItSc_IceRain, 1);
	CreateInvItems	(hero, ItSc_Thunderball, 3);

	B_ShowGivenThings ("Otrzymano 15 eliksirów i 9 rolek zaklec");

	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_03_03_05"); //Och, jak glupi o mnie, z podnieceniem o krysztalu naszego Pana, zapomnialem zapytac o losy przekletego nowicjusza.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_03_03_06"); //Tak wiec raport: A co z przekletym stworzeniem?

	if (Mod_Untier_Tot == FALSE)
	{
		AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_03_15_07"); //Zyje w jaskini na górze w pólnocno-wschodniej czesci Khorinis.
		AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_03_03_08"); //Hmm, mam nadzieje, ze w przyszlosci nie zniszczy zbytnio srodowiska naturalnego....
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_03_15_09"); //Nie zaszkodzi.
		AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_03_03_10"); //Nie mówisz, ze móglbys je pokonac, czy jestes?
		AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_03_15_11"); //Czar ochronny nie mógl oprzec sie wszystkim srodkom.
		AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_03_03_12"); //Ponownie, wasza zuchwalosc sprawia, ze prawie mi zabraklo mowy. Zrobiles wspaniala obsluge dla wszystkich Khornis.
		AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_03_03_13"); //Tutaj skorzystaj z tego eliksiru i rundy, która wybierzesz jako nagrode.

		B_GivePlayerXP	(350);

		B_GiveInvItems	(self, hero, ItPo_Perm_Mana, 1);

		Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_03);

		Info_AddChoice	(Info_Mod_Cronos_AW_Artefakt_03, "lód", Info_Mod_Cronos_AW_Artefakt_03_H);
		Info_AddChoice	(Info_Mod_Cronos_AW_Artefakt_03, "lód lód", Info_Mod_Cronos_AW_Artefakt_03_G);
		Info_AddChoice	(Info_Mod_Cronos_AW_Artefakt_03, "Lekkie rany lecznicze", Info_Mod_Cronos_AW_Artefakt_03_E);
		Info_AddChoice	(Info_Mod_Cronos_AW_Artefakt_03, "Wolf call", Info_Mod_Cronos_AW_Artefakt_03_D);
		Info_AddChoice	(Info_Mod_Cronos_AW_Artefakt_03, "blyskawica", Info_Mod_Cronos_AW_Artefakt_03_B);
		Info_AddChoice	(Info_Mod_Cronos_AW_Artefakt_03, "jasny", Info_Mod_Cronos_AW_Artefakt_03_A);
	};

	B_Göttergefallen(2, 2);
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_03_H()
{
	B_GiveInvItems	(self, hero, ItRu_Icelance, 1);

	Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_03);
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_03_G()
{
	B_GiveInvItems	(self, hero, ItRu_InstantIceball, 1);

	Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_03);
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_03_F()
{
	B_GiveInvItems	(self, hero, ItRu_SumGobEis, 1);

	Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_03);
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_03_E()
{
	B_GiveInvItems	(self, hero, ItRu_LightHeal, 1);

	Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_03);
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_03_D()
{
	B_GiveInvItems	(self, hero, ItRu_SumWolf, 1);

	Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_03);
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_03_C()
{
	B_GiveInvItems	(self, hero, ItRu_Icebolt, 1);

	Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_03);
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_03_B()
{
	B_GiveInvItems	(self, hero, ItRu_Zap, 1);

	Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_03);
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_03_A()
{
	B_GiveInvItems	(self, hero, ItRu_Light, 1);

	Info_ClearChoices	(Info_Mod_Cronos_AW_Artefakt_03);
};

INSTANCE Info_Mod_Cronos_AW_Artefakt_04 (C_INFO)
{
	npc		= Mod_9001_KDW_Cronos_AW;
	nr		= 1;
	condition	= Info_Mod_Cronos_AW_Artefakt_04_Condition;
	information	= Info_Mod_Cronos_AW_Artefakt_04_Info;
	permanent	= 0;
	important	= 0;
	description	= "Móglbym skorzystac z Panstwa rady.";
};

FUNC INT Info_Mod_Cronos_AW_Artefakt_04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_Artefakt_03))
	&& (Mod_WM_ArtefaktSammler == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_04_Info()
{
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_04_15_00"); //Móglbym skorzystac z Panstwa rady.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_04_04_01"); //Co o tym chodzi?
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_04_15_02"); //Krysztal absorpcji. Saturas powiedzial mi, ze tylko boski poslannik bedzie w stanie przywrócic jego moc.
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_04_15_03"); //Co to jest z tym boskim poslannikiem i gdzie moge go znalezc?
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_04_04_04"); //To powinno byc trudne przedsiewziecie. Ostatni slad boskiego poslannika wskazuje na Jharkendar. Wydaje sie, ze siega ona wielu stuleci wstecz, przed upadkiem starej kultury.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_04_04_05"); //Móglbym z ich starozytnych pism wywnioskowac, ze potezny Bóg - którego, nie moglem rozszyfrowac - kiedys pozwolil, aby jego wzrok wedrowal po ziemi i szukal kogos, kto móglby byc godnym utrzymania równowagi na ziemi.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_04_04_06"); //Musial jednak zdac sobie sprawe, ze kazdy byl bardziej sklonny do jednej lub drugiej strony. Ale wtedy jego spojrzenie i laska padly na kogos, kogo wybral jako swego sluge i dal czesc jego boskiej mocy.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_04_04_07"); //Niestety, czcionki tutaj sa mocno zachmurzone. Symbol ten móglby byc symbolem stworzenia ladowego, przypuszczalnie zwierzecia, które mogloby byc rodzajem heraldycznego zwierzecia wybranego przez niego slugi.
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_04_15_08"); //A biorac pod uwage ten przypadek, i tak chcialem znalezc tego boskiego poslanca. Co powinienem zrobic?
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_04_04_09"); //Hmm, trzeba byloby znalezc oltarz ofiarny starozytnych ludzi i wykonac rytual ofiarniczy. Bylem w stanie rozszyfrowac starozytny przepis na dzielenie sie, który sluzyl do nazwania nadprzyrodzonych istot i duchów.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_04_04_10"); //Niestety, nie moglem rozszyfrowac ostatniego skladnika. Ale powinno to byc cos jadalnego. Musicie spróbowac czegos dookola i miec nadzieje, ze nie bedziecie nazywac zlych duchów i demonicznych istot na planie.

	B_GiveInvItems	(self, hero, ItWr_CronosAbsorbKristall, 1);

	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_04_04_11"); //Ale jesli naprawde spróbujecie, niniejszym oddaje krysztal. Zadbaj o niego.

	B_GiveInvItems	(self, hero, ItMi_AbsorbKristall, 1);

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Od Cronosa otrzymalem krysztal wchlaniania i przepis, którego moge uzyc, aby nazwac boskiego poslannika. Rytual musi byc wykonany na oltarzu ofiarnym kultury starozytnej, gdzie ostatni skladnik jest nieznany, ale bedzie czyms jadalnym. Cronos powiedzial, ze boski poslannik zostal przedstawiony jako symbol stworzenia ladowego, co do którego podejrzewal, ze moze byc zwiastunem heraldycznym.");
};

INSTANCE Info_Mod_Cronos_AW_Artefakt_05 (C_INFO)
{
	npc		= Mod_9001_KDW_Cronos_AW;
	nr		= 1;
	condition	= Info_Mod_Cronos_AW_Artefakt_05_Condition;
	information	= Info_Mod_Cronos_AW_Artefakt_05_Info;
	permanent	= 0;
	important	= 0;
	description	= "Moc krysztalu zostaje przywrócona.";
};

FUNC INT Info_Mod_Cronos_AW_Artefakt_05_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_AdanosDog_Kristall))
	&& (Npc_HasItems(hero, ItMi_AbsorbKristall2) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cronos_AW_Artefakt_05_Info()
{
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Artefakt_05_15_00"); //Moc krysztalu zostaje przywrócona.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Artefakt_05_03_01"); //Co? Brak mozliwosci..... Szybko zabierz go do Satrurasu. Moze byc potezna bronia w walce z potworami.
};

INSTANCE Info_Mod_Cronos_AW_Zeremoniendolch (C_INFO)
{
	npc		= Mod_9001_KDW_Cronos_AW;
	nr		= 1;
	condition	= Info_Mod_Cronos_AW_Zeremoniendolch_Condition;
	information	= Info_Mod_Cronos_AW_Zeremoniendolch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tu ta torba jest z Vatras.";
};

FUNC INT Info_Mod_Cronos_AW_Zeremoniendolch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Zeremoniendolch))
	&& (Npc_HasItems(hero, ItMi_CronosBeutel) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cronos_AW_Zeremoniendolch_Info()
{
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Zeremoniendolch_15_00"); //Tu ta torba jest z Vatras.

	B_GiveInvItems	(hero, self, ItMi_CronosBeutel, 1);

	Npc_RemoveInvItems	(self, ItMi_CronosBeutel, 1);

	AI_Output(self, hero, "Info_Mod_Cronos_AW_Zeremoniendolch_03_01"); //Dziekujemy Adanosowi! Brakuje nam jedzenia.
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Zeremoniendolch_15_02"); //Jestem pewien, ze Vatras bedzie w stanie wyslac wkrótce wiecej.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_Zeremoniendolch_03_03"); //To dobrze, dziekuje.
	AI_Output(hero, self, "Info_Mod_Cronos_AW_Zeremoniendolch_15_04"); //Nie wspominajmy o tym.

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Cronos_AW_Gast (C_INFO)
{
	npc		= Mod_9001_KDW_Cronos_AW;
	nr		= 1;
	condition	= Info_Mod_Cronos_AW_Gast_Condition;
	information	= Info_Mod_Cronos_AW_Gast_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego i tak przybyles?";
};

FUNC INT Info_Mod_Cronos_AW_Gast_Condition()
{
	if (Mod_Saturas_Gast == 1)
	{
		Info_Mod_Cronos_AW_Gast.description = "Czy slyszales cos o kradziezy?";
	}
	else
	{
		Info_Mod_Cronos_AW_Gast.description = "Czy zauwazyles cokolwiek dzis wieczorem?";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	&& (Mod_Saturas_Gast_Fortschritt == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cronos_AW_Gast_Info()
{
	if (Mod_Saturas_Gast == 1)
	{
		AI_Output(hero, self, "Info_Mod_Cronos_AW_Gast_15_00"); //Czy slyszales cos o kradziezy?
		AI_Output(self, hero, "Info_Mod_Cronos_AW_Gast_03_01"); //Nie, ale jestem jednak gniewny na zuchwalosc, z jaka na naszych oczach kradziony jest wazny material.
		AI_Output(self, hero, "Info_Mod_Cronos_AW_Gast_03_02"); //Nie moge pracowac bez butelek z woda laboratoryjna!
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Cronos_AW_Gast_15_03"); //Czy zauwazyles cokolwiek dzis wieczorem? Zlodziej cie zrabowal.
		AI_Output(self, hero, "Info_Mod_Cronos_AW_Gast_03_04"); //Stolica? Oto? Ale tak naprawde cos widzialem.
		AI_Output(self, hero, "Info_Mod_Cronos_AW_Gast_03_05"); //Calej nocy nie moglem dobrze spac.
		AI_Output(self, hero, "Info_Mod_Cronos_AW_Gast_03_06"); //Merdarion drazni jak szalone i riordyjskie grunty i jeki.
		AI_Output(self, hero, "Info_Mod_Cronos_AW_Gast_03_07"); //Pewnego razu pomyslalem, ze slyszalem miekki szelest, wiec odwrócilem sie i zobaczylem tam ruch w ruinach.
		AI_Output(self, hero, "Info_Mod_Cronos_AW_Gast_03_08"); //Jesli to zlodziej, to on sie skrzywdzi!

		B_LogEntry	(TOPIC_MOD_SATURAS_NACHTGAST, "Cronos widzial ruch w ruinach. Byc moze jest wskazówka dla zlodzieja.");

		Mod_Saturas_Gast_Fortschritt = 1;

		Wld_InsertNpc	(Mod_115_NONE_Eremit_AW, "WP_TEMPEL_START_EREMIT_07");
	};
};

INSTANCE Info_Mod_Cronos_AW_TiereZaehmen (C_INFO)
{
	npc		= Mod_9001_KDW_Cronos_AW;
	nr		= 1;
	condition	= Info_Mod_Cronos_AW_TiereZaehmen_Condition;
	information	= Info_Mod_Cronos_AW_TiereZaehmen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy wiesz jak oswajac dzikie zwierzeta?";
};

FUNC INT Info_Mod_Cronos_AW_TiereZaehmen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Henry_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Henry_Fleisch))
	&& (Npc_HasItems(self, ItWr_TierZaehmung) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cronos_AW_TiereZaehmen_Info()
{
	AI_Output(hero, self, "Info_Mod_Cronos_AW_TiereZaehmen_15_00"); //Czy wiesz jak oswajac dzikie zwierzeta?
	AI_Output(self, hero, "Info_Mod_Cronos_AW_TiereZaehmen_03_01"); //Chcesz oswoic zwierzeta? Hmm, to nie jest latwe.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_TiereZaehmen_03_02"); //Szczególnie zwierzeta, które sa wrogo nastawione do ludzi, stanowia wyzwanie nawet dla doswiadczonych magów....
	AI_Output(hero, self, "Info_Mod_Cronos_AW_TiereZaehmen_15_03"); //A co z dzikimi kozami?
	AI_Output(self, hero, "Info_Mod_Cronos_AW_TiereZaehmen_03_04"); //Istoty te sa neutralne az do momentu zaatakowania. Ulatwia to wplyw na ich umysly.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_TiereZaehmen_03_05"); //Moge w tym celu naklonic Was do zaklecia zaklec. Potrzebowalabym jednak pewnych skladników.
	AI_Output(hero, self, "Info_Mod_Cronos_AW_TiereZaehmen_15_06"); //Czego potrzebujesz?
	AI_Output(self, hero, "Info_Mod_Cronos_AW_TiereZaehmen_03_07"); //Hmm, byc moze wystarczy odebrac mi dwa kawalki surowego miesa koziego i koziej skóry.
	AI_Output(self, hero, "Info_Mod_Cronos_AW_TiereZaehmen_03_08"); //Tu w górach slyszalem dzikie kozy krwawiace.....

	Wld_InsertNpc	(Wild_Ziege,	"FP_ITEM_ENTRANCE_06");
};

INSTANCE Info_Mod_Cronos_AW_TiereZaehmen2 (C_INFO)
{
	npc		= Mod_9001_KDW_Cronos_AW;
	nr		= 1;
	condition	= Info_Mod_Cronos_AW_TiereZaehmen2_Condition;
	information	= Info_Mod_Cronos_AW_TiereZaehmen2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam skladniki na zaklecie.";
};

FUNC INT Info_Mod_Cronos_AW_TiereZaehmen2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_TiereZaehmen))
	&& (Npc_HasItems(hero, ItFo_MuttonRaw) >= 2)
	&& (Npc_HasItems(hero, ItAt_ZiegenFur) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cronos_AW_TiereZaehmen2_Info()
{
	AI_Output(hero, self, "Info_Mod_Cronos_AW_TiereZaehmen2_15_00"); //Mam skladniki na zaklecie.

	Npc_RemoveInvItems	(hero, ItFo_MuttonRaw, 2);
	Npc_RemoveInvItems	(hero, ItAt_ZiegenFur, 1);

	B_ShowGivenThings	("Podane 2 sztuki surowego miesa i skóry koziej");

	AI_Output(self, hero, "Info_Mod_Cronos_AW_TiereZaehmen2_03_01"); //Bardzo dobry. Jutro wróc, produkcja powinna sie zakonczyc.

	Mod_Cronos_ZiegenScroll = Wld_GetDay();
};

INSTANCE Info_Mod_Cronos_AW_TiereZaehmen3 (C_INFO)
{
	npc		= Mod_9001_KDW_Cronos_AW;
	nr		= 1;
	condition	= Info_Mod_Cronos_AW_TiereZaehmen3_Condition;
	information	= Info_Mod_Cronos_AW_TiereZaehmen3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cronos_AW_TiereZaehmen3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_TiereZaehmen2))
	&& (Wld_GetDay() > Mod_Cronos_ZiegenScroll)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cronos_AW_TiereZaehmen3_Info()
{
	AI_Output(self, hero, "Info_Mod_Cronos_AW_TiereZaehmen3_03_00"); //Ciesze sie, ze przyszedles. Oto Twoja historia.

	B_GiveInvItems	(self, hero, ItSc_ZiegeZaehmen, 1);

	AI_Output(self, hero, "Info_Mod_Cronos_AW_TiereZaehmen3_03_01"); //Laczenie skladników z papierem bylo prostsze niz sie spodziewano.

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_TalentScrolls, "Skladniki do walca pisowni ZIEGE ZÄHMEN: 2 surowe mieso, 1 kozia skóra, 2 surowe mieso, 1 kozia skóra.");

	PLAYER_TALENT_SCROLLS[SCROLL_ZIEGEZAEHMEN] = TRUE;
};

INSTANCE Info_Mod_Cronos_Pickpocket (C_INFO)
{
	npc		= Mod_9001_KDW_Cronos_AW;
	nr		= 1;
	condition	= Info_Mod_Cronos_Pickpocket_Condition;
	information	= Info_Mod_Cronos_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Cronos_Pickpocket_Condition()
{
	C_Beklauen	(145, ItSc_IceRain, 2);
};

FUNC VOID Info_Mod_Cronos_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Cronos_Pickpocket);

	Info_AddChoice	(Info_Mod_Cronos_Pickpocket, DIALOG_BACK, Info_Mod_Cronos_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Cronos_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Cronos_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Cronos_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Cronos_Pickpocket);
};

FUNC VOID Info_Mod_Cronos_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Cronos_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Cronos_Pickpocket);

		Info_AddChoice	(Info_Mod_Cronos_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Cronos_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Cronos_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Cronos_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Cronos_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Cronos_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Cronos_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Cronos_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Cronos_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Cronos_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Cronos_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Cronos_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Cronos_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};
