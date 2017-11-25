INSTANCE Info_Mod_Theodorus_Hi (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Hi_Condition;
	information	= Info_Mod_Theodorus_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Theodorus_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Theodorus_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Theodorus_Hi_09_00"); //Trzymac sie dalej!
	AI_Output(hero, self, "Info_Mod_Theodorus_Hi_15_01"); //Czego chcesz?
	AI_Output(self, hero, "Info_Mod_Theodorus_Hi_09_02"); //Ostrzegam. Za tym przejsciem kryja sie niebezpieczenstwa.

	Info_ClearChoices	(Info_Mod_Theodorus_Hi);

	Info_AddChoice	(Info_Mod_Theodorus_Hi, "Zobacze dla siebie.", Info_Mod_Theodorus_Hi_B);
	Info_AddChoice	(Info_Mod_Theodorus_Hi, "Niebezpieczenstwa jakiego rodzaju?", Info_Mod_Theodorus_Hi_A);
};

FUNC VOID Info_Mod_Theodorus_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_Hi_B_15_00"); //Zobacze dla siebie.
	
	Info_ClearChoices	(Info_Mod_Theodorus_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Theodorus_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_Hi_A_15_00"); //Niebezpieczenstwa jakiego rodzaju?
	AI_Output(self, hero, "Info_Mod_Theodorus_Hi_A_09_01"); //Z pewnoscia wiesz! A moze dlaczego chcesz tam pojechac? Oczywiscie wiesz o dawcy radosci!
	AI_Output(hero, self, "Info_Mod_Theodorus_Hi_A_15_02"); //Co jest w tym niebezpieczne?
	AI_Output(self, hero, "Info_Mod_Theodorus_Hi_A_09_03"); //(nachäffend) Co jest w tym niebezpieczne? Es macht aus starken Männern sabbernde Spirituelle. DAS ist daran gefährlich.
	AI_Output(self, hero, "Info_Mod_Theodorus_Hi_A_09_04"); //Slyszalem o religii monoteistycznej opartej wylacznie na stosowaniu tego narkotyku.
	AI_Output(self, hero, "Info_Mod_Theodorus_Hi_A_09_05"); //Czy chcesz równiez obrazac bogów w ten sposób? (Pauza) Móglbym ci wiele powiedziec o tym, co przyzwoici mezczyzni zrobili pod wplywem radosnych darczynców....
	
	Mod_Theodorus_FreudenspenderWarnung = 1;

	Info_ClearChoices	(Info_Mod_Theodorus_Hi);
};

INSTANCE Info_Mod_Theodorus_FreudenspenderWarnung (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_FreudenspenderWarnung_Condition;
	information	= Info_Mod_Theodorus_FreudenspenderWarnung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Opowiedz mi o mezczyznach dajacych przyjemnosc - wplyw.";
};

FUNC INT Info_Mod_Theodorus_FreudenspenderWarnung_Condition()
{
	if (Mod_Theodorus_FreudenspenderWarnung == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Theodorus_FreudenspenderWarnung_Info()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_FreudenspenderWarnung_15_00"); //Opowiedz mi o mezczyznach dajacych przyjemnosc - wplyw.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung_09_01"); //Nasz ostatni gubernator, Valens, który wymyslil fikcyjna range gubernatora, mial najgorsze halucynacje na swoich pózniejszych etapach.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung_09_02"); //Ucierpial z powodu przesladowan maniaków. Pewnego razu marzyl o tym, ze inni posiadacze wladzy uzyli magii, aby dowiedziec sie, kto go zastapi.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung_09_03"); //Pózniej przejechal uliczkami Khoraty i kazdy widoczny czlowiek zostal rozstrzelany na miejscu, nawet gdyby tylko przeczytal swój horoskop.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung_09_04"); //Z drugiej strony oszczedzil swoich zwolenników nawet w najpowazniejszych zbrodniach; Mogli mordowac i pladrowac, co nie poszlo nawet do niego.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung_09_05"); //Nastepnie umarl, gdy w zatruciu w Khoracie przeskoczyl do zlewni w Khoracie, by tam sie kapac - w basenach nie ma drabin, które by wychodzily, wiec utonal jak mucha w wiadrze wody.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung_09_06"); //Jednym z trudnych kandydatów jest równiez Vincent The Hunter.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung_09_07"); //Niedawno musielismy go powstrzymac od polowania na swoja babcie lukiem i strzalka, bo myslal, ze jest molerato.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung_09_08"); //To sa tylko dwa przyklady niszczycielskiego stanu ludzi tutaj.
	
	Mod_Theodorus_FreudenspenderWarnung = 2;
};

