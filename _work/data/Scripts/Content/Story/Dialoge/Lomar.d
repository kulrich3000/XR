INSTANCE Info_Mod_Lomar_Hi (C_INFO)
{
	npc		= Mod_7671_OUT_Lomar_REL;
	nr		= 1;
	condition	= Info_Mod_Lomar_Hi_Condition;
	information	= Info_Mod_Lomar_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lomar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lomar_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_00"); //Oops, nieumarle, brudne istoty nigdy dotad nie wyruszyly tak daleko poza torfowisko.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_01"); //Jestem gonna uderzyl go klubem i wrzuc z powrotem do wrzosowiska.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_02"); //Chociaz.... Móglbym naprawde uzyc miesa....

	AI_DrawWeapon	(self);

	AI_Output(hero, self, "Info_Mod_Lomar_Hi_15_03"); //Uh.... zawsze wolna. Nie jestem niezrozumialy.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_04"); //Co mówisz? Czy masz duch? Nie, nie widze przez ciebie.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_05"); //A moze wcale nie jestes prawdziwy, czy mój umysl gra na mnie sztuczka?
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_15_06"); //Nie, mysle, ze jestem calkiem prawdziwy.

	AI_RemoveWeapon	(self);

	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_07"); //Czy jest to mozliwe? Ktos, kto tak dlugo zyl przez moczar? Powiedz, kim jestes?
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_15_08"); //Przygoda i rycerz szczescia.... jak wiekszosc po drugiej stronie wrzosowiska, która przyszla odzyskac jego skarby.
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_15_09"); //Ale nie sadze, by nikt tak daleko nie przyszedl.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_10"); //Co szalency dobrowolnie wkraczaja do tego chwalebnego kawalka ziemi, by wypelnic kieszenie?
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_11"); //.... Ale dobrze wiedziec, ze jest jeszcze ktos inny.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_12"); //Nie pomyslalbym, ze po tak dlugim czasie bede mógl znów zobaczyc zywa osobe.
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_15_13"); //Dlugi czas? Jak dotarles do tego porzuconego miejsca?
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_14"); //Cóz, musialem byc prawie dwadziescia lat temu, kiedy wraz z moimi towarzyszami poszedlem do gubernatora.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_15"); //Ten szalony zlodziej ukradl magiczne ognisko, które chronilo nasza osade i uciekl do torfowiska.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_16"); //Kiedy jednak weszlismy do niego okazalo sie, ze jest on bardziej wrogo nastawiony niz kiedykolwiek wczesniej.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_17"); //Zle stworzenia rosly z kazdej strony, opadaly nad nami i powietrze bylo tak zatruwajace, ze trudno bylo zobaczyc gola reke przed oczami.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_18"); //To bylo jak próba pozbycia sie nas w kazdy mozliwy sposób.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_19"); //Szybko stracilem slady swoich towarzyszy.... i biegalem tak jak nigdy dotad w zyciu, nie wiedzac dokad pójsc.... dopóki tu nie wyladuje.
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_15_20"); //A wiec jestes tu od 20 lat! Jak udalo Ci sie tu przetrwac?
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_21"); //Cóz, jak widac, ten kawalek ziemi zostal ocalony od bezposredniego wplywu torfowiska.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_22"); //Kabina ta stala wlasnie tutaj, kiedy sie tu zgubilem.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_23"); //Niektóre narzedzia i bron, których do przezycia potrzebowalem, byly juz przy mnie, kiedy wyjechalem na torfowisko.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_24"); //Znajdowalem reszte na skraju torfowiska przez lata.
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_15_25"); //A co jesz? Wspomnial pan cos wczesniej o.... miazsz nieumarlych.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_26"); //Co? Nie, w Innosie, nie to, co myslisz.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_27"); //Wykorzystalem cialo do wyodrebnienia trucizny dla moich strzal.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_28"); //Torfowiska sa narazone na toksyczne opary tak dlugo, ze sa przez nie calkowicie przenikniete.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_29"); //Od czasu do czasu strzelalem do jednej z harf, które gniezdza sie w skalach.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_30"); //Czasami wspinam sie do góry, aby ukrasc jajecznice.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_31"); //Cóz, kiedy ostatnio mialem szczescie, moglem nawet strzelac do goblina, który pladrowal jedno z ich gniazd.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_32"); //Na koniec wybierz jedna z odmian w menu.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_33"); //Ale czym jestem gospodarzem? Pierwsza wizyta za 20 lat i nic nie proponuje moim gosciom.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_10_34"); //Wiec co zrobic z chrupiacym kawalkiem miesa goblinowego?

	Info_ClearChoices	(Info_Mod_Lomar_Hi);

	Info_AddChoice	(Info_Mod_Lomar_Hi, "Mieso Goblin? Hmm, cos nowego....", Info_Mod_Lomar_Hi_B);
	Info_AddChoice	(Info_Mod_Lomar_Hi, "Uh, dziekuje, kolejny raz.", Info_Mod_Lomar_Hi_A);
};

