INSTANCE Info_Mod_Gardist_Zuflucht_02_Hi (C_INFO)
{
	npc		= Mod_1918_GRD_Gardist_MT;
	nr		= 1;
	condition	= Info_Mod_Gardist_Zuflucht_02_Hi_Condition;
	information	= Info_Mod_Gardist_Zuflucht_02_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want you to go to the cult camp.";
};

FUNC INT Info_Mod_Gardist_Zuflucht_02_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_GotoZufluchten))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gardist_Zuflucht_02_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Gardist_Zuflucht_02_Hi_15_00"); //I want you to go to the cult camp.
	AI_Output(self, hero, "Info_Mod_Gardist_Zuflucht_02_Hi_13_01"); //All right, I'll be on my way right away.

	B_StartOtherRoutine	(self, "PSICAMP");

	Mod_AL_ZufluchtCounter += 1;

	if (Mod_AL_ZufluchtCounter == 7) {
		B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "I've informed all the guards. Now I should go to the swamp camp.");
	} else {
		B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "I've informed a sanctuary. Let's move on to the next one.");
	};
};

INSTANCE Info_Mod_Gardist_Zuflucht_02_EXIT (C_INFO)
{
	npc		= Mod_1918_GRD_Gardist_MT;
	nr		= 1;
	condition	= Info_Mod_Gardist_Zuflucht_02_EXIT_Condition;
	information	= Info_Mod_Gardist_Zuflucht_02_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gardist_Zuflucht_02_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gardist_Zuflucht_02_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
