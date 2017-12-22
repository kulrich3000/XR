INSTANCE Info_Mod_UndeadOrcShamane_OT_Hi (C_INFO)
{
	npc		= Mod_10039_ORC_UndeadShamane_OT;
	nr		= 1;
	condition	= Info_Mod_UndeadOrcShamane_OT_Hi_Condition;
	information	= Info_Mod_UndeadOrcShamane_OT_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_UndeadOrcShamane_OT_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_UndeadOrcShamane_OT_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_UndeadOrcShamane_OT_Hi_18_00"); //You're here too late.
	AI_Output(self, hero, "Info_Mod_UndeadOrcShamane_OT_Hi_18_01"); //The sword that unites the power of the three gods, it is broken into pieces... as I will crush your body.
	AI_Output(hero, self, "Info_Mod_UndeadOrcShamane_OT_Hi_15_02"); //A dried-up corpse like you will certainly not succeed... any more than we did when we first met.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};
