INSTANCE Info_Mod_Per_Trador (C_INFO)
{
	npc		= Mod_7353_VMG_Per_TUG;
	nr		= 1;
	condition	= Info_Mod_Per_Trador_Condition;
	information	= Info_Mod_Per_Trador_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Per_Trador_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Genn_Giftpflanzen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Per_Trador_Info()
{
	AI_Output(self, hero, "Info_Mod_Per_Trador_13_00"); //Dlugi czas nie widziec, co sie dzieje?
	AI_Output(hero, self, "Info_Mod_Per_Trador_15_01"); //Czy mozesz mi powiedziec, których magów teraz brakuje?
	AI_Output(self, hero, "Info_Mod_Per_Trador_13_02"); //Taka rzecza jest brak..... Mysle, ze moge ci powiedziec, kto w ciagu kilku dni nie byl we wsi.
	AI_Output(self, hero, "Info_Mod_Per_Trador_13_03"); //Z jednej strony jest Asko, które chcialo rozejrzec sie po ruinach.
	AI_Output(self, hero, "Info_Mod_Per_Trador_13_04"); //Potem byl Fore, który chcial szukac rzadkich roslin na zboczu.
	AI_Output(self, hero, "Info_Mod_Per_Trador_13_05"); //I dziekan. Mysle, ze chcial sie rozejrzec wokól kamiennego kola.
	AI_Output(hero, self, "Info_Mod_Per_Trador_15_06"); //Pójde do nich trzy razy.
	AI_Output(self, hero, "Info_Mod_Per_Trador_13_07"); //Dziekuje bardzo. Jesli spotkasz sie z Asko, powiedz mu, ze mam dla niego pakiet.

	Log_CreateTopic	(TOPIC_MOD_PER_ASKO, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_PER_ASKO, LOG_RUNNING);

	if (Npc_KnowsInfo(hero, Info_Mod_Dever_Trador))
	{
		B_LogEntry	(TOPIC_MOD_PER_ASKO, "Mam powiedziec Asko, ze Per ma dla niego pakiet.");
	}
	else
	{
		B_LogEntry_More	(TOPIC_MOD_FAICE_GIFT, TOPIC_MOD_PER_ASKO, "Od kilku dni juz sie nie pojawil: Asko, które znajduje sie w poblizu ruin; Fore, jest na stoku; Jest na kamiennym kole dziekana.", "Mam powiedziec Asko, ze Per ma dla niego pakiet.");
	};
};

INSTANCE Info_Mod_Per_Dean (C_INFO)
{
	npc		= Mod_7353_VMG_Per_TUG;
	nr		= 1;
	condition	= Info_Mod_Per_Dean_Condition;
	information	= Info_Mod_Per_Dean_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Per_Dean_Condition()
{
	if (Mod_Turendil_Faice_Day == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Per_Dean_Info()
{
	AI_Output(self, hero, "Info_Mod_Per_Dean_13_00"); //Co spowodowalo wyszukiwanie?
	AI_Output(hero, self, "Info_Mod_Per_Dean_15_01"); //Dziekan zostal zabity przez golem wyslany tutaj przez konduktanta o nazwisku Trador.
	AI_Output(self, hero, "Info_Mod_Per_Dean_13_02"); //To okropne! Ale w Tugettso ostatnio nie widzialam w Tugettso golema. Dziwny.
	AI_Output(self, hero, "Info_Mod_Per_Dean_13_03"); //Trzeba o tym poinformowac Genn.

	if (!Npc_KnowsInfo(hero, Info_Mod_Dever_Dean))
	{
		B_LogEntry	(TOPIC_MOD_FAICE_GIFT, "Zglosilem smierc dziekana. Teraz powinienem wrócic do Genna i poinformowac go o wydarzeniach.");
	};
};

INSTANCE Info_Mod_Per_Asko (C_INFO)
{
	npc		= Mod_7353_VMG_Per_TUG;
	nr		= 1;
	condition	= Info_Mod_Per_Asko_Condition;
	information	= Info_Mod_Per_Asko_Info;
	permanent	= 0;
	important	= 0;
	description	= "Powiedzialem Asko, ze masz dla niego pakiet.";
};

FUNC INT Info_Mod_Per_Asko_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Asko_Per))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Per_Asko_Info()
{
	AI_Output(hero, self, "Info_Mod_Per_Asko_15_00"); //Powiedzialem Asko, ze masz dla niego pakiet. On powinien byc na jego drodze.
	AI_Output(self, hero, "Info_Mod_Per_Asko_13_01"); //Dziekuje bardzo. Oto troche zlota.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	B_GivePlayerXP	(250);

	B_LogEntry	(TOPIC_MOD_PER_ASKO, "Per wie, ze Asko jest na drodze do zobaczenia go.");
	B_SetTopicStatus	(TOPIC_MOD_PER_ASKO, LOG_SUCCESS);

	B_StartOtherRoutine	(Mod_7355_VMG_Asko_TUG, "START");
};

INSTANCE Info_Mod_Per_Pruefung (C_INFO)
{
	npc		= Mod_7353_VMG_Per_TUG;
	nr		= 1;
	condition	= Info_Mod_Per_Pruefung_Condition;
	information	= Info_Mod_Per_Pruefung_Info;
	permanent	= 1;
	important	= 0;
	description	= "Co z ostatnim zadaniem?";
};

FUNC INT Info_Mod_Per_Pruefung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Asko_Pruefung3))
	&& (Mod_VMG_Pruefung == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Per_Pruefung_Info()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung_15_00"); //Co z ostatnim zadaniem?
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_13_01"); //Och, tam jestescie. Nauczylem sie juz, ze powinienem cie przedstawic w sztuce naszej medytacji. Czy jestes gotowy?

	Info_ClearChoices	(Info_Mod_Per_Pruefung);

	Info_AddChoice	(Info_Mod_Per_Pruefung, "Nie, musze szybko cos zrobic.", Info_Mod_Per_Pruefung_B);
	Info_AddChoice	(Info_Mod_Per_Pruefung, "Tak, wyjasnij mi jak wlasciwie medytowac.", Info_Mod_Per_Pruefung_A);
};