FUNC VOID Info_Mod_Lomar_Hi_C()
{
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_C_10_00"); //Tak czy inaczej, torfowisko dostarcza owoców. To byl kolejny dobry sezon. W tym miejscu zebralem duzo borówek bagiennych.
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_C_15_01"); //Zebrany? Jak to zrobic?
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_C_10_02"); //Cóz, te miesozerne rosliny z duzym apetytem kwitna tutaj.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_C_10_03"); //Zaczalem je uprawiac na malym polu za chatka.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_C_10_04"); //A kiedy nadszedl czas zniw, biore ostre ostrze i troche je scinam.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_C_10_05"); //Jesli chcesz spróbowac morwy, pomóz sobie. Jest ich wiecej w kabinie.
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_C_15_06"); //Wyglada na to, ze pan tutaj bardzo dobrze sie osiedlil.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_C_10_07"); //Tak, z czasem nauczysz sie poznac to, co natura ma do zaoferowania.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_C_10_08"); //Tylko raz na jakis czas...... Tak, chcialbym zjesc soczysty kawalek sera.

	Info_ClearChoices	(Info_Mod_Lomar_Hi);
};

FUNC VOID Info_Mod_Lomar_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_B_15_00"); //Mieso Goblin? Hmm, cos nowego....
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_B_10_01"); //Tutaj idz, prosze.

	B_GiveInvItems	(self, hero, ItFo_Mutton, 1);

	B_UseItem	(hero, ItFo_Mutton);

	AI_Output(hero, self, "Info_Mod_Lomar_Hi_B_15_02"); //(zdziwiony) Hmm, wcale nie zly. Przypomina mi o...... Kurczak.

	B_GivePlayerXP	(50);

	Info_Mod_Lomar_Hi_C();
};

FUNC VOID Info_Mod_Lomar_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Lomar_Hi_A_15_00"); //Uh, dziekuje, kolejny raz.
	AI_Output(self, hero, "Info_Mod_Lomar_Hi_A_10_01"); //Zbyt zle. Nie wiesz, jakich smacznych rzeczy Ci brakuje.

	Info_Mod_Lomar_Hi_C();
};

INSTANCE Info_Mod_Lomar_Kaese (C_INFO)
{
	npc		= Mod_7671_OUT_Lomar_REL;
	nr		= 1;
	condition	= Info_Mod_Lomar_Kaese_Condition;
	information	= Info_Mod_Lomar_Kaese_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto twój ser.";
};

