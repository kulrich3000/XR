INSTANCE Info_Mod_Tavor_Hi (C_INFO)
{
	npc		= Mod_7265_GUR_BaalTavor_OGY;
	nr		= 1;
	condition	= Info_Mod_Tavor_Hi_Condition;
	information	= Info_Mod_Tavor_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Tavor_Hi_Condition()
{
	if (Mod_NL_UOS >= 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tavor_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Tavor_Hi_12_00"); //Thank you for saving me.
	AI_Output(self, hero, "Info_Mod_Tavor_Hi_12_01"); //We are weakened and will stay here for a while until you reach the exit and make sure that we can safely reach the free world.
};

INSTANCE Info_Mod_Tavor_EXIT (C_INFO)
{
	npc		= Mod_7265_GUR_BaalTavor_OGY;
	nr		= 1;
	condition	= Info_Mod_Tavor_EXIT_Condition;
	information	= Info_Mod_Tavor_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Tavor_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Tavor_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
