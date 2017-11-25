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
	AI_Output(self, hero, "Info_Mod_Landstreicher_Hi_03_00"); //Well, well. We thought about taking out the farm and there's a snout with the bags full of gold.
	AI_Output(self, hero, "Info_Mod_Landstreicher_Hi_03_01"); //Well, boys, what do you think?

	B_LogEntry	(TOPIC_MOD_MILIZ_FREUNDFEIND, "Okay, highwayman at Akil's... short and sweet.");

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
