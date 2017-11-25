INSTANCE Info_Mod_Brad_Hi (C_INFO)
{
	npc		= Mod_10016_MIN_Brad_MT;
	nr		= 1;
	condition	= Info_Mod_Brad_Hi_Condition;
	information	= Info_Mod_Brad_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Brad_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Brad_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Brad_Hi_18_00"); //Co czlowiek robi w jaskini?

	Info_ClearChoices	(Info_Mod_Brad_Hi);

	Info_AddChoice	(Info_Mod_Brad_Hi, "Czy zdarzylo Ci sie ostatnio znalezc glowe?", Info_Mod_Brad_Hi_B);
	Info_AddChoice	(Info_Mod_Brad_Hi, "Jaskinia?", Info_Mod_Brad_Hi_A);
};

FUNC VOID Info_Mod_Brad_Hi_C()
{
	AI_Output(self, hero, "Info_Mod_Brad_Hi_C_18_00"); //Przypomina mi to, niedawno znalazlem glowe. Ale jak to teraz przychodzi na mysl?

	Info_ClearChoices	(Info_Mod_Brad_Hi);

	Info_AddChoice	(Info_Mod_Brad_Hi, "Hej, wielki ksiaze. W dól! Zgnij glowe, syn suki!", Info_Mod_Brad_Hi_E);
	Info_AddChoice	(Info_Mod_Brad_Hi, "Oto jestem. Rozmawiam z wami.", Info_Mod_Brad_Hi_D);
};

FUNC VOID Info_Mod_Brad_Hi_H()
{
	AI_Output(hero, self, "Info_Mod_Brad_Hi_H_15_00"); //Czy moge miec taka glowe?
	AI_Output(self, hero, "Info_Mod_Brad_Hi_H_18_01"); //Hmm, czy powinienem dac temu mezczyznie glowe? Zastanawiam sie, jakie argumenty za tym przemawia.
	AI_Output(hero, self, "Info_Mod_Brad_Hi_H_15_02"); //Móglbym dac wam zloto. Chcesz zlota?
	AI_Output(self, hero, "Info_Mod_Brad_Hi_H_18_03"); //(smiech) Potrzebuje zlota? Nie! Moje skarby sa pelne!
	AI_Output(hero, self, "Info_Mod_Brad_Hi_H_15_04"); //Szukasz czegos wyjatkowego?
	AI_Output(self, hero, "Info_Mod_Brad_Hi_H_18_05"); //No cóz, to mi przypomina, tu zimno. Maly mezczyzna mógl mnie opróznic od wilków, wiec bylbym cieplejszy. Dziesiec byloby w porzadku.

	Info_ClearChoices	(Info_Mod_Brad_Hi);

	Info_AddChoice	(Info_Mod_Brad_Hi, "Zapomnij o tym.", Info_Mod_Brad_Hi_O);
	Info_AddChoice	(Info_Mod_Brad_Hi, "Dostane Ci skóre.", Info_Mod_Brad_Hi_N);
};

FUNC VOID Info_Mod_Brad_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Brad_Hi_B_15_00"); //Czy zdarzylo Ci sie ostatnio znalezc glowe?

	Info_Mod_Brad_Hi_C();
};

FUNC VOID Info_Mod_Brad_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Brad_Hi_A_15_00"); //Jaskinia?
	AI_Output(self, hero, "Info_Mod_Brad_Hi_A_18_01"); //Co slysze? Maly mezczyzna kwestionuje moje mienie? Powinnam go nauczyc.

	Info_ClearChoices	(Info_Mod_Brad_Hi);

	Info_AddChoice	(Info_Mod_Brad_Hi, "Nie daj mi sie smiac.", Info_Mod_Brad_Hi_J);
	Info_AddChoice	(Info_Mod_Brad_Hi, "Czy mozesz porozmawiac takze z malym mezczyzna, czy po prostu rozmawiac z soba?", Info_Mod_Brad_Hi_I);
};

FUNC VOID Info_Mod_Brad_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Brad_Hi_E_15_00"); //Hej, wielki ksiaze. W dól! Zgnij glowe, syn suki!
	AI_Output(self, hero, "Info_Mod_Brad_Hi_E_18_01"); //Ten malenki chlopiec wywoluje u mnie zlosc!

	Info_ClearChoices	(Info_Mod_Brad_Hi);

	Info_AddChoice	(Info_Mod_Brad_Hi, "Przepraszam, nie mialem tego zamiaru.", Info_Mod_Brad_Hi_G);
	Info_AddChoice	(Info_Mod_Brad_Hi, "Hej, jestes szalony. Rozmawiam z wami!", Info_Mod_Brad_Hi_F);
};

FUNC VOID Info_Mod_Brad_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Brad_Hi_D_15_00"); //Oto jestem. Rozmawiam z wami.
	AI_Output(self, hero, "Info_Mod_Brad_Hi_D_18_01"); //Dziecko mysli, ze ja go nie widze. (Cichy usmiech)

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Brad_Hi_D_15_02"); //Uh-huh, maniak.

	AI_TurnToNpc	(hero, self);

	Info_Mod_Brad_Hi_H();
};

