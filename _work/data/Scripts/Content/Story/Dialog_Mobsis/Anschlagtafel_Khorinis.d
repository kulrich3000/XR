FUNC VOID Anschlagtafel_Khorinis_S1 ()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		B_SetAivar(self, AIV_INVINCIBLE, TRUE);
		PLAYER_MOBSI_PRODUCTION	=	MOBSI_Anschlagtafel_Khorinis;
		Ai_ProcessInfos (her);
	};
};

INSTANCE PC_Anschlagtafel_Khorinis_Baltram (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Anschlagtafel_Khorinis_Baltram_Condition;
	information	= PC_Anschlagtafel_Khorinis_Baltram_Info;
	permanent	= 1;
	important	= 0;
	description	= "Zatrzymac sie przez Baltram";
};

FUNC INT PC_Anschlagtafel_Khorinis_Baltram_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Anschlagtafel_Khorinis)
	&& (Kapitel > 1)
	&& (Mod_Anschlagtafel_Khorinis_Baltram == 0)
	&& (Mod_Anschlagtafel_Khorinis_Baltram_Cooldown == 0)
	{
		return 1;
	};
};

FUNC VOID PC_Anschlagtafel_Khorinis_Baltram_Info()
{
	Mod_Anschlagtafel_Khorinis_Baltram_Milch = 0;
	Mod_Anschlagtafel_Khorinis_Baltram_Kaese = 0;
	Mod_Anschlagtafel_Khorinis_Baltram_Brot = 0;
	Mod_Anschlagtafel_Khorinis_Baltram_Wasser = 0;
	Mod_Anschlagtafel_Khorinis_Baltram_Bier = 0;
	Mod_Anschlagtafel_Khorinis_Baltram_Wacholder = 0;
	Mod_Anschlagtafel_Khorinis_Baltram_Wein = 0;
	Mod_Anschlagtafel_Khorinis_Baltram_Wurst = 0;
	Mod_Anschlagtafel_Khorinis_Baltram_Grog = 0;
	Mod_Anschlagtafel_Khorinis_Baltram_Rum = 0;
	Mod_Anschlagtafel_Khorinis_Baltram_Kuerbis = 0;
	Mod_Anschlagtafel_Khorinis_Baltram_Melone = 0;
	Mod_Anschlagtafel_Khorinis_Baltram_Fleisch = 0;
	Mod_Anschlagtafel_Khorinis_Baltram_Gold = 0;

	var string Anschlagtafel_Khorinis_Text;
	Anschlagtafel_Khorinis_Text = "Potrzeby Baltram: ";

	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Baltram_Milch = 4+Hlp_Random(5);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Milch)), " Mleko, ");

		Mod_Anschlagtafel_Khorinis_Baltram_Gold += Mod_Anschlagtafel_Khorinis_Baltram_Milch*Value_Milk;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Baltram_Kaese = 4+Hlp_Random(5);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Kaese)), " Ser, ");

		Mod_Anschlagtafel_Khorinis_Baltram_Gold += Mod_Anschlagtafel_Khorinis_Baltram_Kaese*Value_Cheese;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Baltram_Brot = 5+Hlp_Random(6);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Brot)), " Chleby, ");

		Mod_Anschlagtafel_Khorinis_Baltram_Gold += Mod_Anschlagtafel_Khorinis_Baltram_Brot*Value_Bread;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Baltram_Wasser = 5+Hlp_Random(6);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Wasser)), " Woda, ");

		Mod_Anschlagtafel_Khorinis_Baltram_Gold += Mod_Anschlagtafel_Khorinis_Baltram_Wasser*Value_Water;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Baltram_Bier = 6+Hlp_Random(7);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Bier)), " Piwo, ");

		Mod_Anschlagtafel_Khorinis_Baltram_Gold += Mod_Anschlagtafel_Khorinis_Baltram_Bier*Value_Beer;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Baltram_Wacholder = 5+Hlp_Random(6);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Wacholder)), " Jalowiec, ");

		Mod_Anschlagtafel_Khorinis_Baltram_Gold += Mod_Anschlagtafel_Khorinis_Baltram_Wacholder*Value_Booze;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Baltram_Wein = 4+Hlp_Random(5);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Wein)), " Wino, ");

		Mod_Anschlagtafel_Khorinis_Baltram_Gold += Mod_Anschlagtafel_Khorinis_Baltram_Wein*Value_Wine;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Baltram_Wurst = 2+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Wurst)), " Kielbasy, ");

		Mod_Anschlagtafel_Khorinis_Baltram_Gold += Mod_Anschlagtafel_Khorinis_Baltram_Wurst*Value_Sausage;
	};
	if (r_max(99) < 30)
	{
		Mod_Anschlagtafel_Khorinis_Baltram_Grog = 3+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Grog)), " Grog, ");

		Mod_Anschlagtafel_Khorinis_Baltram_Gold += Mod_Anschlagtafel_Khorinis_Baltram_Grog*Value_Grog;
	};
	if (r_max(99) < 30)
	{
		Mod_Anschlagtafel_Khorinis_Baltram_Rum = 2+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Rum)), " Rum, ");

		Mod_Anschlagtafel_Khorinis_Baltram_Gold += Mod_Anschlagtafel_Khorinis_Baltram_Rum*Value_Rum;
	};
	if (r_max(99) < 40)
	{
		Mod_Anschlagtafel_Khorinis_Baltram_Kuerbis = 3+Hlp_Random(5);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Kuerbis)), " Dynie, ");

		Mod_Anschlagtafel_Khorinis_Baltram_Gold += Mod_Anschlagtafel_Khorinis_Baltram_Kuerbis*30;
	};
	if (r_max(99) < 20)
	{
		Mod_Anschlagtafel_Khorinis_Baltram_Melone = 2+Hlp_Random(2);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Melone)), " Melony, ");

		Mod_Anschlagtafel_Khorinis_Baltram_Gold += Mod_Anschlagtafel_Khorinis_Baltram_Melone*10;
	};

	Mod_Anschlagtafel_Khorinis_Baltram_Fleisch = 10+Hlp_Random(11);

	Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Fleisch)), " surowe mieso");

	Mod_Anschlagtafel_Khorinis_Baltram_Gold += Mod_Anschlagtafel_Khorinis_Baltram_Fleisch;

	Mod_Anschlagtafel_Khorinis_Baltram_Gold = Mod_Anschlagtafel_Khorinis_Baltram_Gold/2;

	Log_CreateTopic	(TOPIC_MOD_ANSCHLAGTAFEL, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_ANSCHLAGTAFEL, Anschlagtafel_Khorinis_Text);

	Mod_Anschlagtafel_Khorinis_Baltram = 1;

	//B_ENDPRODUCTIONDIALOG();

	CreateInvItems	(hero, ItWr_Anschlagtafel_Baltram, 1);

	PrintScreen	("Zatrzymanie dzialania", -1, -1, FONT_ScreenSmall, 3);
};

INSTANCE PC_Anschlagtafel_Khorinis_Bosper (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Anschlagtafel_Khorinis_Bosper_Condition;
	information	= PC_Anschlagtafel_Khorinis_Bosper_Info;
	permanent	= 1;
	important	= 0;
	description	= "Wezmy atak Bosper' s";
};

FUNC INT PC_Anschlagtafel_Khorinis_Bosper_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Anschlagtafel_Khorinis)
	&& (Kapitel > 1)
	&& (Mod_Anschlagtafel_Khorinis_Bosper == 0)
	&& (Mod_Anschlagtafel_Khorinis_Bosper_Cooldown == 0)
	{
		return 1;
	};
};

