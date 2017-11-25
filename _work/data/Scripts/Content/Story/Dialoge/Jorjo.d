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
	AI_Output(self, hero, "Info_Mod_Jorjo_Hi_14_00"); //Jak sie tu dostales? Smok mial cie zabic!
	AI_Output(hero, self, "Info_Mod_Jorjo_Hi_15_01"); //Wiele osób juz o tym mówilo.
	AI_Output(self, hero, "Info_Mod_Jorjo_Hi_14_02"); //Wtedy bede musial zajac sie Toba.

	CreateInvItems	(self, ItWr_AxtAlmanach_02, 1);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};
