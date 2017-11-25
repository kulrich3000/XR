INSTANCE Info_Mod_Ryan_Hi (C_INFO)
{
	npc		= Mod_1942_Ryan_NW;
	nr		= 1;
	condition	= Info_Mod_Ryan_Hi_Condition;
	information	= Info_Mod_Ryan_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ryan_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ryan_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Ryan_Hi_36_00"); //Widzialam, jak Pan przyszedl.
	AI_Output(hero, self, "Info_Mod_Ryan_Hi_15_01"); //Przecenilas swoja gre. Demonicy przywolujacy demonów sa wam szaleni.
	AI_Output(self, hero, "Info_Mod_Ryan_Hi_36_02"); //Myslalem równiez o tym. A jednak czuje we mnie moc bogów. Wiem, ze nie moge Ci przegrac.
	AI_Output(hero, self, "Info_Mod_Ryan_Hi_15_03"); //Jesli nie mylisz sie.
	AI_Output(self, hero, "Info_Mod_Ryan_Hi_36_04"); //(rosnace) Najpierw cie zniszcze, a potem moje nastepne bedzie rosnac bez konca!

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
