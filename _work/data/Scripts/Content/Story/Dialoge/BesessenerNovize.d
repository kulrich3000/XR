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
	AI_Output(self, hero, "Info_Mod_BesessenerNovize_Hi_11_01"); //Jestes spózniony, maluch. Zabije wszystkich slugi Beliarsa i wykonam wspaniala przysluge!
	AI_Output(hero, self, "Info_Mod_BesessenerNovize_Hi_15_02"); //Przycinajmy sie do poscigu!

	AI_DrawWeapon	(hero);

	AI_Output(self, hero, "Info_Mod_BesessenerNovize_Hi_11_03"); //Dopasuj sie do siebie.

	B_LogEntry	(TOPIC_MOD_BEL_DAEMON, "Demon jest nowicjuszem z obsesja. Musze go zabic.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TURNDEMON");
};
