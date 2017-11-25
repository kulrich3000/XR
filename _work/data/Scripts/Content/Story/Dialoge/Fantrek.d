INSTANCE Info_Mod_Fantrek_Hi (C_INFO)
{
	npc		= GardeBeliars_1991_Fantrek;
	nr		= 1;
	condition	= Info_Mod_Fantrek_Hi_Condition;
	information	= Info_Mod_Fantrek_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Fantrek_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Fantrek_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Fantrek_Hi_14_00"); //(laughs) You're too late, the others have already moved on, and I own the almanac. You have come far, but you will fail because of me!
	AI_Output(hero, self, "Info_Mod_Fantrek_Hi_15_01"); //Let's get down to brass tacks!
	AI_Output(self, hero, "Info_Mod_Fantrek_Hi_14_02"); //Suit yourself!

	CreateInvItems	(self, ItWr_AxtAlmanach_03, 1);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild	(self, GIL_STRF);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};