FUNC VOID Info_Mod_Per_Pruefung_B()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung_B_15_00"); //Nie, musze szybko cos zrobic.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_B_13_01"); //Najlepiej spieszyc sie.

	Info_ClearChoices	(Info_Mod_Per_Pruefung);
};

FUNC VOID Info_Mod_Per_Pruefung_A()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung_A_15_00"); //Tak, wyjasnij mi jak wlasciwie medytowac.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_A_13_01"); //Byc moze znacie Panstwo mala doline w poblizu jaskini, w której osiedlili sie gobliny?
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_A_13_02"); //Idz tam i powiedz formule. Podam ci tekst na koncu naszej rozmowy.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_A_13_03"); //Czy nasladujesz mnie?

	Info_ClearChoices	(Info_Mod_Per_Pruefung);

	Info_AddChoice	(Info_Mod_Per_Pruefung, "Czy moze pan to jeszcze raz powiedziec?", Info_Mod_Per_Pruefung_D);
	Info_AddChoice	(Info_Mod_Per_Pruefung, "Idzcie dalej.", Info_Mod_Per_Pruefung_C);
};

FUNC VOID Info_Mod_Per_Pruefung_E()
{
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_E_13_00"); //Kiedy wypowiedziales formule, wpadniesz w stan trance i wizja zwyciezy cie.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_E_13_01"); //Nie mów nikomu o wizji. To prowadzi Cie do nastepnej stacji tego zadania.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_E_13_02"); //Oddzial jest indywidualny dla kazdego, wiec nie moge Ci pomóc. Posluchaj uwaznie wizji. Jak na razie najwyrazniej?

	Info_ClearChoices	(Info_Mod_Per_Pruefung);

	Info_AddChoice	(Info_Mod_Per_Pruefung, "Czy moze pan to jeszcze raz powiedziec?", Info_Mod_Per_Pruefung_G);
	Info_AddChoice	(Info_Mod_Per_Pruefung, "Idzcie dalej.", Info_Mod_Per_Pruefung_F);
};

FUNC VOID Info_Mod_Per_Pruefung_D()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung_D_15_00"); //Czy moze pan to jeszcze raz powiedziec?
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_D_13_01"); //Wejdz do malej doliny w poblizu Jaskini Goblin i przeczytaj tekst, który przekaze Ci na glos.

	Info_Mod_Per_Pruefung_E();
};

FUNC VOID Info_Mod_Per_Pruefung_C()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung_C_15_00"); //Idzcie dalej.

	Info_Mod_Per_Pruefung_E();
};

FUNC VOID Info_Mod_Per_Pruefung_H()
{
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_H_13_00"); //Jesli dobrze zinterpretowales swoja wizje i znalazles cel, otrzymasz czerwony platek.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_H_13_01"); //Jest to sposób, w jaki natura zawsze to zamierzala i prawdopodobnie nie bedzie to zaden wyjatek.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_H_13_02"); //Przynies mi platek, wiec wiem, ze wykonales swoja prace. Czy mozemy zaczac dzialac?

	Info_ClearChoices	(Info_Mod_Per_Pruefung);

	Info_AddChoice	(Info_Mod_Per_Pruefung, "Chcialbym miec te krótka wersje.", Info_Mod_Per_Pruefung_J);
	Info_AddChoice	(Info_Mod_Per_Pruefung, "Tak, daj mi slowa.", Info_Mod_Per_Pruefung_I);
};

