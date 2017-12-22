INSTANCE Info_Mod_Bollok_MT_Hi (C_INFO)
{
	npc		= Mod_10044_Orc_Bollok_MT;
	nr		= 1;
	condition	= Info_Mod_Bollok_MT_Hi_Condition;
	information	= Info_Mod_Bollok_MT_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bollok_MT_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bollok_MT_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_18_00"); //(zdziwiony) Rozpoznaje Ciebie.... jestes czlowiekiem dzielnie walczacym w moim kraju.
	AI_Output(hero, self, "Info_Mod_Bollok_MT_Hi_15_01"); //Ach, to ty. Widze, ze nie jestes juz niewolnikiem w Starej Kopalni.
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_18_02"); //Nie, uciekac w Minentalu.... spotkali sie z bracmi po wielu latach.
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_18_03"); //Hmm i nie moglismy sie z Toba spotkac.
	AI_Output(hero, self, "Info_Mod_Bollok_MT_Hi_15_04"); //Co, dlaczego?
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_18_05"); //Jestes wrogiem orków i moim nowym mistrzem.
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_18_06"); //Mam obowiazek domagac sie, aby cie zabic.... nawet jesli nie chcesz.
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_18_07"); //Walczyles z honorem i pokazales mi, ze nie jestes zly jak inni ludzie.

	self.guild = GIL_ORC;
	Npc_SetTrueGuild (self, GIL_ORC);

	Info_ClearChoices	(Info_Mod_Bollok_MT_Hi);

	Info_AddChoice	(Info_Mod_Bollok_MT_Hi, "Na koniec.", Info_Mod_Bollok_MT_Hi_B);
	Info_AddChoice	(Info_Mod_Bollok_MT_Hi, "Mozna postanowic inaczej.", Info_Mod_Bollok_MT_Hi_A);
};

FUNC VOID Info_Mod_Bollok_MT_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Bollok_MT_Hi_B_15_00"); //Na koniec. Niech wygra lepszy wojownik.
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_B_18_01"); //Chwalic, ze odwaznie twarz i akceptowac niezmienne rzeczy.
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_B_18_02"); //Bedzie pochowac cie z zaszczytem wojownika, jesli zabije.

	Info_ClearChoices	(Info_Mod_Bollok_MT_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

FUNC VOID Info_Mod_Bollok_MT_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Bollok_MT_Hi_A_15_00"); //Mozna postanowic inaczej. Nie musisz tego robic.
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_A_18_01"); //Przykro mi.... musza wykonywac mój obowiazek.
	AI_Output(self, hero, "Info_Mod_Bollok_MT_Hi_A_18_02"); //Módlcie sie za wasza dusze.

	Info_ClearChoices	(Info_Mod_Bollok_MT_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};
