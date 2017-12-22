INSTANCE Info_Mod_Gunram_Hi (C_INFO)
{
	npc		= GardeBeliars_1993_Gunram;
	nr		= 1;
	condition	= Info_Mod_Gunram_Hi_Condition;
	information	= Info_Mod_Gunram_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gunram_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gunram_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Gunram_Hi_14_00"); //Huh? How did you get here?
	AI_Output(hero, self, "Info_Mod_Gunram_Hi_15_01"); //Just coincidence!
	AI_Output(self, hero, "Info_Mod_Gunram_Hi_14_02"); //A joker! I hate jokes!

	CreateInvItems	(self, ItWr_AxtAlmanach_05, 1);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};