FUNC VOID PC_Anschlagtafel_Khorinis_Bosper_Info()
{
	Mod_Anschlagtafel_Khorinis_Bosper_Wolffell = 0;
	Mod_Anschlagtafel_Khorinis_Bosper_Zaehne = 0;
	Mod_Anschlagtafel_Khorinis_Bosper_Krallen = 0;
	Mod_Anschlagtafel_Khorinis_Bosper_Wargfell = 0;
	Mod_Anschlagtafel_Khorinis_Bosper_Schattenlaeuferfell = 0;
	Mod_Anschlagtafel_Khorinis_Bosper_Reptilienhaut = 0;
	Mod_Anschlagtafel_Khorinis_Bosper_Trollfell = 0;
	Mod_Anschlagtafel_Khorinis_Bosper_Minecrawlerplatte = 0;
	Mod_Anschlagtafel_Khorinis_Bosper_Schattenlaeuferhorn = 0;
	Mod_Anschlagtafel_Khorinis_Bosper_Ast = 0;
	Mod_Anschlagtafel_Khorinis_Bosper_Gold = 0;

	var string Anschlagtafel_Khorinis_Text;
	Anschlagtafel_Khorinis_Text = "Zapotrzebowanie na piwo: ";

	if (r_max(99) < 70)
	{
		Mod_Anschlagtafel_Khorinis_Bosper_Wolffell = 15+Hlp_Random(16);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Wolffell)), " Wolffelle, ");

		Mod_Anschlagtafel_Khorinis_Bosper_Gold += Mod_Anschlagtafel_Khorinis_Bosper_Wolffell*Value_WolfFur;
	};
	if (r_max(99) < 50)
	{
		Mod_Anschlagtafel_Khorinis_Bosper_Zaehne = 10+Hlp_Random(11);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Zaehne)), " Zeby, ");

		Mod_Anschlagtafel_Khorinis_Bosper_Gold += Mod_Anschlagtafel_Khorinis_Bosper_Zaehne*Value_Teeth;
	};
	if (r_max(99) < 50)
	{
		Mod_Anschlagtafel_Khorinis_Bosper_Krallen = 10+Hlp_Random(11);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Krallen)), " Szczypce, ");

		Mod_Anschlagtafel_Khorinis_Bosper_Gold += Mod_Anschlagtafel_Khorinis_Bosper_Krallen*Value_Claw;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Bosper_Wargfell = 5+Hlp_Random(6);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Wargfell)), " Skóry ostrzegawcze, ");

		Mod_Anschlagtafel_Khorinis_Bosper_Gold += Mod_Anschlagtafel_Khorinis_Bosper_Wargfell*Value_WargFur;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Bosper_Schattenlaeuferfell = 3+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Schattenlaeuferfell)), " Skóry biegnace w cieniu, ");

		Mod_Anschlagtafel_Khorinis_Bosper_Gold += Mod_Anschlagtafel_Khorinis_Bosper_Schattenlaeuferfell*Value_ShadowFur;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Bosper_Reptilienhaut = 10+Hlp_Random(11);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Reptilienhaut)), " Skóry gadów, ");

		Mod_Anschlagtafel_Khorinis_Bosper_Gold += Mod_Anschlagtafel_Khorinis_Bosper_Reptilienhaut*Value_ReptileSkin;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Bosper_Trollfell = 1+Hlp_Random(2);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Trollfell)), " Skóra zwijaj, ");

		Mod_Anschlagtafel_Khorinis_Bosper_Gold += Mod_Anschlagtafel_Khorinis_Bosper_Trollfell*Value_TrollFur;
	};
	if (r_max(99) < 40)
	{
		Mod_Anschlagtafel_Khorinis_Bosper_Minecrawlerplatte = 4+Hlp_Random(5);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Minecrawlerplatte)), " Plyty Minecrawler, ");

		Mod_Anschlagtafel_Khorinis_Bosper_Gold += Mod_Anschlagtafel_Khorinis_Bosper_Minecrawlerplatte*Value_CrawlerPlate;
	};
	if (r_max(99) < 40)
	{
		Mod_Anschlagtafel_Khorinis_Bosper_Schattenlaeuferhorn = 2+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Schattenlaeuferhorn)), " Róg cienia, ");

		Mod_Anschlagtafel_Khorinis_Bosper_Gold += Mod_Anschlagtafel_Khorinis_Bosper_Schattenlaeuferhorn*Value_ShadowHorn;
	};

	Mod_Anschlagtafel_Khorinis_Bosper_Ast = 20+Hlp_Random(21);

	Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Ast)), " branze");

	Mod_Anschlagtafel_Khorinis_Bosper_Gold += Mod_Anschlagtafel_Khorinis_Bosper_Ast;

	Mod_Anschlagtafel_Khorinis_Bosper_Gold = Mod_Anschlagtafel_Khorinis_Bosper_Gold/2;

	Log_CreateTopic	(TOPIC_MOD_ANSCHLAGTAFEL, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_ANSCHLAGTAFEL, Anschlagtafel_Khorinis_Text);

	Mod_Anschlagtafel_Khorinis_Bosper = 1;

	//B_ENDPRODUCTIONDIALOG();

	CreateInvItems	(hero, ItWr_Anschlagtafel_Bosper, 1);

	PrintScreen	("Zatrzymanie dzialania", -1, -1, FONT_ScreenSmall, 3);
};

INSTANCE PC_Anschlagtafel_Khorinis_Constantino (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Anschlagtafel_Khorinis_Constantino_Condition;
	information	= PC_Anschlagtafel_Khorinis_Constantino_Info;
	permanent	= 1;
	important	= 0;
	description	= "Próba zamachu na Konstantyn.";
};

FUNC INT PC_Anschlagtafel_Khorinis_Constantino_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Anschlagtafel_Khorinis)
	&& (Kapitel > 1)
	&& (Mod_Anschlagtafel_Khorinis_Constantino == 0)
	&& (Mod_Anschlagtafel_Khorinis_Constantino_Cooldown == 0)
	{
		return 1;
	};
};

