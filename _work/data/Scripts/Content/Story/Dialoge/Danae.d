INSTANCE Info_Mod_Danae_Hi (C_INFO)
{
	npc		= GardeInnos_4098_Danae;
	nr		= 1;
	condition	= Info_Mod_Danae_Hi_Condition;
	information	= Info_Mod_Danae_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Danae_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Danae_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Danae_Hi_02_00"); //Look who's here. Beliars, who already killed one of us.
	AI_Output(self, hero, "Info_Mod_Danae_Hi_02_01"); //You're too late! The others are already on the other side and will retrieve Innos's sword. Your doom is sealed.
	AI_Output(self, hero, "Info_Mod_Danae_Hi_02_02"); //When I kill you, we'll take khorinis.
	AI_Output(hero, self, "Info_Mod_Danae_Hi_15_03"); //Stop talking and let's get down to brass tacks!
	AI_Output(self, hero, "Info_Mod_Danae_Hi_02_04"); //Suit yourself!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild	(self, GIL_STRF);
};
