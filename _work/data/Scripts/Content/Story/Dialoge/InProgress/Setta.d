INSTANCE Info_Mod_Setta_Hi (C_INFO)
{
	npc		= Mod_7360_OUT_Setta_WS;
	nr		= 1;
	condition	= Info_Mod_Setta_Hi_Condition;
	information	= Info_Mod_Setta_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Setta_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Setta_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Setta_Hi_19_00"); //Hej!

	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Setta_Hi_19_01"); //Nazywam sie Setta. Mieszkam tu od kilku lat, mieszkam tutaj.
	AI_Output(hero, self, "Info_Mod_Setta_Hi_15_02"); //Jak sie tu dostales?
	AI_Output(self, hero, "Info_Mod_Setta_Hi_19_03"); //Nie pamietam dokladnie. Skad pochodzisz, skad jestes?

	Info_ClearChoices	(Info_Mod_Setta_Hi);

	Info_AddChoice	(Info_Mod_Setta_Hi, "Jestem z Minentala. Slyszales o tym kiedys?", Info_Mod_Setta_Hi_B);
	Info_AddChoice	(Info_Mod_Setta_Hi, "Ulecialem z góry.", Info_Mod_Setta_Hi_A);
};

FUNC VOID Info_Mod_Setta_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Setta_Hi_B_15_00"); //Jestem z Minentala. Slyszales o tym kiedys?
	AI_Output(self, hero, "Info_Mod_Setta_Hi_B_19_01"); //Tak naprawde mam. Jesli dobrze pamietam, to równiez skad pochodze. Czy....? Bariera wciaz istnieje?
	AI_Output(hero, self, "Info_Mod_Setta_Hi_B_15_02"); //Nie, odeszla. I nie bylam calkowicie zaangazowana.
	AI_Output(self, hero, "Info_Mod_Setta_Hi_B_19_03"); //Wow, prawdziwy bohater. W mojej pokornej kabinie. Co moge zrobic dla Ciebie, czy moge zrobic?
	AI_Output(hero, self, "Info_Mod_Setta_Hi_B_15_04"); //Jak sie z tego wyprowadzic?
	AI_Output(self, hero, "Info_Mod_Setta_Hi_B_19_05"); //Nie moge ci powiedziec, ze nie potrafie, bo sam nie znam sie. W przeciwnym razie prawdopodobnie bym tu nie byl.
	AI_Output(hero, self, "Info_Mod_Setta_Hi_B_15_06"); //Nie masz zadnych pomyslów?
	AI_Output(self, hero, "Info_Mod_Setta_Hi_B_19_07"); //Hm, teraz to mówisz. Dlaczego nie pytasz starego Buffa? Zyje w namiocie, zyje.
	AI_Output(hero, self, "Info_Mod_Setta_Hi_B_15_08"); //Dziekujemy za informacje.
	AI_Output(self, hero, "Info_Mod_Setta_Hi_B_19_09"); //Jestes mile widziany, hihi.

	Info_ClearChoices	(Info_Mod_Setta_Hi);

	B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "Wyladowalem w dziwnej dolinie, z której zdaje sie nie byc ucieczki. Co ciekawe, wciaz mam kamien ladowania. Moze mnie tu wyprowadzi. Pustelniczka Setta poradzila mi skontaktowac sie ze starym Buffem.");
};

FUNC VOID Info_Mod_Setta_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Setta_Hi_A_15_00"); //Ulecialem z góry.
	AI_Output(self, hero, "Info_Mod_Setta_Hi_A_19_01"); //Ach, jak ptak? Uwielbiam ptaki, kocham ptaki. Potrafie jednak wkrecac sie sam, moge. Nie jestem tak wstrzasniety, jak wygladam.

	Info_Mod_Setta_Hi_B();
};

INSTANCE Info_Mod_Setta_EXIT (C_INFO)
{
	npc		= Mod_7360_OUT_Setta_WS;
	nr		= 1;
	condition	= Info_Mod_Setta_EXIT_Condition;
	information	= Info_Mod_Setta_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Setta_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Setta_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
