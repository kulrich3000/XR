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
	AI_Output(self, hero, "Info_Mod_Gerichtswache_01_AnnaProzess_11_00"); //What are you guys doing here?

	B_StartOtherRoutine	(Mod_7370_OUT_Ulrich_REL, "ATPROZESS");

	Mod_AnnaQuest = 6;

	Info_ClearChoices	(Info_Mod_Gerichtswache_01_AnnaProzess);

	if (Mod_AnnaQuestRichter == 1)
	{
		Info_AddChoice	(Info_Mod_Gerichtswache_01_AnnaProzess, "He wants me to convict Ulrich of the attempted murder.", Info_Mod_Gerichtswache_01_AnnaProzess_C);
	};

	Info_AddChoice	(Info_Mod_Gerichtswache_01_AnnaProzess, "Someone has fallen into the lake and is calling for help!", Info_Mod_Gerichtswache_01_AnnaProzess_B);
	Info_AddChoice	(Info_Mod_Gerichtswache_01_AnnaProzess, "A disturbance has arisen at the city gate!", Info_Mod_Gerichtswache_01_AnnaProzess_A);
};

FUNC VOID Info_Mod_Gerichtswache_01_AnnaProzess_C()
{
	AI_Output(hero, self, "Info_Mod_Gerichtswache_01_AnnaProzess_C_15_00"); //He wants me to convict Ulrich of the attempted murder.
	AI_Output(self, hero, "Info_Mod_Gerichtswache_01_AnnaProzess_C_11_01"); //All right, all right. That's what the judge was trying to tell us with his, uh, weird language.

	Info_ClearChoices	(Info_Mod_Gerichtswache_01_AnnaProzess);
};

FUNC VOID Info_Mod_Gerichtswache_01_AnnaProzess_B()
{
	AI_Output(hero, self, "Info_Mod_Gerichtswache_01_AnnaProzess_B_15_00"); //Someone has fallen into the lake and is calling for help!
	AI_Output(self, hero, "Info_Mod_Gerichtswache_01_AnnaProzess_B_11_01"); //So what? I'm not leaving my post for that.

	Info_ClearChoices	(Info_Mod_Gerichtswache_01_AnnaProzess);
};

FUNC VOID Info_Mod_Gerichtswache_01_AnnaProzess_A()
{
	AI_Output(hero, self, "Info_Mod_Gerichtswache_01_AnnaProzess_A_15_00"); //A disturbance has arisen at the city gate!
	AI_Output(self, hero, "Info_Mod_Gerichtswache_01_AnnaProzess_A_11_01"); //What the fuck is going on in there?

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
