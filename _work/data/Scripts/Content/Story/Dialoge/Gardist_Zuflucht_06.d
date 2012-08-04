INSTANCE Info_Mod_Gardist_Zuflucht_06_Hi (C_INFO)
{
	npc		= Mod_1922_GRD_Gardist_MT;
	nr		= 1;
	condition	= Info_Mod_Gardist_Zuflucht_06_Hi_Condition;
	information	= Info_Mod_Gardist_Zuflucht_06_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Du sollst ins Sektenlager gehen.";
};

FUNC INT Info_Mod_Gardist_Zuflucht_06_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_GotoZufluchten))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gardist_Zuflucht_06_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Gardist_Zuflucht_06_Hi_15_00"); //Du sollst ins Sektenlager gehen.
	AI_Output(self, hero, "Info_Mod_Gardist_Zuflucht_06_Hi_04_01"); //In Ordnung, ich mach mich sofort auf den Weg.

	B_StartOtherRoutine	(self, "PSICAMP");

	Mod_AL_ZufluchtCounter += 1;

	if (Mod_AL_ZufluchtCounter == 7)
	{
		B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "Ich hab' alle Gardisten informiert. Jetzt sollte ich zum Sumpflager aufbrechen.");
	};
};

INSTANCE Info_Mod_Gardist_Zuflucht_06_EXIT (C_INFO)
{
	npc		= Mod_1922_GRD_Gardist_MT;
	nr		= 1;
	condition	= Info_Mod_Gardist_Zuflucht_06_EXIT_Condition;
	information	= Info_Mod_Gardist_Zuflucht_06_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gardist_Zuflucht_06_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gardist_Zuflucht_06_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};