INSTANCE Info_Mod_Reinhold_Hi (C_INFO)
{
	npc		= GardeBeliars_1992_Reinhold;
	nr		= 1;
	condition	= Info_Mod_Reinhold_Hi_Condition;
	information	= Info_Mod_Reinhold_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Reinhold_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Reinhold_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Reinhold_Hi_14_00"); //There is no such thing. How did you make it this far? You should have been dead by now!
	AI_Output(hero, self, "Info_Mod_Reinhold_Hi_15_01"); //There's been a lot of you coming, and I swept them all away!
	AI_Output(self, hero, "Info_Mod_Reinhold_Hi_14_02"); //Then this will be a fair duel!

	CreateInvItems	(self, ItWr_AxtAlmanach_04, 1);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};