FUNC VOID Info_Mod_Per_Pruefung_G()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung_D_15_00"); //Czy moze pan to jeszcze raz powiedziec?
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_G_13_01"); //W stanie trance bedziesz mial wizje, która przeniesie cie do nastepnej stacji.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_G_13_02"); //Nikogo jednak nie mozna powiedziec.

	Info_Mod_Per_Pruefung_H();
};

FUNC VOID Info_Mod_Per_Pruefung_F()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung_C_15_00"); //Idzcie dalej.

	Info_Mod_Per_Pruefung_H();
};

FUNC VOID Info_Mod_Per_Pruefung_K()
{
	B_GiveInvItems	(self, hero, ItWr_PerZettel, 1);

	AI_Output(self, hero, "Info_Mod_Per_Pruefung_K_13_00"); //Teraz ruszaj w droge.

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Mam grac zaklecie w dolinie. Ponizsza wizja poprowadzi mnie do celu, gdzie znajde czerwony platek. Mialem to przyniesc Perlowi.");

	Mod_VMG_Pruefung = 3;

	Wld_SendTrigger	("EVT_BARRIERE");

	Info_ClearChoices	(Info_Mod_Per_Pruefung);

	Wld_InsertNpc	(Mod_7592_OUT_Handlanger_TUG,	"TUG_87");
	Wld_InsertNpc	(Mod_7593_OUT_Handlanger_TUG,	"TUG_87");
	Wld_InsertNpc	(Mod_7594_OUT_Petunia_TUG,	"TUG_87");
	Wld_InsertNpc	(Mod_7595_OUT_Verwandlungskrieger_TUG,	"TUG_87");
	Wld_InsertNpc	(Monster_11066_Hase_TUG,	"TUG_87");
};

FUNC VOID Info_Mod_Per_Pruefung_J()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung_J_15_00"); //Chcialbym miec te krótka wersje.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_J_13_01"); //W miejscu docelowym znajduje sie czerwony platek, który mozna mi przyniesc.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_J_13_02"); //Wiem wiec, ze wykonales swoja prace. Oto formula.

	Info_Mod_Per_Pruefung_K();
};

FUNC VOID Info_Mod_Per_Pruefung_I()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung_I_15_00"); //Tak, daj mi slowa.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung_I_13_01"); //Tutaj ja masz.

	Info_Mod_Per_Pruefung_K();
};

INSTANCE Info_Mod_Per_Pruefung2 (C_INFO)
{
	npc		= Mod_7353_VMG_Per_TUG;
	nr		= 1;
	condition	= Info_Mod_Per_Pruefung2_Condition;
	information	= Info_Mod_Per_Pruefung2_Info;
	permanent	= 1;
	important	= 0;
	description	= "Jest problem.....";
};

FUNC INT Info_Mod_Per_Pruefung2_Condition()
{
	if (Mod_VMG_Pruefung == 3)
	&& (Mod_VMG_Pruefung_Barriere == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Per_Pruefung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung2_15_00"); //Jest problem.....
	AI_Output(self, hero, "Info_Mod_Per_Pruefung2_13_01"); //Jaki problem?

	Info_ClearChoices	(Info_Mod_Per_Pruefung2);

	Info_AddChoice	(Info_Mod_Per_Pruefung2, "O, nic, moge sobie z tym poradzic.", Info_Mod_Per_Pruefung2_B);
	Info_AddChoice	(Info_Mod_Per_Pruefung2, "W tej dolinie jest kobieta.", Info_Mod_Per_Pruefung2_A);
};

FUNC VOID Info_Mod_Per_Pruefung2_B()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung2_B_15_00"); //O, nic, moge sobie z tym poradzic.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung2_B_13_01"); //Wiesz, co musisz zrobic.

	Info_ClearChoices	(Info_Mod_Per_Pruefung2);
};