FUNC VOID PC_Anschlagtafel_Khorinis_Constantino_Info()
{
	Mod_Anschlagtafel_Khorinis_Constantino_Feuernessel = 0;
	Mod_Anschlagtafel_Khorinis_Constantino_Blauflieder = 0;
	Mod_Anschlagtafel_Khorinis_Constantino_Flasche = 0;
	Mod_Anschlagtafel_Khorinis_Constantino_Heilkraut = 0;
	Mod_Anschlagtafel_Khorinis_Constantino_Heilwurzel = 0;
	Mod_Anschlagtafel_Khorinis_Constantino_Feuerkraut = 0;
	Mod_Anschlagtafel_Khorinis_Constantino_Feuerwurzel = 0;
	Mod_Anschlagtafel_Khorinis_Constantino_Feldknoeterich = 0;
	Mod_Anschlagtafel_Khorinis_Constantino_Buddlerfleisch = 0;
	Mod_Anschlagtafel_Khorinis_Constantino_Dunkelpilz = 0;
	Mod_Anschlagtafel_Khorinis_Constantino_Fliegenpilz = 0;
	Mod_Anschlagtafel_Khorinis_Constantino_Sumpfkraut = 0;
	Mod_Anschlagtafel_Khorinis_Constantino_Heilknospe = 0;
	Mod_Anschlagtafel_Khorinis_Constantino_Unkraut = 0;
	Mod_Anschlagtafel_Khorinis_Constantino_Heilpflanze = 0;
	Mod_Anschlagtafel_Khorinis_Constantino_Gold = 0;

	var string Anschlagtafel_Khorinis_Text;
	Anschlagtafel_Khorinis_Text = "Potrzeba Constantino: ";

	if (r_max(99) < 50)
	{
		Mod_Anschlagtafel_Khorinis_Constantino_Feuernessel = 10+Hlp_Random(11);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Feuernessel)), " Pokrzywy ogniowe, ");

		Mod_Anschlagtafel_Khorinis_Constantino_Gold += Mod_Anschlagtafel_Khorinis_Constantino_Feuernessel*Value_Mana_Herb_01;
	};
	if (r_max(99) < 50)
	{
		Mod_Anschlagtafel_Khorinis_Constantino_Blauflieder = 15+Hlp_Random(16);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Blauflieder)), " Niebieskie piosenki, ");

		Mod_Anschlagtafel_Khorinis_Constantino_Gold += Mod_Anschlagtafel_Khorinis_Constantino_Blauflieder*Value_Blueplant;
	};
	if (r_max(99) < 30)
	{
		Mod_Anschlagtafel_Khorinis_Constantino_Flasche = 20+Hlp_Random(11);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Flasche)), " Butelki z woda laboratoryjna, ");

		Mod_Anschlagtafel_Khorinis_Constantino_Gold += Mod_Anschlagtafel_Khorinis_Constantino_Flasche*Value_Flask;
	};
	if (r_max(99) < 30)
	{
		Mod_Anschlagtafel_Khorinis_Constantino_Heilkraut = 10+Hlp_Random(11);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Heilkraut)), " Ziola lecznicze, ");

		Mod_Anschlagtafel_Khorinis_Constantino_Gold += Mod_Anschlagtafel_Khorinis_Constantino_Heilkraut*Value_Health_Herb_02;
	};
	if (r_max(99) < 30)
	{
		Mod_Anschlagtafel_Khorinis_Constantino_Heilwurzel = 4+Hlp_Random(5);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Heilwurzel)), " Korzenie lecznicze, ");

		Mod_Anschlagtafel_Khorinis_Constantino_Gold += Mod_Anschlagtafel_Khorinis_Constantino_Heilwurzel*Value_Health_Herb_03;
	};
	if (r_max(99) < 30)
	{
		Mod_Anschlagtafel_Khorinis_Constantino_Feuerkraut = 7+Hlp_Random(9);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Feuerkraut)), " Straz pozarna, ");

		Mod_Anschlagtafel_Khorinis_Constantino_Gold += Mod_Anschlagtafel_Khorinis_Constantino_Feuerkraut*Value_Mana_Herb_02;
	};
	if (r_max(99) < 30)
	{
		Mod_Anschlagtafel_Khorinis_Constantino_Feuerwurzel = 3+Hlp_Random(5);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Feuerwurzel)), " Korzenie ognia, ");

		Mod_Anschlagtafel_Khorinis_Constantino_Gold += Mod_Anschlagtafel_Khorinis_Constantino_Feuerwurzel*Value_Mana_Herb_03;
	};
	if (r_max(99) < 30)
	{
		Mod_Anschlagtafel_Khorinis_Constantino_Feldknoeterich = 2+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Feldknoeterich)), " Chwast wezlowy, ");

		Mod_Anschlagtafel_Khorinis_Constantino_Gold += Mod_Anschlagtafel_Khorinis_Constantino_Feldknoeterich*Value_Temp_Herb;
	};
	if (r_max(99) < 30)
	{
		Mod_Anschlagtafel_Khorinis_Constantino_Buddlerfleisch = 10+Hlp_Random(11);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Buddlerfleisch)), " Mieso buddlera, ");

		Mod_Anschlagtafel_Khorinis_Constantino_Gold += Mod_Anschlagtafel_Khorinis_Constantino_Buddlerfleisch*Value_Mushroom_02;
	};
	if (r_max(99) < 30)
	{
		Mod_Anschlagtafel_Khorinis_Constantino_Dunkelpilz = 5+Hlp_Random(6);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Dunkelpilz)), " Grzyby ciemne, ");

		Mod_Anschlagtafel_Khorinis_Constantino_Gold += Mod_Anschlagtafel_Khorinis_Constantino_Dunkelpilz*Value_Mushroom_01;
	};
	if (r_max(99) < 30)
	{
		Mod_Anschlagtafel_Khorinis_Constantino_Fliegenpilz = 3+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Fliegenpilz)), " Plynny agaryk, ");

		Mod_Anschlagtafel_Khorinis_Constantino_Gold += Mod_Anschlagtafel_Khorinis_Constantino_Fliegenpilz*Value_Mushroom_01;
	};
	if (r_max(99) < 20)
	{
		Mod_Anschlagtafel_Khorinis_Constantino_Sumpfkraut = 8+Hlp_Random(9);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Sumpfkraut)), " Chwast bagienny, ");

		Mod_Anschlagtafel_Khorinis_Constantino_Gold += Mod_Anschlagtafel_Khorinis_Constantino_Sumpfkraut*Value_SwampHerb;
	};
	if (r_max(99) < 20)
	{
		Mod_Anschlagtafel_Khorinis_Constantino_Heilknospe = 1+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Heilknospe)), " Goracy bud, ");

		Mod_Anschlagtafel_Khorinis_Constantino_Gold += Mod_Anschlagtafel_Khorinis_Constantino_Heilknospe*100;
	};
	if (r_max(99) < 20)
	{
		Mod_Anschlagtafel_Khorinis_Constantino_Unkraut = 5+Hlp_Random(6);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Unkraut)), " Chwasty, ");

		Mod_Anschlagtafel_Khorinis_Constantino_Gold += Mod_Anschlagtafel_Khorinis_Constantino_Unkraut*Value_Weed;
	};

	Mod_Anschlagtafel_Khorinis_Constantino_Heilpflanze = 20+Hlp_Random(21);

	Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Heilpflanze)), " rosliny lecznicze");

	Mod_Anschlagtafel_Khorinis_Constantino_Gold += Mod_Anschlagtafel_Khorinis_Constantino_Heilpflanze*Value_Health_Herb_01;

	Mod_Anschlagtafel_Khorinis_Constantino_Gold = Mod_Anschlagtafel_Khorinis_Constantino_Gold/2;

	Log_CreateTopic	(TOPIC_MOD_ANSCHLAGTAFEL, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_ANSCHLAGTAFEL, Anschlagtafel_Khorinis_Text);

	Mod_Anschlagtafel_Khorinis_Constantino = 1;

	//B_ENDPRODUCTIONDIALOG();

	CreateInvItems	(hero, ItWr_Anschlagtafel_Constantino, 1);

	PrintScreen	("Zatrzymanie dzialania", -1, -1, FONT_ScreenSmall, 3);
};

INSTANCE PC_Anschlagtafel_Khorinis_Hakon (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Anschlagtafel_Khorinis_Hakon_Condition;
	information	= PC_Anschlagtafel_Khorinis_Hakon_Info;
	permanent	= 1;
	important	= 0;
	description	= "Zatrzymac sie przez Hakon.";
};

FUNC INT PC_Anschlagtafel_Khorinis_Hakon_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Anschlagtafel_Khorinis)
	&& (Kapitel > 1)
	&& (Mod_Anschlagtafel_Khorinis_Hakon == 0)
	&& (Mod_Anschlagtafel_Khorinis_Hakon_Cooldown == 0)
	{
		return 1;
	};
};

FUNC VOID PC_Anschlagtafel_Khorinis_Hakon_Info()
{
	Mod_Anschlagtafel_Khorinis_Hakon_MilizKurzchwert = 0;
	Mod_Anschlagtafel_Khorinis_Hakon_Degen = 0;
	Mod_Anschlagtafel_Khorinis_Hakon_Kurzschwert = 0;
	Mod_Anschlagtafel_Khorinis_Hakon_AmulettEichenhaut = 0;
	Mod_Anschlagtafel_Khorinis_Hakon_RingEisenhaut = 0;
	Mod_Anschlagtafel_Khorinis_Hakon_RingKraft = 0;
	Mod_Anschlagtafel_Khorinis_Hakon_Schwert = 0;
	Mod_Anschlagtafel_Khorinis_Hakon_Gold = 0;

	var string Anschlagtafel_Khorinis_Text;
	Anschlagtafel_Khorinis_Text = "Hakon potrzebuje: ";

	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Hakon_MilizKurzchwert = 1;

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Hakon_MilizKurzchwert)), " Krótki miecz milicji, ");

		Mod_Anschlagtafel_Khorinis_Hakon_Gold += Mod_Anschlagtafel_Khorinis_Hakon_MilizKurzchwert*Value_ShortSword1;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Hakon_Degen = 1;

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Hakon_Degen)), " Epee, ");

		Mod_Anschlagtafel_Khorinis_Hakon_Gold += Mod_Anschlagtafel_Khorinis_Hakon_Degen*500;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Hakon_Kurzschwert = 1;

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Hakon_Kurzschwert)), " Krótki miecz, ");

		Mod_Anschlagtafel_Khorinis_Hakon_Gold += Mod_Anschlagtafel_Khorinis_Hakon_Kurzschwert*Value_ShortSword3;
	};
	if (r_max(99) < 40)
	{
		Mod_Anschlagtafel_Khorinis_Hakon_AmulettEichenhaut = 1;

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Hakon_AmulettEichenhaut)), " Debowy amulet skórny, ");

		Mod_Anschlagtafel_Khorinis_Hakon_Gold += Mod_Anschlagtafel_Khorinis_Hakon_AmulettEichenhaut*Value_Am_ProtPoint;
	};
	if (r_max(99) < 50)
	{
		Mod_Anschlagtafel_Khorinis_Hakon_RingEisenhaut = 1;

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Hakon_RingEisenhaut)), " Pierscien skóry zelaznej, ");

		Mod_Anschlagtafel_Khorinis_Hakon_Gold += Mod_Anschlagtafel_Khorinis_Hakon_RingEisenhaut*Value_Ri_ProtEdge;
	};
	if (r_max(99) < 50)
	{
		Mod_Anschlagtafel_Khorinis_Hakon_RingKraft = 1;

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Hakon_RingKraft)), " Pierscien zasilania, ");

		Mod_Anschlagtafel_Khorinis_Hakon_Gold += Mod_Anschlagtafel_Khorinis_Hakon_RingKraft*Value_Ri_Strg;
	};

	Mod_Anschlagtafel_Khorinis_Hakon_Schwert = 1;

	Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Hakon_Schwert)), " Schwert");

	Mod_Anschlagtafel_Khorinis_Hakon_Gold += Mod_Anschlagtafel_Khorinis_Hakon_Schwert*450;

	Mod_Anschlagtafel_Khorinis_Hakon_Gold = Mod_Anschlagtafel_Khorinis_Hakon_Gold/2;

	Log_CreateTopic	(TOPIC_MOD_ANSCHLAGTAFEL, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_ANSCHLAGTAFEL, Anschlagtafel_Khorinis_Text);

	Mod_Anschlagtafel_Khorinis_Hakon = 1;

	//B_ENDPRODUCTIONDIALOG();

	CreateInvItems	(hero, ItWr_Anschlagtafel_Hakon, 1);

	PrintScreen	("Zatrzymanie dzialania", -1, -1, FONT_ScreenSmall, 3);
};

