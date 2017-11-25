INSTANCE Info_Mod_Jorjo_Hi (C_INFO)
{
	npc		= GardeBeliars_1990_Jorjo;
	nr		= 1;
	condition	= Info_Mod_Jorjo_Hi_Condition;
	information	= Info_Mod_Jorjo_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jorjo_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jorjo_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Jorjo_Hi_14_00"); //How did you get here? Dragon was supposed to kill you!
	AI_Output(hero, self, "Info_Mod_Jorjo_Hi_15_01"); //Many people have already said that.
	AI_Output(self, hero, "Info_Mod_Jorjo_Hi_14_02"); //Then I'll have to take care of you.

	CreateInvItems	(self, ItWr_AxtAlmanach_02, 1);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};
