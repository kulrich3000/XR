INSTANCE Info_Mod_Sendak_Hi (C_INFO)
{
	npc		= Mod_7753_BDT_Sendak_EIS;
	nr		= 1;
	condition	= Info_Mod_Sendak_Hi_Condition;
	information	= Info_Mod_Sendak_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sendak_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sendak_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Sendak_Hi_03_00"); //Oh, there you are. You have something else that belongs to us.
	AI_Output(self, hero, "Info_Mod_Sendak_Hi_03_01"); //Give me the gold you took from Aslan, and I'll tell the orcs to kill you quickly.
	AI_Output(hero, self, "Info_Mod_Sendak_Hi_15_02"); //I've already spent the gold on high-proof items, but if you find anything else with me, it's yours.
	AI_Output(self, hero, "Info_Mod_Sendak_Hi_03_03"); //Suit yourself. Soup from human intestines is what these undead prefer to eat.

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild	(self, GIL_STRF);

	Wld_InsertNpc	(UndeadOrcWarrior, "EIS_327");
	Wld_InsertNpc	(UndeadOrcWarrior, "EIS_327");
};