INSTANCE PC_Anschlagtafel_Khorinis_Harad (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Anschlagtafel_Khorinis_Harad_Condition;
	information	= PC_Anschlagtafel_Khorinis_Harad_Info;
	permanent	= 1;
	important	= 0;
	description	= "Wez przystanek Harada";
};

FUNC INT PC_Anschlagtafel_Khorinis_Harad_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Anschlagtafel_Khorinis)
	&& (Kapitel > 1)
	&& (Mod_Anschlagtafel_Khorinis_Harad == 0)
	&& (Mod_Anschlagtafel_Khorinis_Harad_Cooldown == 0)
	{
		return 1;
	};
};

FUNC VOID PC_Anschlagtafel_Khorinis_Harad_Info()
{
	Mod_Anschlagtafel_Khorinis_Harad_RostigesSchwert = 0;
	Mod_Anschlagtafel_Khorinis_Harad_RostigerZweihaender = 0;
	Mod_Anschlagtafel_Khorinis_Harad_Rohstahl = 0;
	Mod_Anschlagtafel_Khorinis_Harad_Goldbrocken = 0;
	Mod_Anschlagtafel_Khorinis_Harad_Erzbrocken = 0;
	Mod_Anschlagtafel_Khorinis_Harad_Schmiedehammer = 0;
	Mod_Anschlagtafel_Khorinis_Harad_Zange = 0;
	Mod_Anschlagtafel_Khorinis_Harad_Schuerhaken = 0;
	Mod_Anschlagtafel_Khorinis_Harad_Gold = 0;

	var string Anschlagtafel_Khorinis_Text;
	Anschlagtafel_Khorinis_Text = "Potrzeby Harada: ";

	if (r_max(99) < 40)
	{
		Mod_Anschlagtafel_Khorinis_Harad_RostigesSchwert = 1+Hlp_Random(10);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Harad_RostigesSchwert)), " zardzewiale miecze, ");

		Mod_Anschlagtafel_Khorinis_Harad_Gold += Mod_Anschlagtafel_Khorinis_Harad_RostigesSchwert*Value_MiscSword;
	};
	if (r_max(99) < 40)
	{
		Mod_Anschlagtafel_Khorinis_Harad_RostigerZweihaender = 1+Hlp_Random(10);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Harad_RostigerZweihaender)), " zardzewiale dwie rece, ");

		Mod_Anschlagtafel_Khorinis_Harad_Gold += Mod_Anschlagtafel_Khorinis_Harad_RostigerZweihaender*Value_Misc2hSword;
	};
	if (r_max(99) < 40)
	{
		Mod_Anschlagtafel_Khorinis_Harad_Goldbrocken = 4+Hlp_Random(9);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Harad_Goldbrocken)), " Kawalek zlota, ");

		Mod_Anschlagtafel_Khorinis_Harad_Gold += Mod_Anschlagtafel_Khorinis_Harad_Goldbrocken*Value_Goldnugget;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Harad_Erzbrocken = 3+Hlp_Random(6);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Harad_Erzbrocken)), " Rudne kawalki, ");

		Mod_Anschlagtafel_Khorinis_Harad_Gold += Mod_Anschlagtafel_Khorinis_Harad_Erzbrocken*Value_Nugget;
	};
	if (r_max(99) < 40)
	{
		Mod_Anschlagtafel_Khorinis_Harad_Schmiedehammer = 1+Hlp_Random(2);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Harad_Schmiedehammer)), " Mlotek kucia, ");

		Mod_Anschlagtafel_Khorinis_Harad_Gold += Mod_Anschlagtafel_Khorinis_Harad_Schmiedehammer*Value_Schmiedehammer;
	};
	if (r_max(99) < 40)
	{
		Mod_Anschlagtafel_Khorinis_Harad_Zange = 1+Hlp_Random(2);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Harad_Zange)), " Szczypce, ");

		Mod_Anschlagtafel_Khorinis_Harad_Gold += Mod_Anschlagtafel_Khorinis_Harad_Zange*Value_RuneBlank;
	};
	if (r_max(99) < 30)
	{
		Mod_Anschlagtafel_Khorinis_Harad_Schuerhaken = 1;

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Harad_Schuerhaken)), " Poker, ");

		Mod_Anschlagtafel_Khorinis_Harad_Gold += Mod_Anschlagtafel_Khorinis_Harad_Schuerhaken*Value_Schuerhaken;
	};

	Mod_Anschlagtafel_Khorinis_Harad_Rohstahl = 5+Hlp_Random(11);

	Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Harad_Rohstahl)), " Rohstahl");

	Mod_Anschlagtafel_Khorinis_Harad_Gold += Mod_Anschlagtafel_Khorinis_Harad_Rohstahl*Value_SwordRaw;

	Mod_Anschlagtafel_Khorinis_Harad_Gold = Mod_Anschlagtafel_Khorinis_Harad_Gold/2;

	Log_CreateTopic	(TOPIC_MOD_ANSCHLAGTAFEL, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_ANSCHLAGTAFEL, Anschlagtafel_Khorinis_Text);

	Mod_Anschlagtafel_Khorinis_Harad = 1;

	//B_ENDPRODUCTIONDIALOG();

	CreateInvItems	(hero, ItWr_Anschlagtafel_Harad, 1);

	PrintScreen	("Zatrzymanie dzialania", -1, -1, FONT_ScreenSmall, 3);
};

INSTANCE PC_Anschlagtafel_Khorinis_Ignaz (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Anschlagtafel_Khorinis_Ignaz_Condition;
	information	= PC_Anschlagtafel_Khorinis_Ignaz_Info;
	permanent	= 1;
	important	= 0;
	description	= "Wezmy zatrzymanie sie Ignacego";
};

FUNC INT PC_Anschlagtafel_Khorinis_Ignaz_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Anschlagtafel_Khorinis)
	&& (Kapitel > 1)
	&& (Mod_Anschlagtafel_Khorinis_Ignaz == 0)
	&& (Mod_Anschlagtafel_Khorinis_Ignaz_Cooldown == 0)
	{
		return 1;
	};
};

