INSTANCE Info_Mod_Grim_NW_Hi (C_INFO)
{
	npc		= Mod_7686_BUD_Grim_NW;
	nr		= 1;
	condition	= Info_Mod_Grim_NW_Hi_Condition;
	information	= Info_Mod_Grim_NW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Grim_NW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Grim_NW_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Grim_NW_Hi_06_00"); //Well, well...
	AI_Output(hero, self, "Info_Mod_Grim_NW_Hi_15_01"); //Grim?! So you actually made it out of the old camp... and with you a whole group of others, I see.
	AI_Output(hero, self, "Info_Mod_Grim_NW_Hi_15_02"); //I'm surprised....
	AI_Output(self, hero, "Info_Mod_Grim_NW_Hi_06_03"); //Well, if you have good friends who stick together and are there for each other, you can survive anything.
	AI_Output(hero, self, "Info_Mod_Grim_NW_Hi_15_04"); //Yes... you don't even see the strains.
	AI_Output(hero, self, "Info_Mod_Grim_NW_Hi_15_05"); //Anyway, do you know what happened?
	AI_Output(hero, self, "Info_Mod_Grim_NW_Hi_15_06"); //How could the orcs storm the camp?
	AI_Output(self, hero, "Info_Mod_Grim_NW_Hi_06_07"); //(secretly) Yes... I saw it.... Somebody murdered the guards and opened the gate.
	AI_Output(hero, self, "Info_Mod_Grim_NW_Hi_15_08"); //What? Who did it?
	AI_Output(self, hero, "Info_Mod_Grim_NW_Hi_06_09"); //Well... it was dark and hard to see... but I believe...
	AI_Output(self, hero, "Info_Mod_Grim_NW_Hi_06_10"); //(mad) it was me, wuahahaha. You don't leave good friends outside...
	AI_Output(self, hero, "Info_Mod_Grim_NW_Hi_06_11"); //(screaming) Ahhhh.

	B_LogEntry	(TOPIC_MOD_MILIZ_FREUNDFEIND, "Well, the one with the group at Dragomir was then done in an unpleasant way. Grim is always striving for the wrong role models.");

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild	(self, GIL_STRF);

	Mod_7687_GRD_Gardist_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7687_GRD_Gardist_NW, GIL_STRF);

	Mod_7688_STT_Schatten_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7688_STT_Schatten_NW, GIL_STRF);

	Mod_7689_BUD_Buddler_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7689_BUD_Buddler_NW, GIL_STRF);

	Mod_7690_STT_Schatten_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7690_STT_Schatten_NW, GIL_STRF);

	Mod_7691_BUD_Buddler_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7691_BUD_Buddler_NW, GIL_STRF);
};
