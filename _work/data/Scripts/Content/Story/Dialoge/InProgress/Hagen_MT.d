INSTANCE Info_Mod_Hagen_MT_Hi (C_INFO)
{
	npc		= Mod_7698_PAL_Hagen_MT;
	nr		= 1;
	condition	= Info_Mod_Hagen_MT_Hi_Condition;
	information	= Info_Mod_Hagen_MT_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_MT_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hagen_MT_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Hagen_MT_Hi_06_00"); //Now that I'm standing in front of you, may I assume it didn't go quite as well?
	AI_Output(hero, self, "Info_Mod_Hagen_MT_Hi_15_01"); //You here? Ahh, a teleport spell, I understand.
	AI_Output(hero, self, "Info_Mod_Hagen_MT_Hi_15_02"); //Yes, Hymir was rather annoyed about writing, as well as the fact that Andre is no longer among the living.
	AI_Output(self, hero, "Info_Mod_Hagen_MT_Hi_06_03"); //Well, that's what I was expecting.
	AI_Output(self, hero, "Info_Mod_Hagen_MT_Hi_06_04"); //Therefore I hope to be able to clarify the matter in a personal conversation with Hymir.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATHYMIR");
};

INSTANCE Info_Mod_Hagen_MT_EXIT (C_INFO)
{
	npc		= Mod_7698_PAL_Hagen_MT;
	nr		= 1;
	condition	= Info_Mod_Hagen_MT_EXIT_Condition;
	information	= Info_Mod_Hagen_MT_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hagen_MT_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hagen_MT_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