FUNC VOID PC_Anschlagtafel_Khorinis_Ignaz_Info()
{
	Mod_Anschlagtafel_Khorinis_Ignaz_Pech = 0;
	Mod_Anschlagtafel_Khorinis_Ignaz_Kohle = 0;
	Mod_Anschlagtafel_Khorinis_Ignaz_Quartz = 0;
	Mod_Anschlagtafel_Khorinis_Ignaz_Bergkristall = 0;
	Mod_Anschlagtafel_Khorinis_Ignaz_Papier = 0;
	Mod_Anschlagtafel_Khorinis_Ignaz_Blutfliegenstachel = 0;
	Mod_Anschlagtafel_Khorinis_Ignaz_Minecrawlerzangen = 0;
	Mod_Anschlagtafel_Khorinis_Ignaz_Spinnenzangen = 0;
	Mod_Anschlagtafel_Khorinis_Ignaz_Feldraeuberzangen = 0;
	Mod_Anschlagtafel_Khorinis_Ignaz_Goblinknochen = 0;
	Mod_Anschlagtafel_Khorinis_Ignaz_Skelettknochen = 0;
	Mod_Anschlagtafel_Khorinis_Ignaz_Schlafzauber = 0;
	Mod_Anschlagtafel_Khorinis_Ignaz_Vergessenszauber = 0;
	Mod_Anschlagtafel_Khorinis_Ignaz_Angstzauber = 0;
	Mod_Anschlagtafel_Khorinis_Ignaz_Schwefel = 0;
	Mod_Anschlagtafel_Khorinis_Ignaz_Gold = 0;

	var string Anschlagtafel_Khorinis_Text;
	Anschlagtafel_Khorinis_Text = "Potrzeby Ignaza: ";

	if (r_max(99) < 40)
	{
		Mod_Anschlagtafel_Khorinis_Ignaz_Pech = 1+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Pech)), " Zbyt zle, ");

		Mod_Anschlagtafel_Khorinis_Ignaz_Gold += Mod_Anschlagtafel_Khorinis_Ignaz_Pech*Value_Pitch;
	};
	if (r_max(99) < 40)
	{
		Mod_Anschlagtafel_Khorinis_Ignaz_Kohle = 2+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Kohle)), " Wegiel, ");

		Mod_Anschlagtafel_Khorinis_Ignaz_Gold += Mod_Anschlagtafel_Khorinis_Ignaz_Kohle*Value_Coal;
	};
	if (r_max(99) < 40)
	{
		Mod_Anschlagtafel_Khorinis_Ignaz_Quartz = 3+Hlp_Random(4);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Quartz)), " Kwarc lodowy, ");

		Mod_Anschlagtafel_Khorinis_Ignaz_Gold += Mod_Anschlagtafel_Khorinis_Ignaz_Quartz*Value_Quartz;
	};
	if (r_max(99) < 40)
	{
		Mod_Anschlagtafel_Khorinis_Ignaz_Bergkristall = 2+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Bergkristall)), " Skalne krysztaly, ");

		Mod_Anschlagtafel_Khorinis_Ignaz_Gold += Mod_Anschlagtafel_Khorinis_Ignaz_Bergkristall*Value_Rockcrystal;
	};
	if (r_max(99) < 40)
	{
		Mod_Anschlagtafel_Khorinis_Ignaz_Papier = 5+Hlp_Random(6);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Papier)), " Papier, ");

		Mod_Anschlagtafel_Khorinis_Ignaz_Gold += Mod_Anschlagtafel_Khorinis_Ignaz_Papier;
	};
	if (r_max(99) < 40)
	{
		Mod_Anschlagtafel_Khorinis_Ignaz_Blutfliegenstachel = 4+Hlp_Random(5);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Blutfliegenstachel)), " Krew leci kregoslup, ");

		Mod_Anschlagtafel_Khorinis_Ignaz_Gold += Mod_Anschlagtafel_Khorinis_Ignaz_Blutfliegenstachel*Value_Sting;
	};
	if (r_max(99) < 30)
	{
		Mod_Anschlagtafel_Khorinis_Ignaz_Minecrawlerzangen = 2+Hlp_Random(4);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Minecrawlerzangen)), " Szczegi do ciagników Minecrawler, ");

		Mod_Anschlagtafel_Khorinis_Ignaz_Gold += Mod_Anschlagtafel_Khorinis_Ignaz_Minecrawlerzangen*Value_CrawlerMandibles;
	};
	if (r_max(99) < 30)
	{
		Mod_Anschlagtafel_Khorinis_Ignaz_Spinnenzangen = 3+Hlp_Random(5);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Spinnenzangen)), " Szczypce krzyzowe, ");

		Mod_Anschlagtafel_Khorinis_Ignaz_Gold += Mod_Anschlagtafel_Khorinis_Ignaz_Spinnenzangen*Value_CrawlerMandibles;
	};
	if (r_max(99) < 20)
	{
		Mod_Anschlagtafel_Khorinis_Ignaz_Feldraeuberzangen = 2+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Feldraeuberzangen)), " Szczypce zlodziejskie, ");

		Mod_Anschlagtafel_Khorinis_Ignaz_Gold += Mod_Anschlagtafel_Khorinis_Ignaz_Feldraeuberzangen*Value_BugMandibles;
	};
	if (r_max(99) < 50)
	{
		Mod_Anschlagtafel_Khorinis_Ignaz_Goblinknochen = 3+Hlp_Random(6);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Goblinknochen)), " Kosci gobelinowe, ");

		Mod_Anschlagtafel_Khorinis_Ignaz_Gold += Mod_Anschlagtafel_Khorinis_Ignaz_Goblinknochen*Value_GoblinBone;
	};
	if (r_max(99) < 50)
	{
		Mod_Anschlagtafel_Khorinis_Ignaz_Skelettknochen = 6+Hlp_Random(7);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Skelettknochen)), " Kosc szkieletowa, ");

		Mod_Anschlagtafel_Khorinis_Ignaz_Gold += Mod_Anschlagtafel_Khorinis_Ignaz_Skelettknochen*Value_SkeletonBone;
	};
	if (r_max(99) < 40)
	{
		Mod_Anschlagtafel_Khorinis_Ignaz_Schlafzauber = 2+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Schlafzauber)), " Uspij zaklecie, ");

		Mod_Anschlagtafel_Khorinis_Ignaz_Gold += Mod_Anschlagtafel_Khorinis_Ignaz_Schlafzauber*Value_Sc_Sleep;
	};
	if (r_max(99) < 40)
	{
		Mod_Anschlagtafel_Khorinis_Ignaz_Vergessenszauber = 3+Hlp_Random(4);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Vergessenszauber)), " Zapomniany zaklecie, ");

		Mod_Anschlagtafel_Khorinis_Ignaz_Gold += Mod_Anschlagtafel_Khorinis_Ignaz_Vergessenszauber*Value_Sc_Charm;
	};
	if (r_max(99) < 30)
	{
		Mod_Anschlagtafel_Khorinis_Ignaz_Angstzauber = 1;

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Angstzauber)), " Strach przed zakleciem, ");

		Mod_Anschlagtafel_Khorinis_Ignaz_Gold += Mod_Anschlagtafel_Khorinis_Ignaz_Angstzauber*Value_Sc_Fear;
	};

	Mod_Anschlagtafel_Khorinis_Ignaz_Schwefel = 2+Hlp_Random(4);

	Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Schwefel)), " Schwefel");

	Mod_Anschlagtafel_Khorinis_Ignaz_Gold += Mod_Anschlagtafel_Khorinis_Ignaz_Schwefel*Value_Sulfur;

	Mod_Anschlagtafel_Khorinis_Ignaz_Gold = Mod_Anschlagtafel_Khorinis_Ignaz_Gold/2;

	Log_CreateTopic	(TOPIC_MOD_ANSCHLAGTAFEL, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_ANSCHLAGTAFEL, Anschlagtafel_Khorinis_Text);

	Mod_Anschlagtafel_Khorinis_Ignaz = 1;

	//B_ENDPRODUCTIONDIALOG();

	CreateInvItems	(hero, ItWr_Anschlagtafel_Ignaz, 1);

	PrintScreen	("Zatrzymanie dzialania", -1, -1, FONT_ScreenSmall, 3);
};

INSTANCE PC_Anschlagtafel_Khorinis_Jora (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Anschlagtafel_Khorinis_Jora_Condition;
	information	= PC_Anschlagtafel_Khorinis_Jora_Info;
	permanent	= 1;
	important	= 0;
	description	= "podjecie próby zamachu na Jore";
};

FUNC INT PC_Anschlagtafel_Khorinis_Jora_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Anschlagtafel_Khorinis)
	&& (Kapitel > 1)
	&& (Mod_Anschlagtafel_Khorinis_Jora == 0)
	&& (Mod_Anschlagtafel_Khorinis_Jora_Cooldown == 0)
	{
		return 1;
	};
};