INSTANCE Info_Mod_Theodorus_FreudenspenderWarnung2 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_FreudenspenderWarnung2_Condition;
	information	= Info_Mod_Theodorus_FreudenspenderWarnung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego nie mozesz zakazac smakoszy?";
};

FUNC INT Info_Mod_Theodorus_FreudenspenderWarnung2_Condition()
{
	if (Mod_Theodorus_FreudenspenderWarnung == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Theodorus_FreudenspenderWarnung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_FreudenspenderWarnung2_15_00"); //Dlaczego nie mozesz zakazac smakoszy?
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung2_09_01"); //Chcialbym to zrobic, ale dealerzy nie chca tego robic.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung2_09_02"); //Nie mozna sobie wyobrazic, ile pieniedzy niektórzy ludzie zarabiaja na tych rzeczach.
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung2_09_03"); //Co wiecej, trzyma ludzi glupich - czego jeszcze chcesz?
	AI_Output(self, hero, "Info_Mod_Theodorus_FreudenspenderWarnung2_09_04"); //Pewnego dnia nadszedl czas na mala rewolucje....
};

INSTANCE Info_Mod_Theodorus_Unruhen (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Unruhen_Condition;
	information	= Info_Mod_Theodorus_Unruhen_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Czy wiesz o ostatnich wydarzeniach w Khoracie?";
};                       

FUNC INT Info_Mod_Theodorus_Unruhen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Unruhen2))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Theodorus_Unruhen_Info()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen_15_00"); //Czy wiesz o ostatnich wydarzeniach w Khoracie?
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen_09_01"); //Oczywiscie, i wiesz co wiesz? Uwazam to za calkowicie zrozumiale i mile widziane!
};

INSTANCE Info_Mod_Theodorus_Unruhen2 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Unruhen2_Condition;
	information	= Info_Mod_Theodorus_Unruhen2_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Czy chcialbys byc gubernatorem Khoraty?";
};                       

FUNC INT Info_Mod_Theodorus_Unruhen2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Unruhen))
	&& (Mod_REL_Kandidat < 2)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Theodorus_Unruhen2_Info()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen2_15_00"); //Czy chcialbys byc gubernatorem Khoraty?
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen2_09_01"); //Haha, mam nadzieje, ze nie jestes powazny.
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen2_15_02"); //Tak, ja tak, tak.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen2_09_03"); //Moze nawet warto sie zastanowic. Wtedy wreszcie bedzie sposób na zmiane Khoraty.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen2_09_04"); //Tak wiec, jesli chcesz zobaczyc mnie jako dyrektora - jestem Twoim mezem!
};

INSTANCE Info_Mod_Theodorus_Unruhen3 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Unruhen3_Condition;
	information	= Info_Mod_Theodorus_Unruhen3_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Jak Panstwa zdaniem nalezy rozwiazac konflikt z górnikami?";
};                       

FUNC INT Info_Mod_Theodorus_Unruhen3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Unruhen))
	&& (Mod_REL_Kandidat < 2)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Theodorus_Unruhen3_Info()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen3_15_00"); //Jak Panstwa zdaniem nalezy rozwiazac konflikt z górnikami?
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen3_09_01"); //To, czego domagaja sie buddysci, to ich prawo. Dlaczego mielibysmy z tego wymówic?
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen3_09_02"); //Mieszkancy miast musza znalezc sie w ich miejscu.

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "Teodor opowiada sie za wspieraniem buddystów.");
};

INSTANCE Info_Mod_Theodorus_Unruhen4 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Unruhen4_Condition;
	information	= Info_Mod_Theodorus_Unruhen4_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Jest pan teraz gubernatorem Khoraty.";
};                       

