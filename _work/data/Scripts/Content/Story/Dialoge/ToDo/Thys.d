INSTANCE Info_Mod_Thys_Hi (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_Hi_Condition;
	information	= Info_Mod_Thys_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thys_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gellit_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Thys_Hi_07_00"); //Co Pan tutaj robi?

	Info_ClearChoices	(Info_Mod_Thys_Hi);

	Info_AddChoice	(Info_Mod_Thys_Hi, "Szukam pewnego zaklecia.", Info_Mod_Thys_Hi_B);

	if (VMG_Second == 6)
	&& (Npc_HasItems(hero, ItFo_Fish) > 0)
	{
		Info_AddChoice	(Info_Mod_Thys_Hi, "Przynióslem ci cos.", Info_Mod_Thys_Hi_A);
	};
};

FUNC VOID Info_Mod_Thys_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Thys_Hi_B_15_00"); //Szukam pewnego zaklecia.
	AI_Output(self, hero, "Info_Mod_Thys_Hi_B_07_01"); //Dlaczego móglbym Ci pomóc?

	Info_ClearChoices	(Info_Mod_Thys_Hi);

	Info_AddChoice	(Info_Mod_Thys_Hi, "Co chcesz, abym zrobil?", Info_Mod_Thys_Hi_D);
	Info_AddChoice	(Info_Mod_Thys_Hi, "Bo rozcie Ci gardlo.", Info_Mod_Thys_Hi_C);
};

FUNC VOID Info_Mod_Thys_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Thys_Hi_D_15_00"); //Co chcesz, abym zrobil?
	AI_Output(self, hero, "Info_Mod_Thys_Hi_D_07_01"); //Przynies mi cos do jedzenia. I pic. Na razie powinny to zrobic dwie butelki wina i bochenek chleba.

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "Mam dac Tony' emu dwie butelki wina i bochenka chleba, zanim on do mnie porozmawia.");

	VMG_Second = 7;

	Info_ClearChoices	(Info_Mod_Thys_Hi);
};

FUNC VOID Info_Mod_Thys_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Thys_Hi_C_15_00"); //Bo rozcie Ci gardlo.
	AI_Output(self, hero, "Info_Mod_Thys_Hi_C_07_01"); //Spróbuj, busteruj.
	AI_Output(hero, self, "Info_Mod_Thys_Hi_C_15_02"); //Nie chce zadnych klopotów. Po prostu zaklecie.

	Info_ClearChoices	(Info_Mod_Thys_Hi);

	Info_AddChoice	(Info_Mod_Thys_Hi, "Co chcesz, abym zrobil?", Info_Mod_Thys_Hi_D);
};

FUNC VOID Info_Mod_Thys_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Thys_Hi_A_15_00"); //Przynióslem ci cos.

	B_GiveInvItems	(hero, self, ItFo_Fish, 1);

	AI_Output(self, hero, "Info_Mod_Thys_Hi_A_07_01"); //Ach, znasz nasze zwyczaje. Co moge dla Ciebie zrobic?

	VMG_Second = 8;

	Info_ClearChoices	(Info_Mod_Thys_Hi);
};

INSTANCE Info_Mod_Thys_HabEssen (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_HabEssen_Condition;
	information	= Info_Mod_Thys_HabEssen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostalem wasze rzeczy.";
};