FUNC VOID Info_Mod_Per_Pruefung2_A()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung2_A_15_00"); //W dolinie jest kobieta z otaczajaca ja magiczna bariera.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung2_A_13_01"); //Jest to jednak problem.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung2_A_13_02"); //Dolina ma magiczne pochodzenie, które jest tak silne, ze wizja dociera tylko do Ciebie.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung2_A_13_03"); //Prawdopodobnie dlatego ta kobieta tam sie pojawila.
	AI_Output(hero, self, "Info_Mod_Per_Pruefung2_A_15_04"); //Co mozemy zrobic?
	AI_Output(self, hero, "Info_Mod_Per_Pruefung2_A_13_05"); //Czy zauwazyles cos, co moze nam pomóc?
	AI_Output(hero, self, "Info_Mod_Per_Pruefung2_A_15_06"); //Wydaje sie, ze bariera nie moze szkodzic zwierzetom.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung2_A_13_07"); //To juz cos! Wiec nie powinno Ci byc trudno dotrzec do niej i dowiedziec sie, kim jest.

	Info_ClearChoices	(Info_Mod_Per_Pruefung2);

	Info_AddChoice	(Info_Mod_Per_Pruefung2, "Nie, nie zgodze sie z tym.", Info_Mod_Per_Pruefung2_D);
	Info_AddChoice	(Info_Mod_Per_Pruefung2, "Co powinienem zrobic?", Info_Mod_Per_Pruefung2_C);
};

FUNC VOID Info_Mod_Per_Pruefung2_E()
{
	AI_Output(self, hero, "Info_Mod_Per_Pruefung2_E_13_00"); //Tutaj masz role transformacyjna. Ona zamieni Cie w pluskwe miesna, która nie przyciagnie uwagi.

	B_GiveInvItems	(self, hero, ItSc_TrfMeatbug, 1);

	AI_Output(self, hero, "Info_Mod_Per_Pruefung2_E_13_01"); //Dzieki Wam mozemy znowu wykonac niektóre z tych zwojów.
	AI_Output(hero, self, "Info_Mod_Per_Pruefung2_E_15_02"); //Okay, dowiaduje sie, kim jest ta kobieta.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung2_E_13_03"); //Wiedzialem, ze moge na ciebie liczyc.

	Mod_VMG_Pruefung_Barriere = 3;

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Per dal mi metamorfoze w pluskwe miesna. Pozwoli mi to na niezauwazenie bariery i skonfrontowanie sie z kobieta.");

	Info_ClearChoices	(Info_Mod_Per_Pruefung2);
};

FUNC VOID Info_Mod_Per_Pruefung2_D()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung2_D_15_00"); //Nie, nie zgodze sie z tym.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung2_D_13_01"); //Wystarczy pomyslec o tym jako o czesci testu.
	AI_Output(hero, self, "Info_Mod_Per_Pruefung2_D_15_02"); //Wtedy nie mam wyboru. Co powinienem zrobic?

	Info_Mod_Per_Pruefung2_E();
};

FUNC VOID Info_Mod_Per_Pruefung2_C()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung2_C_15_00"); //Co powinienem zrobic?

	Info_Mod_Per_Pruefung2_E();
};

INSTANCE Info_Mod_Per_Pruefung3 (C_INFO)
{
	npc		= Mod_7353_VMG_Per_TUG;
	nr		= 1;
	condition	= Info_Mod_Per_Pruefung3_Condition;
	information	= Info_Mod_Per_Pruefung3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jest problem.....";
};