FUNC INT Info_Mod_Theodorus_Unruhen4_Condition()
{
	if (Mod_REL_Kandidat == 2)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Theodorus_Unruhen4_Info()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen4_15_00"); //Jest pan teraz gubernatorem Khoraty.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen4_09_01"); //To nieprawda! Czy mnie oszukujesz, prawda?
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen4_15_02"); //Przyjedz ze mna, pokaze Ci nowe miejsce pracy.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen4_09_03"); //Szczerze mówiac, zaskoczyla mnie pani. Nie sadzilem, zebys podejmowal tak ryzykowna decyzje. Jestem nawet troche poruszony.
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen4_15_04"); //Mozesz plakac pózniej.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen4_09_05"); //Wszystkie sluszne, wszystkie sluszne. Idzmy!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWINCITY");
};

INSTANCE Info_Mod_Theodorus_Unruhen5 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Unruhen5_Condition;
	information	= Info_Mod_Theodorus_Unruhen5_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_Mod_Theodorus_Unruhen5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Unruhen4))
	&& (Npc_GetDistToWP(hero, "RATHAUSUNTEN_01") < 500)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Theodorus_Unruhen5_Info()
{
	AI_Output(self, hero, "DEFAULT"); //
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen5_15_00"); //Oto jestesmy.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen5_09_01"); //Dzieki. Rozejrze sie dookola. Wróccie jutro, a my zajmiemy sie powazna sprawa.

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "Teodorek potrzebuje jednego dnia na osiedlenie sie. Nastepnie zajmiemy sie pytaniami otwartymi.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "STADTHALTER");

	Mod_REL_Stadthalter = 1;

	Mod_REL_Stadthalter_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Theodorus_Unruhen6 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Unruhen6_Condition;
	information	= Info_Mod_Theodorus_Unruhen6_Info;
	permanent	= 0;
	important	= 0;
	description	= "Idzmy dalej.";
};                       

FUNC INT Info_Mod_Theodorus_Unruhen6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Unruhen5))
	&& (Mod_REL_Stadthalter_Day < Wld_GetDay())
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Theodorus_Unruhen6_Info()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen6_15_00"); //Idzmy dalej.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen6_09_01"); //Na czele mojej listy znajduje sie problem górników.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen6_09_02"); //Mieszkancy miasteczka musza ograniczyc swoje roszczenia.
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen6_15_03"); //Co zamierzasz zrobic?
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen6_09_04"); //Przekaze ci te wiadomosc.

	B_GiveInvItems	(self, hero, ItWr_TheodorusBotschaft, 1);

	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen6_09_05"); //Na targowisku stoi ta swoista rusztowanie. Stamtad czytasz go kazdemu.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen6_09_06"); //W tym czasie odbieram Buddlerów i zabieram ich z powrotem do miasta.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen6_09_07"); //Na razie górnictwo bedzie na pólce, dopóki mieszkancy miasta nie przyjda do ich zmyslów.
	AI_Output(hero, self, "Info_Mod_Theodorus_Unruhen6_15_08"); //Czy nie sadzisz, ze jest to zbyt prowokacyjne?
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen6_09_09"); //Trzeba nauczyc sie brac rzeczy na siebie. Do zobaczenia dookola.

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "Theodorus polecil mi przeczytac wiadomosc z rusztowan na rynku dla mieszkanców Khoraty.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATMINE");
};