FUNC INT Info_Mod_Thys_HabEssen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thys_Hi))
	&& (VMG_Second == 7)
	&& (Npc_HasItems(hero, ItFo_Bread) > 0)
	&& (Npc_HasItems(hero, ItFo_Wine) > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_HabEssen_Info()
{
	AI_Output(hero, self, "Info_Mod_Thys_HabEssen_15_00"); //Dostalem wasze rzeczy.

	B_ShowGivenThings	("Dwa wina i bochenki chleba");

	AI_Output(self, hero, "Info_Mod_Thys_HabEssen_07_01"); //Dziekuje bardzo. Co moge teraz dla Ciebie zrobic?

	VMG_Second = 8;
};

INSTANCE Info_Mod_Thys_Zauber (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_Zauber_Condition;
	information	= Info_Mod_Thys_Zauber_Info;
	permanent	= 0;
	important	= 0;
	description	= "Szukam zaklecia metamorfozy. Do bledu przy miesie.";
};

FUNC INT Info_Mod_Thys_Zauber_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thys_Hi))
	&& (VMG_Second == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_Zauber_Info()
{
	AI_Output(hero, self, "Info_Mod_Thys_Zauber_15_00"); //Szukam zaklecia metamorfozy. Do bledu przy miesie.
	AI_Output(self, hero, "Info_Mod_Thys_Zauber_07_01"); //Moge panu w tym pomóc. Tak sie sklada, ze mam tutaj taka propozycje. Nie jest ona jednak bezplatna.
	AI_Output(hero, self, "Info_Mod_Thys_Zauber_15_02"); //Co chcesz, abym zrobil?
	AI_Output(self, hero, "Info_Mod_Thys_Zauber_07_03"); //Jestem tu bardzo samotny. Zabierz mnie z wioski, aby mnie zabawic.

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "Thys chce, abym przywiózl go z wioski do rozmów.");
};

INSTANCE Info_Mod_Thys_Scroll (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_Scroll_Condition;
	information	= Info_Mod_Thys_Scroll_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thys_Scroll_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thys_Zauber))
	&& (VMG_Second == 9)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_Scroll_Info()
{
	AI_Output(self, hero, "Info_Mod_Thys_Scroll_07_00"); //Ach, dobrze! Chcesz miec zaklecie metamorfozy, które przeksztalca cie w blad miesny?
	AI_Output(hero, self, "Info_Mod_Thys_Scroll_15_01"); //Tak.
	AI_Output(self, hero, "Info_Mod_Thys_Scroll_07_02"); //Wszystko w porzadku, mozesz go miec. Tutaj.

	CreateInvItems	(self, ItSc_TrfMeatbug, 1);
	B_GiveInvItems	(self, hero, ItSc_TrfMeatbug, 1);

	AI_Output(self, hero, "Info_Mod_Thys_Scroll_07_03"); //Zadbaj o to.
	AI_Output(hero, self, "Info_Mod_Thys_Scroll_15_04"); //Dziekuje bardzo. Ale jak moge sie wydostac z tego miejsca?
	AI_Output(self, hero, "Info_Mod_Thys_Scroll_07_05"); //Czy przegladales portal?
	AI_Output(hero, self, "Info_Mod_Thys_Scroll_15_06"); //Tak.
	AI_Output(self, hero, "Info_Mod_Thys_Scroll_07_07"); //Wszystko jasne. Opowiem ci, jak mi pomóc.... przynosic rybe.

	Info_ClearChoices	(Info_Mod_Thys_Scroll);

	Info_AddChoice	(Info_Mod_Thys_Scroll, "Okay.", Info_Mod_Thys_Scroll_B);
	Info_AddChoice	(Info_Mod_Thys_Scroll, "Zapomnij o tym.", Info_Mod_Thys_Scroll_A);
};

FUNC VOID Info_Mod_Thys_Scroll_B()
{
	AI_Output(hero, self, "Info_Mod_Thys_Scroll_B_15_00"); //Okay.
	AI_Output(self, hero, "Info_Mod_Thys_Scroll_B_07_01"); //Na co czekasz?

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "Mialem przyniesc Thysowi rybe, wiec on moze mi powiedziec, jak mnie tu wyprowadzic.");

	VMG_Second = 10;

	Info_ClearChoices	(Info_Mod_Thys_Scroll);
};

FUNC VOID Info_Mod_Thys_Scroll_A()
{
	AI_Output(hero, self, "Info_Mod_Thys_Scroll_A_15_00"); //Zapomnij o tym.
	AI_Output(self, hero, "Info_Mod_Thys_Scroll_A_07_01"); //Wiec nie obchodzi Cie tak wiele zaklecia?
	AI_Output(hero, self, "Info_Mod_Thys_Scroll_A_15_02"); //Tak, tak, tak, tak, tak. Przynosze twoja rybe.

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "Mialem przyniesc Thysowi rybe, wiec on moze mi powiedziec, jak mnie tu wyprowadzic.");

	VMG_Second = 10;

	Info_ClearChoices	(Info_Mod_Thys_Scroll);
};