FUNC VOID PC_Anschlagtafel_Khorinis_Jora_Info()
{
	Mod_Anschlagtafel_Khorinis_Jora_Bolzen = 0;
	Mod_Anschlagtafel_Khorinis_Jora_Kurzbogen = 0;
	Mod_Anschlagtafel_Khorinis_Jora_Weidenbogen = 0;
	Mod_Anschlagtafel_Khorinis_Jora_Fackel = 0;
	Mod_Anschlagtafel_Khorinis_Jora_Spitzhacke = 0;
	Mod_Anschlagtafel_Khorinis_Jora_Laute = 0;
	Mod_Anschlagtafel_Khorinis_Jora_Harnischamulett = 0;
	Mod_Anschlagtafel_Khorinis_Jora_Klosterwein = 0;
	Mod_Anschlagtafel_Khorinis_Jora_Schafswurst = 0;
	Mod_Anschlagtafel_Khorinis_Jora_Pfeil = 0;
	Mod_Anschlagtafel_Khorinis_Jora_Gold = 0;

	var string Anschlagtafel_Khorinis_Text;
	Anschlagtafel_Khorinis_Text = "Potrzebna Jora: ";

	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Jora_Bolzen = 50+Hlp_Random(51);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Jora_Bolzen)), " Sruby, ");

		Mod_Anschlagtafel_Khorinis_Jora_Gold += Mod_Anschlagtafel_Khorinis_Jora_Bolzen;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Jora_Kurzbogen = 3+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Jora_Kurzbogen)), " Krótkie arkusze, ");

		Mod_Anschlagtafel_Khorinis_Jora_Gold += Mod_Anschlagtafel_Khorinis_Jora_Kurzbogen*Value_Kurzbogen;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Jora_Weidenbogen = 2+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Jora_Weidenbogen)), " Luki wierzby, ");

		Mod_Anschlagtafel_Khorinis_Jora_Gold += Mod_Anschlagtafel_Khorinis_Jora_Weidenbogen*Value_Weidenbogen;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Jora_Fackel = 10+Hlp_Random(11);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Jora_Fackel)), " Latarki, ");

		Mod_Anschlagtafel_Khorinis_Jora_Gold += Mod_Anschlagtafel_Khorinis_Jora_Fackel*Value_Fackel;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Jora_Spitzhacke = 3+Hlp_Random(4);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Jora_Spitzhacke)), " pickaxes, ");

		Mod_Anschlagtafel_Khorinis_Jora_Gold += Mod_Anschlagtafel_Khorinis_Jora_Spitzhacke*50;
	};
	if (r_max(99) < 40)
	{
		Mod_Anschlagtafel_Khorinis_Jora_Laute = 1;

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Jora_Laute)), " Wyciszone, ");

		Mod_Anschlagtafel_Khorinis_Jora_Gold += Mod_Anschlagtafel_Khorinis_Jora_Laute*Value_Lute;
	};
	if (r_max(99) < 40)
	{
		Mod_Anschlagtafel_Khorinis_Jora_Harnischamulett = 1;

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Jora_Harnischamulett)), " Urok pancerza, ");

		Mod_Anschlagtafel_Khorinis_Jora_Gold += Mod_Anschlagtafel_Khorinis_Jora_Harnischamulett*Value_Am_ProtEdge;
	};
	if (r_max(99) < 40)
	{
		Mod_Anschlagtafel_Khorinis_Jora_Klosterwein = 2+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Jora_Klosterwein)), " Wino klasztorne, ");

		Mod_Anschlagtafel_Khorinis_Jora_Gold += Mod_Anschlagtafel_Khorinis_Jora_Klosterwein*(Value_Wine+5);
	};
	if (r_max(99) < 40)
	{
		Mod_Anschlagtafel_Khorinis_Jora_Schafswurst = 3+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Jora_Schafswurst)), " Kielbasy owcze, ");

		Mod_Anschlagtafel_Khorinis_Jora_Gold += Mod_Anschlagtafel_Khorinis_Jora_Schafswurst*Value_Sausage;
	};

	Mod_Anschlagtafel_Khorinis_Jora_Pfeil = 50+Hlp_Random(51);

	Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Jora_Pfeil)), " rzutki");

	Mod_Anschlagtafel_Khorinis_Jora_Gold += Mod_Anschlagtafel_Khorinis_Jora_Pfeil;

	Mod_Anschlagtafel_Khorinis_Jora_Gold = Mod_Anschlagtafel_Khorinis_Jora_Gold/2;

	Log_CreateTopic	(TOPIC_MOD_ANSCHLAGTAFEL, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_ANSCHLAGTAFEL, Anschlagtafel_Khorinis_Text);

	Mod_Anschlagtafel_Khorinis_Jora = 1;

	//B_ENDPRODUCTIONDIALOG();

	CreateInvItems	(hero, ItWr_Anschlagtafel_Jora, 1);

	PrintScreen	("Zatrzymanie dzialania", -1, -1, FONT_ScreenSmall, 3);
};

INSTANCE PC_Anschlagtafel_Khorinis_Lobart (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Anschlagtafel_Khorinis_Lobart_Condition;
	information	= PC_Anschlagtafel_Khorinis_Lobart_Info;
	permanent	= 1;
	important	= 0;
	description	= "Zatrzymac sie na Lobart.";
};

FUNC INT PC_Anschlagtafel_Khorinis_Lobart_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Anschlagtafel_Khorinis)
	&& (Kapitel > 1)
	&& (Mod_Anschlagtafel_Khorinis_Lobart == 0)
	&& (Mod_Anschlagtafel_Khorinis_Lobart_Cooldown == 0)
	{
		return 1;
	};
};

FUNC VOID PC_Anschlagtafel_Khorinis_Lobart_Info()
{
	Mod_Anschlagtafel_Khorinis_Lobart_Sense = 0;
	Mod_Anschlagtafel_Khorinis_Lobart_KleineSense = 0;
	Mod_Anschlagtafel_Khorinis_Lobart_Rasiermesser = 0;
	Mod_Anschlagtafel_Khorinis_Lobart_Pfanne = 0;
	Mod_Anschlagtafel_Khorinis_Lobart_Beil = 0;
	Mod_Anschlagtafel_Khorinis_Lobart_Kerze = 0;
	Mod_Anschlagtafel_Khorinis_Lobart_Harke = 0;
	Mod_Anschlagtafel_Khorinis_Lobart_Kochloeffel = 0;
	Mod_Anschlagtafel_Khorinis_Lobart_Sichel = 0;
	Mod_Anschlagtafel_Khorinis_Lobart_Gold = 0;

	var string Anschlagtafel_Khorinis_Text;
	Anschlagtafel_Khorinis_Text = "Potrzeby Lobart: ";

	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Lobart_Sense = 1;

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Lobart_Sense)), " kosa, ");

		Mod_Anschlagtafel_Khorinis_Lobart_Gold += Mod_Anschlagtafel_Khorinis_Lobart_Sense*1000;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Lobart_KleineSense = 2+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Lobart_KleineSense)), " Male kosy, ");

		Mod_Anschlagtafel_Khorinis_Lobart_Gold += Mod_Anschlagtafel_Khorinis_Lobart_KleineSense*Value_Sense;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Lobart_Rasiermesser = 3+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Lobart_Rasiermesser)), " Razor, ");

		Mod_Anschlagtafel_Khorinis_Lobart_Gold += Mod_Anschlagtafel_Khorinis_Lobart_Rasiermesser*25;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Lobart_Pfanne = 1+Hlp_Random(2);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Lobart_Pfanne)), " Patelnia do smazenia, ");

		Mod_Anschlagtafel_Khorinis_Lobart_Gold += Mod_Anschlagtafel_Khorinis_Lobart_Pfanne*Value_Pan;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Lobart_Beil = 1+Hlp_Random(2);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Lobart_Beil)), " Hatchet, ");

		Mod_Anschlagtafel_Khorinis_Lobart_Gold += Mod_Anschlagtafel_Khorinis_Lobart_Beil*Value_VLKAxe;
	};
	if (r_max(99) < 30)
	{
		Mod_Anschlagtafel_Khorinis_Lobart_Kerze = 1;

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Lobart_Kerze)), " Swieca, ");

		Mod_Anschlagtafel_Khorinis_Lobart_Gold += Mod_Anschlagtafel_Khorinis_Lobart_Kerze*Value_Stomper;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Lobart_Harke = 1;

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Lobart_Harke)), " Harke, ");

		Mod_Anschlagtafel_Khorinis_Lobart_Gold += Mod_Anschlagtafel_Khorinis_Lobart_Harke*Value_Rake;
	};
	if (r_max(99) < 40)
	{
		Mod_Anschlagtafel_Khorinis_Lobart_Kochloeffel = 1;

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Lobart_Kochloeffel)), " Lyzka do gotowania, ");

		Mod_Anschlagtafel_Khorinis_Lobart_Gold += Mod_Anschlagtafel_Khorinis_Lobart_Kochloeffel*Value_Scoop;
	};

	Mod_Anschlagtafel_Khorinis_Lobart_Sichel = 4+Hlp_Random(5);

	Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Lobart_Sichel)), " sierpy");

	Mod_Anschlagtafel_Khorinis_Lobart_Gold += Mod_Anschlagtafel_Khorinis_Lobart_Sichel*Value_BauAxe;

	Mod_Anschlagtafel_Khorinis_Lobart_Gold = Mod_Anschlagtafel_Khorinis_Lobart_Gold/2;

	Log_CreateTopic	(TOPIC_MOD_ANSCHLAGTAFEL, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_ANSCHLAGTAFEL, Anschlagtafel_Khorinis_Text);

	Mod_Anschlagtafel_Khorinis_Lobart = 1;

	//B_ENDPRODUCTIONDIALOG();

	CreateInvItems	(hero, ItWr_Anschlagtafel_Lobart, 1);

	PrintScreen	("Zatrzymanie dzialania", -1, -1, FONT_ScreenSmall, 3);
};

INSTANCE PC_Anschlagtafel_Khorinis_Lutero (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Anschlagtafel_Khorinis_Lutero_Condition;
	information	= PC_Anschlagtafel_Khorinis_Lutero_Info;
	permanent	= 1;
	important	= 0;
	description	= "Zatrzymanie sie na przystanku Luteroro.";
};

FUNC INT PC_Anschlagtafel_Khorinis_Lutero_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Anschlagtafel_Khorinis)
	&& (Kapitel > 1)
	&& (Mod_Anschlagtafel_Khorinis_Lutero == 0)
	&& (Mod_Anschlagtafel_Khorinis_Lutero_Cooldown == 0)
	{
		return 1;
	};
};

