INSTANCE Info_Mod_Wachter_01_Hi (C_INFO)
{
	npc		= Mod_1943_Waechter_01_NW;
	nr		= 1;
	condition	= Info_Mod_Wachter_01_Hi_Condition;
	information	= Info_Mod_Wachter_01_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wachter_01_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wachter_01_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Wachter_01_Hi_02_00"); //Co Pan tutaj robi?
	AI_Output(hero, self, "Info_Mod_Wachter_01_Hi_15_01"); //Co widzisz tutaj?
	AI_Output(self, hero, "Info_Mod_Wachter_01_Hi_02_02"); //Jedyny prawdziwy spos�b m�wienia do bog�w. Mianowicie poprzez ich medium, Ryan, nasz prorok.

	Info_ClearChoices	(Info_Mod_Wachter_01_Hi);

	Info_AddChoice	(Info_Mod_Wachter_01_Hi, "Czy moge sie temu przyjrzec?", Info_Mod_Wachter_01_Hi_B);
	Info_AddChoice	(Info_Mod_Wachter_01_Hi, "Oh, tak, tak, Ryan. Zabije go.", Info_Mod_Wachter_01_Hi_A);
};

FUNC VOID Info_Mod_Wachter_01_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Wachter_01_Hi_B_15_00"); //Czy moge sie temu przyjrzec?
	AI_Output(self, hero, "Info_Mod_Wachter_01_Hi_B_02_01"); //Tak. Ryan znajduje sie w jaskini. Nie mysl nawet o klopotach.

	Info_ClearChoices	(Info_Mod_Wachter_01_Hi);

	self.flags = 0;

	AI_StopProcessInfos	(hero);
};

FUNC VOID Info_Mod_Wachter_01_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Wachter_01_Hi_A_15_00"); //Oh, tak, tak, Ryan. Zabije go.
	AI_Output(self, hero, "Info_Mod_Wachter_01_Hi_A_02_01"); //Nigdy nigdy! Nie pozwole na to!

	Info_ClearChoices	(Info_Mod_Wachter_01_Hi);

	self.flags = 0;

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild	(self, GIL_STRF);

	Mod_1952_Waechter_08_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_1952_Waechter_08_NW, GIL_STRF);

	Mod_1944_Waechter_02_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_1944_Waechter_02_NW, GIL_STRF);

	Mod_1945_Waechter_03_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_1945_Waechter_03_NW, GIL_STRF);

	Mod_1946_Waechter_04_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_1946_Waechter_04_NW, GIL_STRF);

	Mod_1947_Waechter_05_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_1947_Waechter_05_NW, GIL_STRF);

	Mod_1948_Waechter_06_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_1948_Waechter_06_NW, GIL_STRF);

	Mod_1949_Waechter_07_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_1949_Waechter_07_NW, GIL_STRF);
};