INSTANCE Info_Mod_Thys_Fisch (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_Fisch_Condition;
	information	= Info_Mod_Thys_Fisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thys_Fisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thys_Scroll))
	&& (VMG_Second == 10)
	&& (Npc_HasItems(hero, ItFo_Fish) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_Fisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Thys_Fisch_07_00"); //Dostales rybe?
	AI_Output(hero, self, "Info_Mod_Thys_Fisch_15_01"); //Tak, tutaj.

	B_GiveInvItems	(hero, self, ItFo_Fish, 1);

	AI_Output(self, hero, "Info_Mod_Thys_Fisch_07_02"); //Ach, ladny. Oto wiec sprawa: po prostu wracasz do portalu i mówisz nastepujace slowa: Aman rabbah kolir! To wszystko.

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "Powinienem wrócic do kamiennego kola i powiedziec slowa 'Aman rabbah kolir'.");

	Info_ClearChoices	(Info_Mod_Thys_Fisch);

	Info_AddChoice	(Info_Mod_Thys_Fisch, "Dziekuje bardzo. Jestem na drodze.", Info_Mod_Thys_Fisch_B);
	Info_AddChoice	(Info_Mod_Thys_Fisch, "To wszystko? Oszukujesz mnie.", Info_Mod_Thys_Fisch_A);
};

FUNC VOID Info_Mod_Thys_Fisch_B()
{
	AI_Output(hero, self, "Info_Mod_Thys_Fisch_B_15_00"); //Dziekuje bardzo. Jestem na drodze.
	AI_Output(self, hero, "Info_Mod_Thys_Fisch_B_07_01"); //Pozegnanie i podziekowania za ryby!

	VMG_Second = 11;

	Info_ClearChoices	(Info_Mod_Thys_Fisch);
};

FUNC VOID Info_Mod_Thys_Fisch_A()
{
	AI_Output(hero, self, "Info_Mod_Thys_Fisch_A_15_00"); //To wszystko? Oszukujesz mnie.
	AI_Output(self, hero, "Info_Mod_Thys_Fisch_A_07_01"); //Nie. Dowiedz sie dla siebie.
	AI_Output(hero, self, "Info_Mod_Thys_Fisch_A_15_02"); //Bede, to zrobie.
	AI_Output(self, hero, "Info_Mod_Thys_Fisch_A_07_03"); //Pozegnanie i podziekowania za ryby!

	VMG_Second = 11;

	Info_ClearChoices	(Info_Mod_Thys_Fisch);
};

INSTANCE Info_Mod_Thys_AlvarDead (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_AlvarDead_Condition;
	information	= Info_Mod_Thys_AlvarDead_Info;
	permanent	= 0;
	important	= 0;
	description	= "Slyszalem, ze przyniósles pamietnik innego Alvara?";
};

