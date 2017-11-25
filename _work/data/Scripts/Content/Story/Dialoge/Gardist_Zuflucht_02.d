INSTANCE Info_Mod_Gardist_Zuflucht_02_Hi (C_INFO)
{
	npc		= Mod_1918_GRD_Gardist_MT;
	nr		= 1;
	condition	= Info_Mod_Gardist_Zuflucht_02_Hi_Condition;
	information	= Info_Mod_Gardist_Zuflucht_02_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce, zebys poszedl do obozu kultowego.";
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
	AI_Output(hero, self, "Info_Mod_Gardist_Zuflucht_02_Hi_15_00"); //Chce, zebys poszedl do obozu kultowego.
	AI_Output(self, hero, "Info_Mod_Gardist_Zuflucht_02_Hi_13_01"); //Dobrze, od razu bede w drodze.

	B_StartOtherRoutine	(self, "PSICAMP");

	Mod_AL_ZufluchtCounter += 1;

	if (Mod_AL_ZufluchtCounter == 7) {
		B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "Poinformowalem wszystkich strazników. Teraz powinienem udac sie do obozu bagiennego.");
	} else {
		B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "Poinformowalem sanktuarium. Przejdzmy do nastepnego.");
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
