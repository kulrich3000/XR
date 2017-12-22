INSTANCE Info_Mod_PriesterRyan_Hi (C_INFO)
{
	npc		= Mod_1951_Priester_NW;
	nr		= 1;
	condition	= Info_Mod_PriesterRyan_Hi_Condition;
	information	= Info_Mod_PriesterRyan_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_PriesterRyan_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_PriesterRyan_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_PriesterRyan_Hi_02_00"); //Ryan nie moze byc teraz zaklócony. Jest w srodku ceremonii.

	Info_ClearChoices	(Info_Mod_PriesterRyan_Hi);

	Info_AddChoice	(Info_Mod_PriesterRyan_Hi, "Ladny pistolet, który tam dostales.", Info_Mod_PriesterRyan_Hi_B);
	Info_AddChoice	(Info_Mod_PriesterRyan_Hi, "Nie powstrzymasz mnie przed tym!", Info_Mod_PriesterRyan_Hi_A);
};

FUNC VOID Info_Mod_PriesterRyan_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_PriesterRyan_Hi_B_15_00"); //Ladny pistolet, który tam dostales.
	AI_Output(self, hero, "Info_Mod_PriesterRyan_Hi_B_02_01"); //Najwazniejszym reliktem naszej najistotniejszej relikwii jest Trzech Bogów. Kazdego dnia wyrzuca zle mysli z kazdego z naszych nasladowców.

	Info_ClearChoices	(Info_Mod_PriesterRyan_Hi);

	Info_AddChoice	(Info_Mod_PriesterRyan_Hi, "Czy dasz mi ja chetnie? )", Info_Mod_PriesterRyan_Hi_D);
	Info_AddChoice	(Info_Mod_PriesterRyan_Hi, "W mojej kolekcji wykalaczka poradzi sobie dobrze.", Info_Mod_PriesterRyan_Hi_C);
};

FUNC VOID Info_Mod_PriesterRyan_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_PriesterRyan_Hi_A_15_00"); //Nie powstrzymasz mnie przed tym!
	AI_Output(self, hero, "DEFAULT"); //

	Info_ClearChoices	(Info_Mod_PriesterRyan_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild	(self, GIL_STRF);

	Mod_1943_Waechter_01_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_1943_Waechter_01_NW, GIL_STRF);

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

FUNC VOID Info_Mod_PriesterRyan_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_PriesterRyan_Hi_D_15_00"); //Czy dajesz mi ja gonna, czy musze ja dostac?
	AI_Output(hero, self, "Info_Mod_PriesterRyan_Hi_D_15_01"); //Jesli chcesz sie wydostac z tego miejsca zywy, powinienes byc dobrym chlopcem.

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_PriesterRyan_Hi_D_02_02"); //Czy bogowie chca nas ukarac? Ale za co?

		B_GiveInvItems	(self, hero, DreiGoetterStab, 1);

		Info_ClearChoices	(Info_Mod_PriesterRyan_Hi);

		AI_StopProcessInfos	(self);

		B_StartOtherRoutine	(self, "TOT");

		B_RemoveNpc	(Mod_1952_Waechter_08_NW);
		B_RemoveNpc	(Mod_1943_Waechter_01_NW);
		B_RemoveNpc	(Mod_1944_Waechter_02_NW);
		B_RemoveNpc	(Mod_1945_Waechter_03_NW);
		B_RemoveNpc	(Mod_1946_Waechter_04_NW);
		B_RemoveNpc	(Mod_1947_Waechter_05_NW);
		B_RemoveNpc	(Mod_1948_Waechter_06_NW);
		B_RemoveNpc	(Mod_1949_Waechter_07_NW);
	
		B_GivePlayerXP	(10);

		B_RaiseHandelsgeschick (2);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_PriesterRyan_Hi_D_02_03"); //Nie doceniacie mojej mocy!
	};
};

FUNC VOID Info_Mod_PriesterRyan_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_PriesterRyan_Hi_C_15_00"); //W mojej kolekcji wykalaczka poradzi sobie dobrze.
	AI_Output(self, hero, "DEFAULT"); //

	Info_ClearChoices	(Info_Mod_PriesterRyan_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild	(self, GIL_STRF);

	Mod_1943_Waechter_01_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_1943_Waechter_01_NW, GIL_STRF);

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
