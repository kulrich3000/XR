INSTANCE Info_Mod_Blutkultkrieger_Hi (C_INFO)
{
	npc		= Mod_4092_BlutkultKrieger_NW;
	nr		= 1;
	condition	= Info_Mod_Blutkultkrieger_Hi_Condition;
	information	= Info_Mod_Blutkultkrieger_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Blutkultkrieger_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Blutkultkrieger_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Blutkultkrieger_Hi_13_00"); //What are you doing here, kid?
	AI_Output(hero, self, "Info_Mod_Blutkultkrieger_Hi_15_01"); //I'm here to split your and your friends' skulls.
	AI_Output(self, hero, "Info_Mod_Blutkultkrieger_Hi_13_02"); //(laughs) Haahahahahaha. You think you have a chance against us? You're wrong, kid! STIRB!

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
