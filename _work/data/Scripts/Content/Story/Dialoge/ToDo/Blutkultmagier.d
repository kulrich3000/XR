INSTANCE Info_Mod_Blutkultmagier_Hi (C_INFO)
{
	npc		= Mod_4097_BlutkultMagier_NW;
	nr		= 1;
	condition	= Info_Mod_Blutkultmagier_Hi_Condition;
	information	= Info_Mod_Blutkultmagier_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Blutkultmagier_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Blutkultmagier_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Blutkultmagier_Hi_13_00"); //Ahhhh. Look who's here. The man who wants to get the key to save the water magicians from the Innos' Guard.
	AI_Output(hero, self, "Info_Mod_Blutkultmagier_Hi_15_01"); //How do you know that?
	AI_Output(self, hero, "Info_Mod_Blutkultmagier_Hi_13_02"); //(laughs) You fool. The guard and we made a pact. In return, we support them and they decimate the poor wrestlers of Adanos and give us access to victims for our bloody rituals.
	AI_Output(self, hero, "Info_Mod_Blutkultmagier_Hi_13_03"); //We stole the key for them, and the rest of them will retrieve Inno's sword with it. I'm going to stop you so you don't interfere.
	AI_Output(hero, self, "Info_Mod_Blutkultmagier_Hi_15_04"); //Come here.
	AI_Output(self, hero, "Info_Mod_Blutkultmagier_Hi_13_05"); //Soon your head will be served on a tray of guards. DIE, UNBELIEVER!

	AI_StopProcessInfos	(self);

	Mod_4092_BlutkultKrieger_NW.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_4092_BlutkultKrieger_NW, GIL_STRF);

	Mod_4093_BlutkultKrieger_NW.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_4093_BlutkultKrieger_NW, GIL_STRF);

	Mod_4094_BlutkultKrieger_NW.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_4094_BlutkultKrieger_NW, GIL_STRF);

	Mod_4095_BlutkultKrieger_NW.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_4095_BlutkultKrieger_NW, GIL_STRF);

	Mod_4096_BlutkultKrieger_NW.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_4096_BlutkultKrieger_NW, GIL_STRF);

	Mod_4097_BlutkultMagier_NW.guild = GIL_STRF;
	Npc_SetTrueGuild (Mod_4097_BlutkultMagier_NW, GIL_STRF);
};
