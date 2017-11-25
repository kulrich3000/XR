INSTANCE Info_Mod_Lobart_Hi (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_Hi_Condition;
	information	= Info_Mod_Lobart_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lobart_Hi_Condition()
{
	if (Mod_LobartAlwin != 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Lobart_Hi_26_00"); //Inny swiezo uciekl przed wiezieniem? A moze dlaczego sie tu wisi?
	AI_Output(hero, self, "Info_Mod_Lobart_Hi_15_01"); //Pierwsza.
	AI_Output(self, hero, "Info_Mod_Lobart_Hi_26_02"); //Lord Hagen musi byc okolo roku, kiedy widzi cie.
	AI_Output(hero, self, "Info_Mod_Lobart_Hi_15_03"); //Dlaczego? Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Lobart_Hi_26_04"); //Nie wydaje sie zbytnio sklonny przyznac sie do wiezienia w swoim miescie.
	AI_Output(self, hero, "Info_Mod_Lobart_Hi_26_05"); //Myslija o tym, jak znów cie odjechac.
	AI_Output(self, hero, "Info_Mod_Lobart_Hi_26_06"); //Oczywiscie, to wlasnie mówia. Nie obchodzi mnie to.
	AI_Output(self, hero, "Info_Mod_Lobart_Hi_26_07"); //Nie mozesz odebrac mi tak wiele, a ty tez nie jestes zly.
	AI_Output(self, hero, "Info_Mod_Lobart_Hi_26_08"); //Jesli szukasz troche pracy, potrzebuje kogos innego, kto pomoze mi.
};

INSTANCE Info_Mod_Lobart_Knastis (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_Knastis_Condition;
	information	= Info_Mod_Lobart_Knastis_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ile bylych wiezniów jest w Khorinis?";
};

FUNC INT Info_Mod_Lobart_Knastis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lobart_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_Knastis_Info()
{
	AI_Output(hero, self, "Info_Mod_Lobart_Knastis_15_00"); //Ile bylych wiezniów jest w Khorinis?
	AI_Output(self, hero, "Info_Mod_Lobart_Knastis_26_01"); //Niewiele osób. Wiekszosc z nich nie zatrzymuje sie tam dlugo, sa tam prawdopodobnie zbyt przyzwoite (smiech).
	AI_Output(self, hero, "Info_Mod_Lobart_Knastis_26_02"); //Ale w okolicznych obozowiskach i gospodarstwach mozna je znalezc.
};

INSTANCE Info_Mod_Lobart_Arbeit (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_Arbeit_Condition;
	information	= Info_Mod_Lobart_Arbeit_Info;
	permanent	= 0;
	important	= 0;
	description	= "Powiedziales cos o pracy?";
};

FUNC INT Info_Mod_Lobart_Arbeit_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lobart_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_Arbeit_Info()
{
	AI_Output(hero, self, "Info_Mod_Lobart_Arbeit_15_00"); //Powiedziales cos o pracy?
	AI_Output(self, hero, "Info_Mod_Lobart_Arbeit_26_01"); //Prawo. Ale mam jeszcze pilniejsze obawy....
	AI_Output(self, hero, "Info_Mod_Lobart_Arbeit_26_02"); //Mój pies Sherome uciekl i wbiegl do gestego lasu.
	AI_Output(self, hero, "Info_Mod_Lobart_Arbeit_26_03"); //Prawdopodobnie widzial królika lub cos.
	AI_Output(self, hero, "Info_Mod_Lobart_Arbeit_26_04"); //W kazdym razie zaden z moich robotników nie chcial isc za mna, nawet mysliwi wchodza tylko do pierwszej czesci lasu.
	AI_Output(self, hero, "Info_Mod_Lobart_Arbeit_26_05"); //Ale musisz byc twardy, jesli przetrwales kolonie.
	AI_Output(self, hero, "Info_Mod_Lobart_Arbeit_26_06"); //Dlatego prosze Cie o szukanie Sherome' a.

	Info_ClearChoices	(Info_Mod_Lobart_Arbeit);

	Info_AddChoice	(Info_Mod_Lobart_Arbeit, "Zapytaj kogos innego.", Info_Mod_Lobart_Arbeit_B);
	Info_AddChoice	(Info_Mod_Lobart_Arbeit, "Rozejrzymy sie dookola.", Info_Mod_Lobart_Arbeit_A);
};

FUNC VOID Info_Mod_Lobart_Arbeit_B()
{
	AI_Output(hero, self, "Info_Mod_Lobart_Arbeit_B_15_00"); //Zapytaj kogos innego.

	Info_ClearChoices	(Info_Mod_Lobart_Arbeit);
};

FUNC VOID Info_Mod_Lobart_Arbeit_A()
{
	AI_Output(hero, self, "Info_Mod_Lobart_Arbeit_A_15_00"); //Rozejrzymy sie dookola.

	Info_ClearChoices	(Info_Mod_Lobart_Arbeit);

	Log_CreateTopic	(TOPIC_MOD_LOBART_HUND, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LOBART_HUND, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_LOBART_HUND, "Pies Sherome Lobarta uciekl. Ma go znalezc w lesie i przywiezc.");

	Mod_SheromeSuche = 1;

	B_GetNextRuebe();
};

INSTANCE Info_Mod_Lobart_SheromeDa (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_SheromeDa_Condition;
	information	= Info_Mod_Lobart_SheromeDa_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lobart_SheromeDa_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Schaeferhund_Lobart_Hi))
	&& (Npc_GetDistToNpc(self, Schaeferhund_Lobart_01) < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_SheromeDa_Info()
{
	AI_Output(self, hero, "Info_Mod_Lobart_SheromeDa_26_00"); //Przywróciles psa z powrotem! Jak moge wam bardzo podziekowac!
	AI_Output(hero, self, "Info_Mod_Lobart_SheromeDa_15_01"); //To moja praca!
	AI_Output(self, hero, "Info_Mod_Lobart_SheromeDa_26_02"); //Tak czy owak, wez to, to wszystko, co moge ci dac!

	CreateInvItems	(hero, ItMi_Gold, 50);
	CreateInvItems	(hero, ItMi_Nugget, 1);

	B_ShowGivenThings	("Jedna gruda rudy i 50 zlota otrzymane");

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_LOBART_HUND, "Przywiózlem Lobarta z powrotem jego psa.");
	B_SetTopicStatus	(TOPIC_MOD_LOBART_HUND, LOG_SUCCESS);

	CurrentNQ += 1;

	AI_Output(self, hero, "Info_Mod_Lobart_SheromeDa_26_03"); //Jestem w twoim dlugu, chlopaku. Co ci powiedzialem?
	AI_Output(self, hero, "Info_Mod_Lobart_SheromeDa_26_04"); //Twój rodzaj nie jest tak zly, jak myslisz.
	AI_Output(self, hero, "Info_Mod_Lobart_SheromeDa_26_05"); //Doceniam Wasza pomoc takze na polu buraków cukrowych.
	AI_Output(hero, self, "Info_Mod_Lobart_SheromeDa_15_06"); //Odciaganie rzepy!
	AI_Output(self, hero, "Info_Mod_Lobart_SheromeDa_26_07"); //Nie mysl o tym zbyt latwo!
	AI_Output(self, hero, "Info_Mod_Lobart_SheromeDa_26_08"); //Gdyby to byla zwykla rzepa, sami moglibysmy ja ciagnac.
	AI_Output(self, hero, "Info_Mod_Lobart_SheromeDa_26_09"); //Ale w tym roku te rzeczy zbudowaly tak ogromne korzenie, ze sa one polaczone razem.
	AI_Output(self, hero, "Info_Mod_Lobart_SheromeDa_26_10"); //Beda sie trzymac jak bursy!
	AI_Output(self, hero, "Info_Mod_Lobart_SheromeDa_26_11"); //Moi pracownicy juz sie poddali, moze znajdziesz sposób na poluzowanie buraków.
	AI_Output(self, hero, "Info_Mod_Lobart_SheromeDa_26_12"); //Jak zawsze znalezc najslabsza rzepe.

	Info_ClearChoices	(Info_Mod_Lobart_SheromeDa);

	Info_AddChoice	(Info_Mod_Lobart_SheromeDa, "To po prostu za zle.", Info_Mod_Lobart_SheromeDa_B);
	Info_AddChoice	(Info_Mod_Lobart_SheromeDa, "To juz wszystko.", Info_Mod_Lobart_SheromeDa_A);
};

FUNC VOID Info_Mod_Lobart_SheromeDa_B()
{
	AI_Output(hero, self, "Info_Mod_Lobart_SheromeDa_B_15_00"); //To po prostu za zle.
	AI_Output(self, hero, "Info_Mod_Lobart_SheromeDa_B_26_01"); //To jest nasza codzienna praca.

	Info_ClearChoices	(Info_Mod_Lobart_SheromeDa);
};

FUNC VOID Info_Mod_Lobart_SheromeDa_A()
{
	AI_Output(hero, self, "Info_Mod_Lobart_SheromeDa_A_15_00"); //To juz wszystko.

	Info_ClearChoices	(Info_Mod_Lobart_SheromeDa);

	Log_CreateTopic	(TOPIC_MOD_RUEBENZIEHEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_RUEBENZIEHEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_RUEBENZIEHEN, "Dla Lobarta powinienem dostac rzepe z pola. Ostrzegl mnie jednak, ze silna siec korzeniowa moze sprawic, ze pociaganie bedzie trudniejsze niz sie spodziewano. Zawsze powinienem starac sie znalezc najlatwiejsza rzepe.");

	Mod_LobartRuebinator = 1;
};

INSTANCE Info_Mod_Lobart_Rueben (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_Rueben_Condition;
	information	= Info_Mod_Lobart_Rueben_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto twoje rzepy.";
};

FUNC INT Info_Mod_Lobart_Rueben_Condition()
{
	if (Npc_HasItems(hero, ItPl_Beet) >= 20)
	&& (Mod_LobartRuebinator == 2)
	&& (Npc_KnowsInfo(hero, Info_Mod_Lobart_SheromeDa))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_Rueben_Info()
{
	AI_Output(hero, self, "Info_Mod_Lobart_Rueben_15_00"); //Oto twoje rzepy.

	B_GiveInvItems	(hero, self, ItPl_Beet, 20);

	AI_Output(self, hero, "Info_Mod_Lobart_Rueben_26_01"); //Nie sadzilem, zebys to zrobil. Bardzo dziekuje! Wez to za nagrode.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	AI_Output(hero, self, "Info_Mod_Lobart_Rueben_15_02"); //Czy jest jeszcze cos do zrobienia?
	AI_Output(self, hero, "Info_Mod_Lobart_Rueben_26_03"); //Nic, czego sami nie potrafimy sobie poradzic. Nie moglem juz wiecej placic.
	AI_Output(self, hero, "Info_Mod_Lobart_Rueben_26_04"); //Jestes zawsze mile widziany na farmie! Oto teraz!

	B_LogEntry	(TOPIC_MOD_RUEBENZIEHEN, "Dalem Lobartowi rzepe.");
	B_SetTopicStatus	(TOPIC_MOD_RUEBENZIEHEN, LOG_SUCCESS);

	B_GivePlayerXP	(150);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Lobart_Unkraut (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_Unkraut_Condition;
	information	= Info_Mod_Lobart_Unkraut_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lobart_Unkraut_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lobart_Rueben))
	&& (Kapitel >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_Unkraut_Info()
{
	AI_Output(self, hero, "Info_Mod_Lobart_Unkraut_26_00"); //Hej, Ty, Ty, znów moglibysmy skorzystac z Twojej pomocy....
	AI_Output(hero, self, "Info_Mod_Lobart_Unkraut_15_01"); //Co jest ci zagrozeniem?
	AI_Output(self, hero, "Info_Mod_Lobart_Unkraut_26_02"); //chwast pola sa pelne. W tym czasie pomagales nam w zniwach buraków i jestes wlasnie odpowiednia osoba do tego zadania.

	Info_ClearChoices	(Info_Mod_Lobart_Unkraut);

	Info_AddChoice	(Info_Mod_Lobart_Unkraut, "Czy kochasz mnie? Czy wygladam jak smieszny pracownik terenowy?", Info_Mod_Lobart_Unkraut_B);
	Info_AddChoice	(Info_Mod_Lobart_Unkraut, "Wszystko w porzadku....", Info_Mod_Lobart_Unkraut_A);
};

FUNC VOID Info_Mod_Lobart_Unkraut_B()
{
	AI_Output(hero, self, "Info_Mod_Lobart_Unkraut_B_15_00"); //Czy kochasz mnie? Czy wygladam jak puszysta dlon?
	AI_Output(self, hero, "Info_Mod_Lobart_Unkraut_B_26_01"); //Mówilem po prostu. Ale jesli jestes na to zbyt dobry, ktos inny zarobi 20 zlotych monet.

	Info_ClearChoices	(Info_Mod_Lobart_Unkraut);
};

FUNC VOID Info_Mod_Lobart_Unkraut_A()
{
	AI_Output(hero, self, "Info_Mod_Lobart_Unkraut_A_15_00"); //Wszystko w porzadku....
	AI_Output(self, hero, "Info_Mod_Lobart_Unkraut_A_26_01"); //Najlepiej zaczac od razu.

	Info_ClearChoices	(Info_Mod_Lobart_Unkraut);

	Mod_Lobart_Unkraut = 1;

	Log_CreateTopic	(TOPIC_MOD_LOBART_UNKRAUT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LOBART_UNKRAUT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_LOBART_UNKRAUT, "Lobart kazal mi oczyscic pola chwastów.");

	Wld_InsertItem	(ItPl_Unkraut_Lobart, "FP_ITEM_RUEBE_LOBART_01");
	Wld_InsertItem	(ItPl_Unkraut_Lobart, "FP_ITEM_RUEBE_LOBART_02");
	Wld_InsertItem	(ItPl_Unkraut_Lobart, "FP_ITEM_RUEBE_LOBART_03");
	Wld_InsertItem	(ItPl_Unkraut_Lobart, "FP_ITEM_RUEBE_LOBART_04");
	Wld_InsertItem	(ItPl_Unkraut_Lobart, "FP_ITEM_RUEBE_LOBART_05");
	Wld_InsertItem	(ItPl_Unkraut_Lobart, "FP_ITEM_RUEBE_LOBART_06");
	Wld_InsertItem	(ItPl_Unkraut_Lobart, "FP_ITEM_RUEBE_LOBART_07");
	Wld_InsertItem	(ItPl_Unkraut_Lobart, "FP_ITEM_RUEBE_LOBART_08");
	Wld_InsertItem	(ItPl_Unkraut_Lobart, "FP_ITEM_RUEBE_LOBART_09");
	Wld_InsertItem	(ItPl_Unkraut_Lobart, "FP_ITEM_RUEBE_LOBART_10");
	Wld_InsertItem	(ItPl_Unkraut_Lobart, "FP_ITEM_RUEBE_LOBART_11");
	Wld_InsertItem	(ItPl_Unkraut_Lobart, "FP_ITEM_RUEBE_LOBART_12");
	Wld_InsertItem	(ItPl_Unkraut_Lobart, "FP_ITEM_RUEBE_LOBART_13");
};

INSTANCE Info_Mod_Lobart_Unkraut2 (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_Unkraut2_Condition;
	information	= Info_Mod_Lobart_Unkraut2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Pola sa jasne.";
};

FUNC INT Info_Mod_Lobart_Unkraut2_Condition()
{
	if (Mod_Lobart_Unkraut == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_Unkraut2_Info()
{
	AI_Output(hero, self, "Info_Mod_Lobart_Unkraut2_15_00"); //Pola sa jasne.
	AI_Output(self, hero, "Info_Mod_Lobart_Unkraut2_26_01"); //Dobrze wykonane. Za to równiez dostaniesz duzo pieniedzy. Zabawa z tym.

	B_GiveInvItems	(self, hero, ItMi_Gold, 20);

	B_SetTopicStatus	(TOPIC_MOD_LOBART_UNKRAUT, LOG_SUCCESS);

	B_GivePlayerXP	(50);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Lobart_Warentransport (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_Warentransport_Condition;
	information	= Info_Mod_Lobart_Warentransport_Info;
	permanent	= 1;
	important	= 0;
	description	= "Byliscie sprzedac rzepe do Baltramu.";
};

FUNC INT Info_Mod_Lobart_Warentransport_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Baltram_Warentransporte))
	&& (Mod_LobartsRuebenBaltram == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_Warentransport_Info()
{
	AI_Output(hero, self, "Info_Mod_Lobart_Warentransport_15_00"); //Byliscie sprzedac rzepe do Baltramu.

	if (Npc_KnowsInfo(hero, Info_Mod_Lobart_Rueben))
	{
		AI_Output(self, hero, "Info_Mod_Lobart_Warentransport_26_01"); //Tak? Och, cholernie, znowu o tym zapomnialem!
		AI_Output(self, hero, "Info_Mod_Lobart_Warentransport_26_02"); //Prawie chciala przywiezc ja do mojej zony, zeby zrobic zupe!
		AI_Output(self, hero, "Info_Mod_Lobart_Warentransport_26_03"); //Tutaj masz je.....

		B_GiveInvItems	(self, hero, ItPl_Beet, 20);
	
		AI_Output(hero, self, "Info_Mod_Lobart_Warentransport_15_04"); //A co z platnoscia?
		AI_Output(self, hero, "Info_Mod_Lobart_Warentransport_26_05"); //Mam umowe z Baltramem, co miesiac bedziemy sie rozliczac. Nie musisz sie tym martwic.

		Mod_LobartsRuebenBaltram = 1;

		B_LogEntry	(TOPIC_MOD_BALTRAM_WARENTRANSPORTE, "Dostalem rzepe z Lobart.");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Lobart_Warentransport_26_06"); //Jak widac, sa one wciaz w polu. I jak sie utkneli!
		AI_Output(self, hero, "Info_Mod_Lobart_Warentransport_26_07"); //Nie mam nic, co moge dla Ciebie zrobic juz teraz.
	};
};

INSTANCE Info_Mod_Lobart_Randolph (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_Randolph_Condition;
	information	= Info_Mod_Lobart_Randolph_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lobart_Randolph_Condition()
{
	if (Mod_Randolph_Started >= 11)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_Randolph_Info()
{
	AI_Output(self, hero, "Info_Mod_Lobart_Randolph_26_00"); //Co Pan tutaj robi? W naszym domu nie ma zadnych demonów. Stracilismy juz reke.
	AI_Output(self, hero, "Info_Mod_Lobart_Randolph_26_01"); //I ta przerazajaca sylwetka stojaca na szczycie kamiennego kola......
	AI_Output(hero, self, "Info_Mod_Lobart_Randolph_15_02"); //Smieszna sylwetka?
	AI_Output(self, hero, "Info_Mod_Lobart_Randolph_26_03"); //Tak, wszystko zaczelo sie od czasu, gdy ten zlowieszczy kolega wisi dookola. Jest zdecydowanie zaangazowany.
	AI_Output(self, hero, "Info_Mod_Lobart_Randolph_26_04"); //Ktos lepiej pójsc i zabic go.

	B_LogEntry	(TOPIC_MOD_AKIL_RANDOLPH, "Lobart wini za katastrofe ciemnego czeladnika w kamiennym kregu. Wyrazil chec ujrzenia go martwego.");
};

INSTANCE Info_Mod_Lobart_RandolphWeg (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_RandolphWeg_Condition;
	information	= Info_Mod_Lobart_RandolphWeg_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znikla ciemnosc.";
};

FUNC INT Info_Mod_Lobart_RandolphWeg_Condition()
{
	if ((Mod_Randolph_Started == 13)
	|| (Mod_Randolph_Started == 16))
	&& (Npc_KnowsInfo(hero, Info_Mod_Lobart_Randolph))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_RandolphWeg_Info()
{
	AI_Output(hero, self, "Info_Mod_Lobart_RandolphWeg_15_00"); //Znikla ciemnosc. To samo powinno wkrótce dotyczyc równiez demonów.
	AI_Output(self, hero, "Info_Mod_Lobart_RandolphWeg_26_01"); //Co jestes pewien? Dziekuje za slowa uznania. Tutaj wez to zloto jako podziekowanie.
	
	B_GivePlayerXP	(200);

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	B_StartOtherRoutine	(Mod_1414_BAU_Bauer_NW, "START");
	B_StartOtherRoutine	(Mod_1415_BAU_Bauer_NW, "START");
	B_StartOtherRoutine	(Mod_545_NONE_Gildo_NW, "START");
	B_StartOtherRoutine	(Mod_910_BAU_Lobart_NW, "START");
	B_StartOtherRoutine	(Mod_911_BAU_Maleth_NW, "START");
};

INSTANCE Info_Mod_Lobart_AlwinScene (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_AlwinScene_Condition;
	information	= Info_Mod_Lobart_AlwinScene_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lobart_AlwinScene_Condition()
{
	if (Mod_LobartAlwin == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_AlwinScene_Info()
{
	AI_Output(self, hero, "Info_Mod_Lobart_AlwinScene_26_01"); //Ja tez nie wiem. Ale kto by to zrobil?
	
	Info_ClearChoices	(Info_Mod_Lobart_AlwinScene);

	Info_AddChoice	(Info_Mod_Lobart_AlwinScene, "To prawda, nie ma innej wiarygodnej przyczyny.", Info_Mod_Lobart_AlwinScene_B);

	if (Npc_HasItems(hero, ItMi_Gold) >= 300)
	{
		Info_AddChoice	(Info_Mod_Lobart_AlwinScene, "Mozliwe, ze za smierc niektórych owiec (....). )", Info_Mod_Lobart_AlwinScene_A);
	};
};

FUNC VOID Info_Mod_Lobart_AlwinScene_B()
{
	AI_Output(hero, self, "Info_Mod_Lobart_AlwinScene_B_15_00"); //To prawda, nie ma innej wiarygodnej przyczyny.
	AI_Output(self, hero, "Info_Mod_Lobart_AlwinScene_B_26_01"); //Teraz prawie go zabilem! Nie moge w to uwierzyc....
	AI_Output(self, hero, "Info_Mod_Lobart_AlwinScene_B_26_02"); //Musze odpoczac.... Powiedz mu, ze zaluje, zrobil dosc pokuty.
	
	Info_ClearChoices	(Info_Mod_Lobart_AlwinScene);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	B_Göttergefallen(3, 1);

	Mod_LobartAlwin = 3;
};

FUNC VOID Info_Mod_Lobart_AlwinScene_A()
{
	AI_Output(hero, self, "Info_Mod_Lobart_AlwinScene_A_15_00"); //Mozliwe, ze jestem odpowiedzialny za smierc niektórych owiec.
	AI_Output(self, hero, "Info_Mod_Lobart_AlwinScene_A_26_01"); //Co Pan mówi!
	AI_Output(hero, self, "Info_Mod_Lobart_AlwinScene_A_15_02"); //Bardzo mi przykro.... Jak moge sobie z tym poradzic?
	AI_Output(self, hero, "Info_Mod_Lobart_AlwinScene_A_26_03"); //Nie, nie, nie, nie! To sie nie moze zdarzyc! (pauza)
	AI_Output(self, hero, "Info_Mod_Lobart_AlwinScene_A_26_04"); //Nie mozesz zastapic utraty ich dusz. Ale warto. 300 zlota.
	AI_Output(hero, self, "Info_Mod_Lobart_AlwinScene_A_15_05"); //Prosze o przebaczenie.

	B_GiveInvItems	(hero, self, ItMi_Gold, 300);
	
	Info_ClearChoices	(Info_Mod_Lobart_AlwinScene);

	B_Göttergefallen(1, 1);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	Mod_LobartAlwin = 5;

	B_StartOtherRoutine	(Mod_597_NONE_Meldor_NW, "START");
	B_StartOtherRoutine	(Mod_1041_VLK_Buergerin_NW, "START");
	B_StartOtherRoutine	(Mod_1039_VLK_Buergerin_NW, "START");
	B_StartOtherRoutine	(Mod_593_NONE_Lucy_NW, "START");
};

INSTANCE Info_Mod_Lobart_VinoBrennerei (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_VinoBrennerei_Condition;
	information	= Info_Mod_Lobart_VinoBrennerei_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lobart_VinoBrennerei_Condition()
{
	if (Kapitel >= 3)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Mika_VinoBrennerei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_VinoBrennerei_Info()
{
	AI_Output(self, hero, "Info_Mod_Lobart_VinoBrennerei_26_00"); //Odczekaj sekunde.... Duzo sie rozgladasz, czy nie?
	AI_Output(self, hero, "Info_Mod_Lobart_VinoBrennerei_26_01"); //Widziales Vino wszedzie?
	AI_Output(hero, self, "Info_Mod_Lobart_VinoBrennerei_15_02"); //Nie, nie, ostatnio.
	AI_Output(self, hero, "Info_Mod_Lobart_VinoBrennerei_26_03"); //Zbyt zle. Gdzie mógl zostac?
	AI_Output(self, hero, "Info_Mod_Lobart_VinoBrennerei_26_04"); //Jak slyszalem od Miki, minal jakis czas temu Brame Wschodnia.
	AI_Output(self, hero, "Info_Mod_Lobart_VinoBrennerei_26_05"); //Niestety, nie wie, gdzie poszedl pózniej.
	AI_Output(hero, self, "Info_Mod_Lobart_VinoBrennerei_15_06"); //Pojawi sie ponownie.
	AI_Output(self, hero, "Info_Mod_Lobart_VinoBrennerei_26_07"); //Mam taka nadzieje. Podobnie nie widzi, ze tak dlugo pozostaje z dala bez slowa.
	AI_Output(self, hero, "Info_Mod_Lobart_VinoBrennerei_26_08"); //Inni rolnicy nie wiedza nic na tym polu.... Tak mówia.
	AI_Output(self, hero, "Info_Mod_Lobart_VinoBrennerei_26_09"); //Ale dzialaja dziwnie. Jesli Vino nie pojawi sie w najblizszym czasie, to znowu zmieniam slowa.
	
	Log_CreateTopic	(TOPIC_MOD_VINO_WO, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_VINO_WO, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_VINO_WO, "W gospodarstwie Lobarta brakuje Vino.");
	B_LogEntry_NS	(TOPIC_MOD_VINO_WO, "Mika widzial Vino mijalo wschodnia brame, ale nie pamietal, dokad poszedl.");
	B_LogEntry_NS	(TOPIC_MOD_VINO_WO, "Moze powinienem porozmawiac z jego chlopami na polu.");
};

INSTANCE Info_Mod_Lobart_Leichengase (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_Leichengase_Condition;
	information	= Info_Mod_Lobart_Leichengase_Info;
	permanent	= 0;
	important	= 0;
	description	= "Masz minute?";
};

FUNC INT Info_Mod_Lobart_Leichengase_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Caine_Leichengase4))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Dragomir_Leichengase))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Hyglas_Leichengase))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_Leichengase_Info()
{
	AI_Output(hero, self, "Info_Mod_Lobart_Leichengase_15_00"); //Masz minute?
	AI_Output(self, hero, "Info_Mod_Lobart_Leichengase_26_01"); //Co to jest sprawa?
	AI_Output(hero, self, "Info_Mod_Lobart_Leichengase_15_02"); //Mam tu torbe ziól i musze ja wlozyc do zoladka trolla.
	AI_Output(self, hero, "Info_Mod_Lobart_Leichengase_26_03"); //Chcesz co chcesz? Obawiasz sie, ze nie dostaje wystarczajacej ilosci witamin lub co to jest?
	AI_Output(hero, self, "Info_Mod_Lobart_Leichengase_15_04"); //Nie ma to znaczenia. Czy wiesz, w jaki sposób?
	AI_Output(self, hero, "Info_Mod_Lobart_Leichengase_26_05"); //Tak, znam sposób. Nie przychodzi jednak tanio.
	AI_Output(self, hero, "Info_Mod_Lobart_Leichengase_26_06"); //Musisz za to kupic jagnie.
	AI_Output(hero, self, "Info_Mod_Lobart_Leichengase_15_07"); //Dlaczego?
	AI_Output(self, hero, "Info_Mod_Lobart_Leichengase_26_08"); //Bardzo proste. Dajesz mi torebke, ja nakarmie ja owca.
	AI_Output(self, hero, "Info_Mod_Lobart_Leichengase_26_09"); //Wracasz jutro, ubijesz go i wyrzucasz trolle do ich zoladków po jedzenie.
	AI_Output(hero, self, "Info_Mod_Lobart_Leichengase_15_10"); //Ile chcesz za owce?
	AI_Output(self, hero, "Info_Mod_Lobart_Leichengase_26_11"); //Wenn ich ihnen die Kräuter geben soll muss ich einen "Doplata hodowlana" berechnen, das macht dann insgesamt ... 300 Goldstücke.
};

INSTANCE Info_Mod_Lobart_Leichengase2 (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_Leichengase2_Condition;
	information	= Info_Mod_Lobart_Leichengase2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wszystko w porzadku, tutaj. (300 zloto)";
};

FUNC INT Info_Mod_Lobart_Leichengase2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lobart_Leichengase))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_Leichengase2_Info()
{
	AI_Output(hero, self, "Info_Mod_Lobart_Leichengase2_15_00"); //Wszystko w porzadku, tutaj.

	Npc_RemoveInvItems	(hero, ItMi_Gold, 300);
	Npc_RemoveInvItems	(hero, ItMi_Sumpfkraeuter, 1);

	B_ShowGivenThings	("300 zlota i torba z dodatkiem ziól bagiennych");

	AI_Output(self, hero, "Info_Mod_Lobart_Leichengase2_26_01"); //Dziekuje bardzo. Wróccie jutro.

	Mod_Leichengase_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Lobart_Leichengase3 (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_Leichengase3_Condition;
	information	= Info_Mod_Lobart_Leichengase3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lobart_Leichengase3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lobart_Leichengase2))
	&& (Wld_GetDay() > Mod_Leichengase_Day)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_Leichengase3_Info()
{
	AI_Output(self, hero, "Info_Mod_Lobart_Leichengase3_26_00"); //Oto twoja owca, z tym szczescie.
	AI_Output(self, hero, "Info_Mod_Lobart_Leichengase3_26_01"); //Jesli to naprawde zabijacie, prosze nie róbcie tego w poblizu mnie, nie lubie tego caly czas ogladac.

	Wld_InsertNpc	(Trollschaf, Npc_GetNearestWP(self));

	B_LogEntry	(TOPIC_MOD_SL_LEICHENGASE, "Lobart karmil owce ziolami. Powinnam go teraz ubic i wyciagnac z zoladka.");

	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Lobart_Anschlagtafel (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_Anschlagtafel_Condition;
	information	= Info_Mod_Lobart_Anschlagtafel_Info;
	permanent	= 1;
	important	= 0;
	description	= "Widzialem twój plakat na billboardzie....";
};

FUNC INT Info_Mod_Lobart_Anschlagtafel_Condition()
{
	if (Mod_Anschlagtafel_Khorinis_Lobart == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lobart_Anschlagtafel_Info()
{
	B_Say	(hero, self, "$ANSCHLAGTAFEL01");

	if (Npc_HasItems(hero, ItMW_Sense_02) >= Mod_Anschlagtafel_Khorinis_Lobart_Sense)
	&& (Npc_HasItems(hero, ItMw_Sense) >= Mod_Anschlagtafel_Khorinis_Lobart_KleineSense)
	&& (Npc_HasItems(hero, ItMi_Stuff_Barbknife_01) >= Mod_Anschlagtafel_Khorinis_Lobart_Rasiermesser)
	&& (Npc_HasItems(hero, ItMi_Pan) >= Mod_Anschlagtafel_Khorinis_Lobart_Pfanne)
	&& (Npc_HasItems(hero, ItMw_1h_Vlk_Axe) >= Mod_Anschlagtafel_Khorinis_Lobart_Beil)
	&& (Npc_HasItems(hero, ItMi_Kerze) >= Mod_Anschlagtafel_Khorinis_Lobart_Kerze)
	&& (Npc_HasItems(hero, ItMi_Rake) >= Mod_Anschlagtafel_Khorinis_Lobart_Harke)
	&& (Npc_HasItems(hero, ItMi_Scoop) >= Mod_Anschlagtafel_Khorinis_Lobart_Kochloeffel)
	&& (Npc_HasItems(hero, ItMw_1h_Bau_Axe) >= Mod_Anschlagtafel_Khorinis_Lobart_Sichel)
	{
		Npc_RemoveInvItems	(hero, ItMW_Sense_02, Mod_Anschlagtafel_Khorinis_Lobart_Sense);
		Npc_RemoveInvItems	(hero, ItMw_Sense, Mod_Anschlagtafel_Khorinis_Lobart_KleineSense);
		Npc_RemoveInvItems	(hero, ItMi_Stuff_Barbknife_01, Mod_Anschlagtafel_Khorinis_Lobart_Rasiermesser);
		Npc_RemoveInvItems	(hero, ItMi_Pan, Mod_Anschlagtafel_Khorinis_Lobart_Pfanne);
		Npc_RemoveInvItems	(hero, ItMw_1h_Vlk_Axe, Mod_Anschlagtafel_Khorinis_Lobart_Beil);
		Npc_RemoveInvItems	(hero, ItMi_Kerze, Mod_Anschlagtafel_Khorinis_Lobart_Kerze);
		Npc_RemoveInvItems	(hero, ItMi_Rake, Mod_Anschlagtafel_Khorinis_Lobart_Harke);
		Npc_RemoveInvItems	(hero, ItMi_Scoop, Mod_Anschlagtafel_Khorinis_Lobart_Kochloeffel);
		Npc_RemoveInvItems	(hero, ItMw_1h_Bau_Axe, Mod_Anschlagtafel_Khorinis_Lobart_Sichel);

		AI_Output(self, hero, "Info_Mod_Lobart_Anschlagtafel_26_00"); //Co? Pokaz mi.... W rzeczywistosci to wszystko. Bardzo dobrze wykonane.
		AI_Output(self, hero, "Info_Mod_Lobart_Anschlagtafel_26_01"); //Oto Twoja nagroda.

		B_GiveInvItems	(self, hero, ItMi_Gold, Mod_Anschlagtafel_Khorinis_Lobart_Gold);

		AI_Output(self, hero, "Info_Mod_Lobart_Anschlagtafel_26_02"); //Mile robienie interesów z Toba.

		if (Mod_Anschlagtafel_Khorinis_Lobart_Gold < 200)
		{
			B_GivePlayerXP	(300);
		}
		else if (Mod_Anschlagtafel_Khorinis_Lobart_Gold < 400)
		{
			B_GivePlayerXP	(400);
		}
		else if (Mod_Anschlagtafel_Khorinis_Lobart_Gold < 600)
		{
			B_GivePlayerXP	(500);
		}
		else
		{
			B_GivePlayerXP	(600);
		};

		Mod_Anschlagtafel_Khorinis_Lobart = 0;
		Mod_Anschlagtafel_Khorinis_Lobart_Cooldown = 3600;

		Npc_RemoveInvItems	(hero, ItWr_Anschlagtafel_Lobart, 1);
	}
	else
	{
		B_Say	(hero, self, "$ANSCHLAGTAFEL02");
	};
};

INSTANCE Info_Mod_Lobart_Pickpocket (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_Pickpocket_Condition;
	information	= Info_Mod_Lobart_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Lobart_Pickpocket_Condition()
{
	C_Beklauen	(53, ItPl_Beet, 12);
};

FUNC VOID Info_Mod_Lobart_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Lobart_Pickpocket);

	Info_AddChoice	(Info_Mod_Lobart_Pickpocket, DIALOG_BACK, Info_Mod_Lobart_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Lobart_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Lobart_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Lobart_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Lobart_Pickpocket);
};

FUNC VOID Info_Mod_Lobart_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Lobart_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Lobart_Pickpocket);

		Info_AddChoice	(Info_Mod_Lobart_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Lobart_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Lobart_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Lobart_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Lobart_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Lobart_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Lobart_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Lobart_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Lobart_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Lobart_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Lobart_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Lobart_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Lobart_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Lobart_EXIT (C_INFO)
{
	npc		= Mod_910_BAU_Lobart_NW;
	nr		= 1;
	condition	= Info_Mod_Lobart_EXIT_Condition;
	information	= Info_Mod_Lobart_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lobart_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lobart_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