FUNC VOID PC_Anschlagtafel_Khorinis_Lutero_Info()
{
	Mod_Anschlagtafel_Khorinis_Lutero_Silberkelch = 0;
	Mod_Anschlagtafel_Khorinis_Lutero_Silberteller = 0;
	Mod_Anschlagtafel_Khorinis_Lutero_SilbernerKerzenstaender = 0;
	Mod_Anschlagtafel_Khorinis_Lutero_Goldkelch = 0;
	Mod_Anschlagtafel_Khorinis_Lutero_Trollhauer = 0;
	Mod_Anschlagtafel_Khorinis_Lutero_Drachensnapperhorn = 0;
	Mod_Anschlagtafel_Khorinis_Lutero_Sumpfhaizahn = 0;
	Mod_Anschlagtafel_Khorinis_Lutero_Sumpfhaihaut = 0;
	Mod_Anschlagtafel_Khorinis_Lutero_FlammenAmulett = 0;
	Mod_Anschlagtafel_Khorinis_Lutero_Runenstein = 0;
	Mod_Anschlagtafel_Khorinis_Lutero_Steingolemherz = 0;
	Mod_Anschlagtafel_Khorinis_Lutero_Daemonenherz = 0;
	Mod_Anschlagtafel_Khorinis_Lutero_Goldring = 0;
	Mod_Anschlagtafel_Khorinis_Lutero_Gold = 0;

	var string Anschlagtafel_Khorinis_Text;
	Anschlagtafel_Khorinis_Text = "Potrzeby Lutero: ";

	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Lutero_Silberkelch = 2+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Silberkelch)), " Srebrne kubki, ");

		Mod_Anschlagtafel_Khorinis_Lutero_Gold += Mod_Anschlagtafel_Khorinis_Lutero_Silberkelch*Value_SilverCup;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Lutero_Silberteller = 2+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Silberteller)), " Srebrna plyta, ");

		Mod_Anschlagtafel_Khorinis_Lutero_Gold += Mod_Anschlagtafel_Khorinis_Lutero_Silberteller*Value_SilverPlate;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Lutero_SilbernerKerzenstaender = 1+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Lutero_SilbernerKerzenstaender)), " Srebrny uchwyt swiecowy, ");

		Mod_Anschlagtafel_Khorinis_Lutero_Gold += Mod_Anschlagtafel_Khorinis_Lutero_SilbernerKerzenstaender*Value_SilverCandleholder;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Lutero_Goldkelch = 1+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Goldkelch)), " Goldkelch, ");

		Mod_Anschlagtafel_Khorinis_Lutero_Gold += Mod_Anschlagtafel_Khorinis_Lutero_Goldkelch*Value_GoldCup;
	};
	if (r_max(99) < 50)
	{
		Mod_Anschlagtafel_Khorinis_Lutero_Trollhauer = 2+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Trollhauer)), " Trollhauer, ");

		Mod_Anschlagtafel_Khorinis_Lutero_Gold += Mod_Anschlagtafel_Khorinis_Lutero_Trollhauer*Value_TrollTooth;
	};
	if (r_max(99) < 50)
	{
		Mod_Anschlagtafel_Khorinis_Lutero_Drachensnapperhorn = 2+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Drachensnapperhorn)), " Smokowe rogi potrzaskowe, ");

		Mod_Anschlagtafel_Khorinis_Lutero_Gold += Mod_Anschlagtafel_Khorinis_Lutero_Drachensnapperhorn*Value_DrgSnapperHorn;
	};
	if (r_max(99) < 50)
	{
		Mod_Anschlagtafel_Khorinis_Lutero_Sumpfhaizahn = 3+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Sumpfhaizahn)), " Zeby rekina skokowego, ");

		Mod_Anschlagtafel_Khorinis_Lutero_Gold += Mod_Anschlagtafel_Khorinis_Lutero_Sumpfhaizahn*Value_SharkTeeth;
	};
	if (r_max(99) < 50)
	{
		Mod_Anschlagtafel_Khorinis_Lutero_Sumpfhaihaut = 3+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Sumpfhaihaut)), " Rekiny szarego, ");

		Mod_Anschlagtafel_Khorinis_Lutero_Gold += Mod_Anschlagtafel_Khorinis_Lutero_Sumpfhaihaut*Value_SharkSkin;
	};
	if (r_max(99) < 40)
	{
		Mod_Anschlagtafel_Khorinis_Lutero_FlammenAmulett = 1;

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Lutero_FlammenAmulett)), " Amulet plomieni, ");

		Mod_Anschlagtafel_Khorinis_Lutero_Gold += Mod_Anschlagtafel_Khorinis_Lutero_FlammenAmulett*Value_Am_ProtFire;
	};
	if (r_max(99) < 40)
	{
		Mod_Anschlagtafel_Khorinis_Lutero_Runenstein = 1;

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Runenstein)), " Runenstein, ");

		Mod_Anschlagtafel_Khorinis_Lutero_Gold += Mod_Anschlagtafel_Khorinis_Lutero_Runenstein*Value_Runeblank;
	};
	if (r_max(99) < 40)
	{
		Mod_Anschlagtafel_Khorinis_Lutero_Steingolemherz = 1;

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Steingolemherz)), " Kamienne serce Golem, ");

		Mod_Anschlagtafel_Khorinis_Lutero_Gold += Mod_Anschlagtafel_Khorinis_Lutero_Steingolemherz*Value_StoneGolemHeart;
	};
	if (r_max(99) < 40)
	{
		Mod_Anschlagtafel_Khorinis_Lutero_Daemonenherz = 1;

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Daemonenherz)), " Serce demoniczne, ");

		Mod_Anschlagtafel_Khorinis_Lutero_Gold += Mod_Anschlagtafel_Khorinis_Lutero_Daemonenherz*Value_DemonHeart;
	};

	Mod_Anschlagtafel_Khorinis_Lutero_Goldring = 2+Hlp_Random(3);

	Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Goldring)), " zloto");

	Mod_Anschlagtafel_Khorinis_Lutero_Gold += Mod_Anschlagtafel_Khorinis_Lutero_Goldring*Value_GoldRing;

	Mod_Anschlagtafel_Khorinis_Lutero_Gold = Mod_Anschlagtafel_Khorinis_Lutero_Gold/2;

	Log_CreateTopic	(TOPIC_MOD_ANSCHLAGTAFEL, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_ANSCHLAGTAFEL, Anschlagtafel_Khorinis_Text);

	Mod_Anschlagtafel_Khorinis_Lutero = 1;

	//B_ENDPRODUCTIONDIALOG();

	CreateInvItems	(hero, ItWr_Anschlagtafel_Lutero, 1);

	PrintScreen	("Zatrzymanie dzialania", -1, -1, FONT_ScreenSmall, 3);
};

INSTANCE PC_Anschlagtafel_Khorinis_Thorben (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Anschlagtafel_Khorinis_Thorben_Condition;
	information	= PC_Anschlagtafel_Khorinis_Thorben_Info;
	permanent	= 1;
	important	= 0;
	description	= "Wez atak z Thorben.";
};

FUNC INT PC_Anschlagtafel_Khorinis_Thorben_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Anschlagtafel_Khorinis)
	&& (Kapitel > 1)
	&& (Mod_Anschlagtafel_Khorinis_Thorben == 0)
	&& (Mod_Anschlagtafel_Khorinis_Thorben_Cooldown == 0)
	{
		return 1;
	};
};