INSTANCE Info_Mod_Theodorus_Unruhen7 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Unruhen7_Condition;
	information	= Info_Mod_Theodorus_Unruhen7_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_Mod_Theodorus_Unruhen7_Condition()
{
	if (Mod_REL_TheodorusS == 4)
	&& (Npc_IsDead(Mod_7620_OUT_Wache_REL))
	&& (Npc_IsDead(Mod_7621_OUT_Wache_REL))
	&& (Npc_IsDead(Mod_7374_OUT_Gerichtswache_01))
	&& (Npc_IsDead(Mod_7375_OUT_Gerichtswache_02))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Theodorus_Unruhen7_Info()
{
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen7_09_00"); //Spodziewano sie, ze moja nominacja wzbudzi niezadowolenie. Ale nie wyobrazalabym sobie takiego poziomu przemocy.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen7_09_01"); //Niemniej jednak dziekuje panstwu za pomoc. Pomógl pan uratowac Khorate przed jednym z jego najgorszych kryzysów.
	AI_Output(self, hero, "Info_Mod_Theodorus_Unruhen7_09_02"); //Wiele wam zawdzieczam osobiscie.

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "Wydaje sie, ze sytuacja zostala tymczasowo naprawiona. Mieszkancy Khoratas musza sie umówic z nowym gubernatorem.");
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_UNRUHEN, LOG_SUCCESS);

	B_GivePlayerXP	(800);

	CurrentNQ += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "STADTHALTER");
	B_StartOtherRoutine	(Mod_7385_OUT_August_REL, "START");
	B_StartOtherRoutine	(Mod_7618_OUT_Norman_REL, "INCITY");
	B_StartOtherRoutine	(Mod_7617_OUT_Schuerfer_REL, "INCITY");
	B_StartOtherRoutine	(Mod_7614_OUT_Schuerfer_REL, "INCITY");
	B_StartOtherRoutine	(Mod_7616_OUT_Schuerfer_REL, "INCITY");
	B_StartOtherRoutine	(Mod_7613_OUT_Schuerfer_REL, "INCITY");
	B_StartOtherRoutine	(Mod_7615_OUT_Schuerfer_REL, "INCITY");
	B_StartOtherRoutine	(Mod_7492_OUT_Roman_REL, "INCITY");
	B_StartOtherRoutine	(Mod_7619_OUT_Frazer_REL, "INCITY");
};

INSTANCE Info_Mod_Theodorus_Plagenquest (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Plagenquest_Condition;
	information	= Info_Mod_Theodorus_Plagenquest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wydaje mi sie, ze potrzebujesz eksterminatora.";
};

FUNC INT Info_Mod_Theodorus_Plagenquest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Plagenquest))
	&& (Mod_REL_Stadthalter == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Theodorus_Plagenquest_Info()
{
	B_Say	(hero, self, "$PLAGENQUEST01");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_09_01"); //Tak, wyslalismy juz przez miasto kilka mlotków mysliwych.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_09_02"); //Ale nawet mlotkami nie udalo sie powstrzymac szkodników.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_09_03"); //Bez wzgledu na to, jak czesto ich bijesz, wracaja oni do nas i w towarzystwie wielu swoich rodaków.
	B_Say	(hero, self, "$PLAGENQUEST02");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_09_05"); //W rzeczywistosci, obecnie badam kroniki miasta i spotkalem sie z czyms.....
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_09_06"); //Minie jednak troche czasu, zanim przejde do pelnej analizy tekstu.
	B_Say	(hero, self, "$PLAGENQUEST03");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_09_08"); //Tak, mozesz spróbowac szczescia jako mlotkowiec na dworze, w którym obecnie jest wiele brudnych stworzen.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_09_09"); //Moze odniesiesz wiekszy sukces.

	B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Wydaje sie, ze teodorek znalazl pewne wskazówki w kronikach miasta. Do czasu, gdy on je do konca zglebi, mam wypróbowac mnie w dworcu do polowania na owady.");

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

