INSTANCE Info_Mod_Gerichtswache_01_AnnaProzess (C_INFO)
{
	npc		= Mod_7374_OUT_Gerichtswache_01;
	nr		= 1;
	condition	= Info_Mod_Gerichtswache_01_AnnaProzess_Condition;
	information	= Info_Mod_Gerichtswache_01_AnnaProzess_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gerichtswache_01_AnnaProzess_Condition()
{
	if (Mod_AnnaQuest == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gerichtswache_01_AnnaProzess_Info()
{
	AI_Output(self, hero, "Info_Mod_Gerichtswache_01_AnnaProzess_06_00"); //Co ty tu robisz?

	B_StartOtherRoutine	(Mod_7370_OUT_Ulrich_REL, "ATPROZESS");

	Mod_AnnaQuest = 6;

	Info_ClearChoices	(Info_Mod_Gerichtswache_01_AnnaProzess);

	if (Mod_AnnaQuestRichter == 1)
	{
		Info_AddChoice	(Info_Mod_Gerichtswache_01_AnnaProzess, "Chce, abym skazal Ulricha za próbe morderstwa.", Info_Mod_Gerichtswache_01_AnnaProzess_C);
	};

	Info_AddChoice	(Info_Mod_Gerichtswache_01_AnnaProzess, "Ktos wpadl do jeziora i prosi o pomoc!", Info_Mod_Gerichtswache_01_AnnaProzess_B);
	Info_AddChoice	(Info_Mod_Gerichtswache_01_AnnaProzess, "Przy bramie miejskiej powstalo zaklócenie!", Info_Mod_Gerichtswache_01_AnnaProzess_A);
};

FUNC VOID Info_Mod_Gerichtswache_01_AnnaProzess_C()
{
	AI_Output(hero, self, "Info_Mod_Gerichtswache_01_AnnaProzess_C_15_00"); //Chce, abym skazal Ulricha za próbe morderstwa.
	AI_Output(self, hero, "Info_Mod_Gerichtswache_01_AnnaProzess_C_06_01"); //Wszystkie sluszne, wszystkie sluszne. Wydaje mi sie, ze to wlasnie ten sedzia próbowal nam powiedziec swoim, dziwnym jezykiem.

	Info_ClearChoices	(Info_Mod_Gerichtswache_01_AnnaProzess);
};

FUNC VOID Info_Mod_Gerichtswache_01_AnnaProzess_B()
{
	AI_Output(hero, self, "Info_Mod_Gerichtswache_01_AnnaProzess_B_15_00"); //Ktos wpadl do jeziora i prosi o pomoc!
	AI_Output(self, hero, "Info_Mod_Gerichtswache_01_AnnaProzess_B_06_01"); //Co wiec? Nie koncze pracy na to stanowisko.

	Info_ClearChoices	(Info_Mod_Gerichtswache_01_AnnaProzess);
};

FUNC VOID Info_Mod_Gerichtswache_01_AnnaProzess_A()
{
	AI_Output(hero, self, "Info_Mod_Gerichtswache_01_AnnaProzess_A_15_00"); //Przy bramie miejskiej powstalo zaklócenie!
	AI_Output(self, hero, "Info_Mod_Gerichtswache_01_AnnaProzess_A_06_01"); //Co sie tam dzieje?

	Info_ClearChoices	(Info_Mod_Gerichtswache_01_AnnaProzess);

	Mod_AnnaQuest_WachenWeg = 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "STADTTOR");
	B_StartOtherRoutine	(Mod_7375_OUT_Gerichtswache_02, "STADTTOR");
};

INSTANCE Info_Mod_Gerichtswache_01_EXIT (C_INFO)
{
	npc		= Mod_7374_OUT_Gerichtswache_01;
	nr		= 1;
	condition	= Info_Mod_Gerichtswache_01_EXIT_Condition;
	information	= Info_Mod_Gerichtswache_01_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gerichtswache_01_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gerichtswache_01_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