FUNC INT Info_Mod_Per_Pruefung3_Condition()
{
	if (Mod_VMG_Pruefung_Petunia >= 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Per_Pruefung3_Info()
{
	if (Mod_VMG_Pruefung_Petunia == 6)
	{
		AI_Output(hero, self, "Info_Mod_Per_Pruefung3_15_00"); //Mysle, ze teraz mozemy wspólnie rozwiazac ten problem.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Per_Pruefung3_15_01"); //Mysle, ze rozwiazalem problem.
	};

	AI_Output(self, hero, "Info_Mod_Per_Pruefung3_13_02"); //Co sie dzieje?
	AI_Output(hero, self, "Info_Mod_Per_Pruefung3_15_03"); //Kobieta w dolinie nazywa sie Petunia i twierdzi, ze byla magiem transformacyjnym, ale zostala wypedzona.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung3_13_04"); //Pamietam ja. Co stanie sie z nia teraz?

	Info_ClearChoices	(Info_Mod_Per_Pruefung3);

	Info_AddChoice	(Info_Mod_Per_Pruefung3, "Nalezy ja ukarac za wszystko, co zrobila.", Info_Mod_Per_Pruefung3_B);

	if (Mod_VMG_Pruefung_Petunia == 6)
	{
		Info_AddChoice	(Info_Mod_Per_Pruefung3, "Obiecalem jej, ze cos sobie wymyslimy.", Info_Mod_Per_Pruefung3_A);
	};
};

FUNC VOID Info_Mod_Per_Pruefung3_E()
{
	AI_Output(self, hero, "Info_Mod_Per_Pruefung3_E_13_00"); //Istnieje kilka mozliwosci. Moglibysmy ja zamknac, po prostu puscic, albo zabrac ja z powrotem.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung3_E_13_01"); //Powinienes zdecydowac, co sie z nia stanie.

	Info_ClearChoices	(Info_Mod_Per_Pruefung3);

	Info_AddChoice	(Info_Mod_Per_Pruefung3, "Powinnismy ja ponownie podniesc.", Info_Mod_Per_Pruefung3_I);
	Info_AddChoice	(Info_Mod_Per_Pruefung3, "Mysle, ze mozemy pozwolic jej odejsc.", Info_Mod_Per_Pruefung3_H);
	Info_AddChoice	(Info_Mod_Per_Pruefung3, "Powinnismy je zablokowac. Wtedy juz nie jest niebezpieczna.", Info_Mod_Per_Pruefung3_G);
};

FUNC VOID Info_Mod_Per_Pruefung3_F()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung3_F_15_00"); //Co mam teraz zrobic?
	AI_Output(self, hero, "Info_Mod_Per_Pruefung3_F_13_01"); //Czy nadal masz moja formule?

	if (Npc_HasItems(hero, ItWr_PerZettel) == 1)
	{
		AI_Output(hero, self, "Info_Mod_Per_Pruefung3_F_15_02"); //Tak.
		AI_Output(self, hero, "Info_Mod_Per_Pruefung3_F_13_03"); //Nastepnie wykonaj swoja prace i wróc do mnie.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Per_Pruefung3_F_15_04"); //pusty
		AI_Output(self, hero, "Info_Mod_Per_Pruefung3_F_13_05"); //Wtedy podam ci nowy. Tutaj.

		B_GiveInvItems	(self, hero, ItWr_PerZettel, 1);

		AI_Output(self, hero, "Info_Mod_Per_Pruefung3_F_13_06"); //Teraz wykonaj swoja prace i wróc do mnie.
	};

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "O losie Petunii decyduje teraz los. Teraz musze to zrobic.");

	Info_ClearChoices	(Info_Mod_Per_Pruefung3);
};

FUNC VOID Info_Mod_Per_Pruefung3_B()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung3_B_15_00"); //Nalezy ja ukarac za wszystko, co zrobila.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung3_B_13_01"); //Jesli taka jest Twoja decyzja.

	Info_ClearChoices	(Info_Mod_Per_Pruefung3);

	Info_AddChoice	(Info_Mod_Per_Pruefung3, "Nie! Nie zasluguje na to.", Info_Mod_Per_Pruefung3_D);
	Info_AddChoice	(Info_Mod_Per_Pruefung3, "Karac nimi.", Info_Mod_Per_Pruefung3_C);
};

FUNC VOID Info_Mod_Per_Pruefung3_D()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung3_D_15_00"); //Nie! Nie zasluguje na to. Czy mamy inny wybór?

	Info_Mod_Per_Pruefung3_E();
};

FUNC VOID Info_Mod_Per_Pruefung3_C()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung3_C_15_00"); //Karac nimi.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung3_C_13_01"); //Jesli tego wlasnie chcesz. Wszystko to bedzie skonfigurowane.

	B_StartOtherRoutine	(Mod_7594_OUT_Petunia_TUG, "GEFANGEN");

	Info_Mod_Per_Pruefung3_F();
};

FUNC VOID Info_Mod_Per_Pruefung3_M()
{
	AI_Output(self, hero, "Info_Mod_Per_Pruefung3_M_13_00"); //I niech tak bedzie. Wszystko to bedzie skonfigurowane.

	Info_Mod_Per_Pruefung3_F();
};

FUNC VOID Info_Mod_Per_Pruefung3_A()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung3_A_15_00"); //Obiecalem jej, ze cos sobie wymyslimy. Co proponujesz?

	Info_Mod_Per_Pruefung3_E();
};

FUNC VOID Info_Mod_Per_Pruefung3_I()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung3_I_15_00"); //Powinnismy ja ponownie podniesc.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung3_I_13_01"); //Czy jestes pewien tego?

	Info_ClearChoices	(Info_Mod_Per_Pruefung3);

	Info_AddChoice	(Info_Mod_Per_Pruefung3, "Nie, mysle, ze lepiej jest jej w wolnosci.", Info_Mod_Per_Pruefung3_L);
	Info_AddChoice	(Info_Mod_Per_Pruefung3, "Nie, powinnismy je zablokowac. Wtedy juz nie jest niebezpieczna.", Info_Mod_Per_Pruefung3_K);
	Info_AddChoice	(Info_Mod_Per_Pruefung3, "Jestem przekonany o jej wewnetrznej szczerosci.", Info_Mod_Per_Pruefung3_J);
};

