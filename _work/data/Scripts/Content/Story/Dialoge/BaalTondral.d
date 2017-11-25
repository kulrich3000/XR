INSTANCE Info_Mod_Tondral_GotoTempel (C_INFO)
{
	npc		= Mod_2003_GUR_BaalTondral_MT;
	nr		= 1;
	condition	= Info_Mod_Tondral_GotoTempel_Condition;
	information	= Info_Mod_Tondral_GotoTempel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestescie oczekiwani w swiatyni.";
};

FUNC INT Info_Mod_Tondral_GotoTempel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_KarrasDa))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tondral_GotoTempel_Info()
{
	AI_Output(hero, self, "Info_Mod_Tondral_GotoTempel_15_00"); //Jestescie oczekiwani w swiatyni.

	AI_StopProcessInfos	(hero);

	B_StartOtherRoutine	(self, "TEMPEL");
};

INSTANCE Info_Mod_Tondral_Ken (C_INFO)
{
	npc		= Mod_2003_GUR_BaalTondral_MT;
	nr		= 1;
	condition	= Info_Mod_Tondral_Ken_Condition;
	information	= Info_Mod_Tondral_Ken_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Tondral_Ken_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Talas_AtTondral))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tondral_Ken_Info()
{
	AI_Output(self, hero, "Info_Mod_Tondral_Ken_13_00"); //Och, tam jestescie. Obawialem sie, ze Talas Cie nie znajdzie.
	AI_Output(hero, self, "Info_Mod_Tondral_Ken_15_01"); //Nie zrobil tego sam. Przyjechalem tu dla mezczyzny o imieniu Ken.
	AI_Output(self, hero, "Info_Mod_Tondral_Ken_13_02"); //To typowe dla Talasa. Bede musial z nim porozmawiac. Ale kim jest pieklo?
	AI_Output(self, hero, "Info_Mod_Tondral_Ken_13_03"); //Mozna mi jednak powiedziec pózniej. Przyjrzyjmy sie temu.

	B_ShowGivenThings	("Otrzymywanie dokumentów");

	AI_Output(hero, self, "Info_Mod_Tondral_Ken_15_04"); //To ciekawe. Mysle, ze to zaklecie teleportu.
	AI_Output(self, hero, "Info_Mod_Tondral_Ken_13_05"); //Gdzie wedlug Ciebie prowadzi?
	AI_Output(hero, self, "Info_Mod_Tondral_Ken_15_06"); //Prawdopodobnie do miejsca zwanego Gelato.
	AI_Output(self, hero, "Info_Mod_Tondral_Ken_13_07"); //Gelato? Nigdy o tym nie slyszalem.
	AI_Output(hero, self, "Info_Mod_Tondral_Ken_15_08"); //Czy moge miec zaklecie?
	AI_Output(self, hero, "Info_Mod_Tondral_Ken_13_09"); //Czy nie masz zamiaru? Bedziemy musieli zbadac role czaru!

	Info_ClearChoices	(Info_Mod_Tondral_Ken);

	Info_AddChoice	(Info_Mod_Tondral_Ken, "Blagam, prosze. To wazne.", Info_Mod_Tondral_Ken_B);
};

FUNC VOID Info_Mod_Tondral_Ken_B()
{
	AI_Output(hero, self, "Info_Mod_Tondral_Ken_B_15_00"); //Blagam, prosze. To wazne.
	AI_Output(self, hero, "Info_Mod_Tondral_Ken_B_13_01"); //Co chcesz z nim zrobic?
	AI_Output(hero, self, "Info_Mod_Tondral_Ken_B_15_02"); //Chodzi o prace. To wszystko, co moge ci powiedziec. To wazne.
	AI_Output(self, hero, "Info_Mod_Tondral_Ken_B_13_03"); //Wlasciwie uwazam, ze musze panu zaufac. Oto Twoja historia.

	B_GiveInvItems	(self, hero, ItSc_Teleport_Eisgebiet, 1);

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "Mam teraz zaklecie teleportowe. Musze podjac ryzyko jego uzycia.");

	VMG_Second = 4;

	Info_ClearChoices	(Info_Mod_Tondral_Ken);
};

