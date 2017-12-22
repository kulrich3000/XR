INSTANCE Info_Mod_Ork_Hi (C_INFO)
{
	npc		= Mod_10042_Orc_Ork_REL;
	nr		= 1;
	condition	= Info_Mod_Ork_Hi_Condition;
	information	= Info_Mod_Ork_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ork_Hi_Condition()
{
	if (Npc_IsDead(Mod_7703_OUT_Froppi_REL))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ork_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Ork_Hi_18_00"); //Now he's actually dead. What am I gonna do now?
	AI_Output(hero, self, "Info_Mod_Ork_Hi_15_01"); //You are free! You can do whatever you want.
	AI_Output(self, hero, "Info_Mod_Ork_Hi_18_02"); //Oh, yeah? And what do you do when you're free?
	AI_Output(hero, self, "Info_Mod_Ork_Hi_15_03"); //Everything.
	AI_Output(self, hero, "Info_Mod_Ork_Hi_18_04"); //Sounds terribly complicated.
	AI_Output(self, hero, "Info_Mod_Ork_Hi_18_05"); //I'd rather wait to see if father doesn't get up after all, then we can keep looking.
};

INSTANCE Info_Mod_Ork_EXIT (C_INFO)
{
	npc		= Mod_10042_Orc_Ork_REL;
	nr		= 1;
	condition	= Info_Mod_Ork_EXIT_Condition;
	information	= Info_Mod_Ork_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ork_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ork_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