FUNC INT Info_Mod_Thys_AlvarDead_Condition()
{
	if (Mod_AlvarDead == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_AlvarDead_Info()
{
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead_15_00"); //Slyszalem, ze przyniósles pamietnik innego Alvara?
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead_07_01"); //Tak, to prawda. Dlaczego pytasz?
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead_15_02"); //No cóz, mam podejrzliwosc i moze mi pomóc wyjasnic pewne kwestie, gdybym mógl szybko zagladnac do srodka.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead_07_03"); //Pod podejrzenia? O czym Pan mówi? Wyjasnij sie!
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead_15_04"); //Tak, mam wszelkie powody, by wierzyc, ze az do jego smierci jest wiecej.... nie tylko duchy sniegu.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead_07_05"); //A jego pamietnik ma ci w tym pomóc? W prawo, zajrzyjmy do srodka.

	B_GiveInvItems	(self, hero, ItWr_AlvarTagebuch2, 1);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Thys_AlvarDead2 (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_AlvarDead2_Condition;
	information	= Info_Mod_Thys_AlvarDead2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ostatnia strona zostala wyrwana, a tekst jest nowy.";
};

FUNC INT Info_Mod_Thys_AlvarDead2_Condition()
{
	if (Mod_AlvarDead == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_AlvarDead2_Info()
{
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_00"); //Ostatnia strona zostala wyrwana, a tekst jest nowy.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_01"); //Co? Jak dojsc do tego stwierdzenia? Skad to wiesz?
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_02"); //Cóz, poniewaz ukradlem go w imieniu Serry i Malfamy nie wiele godzin temu...... przed zabiciem Alvara.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_03"); //Stolen na instrukcje tych dwóch nienagannych kobiet? Czy zdajesz sobie sprawe, jak oburzajace sa te oskarzenia?
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_04"); //Tym bardziej, ze tak bardzo ucierpieli z powodu rekonstrukcji Alvaru.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_05"); //Ale to prawda.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_06"); //Jedyna prawda w sadzie jest to, co zostalo udowodnione.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_07"); //Czy tylko zle zrozumialem, kiedy próbowales nawiazac kontakt z upadkiem Alvara?
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_08"); //Tak, to wlasnie chcialem.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_09"); //(walka o powietrze).... to jest......
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_10"); //To prawda, co mówie! Przynioslam im pamietnik.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_11"); //Alvar odslonil w nim magiczny krysztal krysztal ukryty w zbroi, aby uchronic go przed duchami sniegu.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_12"); //I dzisiaj zostal przez nich zabity. Czy to moze byc zbieg okolicznosci?
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_13"); //(jeszcze podekscytowany) To.... (zatrzymuje sie, zatrzymuje) pozwole sobie pomyslec krótko..... Brzmi to zbyt niewiarygodnie....
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_14"); //Cóz, rozdarta strona jako smieszna wskazówka.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_15"); //A potem twoje swiadectwo, twierdzenia nieznajomych oskarzajacych dwie szanowane, religijne i niewinne kobiety o wspóludzial w zabójstwie. To oburzajace.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_16"); //Zaczynasz jak szalony Alvar.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_17"); //Jak? Co myslisz?
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_18"); //lunatyk od jakiegos czasu rozpowszechnia zle wiesci o dwóch z nich, twierdzac, ze sa one...... Nie ma znaczenia, to juz nie ma znaczenia.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_19"); //Co dokladnie ci powiedzial?
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_20"); //Z pewnoscia nie bede dalej ozywiac jego zlego znieslawienia.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_21"); //To, co mozna bylo myslec o jego wypowiedziach, widzimy tutaj w dzienniku.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_22"); //Ale czy bylo cos na ten temat?
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_23"); //Nie oddajesz sie, prawda? Jesli chcesz uzasadnic swoje niemozliwe twierdzenia, powinienes to zrobic dowodami....
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_24"); //Wystawy? Co na przyklad podoba sie?
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_25"); //Jesli szukasz dowodów, zbroja Alvara bedzie dobrym poczatkiem.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_26"); //Ale wiesz, ze to nie bedzie nieszkodliwe. Robisz to na wlasne ryzyko.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead2_15_27"); //Tak, nie mam wyboru.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_28"); //Tak, zrób to, co uwazasz za konieczne. Cialo Alvara bylo tu widziane na pólnocnym wschodzie góry.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead2_07_29"); //Teraz wiesz, dokad pójsc. Nawet jesli nie popieram calej sprawy.

	B_LogEntry	(TOPIC_MOD_EIS_UNSCHULDIG, "To nie bylo zbytnio otwarte na wsparcie mnie w tej sprawie. Prawdopodobnie bede musial ratowac pancerz Alvara. Cialo na pólnocny-wschód od wioski znajde na górze.");

	Wld_InsertNpc	(Mod_7562_OUT_Alvar_EIS,	"EIS_268");

	B_KillNpc	(Mod_7562_OUT_Alvar_EIS);
};

INSTANCE Info_Mod_Thys_AlvarDead3 (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_AlvarDead3_Condition;
	information	= Info_Mod_Thys_AlvarDead3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam zbroje.";
};

