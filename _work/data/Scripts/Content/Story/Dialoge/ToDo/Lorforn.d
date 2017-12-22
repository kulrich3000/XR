INSTANCE Info_Mod_Lorforn_Hi (C_INFO)
{
	npc		= Mod_1962_OUT_Lorforn_TUG;
	nr		= 1;
	condition	= Info_Mod_Lorforn_Hi_Condition;
	information	= Info_Mod_Lorforn_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lorforn_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lorforn_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_06_00"); //Co? Kim jestes?

	Info_ClearChoices	(Info_Mod_Lorforn_Hi);

	Info_AddChoice	(Info_Mod_Lorforn_Hi, "Jaki jest Twój biznes?", Info_Mod_Lorforn_Hi_C);
	Info_AddChoice	(Info_Mod_Lorforn_Hi, "Przybylem zabic wklady Goblin.", Info_Mod_Lorforn_Hi_B);
	Info_AddChoice	(Info_Mod_Lorforn_Hi, "Jestem waszym najgorszym koszmarem!", Info_Mod_Lorforn_Hi_A);
};

FUNC VOID Info_Mod_Lorforn_Hi_H()
{
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_H_06_00"); //Ale to jest...... prawda, tak.
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_H_15_01"); //Mówisz mi, co teraz robisz, albo ja cie zabije.
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_H_06_02"); //Dobrze, dobrze, porozmawiam. Wyslano mnie tutaj do...... er er.....
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_H_15_03"); //Chcesz, abym mógl sie o Tobie wspomniec?
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_H_06_04"); //Juz mówie! l-- zostal tutaj wyslany aby spowodowac trzesienie ziemi. To gonna zjada te glupia doline goblinów.
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_H_06_05"); //Tak, i ci glupi magowie maja calkiem dobry problem. Um.... Nie zabijasz mnie teraz, czy ty?
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_H_15_06"); //Zastanowie sie nad tym.
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_H_06_07"); //Prosze! Powiedzialem ci wszystko! Pozwólcie mi isc, nie wróce tu juz nigdy wiecej, szczerze!

	Info_ClearChoices	(Info_Mod_Lorforn_Hi);

	Info_AddChoice	(Info_Mod_Lorforn_Hi, "Dobrze, pobic. Ale nie wracaj tu juz nigdy wiecej.", Info_Mod_Lorforn_Hi_N);
	Info_AddChoice	(Info_Mod_Lorforn_Hi, "Jestes zbyt niebezpieczny. Jestem gonna cie zabic.", Info_Mod_Lorforn_Hi_M);
};

FUNC VOID Info_Mod_Lorforn_Hi_I()
{
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_I_06_00"); //l-- podziwiac piekna przyrode.
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_I_15_01"); //Nawet nie wierzysz w to.

	Info_Mod_Lorforn_Hi_H();
};

FUNC VOID Info_Mod_Lorforn_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_C_15_00"); //Jaki jest Twój biznes?
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_C_06_01"); //Nie, nie, oczywiscie nie jest to mój biznes, jestem po prostu ciekawy.
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_C_15_02"); //Zbyt ciekawy mojego smaku.
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_C_06_03"); //Co.....? Czy planujesz zrobic to teraz?
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_C_15_04"); //Byc moze raz cie uderzy i powiesz mi, co tu robisz.
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_C_06_05"); //Nie musisz mnie uderzac!

	Info_Mod_Lorforn_Hi_I();
};

FUNC VOID Info_Mod_Lorforn_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_B_15_00"); //Przybylem zabic wklady Goblin.
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_B_06_01"); //Um.... Odradzalabym szczerze mówiac.
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_B_15_02"); //Dlaczego?
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_B_06_03"); //Um.... sa duze..... i mocne, tak. Nie odwazylbym sie do niej podejsc.
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_B_15_04"); //Moge sobie z tym poradzic.
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_B_06_05"); //I maja magiczna moc, tak!

	Info_ClearChoices	(Info_Mod_Lorforn_Hi);

	Info_AddChoice	(Info_Mod_Lorforn_Hi, "Moge sobie z tym poradzic.", Info_Mod_Lorforn_Hi_E);
	Info_AddChoice	(Info_Mod_Lorforn_Hi, "Czy mamy razem spojrzec?", Info_Mod_Lorforn_Hi_D);
};

