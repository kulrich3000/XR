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
	AI_Output(self, hero, "Info_Mod_UntoterNovize_01_Hi_13_00"); //Jestes za pózno! Straznik Innos znowu idzie miedzy zyjacymi!
	AI_Output(hero, self, "Info_Mod_UntoterNovize_01_Hi_15_01"); //Co masz na mysli, brudny tarlo piekla?
	AI_Output(self, hero, "Info_Mod_UntoterNovize_01_Hi_13_02"); //Amulet jest zepsuty, a straznicy moga swobodnie zniszczyc Beliara. (smiech) Nie bedziesz w stanie nic zrobic! Teraz umrzec!

	B_LogEntry	(TOPIC_MOD_BEL_SUCHE, "Nowicjusze sa nieumarli! Kiedy przyjechalem, odbyli rytual. Jeden z nich powiedzial mi, ze wyzwolili straz Innosów. Kto moze to byc? W kazdym razie amulet jest zepsuty. Powinienem ja zabrac do Myxiru.");

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);

	Mod_1995_UntoterNovize_01_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_1995_UntoterNovize_01_NW, GIL_STRF);

	Mod_1996_UntoterNovize_02_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_1996_UntoterNovize_02_NW, GIL_STRF);

	Mod_1997_UntoterNovize_03_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_1997_UntoterNovize_03_NW, GIL_STRF);
};