FUNC VOID Info_Mod_Per_Pruefung3_H()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung3_H_15_00"); //Mysle, ze mozemy pozwolic jej odejsc.

	B_RemoveNpc	(Mod_7594_OUT_Petunia_TUG);

	Info_Mod_Per_Pruefung3_M();
};

FUNC VOID Info_Mod_Per_Pruefung3_G()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung3_G_15_00"); //Powinnismy je zablokowac. Wtedy juz nie jest niebezpieczna.

	B_StartOtherRoutine	(Mod_7594_OUT_Petunia_TUG,	"GEFANGEN");

	Info_Mod_Per_Pruefung3_M();
};

FUNC VOID Info_Mod_Per_Pruefung3_L()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung3_L_15_00"); //Nie, mysle, ze lepiej jest jej w wolnosci.

	B_RemoveNpc	(Mod_7594_OUT_Petunia_TUG);

	Info_Mod_Per_Pruefung3_M();
};

FUNC VOID Info_Mod_Per_Pruefung3_K()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung3_K_15_00"); //Nie, powinnismy je zablokowac. Wtedy juz nie jest niebezpieczna.

	B_StartOtherRoutine	(Mod_7594_OUT_Petunia_TUG,	"GEFANGEN");

	Info_Mod_Per_Pruefung3_M();
};

FUNC VOID Info_Mod_Per_Pruefung3_J()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung3_J_15_00"); //Jestem przekonany o jej wewnetrznej szczerosci. Byc moze trzeba bedzie ja troche nadzorowac, ale ona moze skakac.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung3_J_13_01"); //Madra decyzja. Wszystko to bedzie skonfigurowane.

	AI_UnequipArmor	(Mod_7594_OUT_Petunia_TUG);

	CreateInvItems	(Mod_7594_OUT_Petunia_TUG, ItAr_Naturmagier2, 1);

	AI_EquipArmor	(Mod_7594_OUT_Petunia_TUG, ItAr_Naturmagier2);

	B_StartOtherRoutine	(Mod_7594_OUT_Petunia_TUG,	"MAGIERIN");

	Info_Mod_Per_Pruefung3_F();
};

INSTANCE Info_Mod_Per_Pruefung4 (C_INFO)
{
	npc		= Mod_7353_VMG_Per_TUG;
	nr		= 1;
	condition	= Info_Mod_Per_Pruefung4_Condition;
	information	= Info_Mod_Per_Pruefung4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam platek.";
};

FUNC INT Info_Mod_Per_Pruefung4_Condition()
{
	if (Mod_VMG_Pruefung == 5)
	&& (Npc_HasItems(hero, ItMi_Bluetenblatt) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Per_Pruefung4_Info()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung4_15_00"); //Mam platek.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung4_13_01"); //To niesamowite! Wiedzialem, ze to zrobisz. Pozwole sobie to zobaczyc.
	AI_Output(hero, self, "Info_Mod_Per_Pruefung4_15_02"); //Tutaj ja masz.

	B_GiveInvItems	(hero, self, ItMi_Bluetenblatt, 1);

	AI_Output(self, hero, "Info_Mod_Per_Pruefung4_13_03"); //Hah, uwielbiam te platki. Do dzis pamietam, kiedy znalazlem swoja.....
	AI_Output(hero, self, "Info_Mod_Per_Pruefung4_15_04"); //Przejdz do celu.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung4_13_05"); //Przepraszamy oczywiscie. Czy dowiedziales sie wiecej o tym, jak znalezc platek?

	Info_ClearChoices	(Info_Mod_Per_Pruefung4);

	Info_AddChoice	(Info_Mod_Per_Pruefung4, "Jestem czyms wyjatkowym.", Info_Mod_Per_Pruefung4_C);
	Info_AddChoice	(Info_Mod_Per_Pruefung4, "Przyroda jest czyms harmonijnym i nie powinna podlegac wplywom czynników zewnetrznych.", Info_Mod_Per_Pruefung4_B);
	Info_AddChoice	(Info_Mod_Per_Pruefung4, "Nie, czy powinienem?", Info_Mod_Per_Pruefung4_A);
};

FUNC VOID Info_Mod_Per_Pruefung4_H()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung4_H_15_00"); //Bede, to zrobie. Pozegnanie pozegnania.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung4_H_13_01"); //Moze znów sie zobaczymy.

	Info_ClearChoices	(Info_Mod_Per_Pruefung4);
};

