INSTANCE Info_Mod_BesessenerNovize_Hi (C_INFO)
{
	npc		= Mod_4015_SNOV_BesessenerNovize_MT;
	nr		= 1;
	condition	= Info_Mod_BesessenerNovize_Hi_Condition;
	information	= Info_Mod_BesessenerNovize_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gotcha, demon!";
};

FUNC INT Info_Mod_BesessenerNovize_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_BesessenerNovize_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_BesessenerNovize_Hi_15_00"); //Gotcha, demon!
	AI_Output(self, hero, "Info_Mod_BesessenerNovize_Hi_01_01"); //You're late, little man. I will kill all Beliars servants and do my masters a great service!
	AI_Output(hero, self, "Info_Mod_BesessenerNovize_Hi_15_02"); //Let's cut to the chase!

	AI_DrawWeapon	(hero);

	AI_Output(self, hero, "Info_Mod_BesessenerNovize_Hi_01_03"); //Suit yourself.

	B_LogEntry	(TOPIC_MOD_BEL_DAEMON, "The demon is an obsessed novice. I have to kill him.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TURNDEMON");
};