INSTANCE Info_Mod_Tondral_Thys (C_INFO)
{
	npc		= Mod_2003_GUR_BaalTondral_MT;
	nr		= 1;
	condition	= Info_Mod_Tondral_Thys_Condition;
	information	= Info_Mod_Tondral_Thys_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Tondral_Thys_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Talas_Thys))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tondral_Thys_Info()
{
	AI_Output(self, hero, "Info_Mod_Tondral_Thys_13_00"); //Oczekiwalem Ciebie. Jak to sie stalo?
	AI_Output(hero, self, "Info_Mod_Tondral_Thys_15_01"); //Tak jak myslalem. Zostalem teleportowany do Gelato.
	AI_Output(self, hero, "Info_Mod_Tondral_Thys_13_02"); //To niesamowite! Miales problem?
	AI_Output(hero, self, "Info_Mod_Tondral_Thys_15_03"); //Nie, wszystko poszlo dobrze.
	AI_Output(self, hero, "Info_Mod_Tondral_Thys_13_04"); //Zbyt zle zuzyles czesc. Musimy zaczac szukac wiecej czarów. Co bedzie kosztowac ponownie......

	B_StartOtherRoutine	(Mod_2012_PSINOV_Talas_MT, "START");

	Info_ClearChoices	(Info_Mod_Tondral_Thys);

	if (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	{
		Info_AddChoice	(Info_Mod_Tondral_Thys, "Oto 1000 zlotych monet. Wykorzystaj go do sfinansowania wykopalisk.", Info_Mod_Tondral_Thys_C);
	};
	if (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		Info_AddChoice	(Info_Mod_Tondral_Thys, "Oto 100 zlotych monet. Wykorzystaj go do sfinansowania wykopalisk.", Info_Mod_Tondral_Thys_B);
	};
	Info_AddChoice	(Info_Mod_Tondral_Thys, "Tak, nie bedzie tani.", Info_Mod_Tondral_Thys_A);
};

FUNC VOID Info_Mod_Tondral_Thys_C()
{
	AI_Output(hero, self, "Info_Mod_Tondral_Thys_C_15_00"); //Oto 1000 zlotych monet. Wykorzystaj go do sfinansowania wykopalisk.
	AI_Output(self, hero, "Info_Mod_Tondral_Thys_C_13_01"); //Bardzo dziekuje! Tutaj skorzystaj z tego uzdrawiajacego eliksiru jako podziekowania.

	B_GiveInvItems	(self, hero, ItPo_Health_02, 1);

	AI_Output(hero, self, "Info_Mod_Tondral_Thys_C_15_02"); //Dziekuje, dziekuje. Musze teraz ruszyc.
	AI_Output(self, hero, "Info_Mod_Tondral_Thys_C_13_03"); //Dbaj o siebie.

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "Rozmawialem z Baalem Tondralem i finansowalem jego dalsze wykopaliska. Swoja wdziecznosc okazywal z uzdrawiajacym eliksirem. Powinienem teraz wrócic do Ferco.");

	B_GivePlayerXP	(500);

	VMG_Second = 12;

	Info_ClearChoices	(Info_Mod_Tondral_Thys);
};

FUNC VOID Info_Mod_Tondral_Thys_B()
{
	AI_Output(hero, self, "Info_Mod_Tondral_Thys_B_15_00"); //Oto 100 zlotych monet. Wykorzystaj go do sfinansowania wykopalisk.
	AI_Output(self, hero, "Info_Mod_Tondral_Thys_B_13_01"); //Bardzo dziekuje! Tutaj skorzystaj z tego uzdrawiajacego eliksiru jako podziekowania.

	B_GiveInvItems	(self, hero, ItPo_Health_01, 1);

	AI_Output(hero, self, "Info_Mod_Tondral_Thys_B_15_02"); //Dziekuje, dziekuje. Musze teraz ruszyc.
	AI_Output(self, hero, "Info_Mod_Tondral_Thys_B_13_03"); //Dbaj o siebie.

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "Rozmawialem z Baalem Tondralem i finansowalem jego dalsze wykopaliska. Swoja wdziecznosc okazywal z uzdrawiajacym eliksirem. Powinienem teraz wrócic do Ferco.");

	VMG_Second = 12;

	B_GivePlayerXP	(250);

	Info_ClearChoices	(Info_Mod_Tondral_Thys);
};

