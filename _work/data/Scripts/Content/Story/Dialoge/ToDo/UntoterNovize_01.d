INSTANCE Info_Mod_UntoterNovize_01_Hi (C_INFO)
{
	npc		= Mod_1995_UntoterNovize_01_NW;
	nr		= 1;
	condition	= Info_Mod_UntoterNovize_01_Hi_Condition;
	information	= Info_Mod_UntoterNovize_01_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_UntoterNovize_01_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_UntoterNovize_01_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_UntoterNovize_01_Hi_13_00"); //You're too late! Innos' guard walks among the living again!
	AI_Output(hero, self, "Info_Mod_UntoterNovize_01_Hi_15_01"); //What do you mean, you filthy spawn of hell?
	AI_Output(self, hero, "Info_Mod_UntoterNovize_01_Hi_13_02"); //The amulet is broken, and the guardsmen are free to destroy Beliar. (laughs) You won't be able to do anything! Now die!

	B_LogEntry	(TOPIC_MOD_BEL_SUCHE, "The novices are undead! They held a ritual when I came. One of them told me they freed Innos' guard. Who might that be? Anyway, the amulet is broken. I should take it to Myxir.");

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);

	Mod_1995_UntoterNovize_01_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_1995_UntoterNovize_01_NW, GIL_STRF);

	Mod_1996_UntoterNovize_02_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_1996_UntoterNovize_02_NW, GIL_STRF);

	Mod_1997_UntoterNovize_03_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_1997_UntoterNovize_03_NW, GIL_STRF);
};
