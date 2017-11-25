INSTANCE Info_Mod_Viper_Hi (C_INFO)
{
	npc		= Mod_7714_BUD_Viper_OM;
	nr		= 1;
	condition	= Info_Mod_Viper_Hi_Condition;
	information	= Info_Mod_Viper_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Viper_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Viper_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Viper_Hi_02_00"); //Cóz, spójrz, kto jest tutaj.
	AI_Output(self, hero, "Info_Mod_Viper_Hi_02_01"); //Ktos wpadl gleboko w ciemnosc.
	AI_Output(self, hero, "Info_Mod_Viper_Hi_02_02"); //Co nie boisz sie jej? Powinienes byc.
	AI_Output(self, hero, "Info_Mod_Viper_Hi_02_03"); //Niech ciemnosc wieczna otacza ciebie.

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild (self, GIL_STRF);

	Mod_AMQ_Viper = 1;
};