FUNC VOID Info_Mod_Lorforn_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_E_15_00"); //Moge sobie z tym poradzic.
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_E_06_01"); //Czy wspomnialem, ze sa ogromne?
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_E_15_02"); //Czy kochasz mnie?

	Info_Mod_Lorforn_Hi_H();
};

FUNC VOID Info_Mod_Lorforn_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_D_15_00"); //Czy mamy razem spojrzec?
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_D_06_01"); //Jak? Co? Jest to dla mnie zbyt niebezpieczne.
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_D_15_02"); //Jestem po prostu dzieciakiem. Co Pan tutaj robi?

	Info_Mod_Lorforn_Hi_I();
};

FUNC VOID Info_Mod_Lorforn_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_A_15_00"); //Jestem waszym najgorszym koszmarem!
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_A_06_01"); //Hej! l-- Nie zrobilem ci nic!

	Info_ClearChoices	(Info_Mod_Lorforn_Hi);

	Info_AddChoice	(Info_Mod_Lorforn_Hi, "Co Pan tutaj robi?", Info_Mod_Lorforn_Hi_G);
	Info_AddChoice	(Info_Mod_Lorforn_Hi, "Nie mam czasu na rozmowe, jestem gonna wybic cie teraz.", Info_Mod_Lorforn_Hi_F);
};

FUNC VOID Info_Mod_Lorforn_Hi_G()
{
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_G_15_00"); //Co Pan tutaj robi?

	Info_Mod_Lorforn_Hi_I();
};

FUNC VOID Info_Mod_Lorforn_Hi_F()
{
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_F_15_00"); //Nie mam czasu na rozmowe, jestem gonna wybic cie teraz.
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_F_06_01"); //Wtedy bedziesz..... er er..... Po prostu umierajcie!

	Info_ClearChoices	(Info_Mod_Lorforn_Hi);

	Info_AddChoice	(Info_Mod_Lorforn_Hi, "Po prostu rozmyslajcie, co tu robicie?", Info_Mod_Lorforn_Hi_L);
	Info_AddChoice	(Info_Mod_Lorforn_Hi, "Chodzcie tutaj, maluch!", Info_Mod_Lorforn_Hi_K);
};

FUNC VOID Info_Mod_Lorforn_Hi_L()
{
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_L_15_00"); //Po prostu rozmyslajcie, co tu robicie?

	Info_Mod_Lorforn_Hi_I();
};

FUNC VOID Info_Mod_Lorforn_Hi_K()
{
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_K_15_00"); //Chodzcie tutaj, maluch!
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_K_06_01"); //Die!

	Info_ClearChoices	(Info_Mod_Lorforn_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

FUNC VOID Info_Mod_Lorforn_Hi_N()
{
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_N_15_00"); //Dobrze, pobic. Ale nie wracaj tu juz nigdy wiecej.
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_N_06_01"); //Nigdy o tym nie zapomne.

	B_LogEntry	(TOPIC_MOD_FERCO_GOBLIN, "Spotkalem faceta w drodze do Matronów, którzy prawdopodobnie sa odpowiedzialni za trzesienie ziemi. Powiedzial, ze zostal poslany przez kogos.");

	TUG_Lorforn = TRUE;

	Info_ClearChoices	(Info_Mod_Lorforn_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Lorforn_Hi_M()
{
	AI_Output(hero, self, "Info_Mod_Lorforn_Hi_M_15_00"); //Jestes zbyt niebezpieczny. Jestem gonna cie zabic.
	AI_Output(self, hero, "Info_Mod_Lorforn_Hi_M_06_01"); //Bedziesz....... pokutowac!

	Info_ClearChoices	(Info_Mod_Lorforn_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Lorforn_EXIT (C_INFO)
{
	npc		= Mod_1962_OUT_Lorforn_TUG;
	nr		= 1;
	condition	= Info_Mod_Lorforn_EXIT_Condition;
	information	= Info_Mod_Lorforn_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lorforn_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lorforn_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
