INSTANCE Info_Mod_Dar_Miguel (C_INFO)
{
	npc		= Mod_782_SLD_Dar_MT;
	nr		= 1;
	condition	= Info_Mod_Dar_Miguel_Condition;
	information	= Info_Mod_Dar_Miguel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dar_Miguel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Miguel_Aufgabe3))
	&& (Npc_HasItems(hero, ItPo_MiguelForDar) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dar_Miguel_Info()
{
	AI_Output(self, hero, "Info_Mod_Dar_Miguel_03_00"); //Hey, what are you doing here?! Or will you bring me the merchandise from the bandits?
	AI_Output(hero, self, "Info_Mod_Dar_Miguel_15_01"); //Um, yeah, I should.
	AI_Output(self, hero, "Info_Mod_Dar_Miguel_03_02"); //Come on, bring the potion.

	B_GiveInvItems	(hero, self, ItPo_MiguelForDar, 1);

	AI_Output(self, hero, "Info_Mod_Dar_Miguel_03_03"); //Well, then, I suppose...

	CreateInvItems	(self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);

	AI_Output(hero, self, "Info_Mod_Dar_Miguel_15_04"); //Uh...
	AI_Output(self, hero, "Info_Mod_Dar_Miguel_03_05"); //Buaahh, really cool stuff, dig in hard. With something like that, I want to be the libest dn gaaanzn Tlg...

	AI_StopProcessInfos	(self);

	AI_PlayAni	(self, "T_DANCE_01");

	AI_PlayAni	(self, "T_STAND_2_SLEEPGROUND");
	
	B_LogEntry	(TOPIC_MOD_BDT_FLIEGENPILZLURKERSCHLEIM, "That's how the brew itself slurps empty? What are you doing? It's certainly not healthy...");
};

INSTANCE Info_Mod_Dar_EXIT (C_INFO)
{
	npc		= Mod_782_SLD_Dar_MT;
	nr		= 1;
	condition	= Info_Mod_Dar_EXIT_Condition;
	information	= Info_Mod_Dar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Dar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