FUNC INT Info_Mod_Lomar_Kaese_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lomar_Hi))
	&& (Npc_HasItems(hero, ItFo_Cheese) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lomar_Kaese_Info()
{
	AI_Output(hero, self, "Info_Mod_Lomar_Kaese_15_00"); //Oto twój ser.

	B_GiveInvItems	(hero, self, ItFo_Cheese, 1);

	AI_Output(self, hero, "Info_Mod_Lomar_Kaese_10_01"); //Prawdziwy ser...... Dziekuje bardzo.
	AI_Output(self, hero, "Info_Mod_Lomar_Kaese_10_02"); //Co moge ci za to dac? ahh, tutaj, wez to zlote trofeum.

	B_GiveInvItems	(self, hero, ItMi_GoldCup, 1);

	AI_Output(self, hero, "Info_Mod_Lomar_Kaese_10_03"); //Nie przydaje mi sie tutaj.

	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Lomar_WarumNichtWeg (C_INFO)
{
	npc		= Mod_7671_OUT_Lomar_REL;
	nr		= 1;
	condition	= Info_Mod_Lomar_WarumNichtWeg_Condition;
	information	= Info_Mod_Lomar_WarumNichtWeg_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego nie opuszczasz torfowiska?";
};

FUNC INT Info_Mod_Lomar_WarumNichtWeg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lomar_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lomar_WarumNichtWeg_Info()
{
	AI_Output(hero, self, "Info_Mod_Lomar_WarumNichtWeg_15_00"); //Dlaczego nie opuszczasz torfowiska?
	AI_Output(self, hero, "Info_Mod_Lomar_WarumNichtWeg_10_01"); //Cóz, dzieki wszystkim stworzeniom w bagnie.
	AI_Output(self, hero, "Info_Mod_Lomar_WarumNichtWeg_10_02"); //Poniewaz od czasu kradziezy, jak juz wspomniano, stal sie on - jak juz wczesniej wspominano - o wiele bardziej wrogo nastawiony do zycia niz poprzednio.
	AI_Output(self, hero, "Info_Mod_Lomar_WarumNichtWeg_10_03"); //Tak dlugo, jak to sie nie zmienia, widze, jak sam sie przez to przechodze...... co oznacza, ze spedze tu reszte dni.
};

INSTANCE Info_Mod_Lomar_GanzAlleine (C_INFO)
{
	npc		= Mod_7671_OUT_Lomar_REL;
	nr		= 1;
	condition	= Info_Mod_Lomar_GanzAlleine_Condition;
	information	= Info_Mod_Lomar_GanzAlleine_Info;
	permanent	= 0;
	important	= 0;
	description	= "20 lat bez towarzystwa innych..... Przydatny.";
};

FUNC INT Info_Mod_Lomar_GanzAlleine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lomar_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lomar_GanzAlleine_Info()
{
	AI_Output(hero, self, "Info_Mod_Lomar_GanzAlleine_15_00"); //20 lat bez towarzystwa innych..... To godne podziwu, ze potrafisz komunikowac sie tak dobrze i ze jestes swiadomy.
	AI_Output(self, hero, "Info_Mod_Lomar_GanzAlleine_10_01"); //Och, nie bylem sam. Mam szczescie miec Pawla.
	AI_Output(self, hero, "Info_Mod_Lomar_GanzAlleine_10_02"); //Zawsze trzymal mnie w dobrym towarzystwie, a on byl pelen zartów.
	AI_Output(self, hero, "Info_Mod_Lomar_GanzAlleine_10_03"); //Zazwyczaj czeka przy wejsciu do chaty.
	AI_Output(self, hero, "Info_Mod_Lomar_GanzAlleine_10_04"); //Ale porozmawiajcie z nim, kiedy go spotkasz.... jest latwo ranny, wiesz, ze.....
};

INSTANCE Info_Mod_Lomar_Siedlung (C_INFO)
{
	npc		= Mod_7671_OUT_Lomar_REL;
	nr		= 1;
	condition	= Info_Mod_Lomar_Siedlung_Condition;
	information	= Info_Mod_Lomar_Siedlung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lomar_Siedlung_Condition()
{
	if (Mod_Parcival_VorKneipe == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lomar_Siedlung_Info()
{
	AI_Output(self, hero, "Info_Mod_Lomar_Siedlung_10_00"); //Tak, osada wkrótce powróci do dawnej swietnosci.

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Lomar_EXIT (C_INFO)
{
	npc		= Mod_7671_OUT_Lomar_REL;
	nr		= 1;
	condition	= Info_Mod_Lomar_EXIT_Condition;
	information	= Info_Mod_Lomar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lomar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lomar_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Lomar_EXIT_10_00"); //Nie zabijaj sie.

	AI_StopProcessInfos	(self);
};