INSTANCE Info_Mod_Theodorus_Plagenquest_02 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Plagenquest_02_Condition;
	information	= Info_Mod_Theodorus_Plagenquest_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Theodorus_Plagenquest_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Richter_Plagenquest))
	&& (Mod_REL_Stadthalter == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Theodorus_Plagenquest_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_00"); //Ach, dobrze, zeby cie zobaczyc, odkrylem cos waznego.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_01"); //Choroba, która obecnie dotyka miasto, istniala juz wiele stuleci temu - niedlugo po jego powstaniu.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_02"); //Aby zabezpieczyc blogoslawienstwo bogów dla miasta i jego otoczenia, w holdzie bogom uczyniono wówczas poswiecenia zwierzat.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_03"); //Kazdy mial obowiazek poswiecic pewna liczbe zwierzat.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_04"); //Jednak jeden z ich ojców zalozycieli byl tak skapy, ze zamiast owcy czy molate poswiecil owady.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_05"); //Bogowie byli tak wsciekli, ze przenosili ludzkie pragnienie bogatej populacji zwierzat na owady srodowiska.
	B_Say	(hero, self, "$PLAGENQUEST04");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_07"); //No cóz, z klubem chemicznym.
	B_Say	(hero, self, "$PLAGENQUEST05");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_09"); //Tak, przez dlugi czas bylo sie zupelnie bezradnym i wydawalo sie, ze trzeba sie bylo porzucic miasto.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_10"); //Ale wtedy sprawiedliwy i szanowany obywatel Chemos zostal wysypany snem.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_11"); //Otrzymal on instrukcje jak zbudowac bron, która moglaby wypedzic zaraze.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_12"); //Dlatego wlasnie nasz zwyczaj z mlotkami miejskimi musi przyjsc do walki z owadami.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_13"); //Mloty i kluby nie róznily sie wówczas zasadniczo.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_14"); //Nasze prawo w tym zakresie siega nieco pózniej, kiedy to mlotki nadano im charakterystyczny ksztalt, a kluby zostaly zastapione z powodów praktycznych.
	B_Say	(hero, self, "$PLAGENQUEST06");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_16"); //Nie, juz nie boje sie. A produkcja takiej broni nie jest nieskomplikowana. Znalazlem te instrukcje.....
	B_Say	(hero, self, "$PLAGENQUEST07");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_18"); //Oto jej kopia.

	B_GiveInvItems	(self, hero, ItWr_Bauplan_ChemischeKeule, 1);

	B_Say	(hero, self, "$PLAGENQUEST08");

	B_HeroFakeScroll ();

	B_Say	(hero, self, "$PLAGENQUEST09");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_21"); //Czy to prawda? Bedzie pan nam wszystkim przysluzyl sie swietnie.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_22"); //Jak tylko bedziesz miec wszystko razem, wróc tutaj i oddaj materialy do naszego kowala.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_02_09_23"); //A gdzies w miescie znajdziemy klub. Dziekuje, dziekuje.

	B_LogEntry_More	(TOPIC_MOD_ADANOS_PLAGE, TOPIC_MOD_ADANOS_DRECKSVIECHER, "Aha, plaga owadów opiera sie wiec na karze dla bogów za popelnione zniewagi.", "W porzadku, teraz moge szukac chemicznego materialu klubowego, który moze wypedzic bydlo. W Khoracie powinni byc w stanie sami znalezc klub w Khoracie....");

	B_GivePlayerXP	(200);

	Mod_WM_Plage_PartInsekt = 1;
};

