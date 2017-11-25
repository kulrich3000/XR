INSTANCE Info_Mod_Hexenqueen_Hi (C_INFO)
{
	npc		= Mod_1859_HEX_Hexenqueen_PAT;
	nr		= 1;
	condition	= Info_Mod_Hexenqueen_Hi_Condition;
	information	= Info_Mod_Hexenqueen_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hexenqueen_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Aaron_Fake_DoorIn))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hexenqueen_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Hi_17_00"); //(smiech) W rzeczywistosci dostarczasz mojemu mezowi bezplatnie.
	AI_Output(hero, self, "Info_Mod_Hexenqueen_Hi_15_01"); //Daje tylko wolnosc smierci!
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Hi_17_02"); //Wyobraz sobie, oszukujesz! Naprawde myslisz, ze mozesz stac miedzy mna a moja mama?
	AI_Output(hero, self, "Info_Mod_Hexenqueen_Hi_15_03"); //Twoja matka?
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Hi_17_04"); //(smiech) Lub powinienem powiedziec o naszej mamie?
	AI_Output(hero, self, "Info_Mod_Hexenqueen_Hi_15_05"); //Co? Co masz na mysli?
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Hi_17_06"); //Bardzo proste. Jestem córka Ragona, a Garan jest synem bylej królowej czarownic.
	AI_Output(hero, self, "Info_Mod_Hexenqueen_Hi_15_07"); //Potem Garan.... twój brat?
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Hi_17_08"); //Szybko zrozumiesz.
	AI_Output(hero, self, "Info_Mod_Hexenqueen_Hi_15_09"); //A Tojan jest..... IGITT!
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Hi_17_10"); //(smiech) Tak. Syn brata i siostry. Krew w nim ponownie sie polaczyla.
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Hi_17_11"); //Zbyt przykry ojciec zabil go. Ale matka ukarze go za to.
	AI_Output(hero, self, "Info_Mod_Hexenqueen_Hi_15_12"); //Masz na mysli poprzednia czarownice?
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Hi_17_13"); //Tak. Ragon zabil ja, kiedy w krótkim momencie beztroski nie dosc ciasno tkala wokól niego swoja magie, a on rozpoznal jej prawdziwa nature.
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Hi_17_14"); //Ale on równiez zaplacil za to swoim zyciem.
	AI_Output(hero, self, "Info_Mod_Hexenqueen_Hi_15_15"); //Tak wiec wymazales wspomnienia Garana i pozostawiles go sam sobie.
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Hi_17_16"); //Tak, zostawilem go z imieniem Aarona. Anagram na nazwisko mojej matki..... Orana!
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Hi_17_17"); //Ale to juz nie jest wazne! Jestem gonna przywracajac mamie zycie! A maly Garan pomoze mi w tym.
	AI_Output(hero, self, "Info_Mod_Hexenqueen_Hi_15_18"); //Ale dlaczego potrzebujesz garanu?
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Hi_17_19"); //To jego krew, której potrzebuje! Razem z nim moge przywrócic czarownice do zycia!
	AI_Output(hero, self, "Info_Mod_Hexenqueen_Hi_15_20"); //Wystarczy, teraz umrzesz!

	AI_StopProcessInfos	(self);

	Mod_FM_AtHexe = 1;
};

INSTANCE Info_Mod_Hexenqueen_Blut (C_INFO)
{
	npc		= Mod_1859_HEX_Hexenqueen_PAT;
	nr		= 1;
	condition	= Info_Mod_Hexenqueen_Blut_Condition;
	information	= Info_Mod_Hexenqueen_Blut_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hexenqueen_Blut_Condition()
{
	if (Mod_FM_AtHexe == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hexenqueen_Blut_Info()
{
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Blut_17_00"); //(smiech) Masz slabych smiertelników! Krzyczenie przed potega mojej matki!
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Blut_17_01"); //Ona jest..... co to jest....? NEIN! Dlaczego nie masz krwi i ciala?

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_1771_KDF_Aaron_PAT, "KILL");
	AI_Teleport	(Mod_1771_KDF_Aaron_PAT, "WP_PAT_TURM_17");
};

INSTANCE Info_Mod_Hexenqueen_Falsch (C_INFO)
{
	npc		= Mod_1859_HEX_Hexenqueen_PAT;
	nr		= 1;
	condition	= Info_Mod_Hexenqueen_Falsch_Condition;
	information	= Info_Mod_Hexenqueen_Falsch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hexenqueen_Falsch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Aaron_Blut))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hexenqueen_Falsch_Info()
{
	AI_Output(self, hero, "Info_Mod_Hexenqueen_Falsch_17_00"); //AHHHH! TO BYL PODWÓJNY GANG! ZNISZCZE CIE!

	AI_StopProcessInfos	(self);
};