FUNC VOID Info_Mod_Brad_Hi_G()
{
	AI_Output(hero, self, "Info_Mod_Brad_Hi_G_15_00"); //Przepraszam, nie mialem tego zamiaru.
	AI_Output(self, hero, "Info_Mod_Brad_Hi_G_18_01"); //Mysle, ze powinienem sie uspokoic.

	Info_Mod_Brad_Hi_H();
};

FUNC VOID Info_Mod_Brad_Hi_M()
{
	AI_Output(self, hero, "Info_Mod_Brad_Hi_M_18_00"); //Rozbije mu glowe!

	Info_ClearChoices	(Info_Mod_Brad_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

FUNC VOID Info_Mod_Brad_Hi_F()
{
	AI_Output(hero, self, "Info_Mod_Brad_Hi_F_15_00"); //Hej, jestes szalony. Rozmawiam z wami!

	Info_Mod_Brad_Hi_M();
};

FUNC VOID Info_Mod_Brad_Hi_J()
{
	AI_Output(hero, self, "Info_Mod_Brad_Hi_J_15_00"); //Nie daj mi sie smiac.
	AI_Output(self, hero, "Info_Mod_Brad_Hi_J_18_01"); //Ten malenki chlopiec wywoluje u mnie zlosc! Nie kwestionujesz tego. Nie. Nigdy nigdy. Moze powinienem oderwac mu glowe. Mam juz dwie. (Cichy usmiech)

	Info_ClearChoices	(Info_Mod_Brad_Hi);

	Info_AddChoice	(Info_Mod_Brad_Hi, "Z pewnoscia nie jest to jaskinia.", Info_Mod_Brad_Hi_L);
	Info_AddChoice	(Info_Mod_Brad_Hi, "Prosze o wybaczenie? Glowa? Znalazles glowe?", Info_Mod_Brad_Hi_K);
};

FUNC VOID Info_Mod_Brad_Hi_I()
{
	AI_Output(hero, self, "Info_Mod_Brad_Hi_I_15_00"); //Czy mozesz porozmawiac takze z malym mezczyzna, czy po prostu rozmawiac z soba?
	AI_Output(self, hero, "Info_Mod_Brad_Hi_I_18_01"); //Nie mówie do nikogo, ale ja sam, czy ja, Brad? Nigdy.

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Brad_Hi_D_15_02"); //Uh-huh, maniak.

	AI_TurnToNpc	(hero, self);

	Info_Mod_Brad_Hi_B();
};

FUNC VOID Info_Mod_Brad_Hi_L()
{
	AI_Output(hero, self, "Info_Mod_Brad_Hi_L_15_00"); //Z pewnoscia nie jest to jaskinia.

	Info_Mod_Brad_Hi_M();
};

FUNC VOID Info_Mod_Brad_Hi_K()
{
	AI_Output(hero, self, "Info_Mod_Brad_Hi_K_15_00"); //Prosze o wybaczenie? Glowa? Znalazles glowe?

	Info_Mod_Brad_Hi_C();
};

FUNC VOID Info_Mod_Brad_Hi_N()
{
	AI_Output(hero, self, "Info_Mod_Brad_Hi_N_15_00"); //Dostane Ci skóre.
	AI_Output(self, hero, "Info_Mod_Brad_Hi_N_18_01"); //Czuje sie prawie jak cieplej.

	B_LogEntry	(TOPIC_MOD_ANOR_NICK, "Mam przywiezc do jaskini Minotaur Brad 20 wilczycowa skórke, wiec nie schladza sie w jaskini.");

	Mod_Brad_Quest = 1;

	Info_ClearChoices	(Info_Mod_Brad_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Brad_Hi_O()
{
	AI_Output(hero, self, "Info_Mod_Brad_Hi_O_15_00"); //Zapomnij o tym.
	AI_Output(self, hero, "Info_Mod_Brad_Hi_O_18_01"); //Mysle, ze utrzymam glowe.
	AI_Output(hero, self, "Info_Mod_Brad_Hi_O_15_02"); //Lepiej dac mi ja teraz, bo w przeciwnym razie bede musial cie zabic!
	AI_Output(self, hero, "Info_Mod_Brad_Hi_O_18_03"); //(smiech) Mezczyzna wyglada smiesznie, gdy jest wsciekly. Niech przyjdzie tutaj!

	Info_ClearChoices	(Info_Mod_Brad_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Brad_Wolfsfelle (C_INFO)
{
	npc		= Mod_10016_MIN_Brad_MT;
	nr		= 1;
	condition	= Info_Mod_Brad_Wolfsfelle_Condition;
	information	= Info_Mod_Brad_Wolfsfelle_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Brad_Wolfsfelle_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brad_Hi))
	&& (Mod_Brad_Quest == 1)
	&& (Npc_HasItems(hero, ItAt_WolfFur) + Npc_HasItems(hero, ItAt_WolfFur_Rein) >= 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Brad_Wolfsfelle_Info()
{
	AI_Output(self, hero, "Info_Mod_Brad_Wolfsfelle_18_00"); //Ktos inny wchodzi do mojej jaskini.
	AI_Output(hero, self, "Info_Mod_Brad_Wolfsfelle_15_01"); //Dostalem skóry.
	AI_Output(self, hero, "Info_Mod_Brad_Wolfsfelle_18_02"); //Czy mezczyzna móglby zostawic mi skóre, gdyby rzeczywiscie ja mial?

	Info_ClearChoices	(Info_Mod_Brad_Wolfsfelle);

	Info_AddChoice	(Info_Mod_Brad_Wolfsfelle, "Tutaj.", Info_Mod_Brad_Wolfsfelle_B);
	Info_AddChoice	(Info_Mod_Brad_Wolfsfelle, "Glowa jako pierwsza.", Info_Mod_Brad_Wolfsfelle_A);
};

FUNC VOID Info_Mod_Brad_Wolfsfelle_C()
{
	AI_Output(self, hero, "Info_Mod_Brad_Wolfsfelle_C_18_00"); //Ah, to milo. Mysle, ze dam mu glowe.

	B_GiveInvItems	(self, hero, ItMi_NicksKopf, 1);

	Mod_Brad_Quest = 2;

	B_LogEntry	(TOPIC_MOD_ANOR_NICK, "Przywiózlem 20 wilków do Minotaurs Brad. Powinienem teraz wrócic do Nicka i oddac mu glowe.");

	Info_ClearChoices	(Info_Mod_Brad_Wolfsfelle);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Brad_Wolfsfelle_B()
{
	AI_Output(hero, self, "Info_Mod_Brad_Wolfsfelle_B_15_00"); //Tutaj.

	var int hlp;
	hlp = Npc_HasItems(hero, ItAt_WolfFur);
	hlp = min(hlp, 10);

	Npc_RemoveInvItems	(hero, ItAt_WolfFur, hlp);
	Npc_RemoveInvItems	(hero, ItAt_WolfFur_Rein, 10 - hlp);

	B_ShowGivenThings	("10 skór wilków podanych");

	Info_Mod_Brad_Wolfsfelle_C();
};

FUNC VOID Info_Mod_Brad_Wolfsfelle_A()
{
	AI_Output(hero, self, "Info_Mod_Brad_Wolfsfelle_A_15_00"); //Glowa jako pierwsza.
	AI_Output(self, hero, "Info_Mod_Brad_Wolfsfelle_A_18_01"); //Teraz stawia wymagania! Ja sie rozgrzewam!

	Info_ClearChoices	(Info_Mod_Brad_Wolfsfelle);

	Info_AddChoice	(Info_Mod_Brad_Wolfsfelle, "Glowa jako pierwsza.", Info_Mod_Brad_Wolfsfelle_E);
	Info_AddChoice	(Info_Mod_Brad_Wolfsfelle, "Okay, oto skóra.", Info_Mod_Brad_Wolfsfelle_D);
};

FUNC VOID Info_Mod_Brad_Wolfsfelle_E()
{
	AI_Output(hero, self, "Info_Mod_Brad_Wolfsfelle_E_15_00"); //Glowa jako pierwsza.
	AI_Output(self, hero, "Info_Mod_Brad_Wolfsfelle_E_18_01"); //Jesli nie zobacze przed soba skóry, to zabije ja!

	Info_ClearChoices	(Info_Mod_Brad_Wolfsfelle);

	Info_AddChoice	(Info_Mod_Brad_Wolfsfelle, "Okay, oto skóra.", Info_Mod_Brad_Wolfsfelle_D);
	Info_AddChoice	(Info_Mod_Brad_Wolfsfelle, "A potem tutaj!", Info_Mod_Brad_Wolfsfelle_F);
};

FUNC VOID Info_Mod_Brad_Wolfsfelle_F()
{
	AI_Output(hero, self, "Info_Mod_Brad_Wolfsfelle_F_15_00"); //A potem tutaj!
	AI_Output(self, hero, "Info_Mod_Brad_Wolfsfelle_F_18_01"); //Splaszcze to!

	Info_ClearChoices	(Info_Mod_Brad_Wolfsfelle);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

FUNC VOID Info_Mod_Brad_Wolfsfelle_D()
{
	AI_Output(hero, self, "Info_Mod_Brad_Wolfsfelle_D_15_00"); //Okay, oto skóra.

	var int hlp;
	hlp = Npc_HasItems(hero, ItAt_WolfFur);
	hlp = min(hlp, 10);

	Npc_RemoveInvItems	(hero, ItAt_WolfFur, hlp);
	Npc_RemoveInvItems	(hero, ItAt_WolfFur_Rein, 10 - hlp);

	B_ShowGivenThings	("10 skór wilków podanych");

	Info_Mod_Brad_Wolfsfelle_C();
};

INSTANCE Info_Mod_Brad_EXIT (C_INFO)
{
	npc		= Mod_10016_MIN_Brad_MT;
	nr		= 1;
	condition	= Info_Mod_Brad_EXIT_Condition;
	information	= Info_Mod_Brad_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Brad_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Brad_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
