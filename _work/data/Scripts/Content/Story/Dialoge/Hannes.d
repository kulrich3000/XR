INSTANCE Info_Mod_Hannes_Hi (C_INFO)
{
	npc		= Mod_7591_OUT_Hannes_REL;
	nr		= 1;
	condition	= Info_Mod_Hannes_Hi_Condition;
	information	= Info_Mod_Hannes_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hannes_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hannes_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Hannes_Hi_06_00"); //Great! Parfait! Such a thing can only be conceived by a master. Look at him, look at him!
	AI_Output(self, hero, "Info_Mod_Hannes_Hi_06_01"); //This man speaks true, everything fits like that, pardon me, the fist on the eye!
	AI_Output(self, hero, "Info_Mod_Hannes_Hi_06_02"); //The introduction of contraction will affect theatre life for decades to come, so what do I say, a new stage poetry phase.
	AI_Output(self, hero, "Info_Mod_Hannes_Hi_06_03"); //We are, in a way, witnessing an historic moment, exactement!
};

INSTANCE Info_Mod_Hannes_EXIT (C_INFO)
{
	npc		= Mod_7591_OUT_Hannes_REL;
	nr		= 1;
	condition	= Info_Mod_Hannes_EXIT_Condition;
	information	= Info_Mod_Hannes_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hannes_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hannes_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