FUNC VOID Info_Mod_Per_Pruefung4_D()
{
	AI_Output(self, hero, "Info_Mod_Per_Pruefung4_D_13_00"); //Dobrze, to wszystko zrobiles! Idz do Genn, on bedzie teleportuje Cie z powrotem do Minental.

	Mod_VMG_Pruefung_Per = 1;

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Zdalem ostatnia próbe. Teraz musze udac sie do Genn, aby wrócic do Minental. Potem porozmawiam z Faice i widze, co musi mi powiedziec.");

	Info_Mod_Per_Pruefung4_H();
};

FUNC VOID Info_Mod_Per_Pruefung4_E()
{
	if (Mod_VMG_Pruefung_Genn == 1)
	&& (Mod_VMG_Pruefung_Asko == 1)
	{
		AI_Output(self, hero, "Info_Mod_Per_Pruefung4_E_13_00"); //Niestety nie udalo sie pan w tym najwazniejszym zadaniu, ale wczesniej przymknalem oko na panskie dzialania.
		AI_Output(self, hero, "Info_Mod_Per_Pruefung4_E_13_01"); //Idz do Genn, on bedzie teleportuje Cie z powrotem do Minental.
	}
	else if (Mod_VMG_Pruefung_Genn == 2)
	&& (Mod_VMG_Pruefung_Asko == 2)
	{
		AI_Output(self, hero, "Info_Mod_Per_Pruefung4_E_13_02"); //Niestety, nie udalo sie pan w tym najwazniejszym zadaniu, podobnie jak w przypadku dwóch poprzednich zadan.
		AI_Output(self, hero, "Info_Mod_Per_Pruefung4_E_13_03"); //Nigdy nie bedziesz prawdziwym magiem do szybkiej wymiany. Bardzo mi przykro, bo przeciez zrobiles dla nas, ale tak wlasnie mówia tradycje.
		AI_Output(hero, self, "Info_Mod_Per_Pruefung4_E_15_04"); //Nie mozna byc powaznym. Czyz nie ma innego sposobu, w jaki moge tu byc?
		AI_Output(self, hero, "Info_Mod_Per_Pruefung4_E_13_05"); //Dieses Mal nicht. Es tut mir wirklich Leid. Idz do Genn, on bedzie teleportuje Cie z powrotem do Minental.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Per_Pruefung4_E_13_06"); //Niestety, nie udalo sie pan w tym najwazniejszym zadaniu, podobnie jak w przypadku poprzedniego zadania.
		AI_Output(self, hero, "Info_Mod_Per_Pruefung4_E_13_07"); //Nie moge pozwolic wam pójsc, jesli nie zrezygnujecie z nagrody.
		AI_Output(self, hero, "Info_Mod_Per_Pruefung4_E_13_08"); //To dobry punkt. Zrobiliscie zbyt wiele, zebysmy pozwolili Wam przepasc.
		AI_Output(hero, self, "Info_Mod_Per_Pruefung4_E_15_09"); //Nie mam wyboru.
		AI_Output(self, hero, "Info_Mod_Per_Pruefung4_E_13_10"); //Idz do Genn, on bedzie teleportuje Cie z powrotem do Minental.
	};

	Mod_VMG_Pruefung_Per = 2;

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "Nie wykonalem ostatniego zadania. Teraz musze udac sie do Genn, aby wrócic do Minental. Potem porozmawiam z Faice i widze, co musi mi powiedziec.");

	Info_Mod_Per_Pruefung4_H();
};

FUNC VOID Info_Mod_Per_Pruefung4_C()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung4_C_15_00"); //Jestem czyms wyjatkowym.
	AI_Output(self, hero, "Info_Mod_Per_Pruefung4_C_13_01"); //Czy jestes powazny?

	Info_ClearChoices	(Info_Mod_Per_Pruefung4);

	Info_AddChoice	(Info_Mod_Per_Pruefung4, "Oczywiscie nie.", Info_Mod_Per_Pruefung4_G);
	Info_AddChoice	(Info_Mod_Per_Pruefung4, "Oczywiscie tak jest.", Info_Mod_Per_Pruefung4_F);
};

FUNC VOID Info_Mod_Per_Pruefung4_B()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung4_B_15_00"); //Przyroda jest czyms harmonijnym i nie powinna podlegac wplywom czynników zewnetrznych.

	Info_Mod_Per_Pruefung4_D();
};

FUNC VOID Info_Mod_Per_Pruefung4_A()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung4_A_15_00"); //Nie, czy powinienem?

	Info_Mod_Per_Pruefung4_E();
};

