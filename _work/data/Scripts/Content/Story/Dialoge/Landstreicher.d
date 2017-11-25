INSTANCE Info_Mod_Landstreicher_Hi (C_INFO)
{
	npc		= Mod_7694_BDT_Bandit_NW;
	nr		= 1;
	condition	= Info_Mod_Landstreicher_Hi_Condition;
	information	= Info_Mod_Landstreicher_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Landstreicher_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Landstreicher_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Landstreicher_Hi_03_00"); //No cóz, dobrze. Pomyslelismy o wyjmowaniu farmy i jest tam ryj z workami pelnymi zlota.
	AI_Output(self, hero, "Info_Mod_Landstreicher_Hi_03_01"); //No cóz, chlopcy, co sadzisz?

	B_LogEntry	(TOPIC_MOD_MILIZ_FREUNDFEIND, "Okay, rozbójnik w Akilu... krótki i slodki.");

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild (self, GIL_STRF);

	Mod_7692_BUD_Buddler_NW.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_7692_BUD_Buddler_NW, GIL_STRF);

	Mod_7693_BUD_Buddler_NW.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_7693_BUD_Buddler_NW, GIL_STRF);

	Mod_7695_BDT_Bandit_NW.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_7695_BDT_Bandit_NW, GIL_STRF);

	Mod_7696_BDT_Bandit_NW.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_7696_BDT_Bandit_NW, GIL_STRF);
};