INSTANCE Info_Mod_Theodorus_Plagenquest_03 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Plagenquest_03_Condition;
	information	= Info_Mod_Theodorus_Plagenquest_03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Theodorus_Plagenquest_03_Condition()
{
	if (Npc_HasItems(hero, ItMw_Chemo) == 1)
	&& (Mod_REL_Stadthalter == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Theodorus_Plagenquest_03_Info()
{
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_03_09_00"); //Slysze, ze dostales klub. Teraz nadszedl czas, aby wypedzic szkodniki z miasta.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_03_09_01"); //Wiele zwierzat zebralo sie na targowisku. Wez klub chemiczny i zniszcz go.

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

INSTANCE Info_Mod_Theodorus_Plagenquest_04 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Plagenquest_04_Condition;
	information	= Info_Mod_Theodorus_Plagenquest_04_Info;
	permanent	= 0;
	important	= 0;
	description	= "Klub byl w stanie powstrzymac owady. Pokonalem ich wszystkich.";
};

FUNC INT Info_Mod_Theodorus_Plagenquest_04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Plagenquest_03))
	&& (Npc_IsDead(Insekt_04))
	&& (Npc_IsDead(Insekt_05))
	&& (Npc_IsDead(Insekt_06))
	&& (Mod_REL_Stadthalter == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Theodorus_Plagenquest_04_Info()
{
	B_Say	(hero, self, "$PLAGENQUEST10");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_04_09_01"); //To wspanialy i pierwszy krok na drodze do ostatecznego wygnania zla.
	B_Say	(hero, self, "$PLAGENQUEST11");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_04_09_03"); //Tak, niestety dowiedzielismy sie, ze nowe pasozyty nadal pochodza z okolicznych lasów.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_04_09_04"); //Gdzies tam, gdzie musi byc korzen zla...... zlowieszczy olbrzymi blad, o którym mówily zródla.
	B_Say	(hero, self, "$PLAGENQUEST12");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_04_09_06"); //Jest cos, a raczej ktos, kto moze Ci w tym pomóc.
	B_Say	(hero, self, "$PLAGENQUEST13");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_04_09_08"); //Obywatel naszego miasta. Jego imie jest aksonem i nosi krew chemiczna, jak dowiedzialem sie kilka godzin temu.
	B_Say	(hero, self, "$PLAGENQUEST14");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_04_09_10"); //Cóz, z jednej strony rodowody daja jasne wskazówki, a z drugiej..... no cóz.....
	B_Say	(hero, self, "$PLAGENQUEST15");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_04_09_12"); //... Znalezlismy z nim klub chemiczny. Caly czas wisiala w salonie jego domu.
	B_Say	(hero, self, "$PLAGENQUEST16");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_04_09_14"); //W kazdym razie, powinien byc w stanie pomóc Ci wyczuc chrzaszcze, odkryc i zniszczyc olbrzymi blad. On juz czeka na Ciebie poza miastem.

	B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Grmpff, to jest coraz lepsze i lepsze. Caly czas klub chemiczny wisial wokól Axona, potomka chemoo.... No cóz, teraz pozwolono mi strzelac z nim do wielkiego bakcyla w lesie. Axon czeka na mnie poza miastem.");

	B_StartOtherRoutine	(Mod_7415_OUT_Axon_REL, "VORSTADT");
	AI_Teleport	(Mod_7415_OUT_Axon_REL, "REL_CITY_001");
};

INSTANCE Info_Mod_Theodorus_Plagenquest_05 (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Plagenquest_05_Condition;
	information	= Info_Mod_Theodorus_Plagenquest_05_Info;
	permanent	= 0;
	important	= 0;
	description	= "To sie dzieje. Ogromny luk zostaje pokonany.";
};