FUNC VOID Info_Mod_Per_Pruefung4_G()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung4_G_15_00"); //Oczywiscie nie. Przyroda jest czyms harmonijnym i nie powinna podlegac wplywom czynników zewnetrznych. To jest mój wglad.

	Info_Mod_Per_Pruefung4_D();
};

FUNC VOID Info_Mod_Per_Pruefung4_F()
{
	AI_Output(hero, self, "Info_Mod_Per_Pruefung4_F_15_00"); //Oczywiscie tak jest.

	Info_Mod_Per_Pruefung4_E();
};

var int Mod_Knows_PerTeacher;

INSTANCE Info_Mod_Per_Lernen_DEX (C_INFO)
{
	npc		= Mod_7353_VMG_Per_TUG;
	nr		= 1;
	condition	= Info_Mod_Per_Lernen_DEX_Condition;
	information	= Info_Mod_Per_Lernen_DEX_Info;
	permanent	= 1;
	important	= 0;
	description	= "Naucz mnie czegos.";
};

FUNC INT Info_Mod_Per_Lernen_DEX_Condition()
{
	if (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Per_Lernen_DEX_Info()
{
	if (Mod_Knows_PerTeacher == FALSE)
	{
		Mod_Knows_PerTeacher = TRUE;

		Log_CreateTopic	(TOPIC_MOD_LEHRER_VM, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_VM, "Kazdy moze mi pokazac, jak byc bardziej umiejetnym.");
	};

	AI_Output(hero, self, "Info_Mod_Per_Lernen_DEX_15_00"); //Naucz mnie czegos.
	AI_Output(self, hero, "Info_Mod_Per_Lernen_DEX_13_01"); //Czego chcesz sie nauczyc?

	Info_ClearChoices	(Info_Mod_Per_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Per_Lernen_DEX, DIALOG_BACK, Info_Mod_Per_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Per_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Per_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Per_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Per_Lernen_DEX_Geschick_1);
};

FUNC VOID Info_Mod_Per_Lernen_DEX_BACK()
{
	Info_ClearChoices (Info_Mod_Per_Lernen_DEX);
};

FUNC VOID Info_Mod_Per_Lernen_DEX_Geschick_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_DEXTERITY, 5, 200);
	
	Info_ClearChoices	(Info_Mod_Per_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Per_Lernen_DEX, DIALOG_BACK, Info_Mod_Per_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Per_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Per_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Per_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Per_Lernen_DEX_Geschick_1);
};

FUNC VOID Info_Mod_Per_Lernen_DEX_Geschick_1()
{
	B_TeachAttributePoints (self, hero, ATR_DEXTERITY, 1, 200);
	
	Info_ClearChoices	(Info_Mod_Per_Lernen_DEX);

	Info_AddChoice 		(Info_Mod_Per_Lernen_DEX, DIALOG_BACK, Info_Mod_Per_Lernen_DEX_BACK);
	Info_AddChoice		(Info_Mod_Per_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX5	, B_GetLearnCostAttribute_New(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Per_Lernen_DEX_Geschick_5);
	Info_AddChoice		(Info_Mod_Per_Lernen_DEX, B_BuildLearnString_New(PRINT_LearnDEX1	, B_GetLearnCostAttribute(hero, ATR_DEXTERITY), ATR_DEXTERITY)	, Info_Mod_Per_Lernen_DEX_Geschick_1);
};

INSTANCE Info_Mod_Per_Pickpocket (C_INFO)
{
	npc		= Mod_7353_VMG_Per_TUG;
	nr		= 1;
	condition	= Info_Mod_Per_Pickpocket_Condition;
	information	= Info_Mod_Per_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Per_Pickpocket_Condition()
{
	C_Beklauen	(72, ItMi_Gold, 21);
};

FUNC VOID Info_Mod_Per_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Per_Pickpocket);

	Info_AddChoice	(Info_Mod_Per_Pickpocket, DIALOG_BACK, Info_Mod_Per_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Per_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Per_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Per_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Per_Pickpocket);
};

FUNC VOID Info_Mod_Per_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Per_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Per_Pickpocket);

		Info_AddChoice	(Info_Mod_Per_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Per_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Per_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Per_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Per_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Per_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Per_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Per_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Per_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Per_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Per_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Per_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Per_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Per_EXIT (C_INFO)
{
	npc		= Mod_7353_VMG_Per_TUG;
	nr		= 1;
	condition	= Info_Mod_Per_EXIT_Condition;
	information	= Info_Mod_Per_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Per_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Per_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
