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
	AI_Output(self, hero, "Info_Mod_PriesterRyan_Hi_02_00"); //Ryan can't be disturbed right now. He's in the middle of a ceremony.

	Info_ClearChoices	(Info_Mod_PriesterRyan_Hi);

	Info_AddChoice	(Info_Mod_PriesterRyan_Hi, "Nice gun you got there.", Info_Mod_PriesterRyan_Hi_B);
	Info_AddChoice	(Info_Mod_PriesterRyan_Hi, "You're not going to stop me from doing that!", Info_Mod_PriesterRyan_Hi_A);
};

FUNC VOID Info_Mod_PriesterRyan_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_PriesterRyan_Hi_B_15_00"); //Nice gun you got there.
	AI_Output(self, hero, "Info_Mod_PriesterRyan_Hi_B_02_01"); //The Three Gods Wand is our most important relic. Every day he casts evil thoughts out of every one of our followers.

	Info_ClearChoices	(Info_Mod_PriesterRyan_Hi);

	Info_AddChoice	(Info_Mod_PriesterRyan_Hi, "Will you give it to me willingly? )", Info_Mod_PriesterRyan_Hi_D);
	Info_AddChoice	(Info_Mod_PriesterRyan_Hi, "The toothpick will do well in my collection.", Info_Mod_PriesterRyan_Hi_C);
};

FUNC VOID Info_Mod_PriesterRyan_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_PriesterRyan_Hi_A_15_00"); //You're not going to stop me from doing that!
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
	AI_Output(hero, self, "Info_Mod_PriesterRyan_Hi_D_15_00"); //Are you gonna give it to me or do I have to come get it?
	AI_Output(hero, self, "Info_Mod_PriesterRyan_Hi_D_15_01"); //If you want to get out of here alive, you should be a good boy.

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_PriesterRyan_Hi_D_02_02"); //Do the gods want to punish us? But for what?

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
		AI_Output(self, hero, "Info_Mod_PriesterRyan_Hi_D_02_03"); //You underestimate my power!
	};
};

FUNC VOID Info_Mod_PriesterRyan_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_PriesterRyan_Hi_C_15_00"); //The toothpick will do well in my collection.
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