FUNC INT Info_Mod_Theodorus_Plagenquest_05_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Axon_Plagenquest_02))
	&& (Npc_IsDead(Riesenbug))
	&& (Mod_REL_Stadthalter == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Theodorus_Plagenquest_05_Info()
{
	B_Say	(hero, self, "$PLAGENQUEST17");
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_05_09_01"); //To wspaniale. Uczyniles nasze miasto sluzba o nieocenionej wartosci i rozwiales zlo.
	AI_Output(self, hero, "Info_Mod_Theodorus_Plagenquest_05_09_02"); //Wez to zloto i mlotek miejski jako podziekowania. Niech wam towarzyszy blogoslawienstwo bogów.

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

INSTANCE Info_Mod_Theodorus_Andre (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Andre_Condition;
	information	= Info_Mod_Theodorus_Andre_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Theodorus_Andre_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Herold))
	&& (Mod_PAL_HeroBot == 17)
	&& (Mod_REL_Stadthalter == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Theodorus_Andre_Info()
{
	AI_Output(self, hero, "Info_Mod_Theodorus_Andre_05_00"); //Dobry poranek, zolnierz. Czy tez powinienem wezwac Pana kapitana?
	B_Say	(hero, self, "$HEROBOTQUEST01");
	AI_Output(self, hero, "Info_Mod_Theodorus_Andre_05_02"); //Plan Pana Andre' a zadzialal, ale nie bylo sposobu na wyprowadzenie wyjscia do wielkiego pieca, wiec on nasycil cie, wlozyl kostium i zwabil robota do wielkiego pieca.
	AI_Output(self, hero, "Info_Mod_Theodorus_Andre_05_03"); //Znalezlismy obok Ciebie zapieczetowana koperte. W nim Andre wyjasnil cala sprawe i mianowal cie swoim nastepca.
	AI_Output(self, hero, "Info_Mod_Theodorus_Andre_05_04"); //Ale tutaj.... mozesz sam przeczytac szczególy.

	B_GiveInvItems	(self, hero, ItWr_AndreAbschied, 1);

	AI_Output(self, hero, "Info_Mod_Theodorus_Andre_05_05"); //A ja powinienem wam dac ten klucz. Prawdopodobnie do pudelka w pokoju kapitana.

	B_GiveInvItems	(self, hero, ItKe_Andre, 1);

	B_Say	(hero, self, "$HEROBOTQUEST02");
	AI_Output(self, hero, "Info_Mod_Theodorus_Andre_05_06"); //Dokladnie. Brakowalo Ci nabozenstwa, spales przez 32 godziny snu. Stary konik wydaje sie byc w bardzo dobrej formie.
	AI_Output(self, hero, "Info_Mod_Theodorus_Andre_05_07"); //Jesli chcesz sie pozegnac, Andre jest teraz na cmentarzu. Przynajmniej jego prochy. Ale odpocznij najpierw, nie ucieknie od ciebie.
	AI_Output(self, hero, "Info_Mod_Theodorus_Andre_05_08"); //O tak, zanim zapomne: operator wielkiego pieca poprosil cie o to, sprawdz go.

	B_Göttergefallen(1, 5);

	B_GivePlayerXP	(1000);

	Log_CreateTopic	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_PAL_BOT, TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, "Robot jest pokonany, ale Lord Andre musial poswiecic sie, aby to osiagnac. Teraz mianowal mnie swoim nastepca.", "Andre faktycznie poswiecil sie, aby zniszczyc robota. W liscie nazwal mnie swoim nastepca i dal mi klucz, który prawdopodobnie prowadzi mnie do jego klatki piersiowej w koszarach.");
	B_SetTopicStatus	(TOPIC_MOD_PAL_BOT, LOG_SUCCESS);

	B_LogEntry_NS	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, "Operator wielkiego pieca Robert chce mnie zobaczyc. Powinienem zatrzymac sie tam i zapytac, o co chodzi.");
};

INSTANCE Info_Mod_Theodorus_Freudenspender (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Freudenspender_Condition;
	information	= Info_Mod_Theodorus_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Wygladasz tak, jak chcesz byc dawca radosci.";
};                       

FUNC INT Info_Mod_Theodorus_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Theodorus_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Theodorus_Freudenspender_15_00"); //Wygladasz tak, jak chcesz byc dawca radosci.
	AI_Output(self, hero, "Info_Mod_Theodorus_Freudenspender_09_01"); //Co "Co"?
	AI_Output(hero, self, "Info_Mod_Theodorus_Freudenspender_15_02"); //Jestem po prostu dzieckiem.....
};

INSTANCE Info_Mod_Theodorus_Pickpocket (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_Pickpocket_Condition;
	information	= Info_Mod_Theodorus_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Theodorus_Pickpocket_Condition()
{
	C_Beklauen	(75, ItMi_Gold, 28);
};

FUNC VOID Info_Mod_Theodorus_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Theodorus_Pickpocket);

	Info_AddChoice	(Info_Mod_Theodorus_Pickpocket, DIALOG_BACK, Info_Mod_Theodorus_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Theodorus_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Theodorus_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Theodorus_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Theodorus_Pickpocket);
};

FUNC VOID Info_Mod_Theodorus_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Theodorus_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Theodorus_Pickpocket);

		Info_AddChoice	(Info_Mod_Theodorus_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Theodorus_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Theodorus_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Theodorus_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Theodorus_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Theodorus_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Theodorus_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Theodorus_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Theodorus_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Theodorus_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Theodorus_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Theodorus_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Theodorus_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Theodorus_EXIT (C_INFO)
{
	npc		= Mod_7382_OUT_Theodorus_REL;
	nr		= 1;
	condition	= Info_Mod_Theodorus_EXIT_Condition;
	information	= Info_Mod_Theodorus_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Theodorus_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Theodorus_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