FUNC VOID PC_Anschlagtafel_Khorinis_Thorben_Info()
{
	Mod_Anschlagtafel_Khorinis_Thorben_Ast = 0;
	Mod_Anschlagtafel_Khorinis_Thorben_Beil = 0;
	Mod_Anschlagtafel_Khorinis_Thorben_Hammer = 0;
	Mod_Anschlagtafel_Khorinis_Thorben_SchwererAst = 0;
	Mod_Anschlagtafel_Khorinis_Thorben_Dolch = 0;
	Mod_Anschlagtafel_Khorinis_Thorben_Besen = 0;
	Mod_Anschlagtafel_Khorinis_Thorben_Buerste = 0;
	Mod_Anschlagtafel_Khorinis_Thorben_Saege = 0;
	Mod_Anschlagtafel_Khorinis_Thorben_Gold = 0;

	var string Anschlagtafel_Khorinis_Text;
	Anschlagtafel_Khorinis_Text = "Potrzebyhorbenu: ";

	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Thorben_Ast = 30+Hlp_Random(31);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Thorben_Ast)), " Oddzialy, ");

		Mod_Anschlagtafel_Khorinis_Thorben_Gold += Mod_Anschlagtafel_Khorinis_Thorben_Ast;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Thorben_Beil = 1+Hlp_Random(4);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Thorben_Beil)), " Hatchet, ");

		Mod_Anschlagtafel_Khorinis_Thorben_Gold += Mod_Anschlagtafel_Khorinis_Thorben_Beil*Value_VLKAxe;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Thorben_Hammer = 3+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Thorben_Hammer)), " Mloty mlotkowe, ");

		Mod_Anschlagtafel_Khorinis_Thorben_Gold += Mod_Anschlagtafel_Khorinis_Thorben_Hammer*Value_Hammer;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Thorben_SchwererAst = 40+Hlp_Random(41);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Thorben_SchwererAst)), " ciezkie galezie, ");

		Mod_Anschlagtafel_Khorinis_Thorben_Gold += Mod_Anschlagtafel_Khorinis_Thorben_SchwererAst*10;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Thorben_Dolch = 4+Hlp_Random(4);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Thorben_Dolch)), " Sztylety, ");

		Mod_Anschlagtafel_Khorinis_Thorben_Gold += Mod_Anschlagtafel_Khorinis_Thorben_Dolch*Value_VLKDolch;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Thorben_Besen = 1;

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Thorben_Besen)), " Salon, ");

		Mod_Anschlagtafel_Khorinis_Thorben_Gold += Mod_Anschlagtafel_Khorinis_Thorben_Besen*Value_Broom;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Thorben_Buerste = 1;

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Thorben_Buerste)), " Szczotki, ");

		Mod_Anschlagtafel_Khorinis_Thorben_Gold += Mod_Anschlagtafel_Khorinis_Thorben_Buerste*Value_Brush;
	};

	Mod_Anschlagtafel_Khorinis_Thorben_Saege = 2+Hlp_Random(4);

	Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Thorben_Saege)), " pily");

	Mod_Anschlagtafel_Khorinis_Thorben_Gold += Mod_Anschlagtafel_Khorinis_Thorben_Saege*Value_Saw;

	Mod_Anschlagtafel_Khorinis_Thorben_Gold = Mod_Anschlagtafel_Khorinis_Thorben_Gold/2;

	Log_CreateTopic	(TOPIC_MOD_ANSCHLAGTAFEL, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_ANSCHLAGTAFEL, Anschlagtafel_Khorinis_Text);

	Mod_Anschlagtafel_Khorinis_Thorben = 1;

	//B_ENDPRODUCTIONDIALOG();

	CreateInvItems	(hero, ItWr_Anschlagtafel_Thorben, 1);

	PrintScreen	("Zatrzymanie dzialania", -1, -1, FONT_ScreenSmall, 3);
};

INSTANCE PC_Anschlagtafel_Khorinis_Zuris (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Anschlagtafel_Khorinis_Zuris_Condition;
	information	= PC_Anschlagtafel_Khorinis_Zuris_Info;
	permanent	= 1;
	important	= 0;
	description	= "Wezmy napasc na Zurisa";
};

FUNC INT PC_Anschlagtafel_Khorinis_Zuris_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Anschlagtafel_Khorinis)
	&& (Kapitel > 1)
	&& (Mod_Anschlagtafel_Khorinis_Zuris == 0)
	&& (Mod_Anschlagtafel_Khorinis_Zuris_Cooldown == 0)
	&& (!Npc_IsDead(Mod_757_NONE_Zuris_NW))
	{
		return 1;
	};
};

FUNC VOID PC_Anschlagtafel_Khorinis_Zuris_Info()
{
	Mod_Anschlagtafel_Khorinis_Zuris_Manaessenz = 0;
	Mod_Anschlagtafel_Khorinis_Zuris_ManaExtrakt = 0;
	Mod_Anschlagtafel_Khorinis_Zuris_HPExtrakt = 0;
	Mod_Anschlagtafel_Khorinis_Zuris_HPElixier = 0;
	Mod_Anschlagtafel_Khorinis_Zuris_ManaElixier = 0;
	Mod_Anschlagtafel_Khorinis_Zuris_Feuerball = 0;
	Mod_Anschlagtafel_Khorinis_Zuris_Feuerpfeil = 0;
	Mod_Anschlagtafel_Khorinis_Zuris_HPEssenz = 0;
	Mod_Anschlagtafel_Khorinis_Zuris_Gold = 0;

	var string Anschlagtafel_Khorinis_Text;
	Anschlagtafel_Khorinis_Text = "Potrzeby Zurisa: ";

	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Zuris_Manaessenz = 5+Hlp_Random(6);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Zuris_Manaessenz)), " Mana essences, ");

		Mod_Anschlagtafel_Khorinis_Zuris_Gold += Mod_Anschlagtafel_Khorinis_Zuris_Manaessenz*Value_ManaEssenz;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Zuris_ManaExtrakt = 3+Hlp_Random(4);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Zuris_ManaExtrakt)), " Wyciagi z maneny, ");

		Mod_Anschlagtafel_Khorinis_Zuris_Gold += Mod_Anschlagtafel_Khorinis_Zuris_ManaExtrakt*Value_ManaExtrakt;
	};
	if (r_max(99) < 60)
	{
		Mod_Anschlagtafel_Khorinis_Zuris_HPExtrakt = 3+Hlp_Random(4);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Zuris_HPExtrakt)), " Ekstrakty lecznicze, ");

		Mod_Anschlagtafel_Khorinis_Zuris_Gold += Mod_Anschlagtafel_Khorinis_Zuris_HPExtrakt*Value_HPExtrakt;
	};
	if (r_max(99) < 50)
	{
		Mod_Anschlagtafel_Khorinis_Zuris_HPElixier = 2+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Zuris_HPElixier)), " Eliksiry uzdrawiania, ");

		Mod_Anschlagtafel_Khorinis_Zuris_Gold += Mod_Anschlagtafel_Khorinis_Zuris_HPElixier*Value_HPElixier;
	};
	if (r_max(99) < 50)
	{
		Mod_Anschlagtafel_Khorinis_Zuris_ManaElixier = 2+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Zuris_ManaElixier)), " Manaelixiere, ");

		Mod_Anschlagtafel_Khorinis_Zuris_Gold += Mod_Anschlagtafel_Khorinis_Zuris_ManaElixier*Value_ManaElixier;
	};
	if (r_max(99) < 50)
	{
		Mod_Anschlagtafel_Khorinis_Zuris_Feuerball = 2+Hlp_Random(3);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Zuris_Feuerball)), " Rozbój zaklecia pilki noznej, ");

		Mod_Anschlagtafel_Khorinis_Zuris_Gold += Mod_Anschlagtafel_Khorinis_Zuris_Feuerball*Value_Sc_InstantFireball;
	};
	if (r_max(99) < 50)
	{
		Mod_Anschlagtafel_Khorinis_Zuris_Feuerpfeil = 3+Hlp_Random(4);

		Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Zuris_Feuerpfeil)), " Zaklecie strzal ogniotrwale, ");

		Mod_Anschlagtafel_Khorinis_Zuris_Gold += Mod_Anschlagtafel_Khorinis_Zuris_Feuerpfeil*Value_Sc_Firebolt;
	};

	Mod_Anschlagtafel_Khorinis_Zuris_HPEssenz = 5+Hlp_Random(6);

	Anschlagtafel_Khorinis_Text = ConcatStrings(ConcatStrings(Anschlagtafel_Khorinis_Text, IntToString(Mod_Anschlagtafel_Khorinis_Zuris_HPEssenz)), " Esencje uzdrawiania");

	Mod_Anschlagtafel_Khorinis_Zuris_Gold += Mod_Anschlagtafel_Khorinis_Zuris_HPEssenz*Value_HPEssenz;

	Mod_Anschlagtafel_Khorinis_Zuris_Gold = Mod_Anschlagtafel_Khorinis_Zuris_Gold/2;

	Log_CreateTopic	(TOPIC_MOD_ANSCHLAGTAFEL, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_ANSCHLAGTAFEL, Anschlagtafel_Khorinis_Text);

	Mod_Anschlagtafel_Khorinis_Zuris = 1;

	//B_ENDPRODUCTIONDIALOG();

	CreateInvItems	(hero, ItWr_Anschlagtafel_Zuris, 1);

	PrintScreen	("Zatrzymanie dzialania", -1, -1, FONT_ScreenSmall, 3);
};

INSTANCE PC_Anschlagtafel_Khorinis_EXIT (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Anschlagtafel_Khorinis_EXIT_Condition;
	information	= PC_Anschlagtafel_Khorinis_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT PC_Anschlagtafel_Khorinis_EXIT_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Anschlagtafel_Khorinis)
	{
		return 1;
	};
};

FUNC VOID PC_Anschlagtafel_Khorinis_EXIT_Info()
{
	B_ENDPRODUCTIONDIALOG();
};