FUNC VOID Info_Mod_Tondral_Thys_A()
{
	AI_Output(hero, self, "Info_Mod_Tondral_Thys_A_15_00"); //Tak, nie bedzie tani.
	AI_Output(self, hero, "Info_Mod_Tondral_Thys_A_13_01"); //Nie chcesz sie troche przyczynic?

	Info_ClearChoices	(Info_Mod_Tondral_Thys);

	Info_AddChoice	(Info_Mod_Tondral_Thys, "Nie.", Info_Mod_Tondral_Thys_D);
	if (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	{
		Info_AddChoice	(Info_Mod_Tondral_Thys, "Oto 1000 zlotych monet. Wykorzystaj go do sfinansowania wykopalisk.", Info_Mod_Tondral_Thys_C);
	};
	if (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		Info_AddChoice	(Info_Mod_Tondral_Thys, "Oto 100 zlotych monet. Wykorzystaj go do sfinansowania wykopalisk.", Info_Mod_Tondral_Thys_B);
	};
};

FUNC VOID Info_Mod_Tondral_Thys_D()
{
	AI_Output(hero, self, "Info_Mod_Tondral_Thys_D_15_00"); //Nie.
	AI_Output(self, hero, "Info_Mod_Tondral_Thys_D_13_01"); //Nie jestes czysty. Lepiej pójsc.

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "Powinienem teraz wrócic do Ferco.");

	VMG_Second = 12;

	Info_ClearChoices	(Info_Mod_Tondral_Thys);
};

INSTANCE Info_Mod_Tondral_Woher (C_INFO)
{
	npc		= Mod_2003_GUR_BaalTondral_MT;
	nr		= 1;
	condition	= Info_Mod_Tondral_Woher_Condition;
	information	= Info_Mod_Tondral_Woher_Info;
	permanent	= 0;
	important	= 0;
	description	= "Powiedz mi cos o swojej historii?";
};

FUNC INT Info_Mod_Tondral_Woher_Condition()
{
	if (Guru_Dabei == 1)
	|| (Templer_Dabei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tondral_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Tondral_Woher_15_00"); //Powiedz mi cos o swojej historii?
	AI_Output(self, hero, "Info_Mod_Tondral_Woher_13_01"); //Zostalem wrzucony do kolonii za napisanie dwóch ksiazek o bogach.
	AI_Output(hero, self, "Info_Mod_Tondral_Woher_15_02"); //A co bylo z tym tak zle?
	AI_Output(self, hero, "Info_Mod_Tondral_Woher_13_03"); //No cóz, nie podoba im sie to, ze wyrazilem swoja opinie o bogach.
	AI_Output(self, hero, "Info_Mod_Tondral_Woher_13_04"); //Pózniej osiedlilem sie w chatach przed nowym obozem, az uslyszalem o wspólnocie braterskiej.
	AI_Output(self, hero, "Info_Mod_Tondral_Woher_13_05"); //Dla mnie sypialnia byla alternatywa dla innych bogów, wiec zostalem tutaj przyjety.
};

INSTANCE Info_Mod_Tondral_Buch (C_INFO)
{
	npc		= Mod_2003_GUR_BaalTondral_MT;
	nr		= 1;
	condition	= Info_Mod_Tondral_Buch_Condition;
	information	= Info_Mod_Tondral_Buch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy nadal masz kopie ksiazek?";
};

FUNC INT Info_Mod_Tondral_Buch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tondral_Woher))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tondral_Buch_Info()
{
	AI_Output(hero, self, "Info_Mod_Tondral_Buch_15_00"); //Czy nadal masz kopie ksiazek?
	AI_Output(self, hero, "Info_Mod_Tondral_Buch_13_01"); //Nie tutaj, ale mozna pójsc do mojej starej chaty, gdzie powinna byc ksiazka.
};

INSTANCE Info_Mod_Tondral_EXIT (C_INFO)
{
	npc		= Mod_2003_GUR_BaalTondral_MT;
	nr		= 1;
	condition	= Info_Mod_Tondral_EXIT_Condition;
	information	= Info_Mod_Tondral_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Tondral_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Tondral_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