FUNC INT Info_Mod_Thys_AlvarDead3_Condition()
{
	if (Mod_AlvarDead == 4)
	&& (Npc_HasItems(hero, ItAr_FakeArmor_Alvar) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_AlvarDead3_Info()
{
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead3_15_00"); //Mam zbroje.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead3_07_01"); //Naprawde co? Pozwole sobie to zobaczyc.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead3_07_02"); //Wlasciwie w nim wszyte jest cos twardego.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead3_07_03"); //Trzymac przez sekunde. To prosty kamien.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead3_15_04"); //Idziesz tam. Serra i Malfama przeczytali o krysztalu i zanurzyli go w prostym kamieniu.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead3_07_05"); //Tak, pancerz moze to wskazywac. Ale nie wiecej.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead3_15_06"); //Co jeszcze moge zrobic?
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead3_07_07"); //Cóz, krysztal musial byc raz w zbroi, zgodnie z Twoimi przypuszczeniami. Znajdz go!
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead3_15_08"); //Hmm, mógl byc wszedzie. Jesli tylko cos mi pomogloby w wyszukiwaniu....
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead3_07_09"); //Mielismy wiec kiedys amulet, który potrafil wykrywac obiekty. Pochodzil z.....
	AI_Output(hero, self, "Info_Mod_Thys_AlvarDead3_15_10"); //(Interruje) Oczywiscie, ze ruda amulet przeszukujacej Night Wisp.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead3_07_11"); //Posiadasz jeden z nich? Wtedy nie powinienes miec problemu z odnalezieniem magicznego krysztalu.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead3_07_12"); //Energia magiczna moze sprawic, ze takie amulety beda szczególnie dobrze znane.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarDead3_07_13"); //Wiec wiesz, jak postepowac.

	B_LogEntry	(TOPIC_MOD_EIS_UNSCHULDIG, "Teraz musze spróbowac znalezc krysztal z pomoca amuletu.");

	B_GivePlayerXP	(300);

	Wld_InsertItem	(ItMi_AlvarKristall, "FP_ITEM_ALVARKRISTALL");
};

INSTANCE Info_Mod_Thys_AlvarKristall (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_AlvarKristall_Condition;
	information	= Info_Mod_Thys_AlvarKristall_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thys_AlvarKristall_Condition()
{
	if (Mod_AlvarKristall == 1)
	&& (Npc_HasItems(hero, ItMi_AlvarKristall) == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Brutus_AlvarKristall))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_AlvarKristall_Info()
{
	AI_Output(self, hero, "Info_Mod_Thys_AlvarKristall_07_00"); //Um, niektórzy zdenerwowani mieszkancy wsi wlasnie do mnie przyszli, jak ty sam widzisz siebie.
	AI_Output(self, hero, "Info_Mod_Thys_AlvarKristall_07_01"); //Oni oskarzaja Cie zle. Poza tym dowiedzieli sie równiez o Panstwa badaniach.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarKristall_15_02"); //Teraz, gdy mam magiczny krysztal, prawda powinna wreszcie wyjsc na swiatlo dzienne.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Thys_AlvarKristall2 (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_AlvarKristall2_Condition;
	information	= Info_Mod_Thys_AlvarKristall2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thys_AlvarKristall2_Condition()
{
	if (Mod_AlvarKristall == 3)
	&& (Npc_HasItems(hero, ItMi_AlvarKristall) == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Brutus_AlvarKristall2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_AlvarKristall2_Info()
{
	AI_Output(self, hero, "Info_Mod_Thys_AlvarKristall2_07_00"); //Co to znaczy, ze Oczywiscie. Wszystko, co bylo w kontakcie z krysztalem, ma czesc tej magicznej energii zwiazanej z nim od pewnego czasu.
	AI_Output(hero, self, "Info_Mod_Thys_AlvarKristall2_15_01"); //Rece Serry swieca. To dowód na to, ze ukradla krysztal z pancerza, aby Alvar spowodowal smierc.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Thys_Eriskult (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_Eriskult_Condition;
	information	= Info_Mod_Thys_Eriskult_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thys_Eriskult_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Knatus_Traenenkristall3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_Eriskult_Info()
{
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_00"); //Caly czas budzila sie moja swiadomosc.
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_01"); //Tylko z powodu magii czarownic nie bylem w stanie poruszac sie i komunikowac.
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_02"); //Tak wiec z pewnoscia slyszalem, co sie tutaj wydarzylo.
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_03"); //Spolecznosc wioski jest dla Was obojga gleboko zadluzona.
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_04"); //Bez Ciebie i Alvara wioska bylaby skazana na zgube.
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_05"); //Zobacze nieprawosc trupu.
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_06"); //Ale powiedz mi, jak udalo ci sie rozluznic jezyki zwodniczych kobiet?
	AI_Output(hero, self, "Info_Mod_Thys_Eriskult_15_07"); //Przez krysztal, który pochodzi z lez Inno. Mam go tutaj..... ale czekac minute. Jest mokry.
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_08"); //Krystal? Naprawde?
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_09"); //Tak, slyszalem o tym juz wczesniej, ale myslalem, ze to prosta legenda. Imponujace.
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_10"); //Teraz jednak wydaje sie powracac do ksztaltu lez, poniewaz znajduje sie poza jaskinia i jej otoczeniem.
	AI_Output(hero, self, "Info_Mod_Thys_Eriskult_15_11"); //Czy mozna zatrzymac proces?
	AI_Output(self, hero, "Info_Mod_Thys_Eriskult_07_12"); //Nie wiem jak.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_7564_OUT_Knatus_EIS, "START");
	B_StartOtherRoutine	(Mod_7561_OUT_Alvar_EIS, "START");

	Npc_RemoveInvItems	(hero, ItMi_Traenenkristall, 1);

	B_GivePlayerXP	(500);

	B_SetTopicStatus	(TOPIC_MOD_EIS_UNSCHULDIG, LOG_SUCCESS);

	Mod_Thys_Schneegeister_Tag = Wld_GetDay();
};

INSTANCE Info_Mod_Thys_Schneegeister (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_Schneegeister_Condition;
	information	= Info_Mod_Thys_Schneegeister_Info;
	permanent	= 0;
	important	= 0;
	description	= "Slyszalem, ze duchy sniegu nie zawsze oblegaly okolice wioski.... Wiecej";
};

FUNC INT Info_Mod_Thys_Schneegeister_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gellit_Schneegeister))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_Schneegeister_Info()
{
	AI_Output(hero, self, "Info_Mod_Thys_Schneegeister_15_00"); //Slyszalem, ze duchy sniegu nie zawsze oblegaly okolice wioski.... Wiecej Czy wiesz wiecej o ich pochodzeniu?
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_01"); //Duchy sniegu? Oh, to tajemnicza historia.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_02"); //Bylem tylko dzieckiem, kiedy zaczeli nawiedzac okolice.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_03"); //Jej tlo? Nikt nie wie na pewno.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_04"); //Przez lata dostosowywalismy sie do zagrozen, jakie stwarzaja.
	AI_Output(hero, self, "Info_Mod_Thys_Schneegeister_15_05"); //Ale jakie sa zalozenia dotyczace jego pochodzenia?
	AI_Output(hero, self, "Info_Mod_Thys_Schneegeister_15_06"); //Slyszalem, ze niektórzy ludzie obwiniaja bogów lub magiczne istoty.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_07"); //Ach, kiedy ludzie nie moga znalezc wyjasnienia dla rzeczy, wymyslaja rózne rzeczy.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_08"); //Oczywiscie moze to byc bogowie. Ale tak samo jest z czlowiekiem w laboratorium.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_09"); //Nie jest to tylko cos, na co istnieja jakiekolwiek poszlaki.....
	AI_Output(hero, self, "Info_Mod_Thys_Schneegeister_15_10"); //Widze, jak.... Slyszalem tez, ze ktos zostal kiedys wypedzony z wioski......
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_11"); //Ahh, opowiesc. Mówisz o Skampie. Mlody mezczyzna wtedy jeszcze.... prawie szescdziesiat lat temu.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_12"); //Tak, podobno wszedl w ciemnosc, zaklecia i zjednoczyl sie z niegodziwa kobieta.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_13"); //Krótko mówiac, nie mial najlepszej reputacji i zostal wygnany z wioski.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_14"); //Kilka miesiecy pózniej pojawily sie pierwsze duchy sniegu. Czy to jest z tym zwiazane...... Nie wiem.
	AI_Output(hero, self, "Info_Mod_Thys_Schneegeister_15_15"); //A dokad poszedl?
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_16"); //Na koniec ktos chcialby zobaczyc go nad duzym jeziorem...... a nastepnie zostal polkniety na smierc.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister_07_17"); //Ale jak juz powiedzialem, od wszystkiego minelo duzo czasu.... i prawdopodobnie bez znaczenia.

	B_LogEntry	(TOPIC_MOD_GELLIT_SCHNEEGEISTER, "Wiekszosc spekulacji na temat zaangazowania bogów nie mysli o wiekszosci spekulacji. Wspomnial równiez o mlodym czlowieku, który podobno zaangazowal sie w ciemne moce i zostal wygnany z wioski. Ostatnio zobaczyl go na zamarznietym jeziorze. Wszystko to bylo jednak ponad 60 lat temu i wedlug opinii Thysa prawdopodobnie bez kontekstu dla duchów sniegu.");

	Mod_Thys_Schneegeister_Tag = Wld_GetDay();
};

INSTANCE Info_Mod_Thys_Schneegeister2 (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_Schneegeister2_Condition;
	information	= Info_Mod_Thys_Schneegeister2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nad jeziorem znalazlem jaskinie z duchami sniegu.";
};

FUNC INT Info_Mod_Thys_Schneegeister2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thys_Schneegeister))
	&& (Mod_Thys_Schneegeister == 2)
	&& (Npc_HasItems(hero, ItWr_Schneegeister) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_Schneegeister2_Info()
{
	AI_Output(hero, self, "Info_Mod_Thys_Schneegeister2_15_00"); //Nad jeziorem znalazlem jaskinie z duchami sniegu.
	AI_Output(hero, self, "Info_Mod_Thys_Schneegeister2_15_01"); //Wsród nich byl nieumarly czlowiek, który mial te nute z nim.

	B_GiveInvItems	(hero, self, ItWr_Schneegeister, 1);

	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister2_07_02"); //Co mówisz?

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister2_07_03"); //Nie jest to mozliwe!

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister2_07_04"); //Niewiarygodny! Jesli to prawda, nieumarlym mógl byc Skamp. I go zniszczyles?
	AI_Output(hero, self, "Info_Mod_Thys_Schneegeister2_15_05"); //Tak wlasnie jest.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister2_07_06"); //Wyjasnialoby to, dlaczego odczuwalem silna zmiane w magicznym srodowisku.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister2_07_07"); //Na podstawie listu mozna wywnioskowac, ze domagal sie on polaczenia z silami demonicznymi w celu kierowania nimi i kontrolowania ich.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister2_07_08"); //Wydaje sie jednak, ze nie byl do nich i oni przejeli go w posiadanie...... lub ktos go zalozyl.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister2_07_09"); //W kazdym razie jest prawdopodobne, ze to wlasnie on byl przyczyna duchów sniegu... Wiecej i od teraz bedziemy spieszyc sie ich zgielkiem.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister2_07_10"); //Jest to kolejna nieoceniona usluga dla naszej spolecznosci.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister2_07_11"); //Jak moge Cie splacic? Hmm, jestem pewien, ze jutro cos wymyslim.

	B_LogEntry	(TOPIC_MOD_GELLIT_SCHNEEGEISTER, "Poniewaz wioska jest teraz ocalona od dalszych przebudowy duchów sniegu, Thys chce dac mi jutro prezent.");

	Mod_Thys_Schneegeister_Tag = Wld_GetDay();

	B_GivePlayerXP	(300);
};

INSTANCE Info_Mod_Thys_Schneegeister3 (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_Schneegeister3_Condition;
	information	= Info_Mod_Thys_Schneegeister3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thys_Schneegeister3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thys_Schneegeister2))
	&& (Wld_GetDay() > Mod_Thys_Schneegeister_Tag)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_Schneegeister3_Info()
{
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister3_07_00"); //Ahhh, znów jestes.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister3_07_01"); //Poniewaz jestes zawsze na niebezpiecznych sciezkach, mam dla ciebie ten ochronny talizman.

	B_GiveInvItems	(self, hero, ItTa_Behueter, 1);

	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister3_07_02"); //Po przymocowaniu do paska nie tylko zwiekszy to Twój opór, ale równiez wyczarowuje Nocna Szybe dla malej czesci Twojej many.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister3_07_03"); //Spowoduje to dezorientacje wszystkich stworzen wokól ciebie i bezposrednie ataki na siebie.
	AI_Output(self, hero, "Info_Mod_Thys_Schneegeister3_07_04"); //Oby strzegla cie na twoich drogach.

	B_GivePlayerXP	(200);

	B_SetTopicStatus	(TOPIC_MOD_GELLIT_SCHNEEGEISTER, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Thys_AlvarKristall3 (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_AlvarKristall3_Condition;
	information	= Info_Mod_Thys_AlvarKristall3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thys_AlvarKristall3_Condition()
{
	if (Mod_AlvarKristall >= 4)
	&& (Mod_AlvarKristall < 9)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_AlvarKristall3_Info()
{
	AI_Output(self, hero, "Info_Mod_Thys_AlvarKristall3_07_00"); //Przykro mi z tego powodu. Wiekszosc mieszkanców wioski opowiedziala sie za wypedzeniem. Moje rece sa zwiazane.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Thys_GobboBeschwoerer (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_GobboBeschwoerer_Condition;
	information	= Info_Mod_Thys_GobboBeschwoerer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chciales mnie zobaczyc?";
};

FUNC INT Info_Mod_Thys_GobboBeschwoerer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Luis_AtFriedhof5))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thys_GobboBeschwoerer_Info()
{
	AI_Output(hero, self, "Info_Mod_Thys_GobboBeschwoerer_15_00"); //Chciales mnie zobaczyc?
	AI_Output(self, hero, "Info_Mod_Thys_GobboBeschwoerer_07_01"); //Tak, uratowales nasze miasto przed atakiem i postawiles dobro innych przed soba.
	AI_Output(self, hero, "Info_Mod_Thys_GobboBeschwoerer_07_02"); //W nagrode otrzymasz ten pierscionek. Zwieksza to sile zyciowa.

	B_GiveInvItems	(self, hero, ItRi_Hp_03, 1);

	AI_Output(self, hero, "Info_Mod_Thys_GobboBeschwoerer_07_03"); //I wez te 250 sztuk zlota.

	B_GiveInvItems	(self, hero, ItMi_Gold, 250);

	AI_Output(self, hero, "Info_Mod_Thys_GobboBeschwoerer_07_04"); //Oboje moga pomóc w podrózy.

	B_SetTopicStatus	(TOPIC_MOD_EIS_FRIEDHOF, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Thys_Pickpocket (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_Pickpocket_Condition;
	information	= Info_Mod_Thys_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Thys_Pickpocket_Condition()
{
	C_Beklauen	(172, ItPl_Winterrute, 7);
};

FUNC VOID Info_Mod_Thys_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Thys_Pickpocket);

	Info_AddChoice	(Info_Mod_Thys_Pickpocket, DIALOG_BACK, Info_Mod_Thys_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Thys_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Thys_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Thys_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Thys_Pickpocket);
};

FUNC VOID Info_Mod_Thys_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Thys_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Thys_Pickpocket);

		Info_AddChoice	(Info_Mod_Thys_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Thys_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Thys_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Thys_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Thys_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Thys_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Thys_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Thys_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Thys_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Thys_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Thys_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Thys_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Thys_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Thys_EXIT (C_INFO)
{
	npc		= Mod_1954_EIS_Thys_EIS;
	nr		= 1;
	condition	= Info_Mod_Thys_EXIT_Condition;
	information	= Info_Mod_Thys_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Thys_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Thys_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
