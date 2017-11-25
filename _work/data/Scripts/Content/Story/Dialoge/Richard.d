INSTANCE Info_Mod_Richard_Hi (C_INFO)
{
	npc		= Mod_7409_OUT_Richard_EIS;
	nr		= 1;
	condition	= Info_Mod_Richard_Hi_Condition;
	information	= Info_Mod_Richard_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Richard_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Richard_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Richard_Hi_12_00"); //Who the hell are you and why are you killing all my friends?
	AI_Output(hero, self, "Info_Mod_Richard_Hi_15_01"); //Your friend Cirio made the mistake of seeing me as food, and now HE is food for the worms, isn't he funny?
	AI_Output(self, hero, "Info_Mod_Richard_Hi_12_02"); //Cirio is not a great loss, he has done his job, and now that you've killed all my friends, more of the woman remains for me.
	AI_Output(hero, self, "Info_Mod_Richard_Hi_15_03"); //I just wanted to cut your head off and hang it on the wall, so let's start.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TRANSFORM");
};

INSTANCE Info_Mod_Richard_EXIT (C_INFO)
{
	npc		= Mod_7409_OUT_Richard_EIS;
	nr		= 1;
	condition	= Info_Mod_Richard_EXIT_Condition;
	information	= Info_Mod_Richard_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Richard_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Richard_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
