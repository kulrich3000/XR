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
	AI_Output(self, hero, "Info_Mod_Reinhold_Hi_14_00"); //Nie ma takiej rzeczy. Jak udalo Ci sie to zrobic tak daleko? Do tej pory powinienes umrzec!
	AI_Output(hero, self, "Info_Mod_Reinhold_Hi_15_01"); //Przybywalo wielu z Was, a ja je wszystkie zamienilem!
	AI_Output(self, hero, "Info_Mod_Reinhold_Hi_14_02"); //Wtedy bedzie to sprawiedliwy pojedynek!

	CreateInvItems	(self, ItWr_AxtAlmanach_04, 1);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};
