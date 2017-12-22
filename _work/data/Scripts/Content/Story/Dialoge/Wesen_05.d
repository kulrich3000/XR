INSTANCE Info_Mod_Wesen_05_Hi (C_INFO)
{
	npc		= Monster_11029_Wesen_HALU;
	nr		= 1;
	condition	= Info_Mod_Wesen_05_Hi_Condition;
	information	= Info_Mod_Wesen_05_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wesen_05_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wesen_05_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Wesen_05_Hi_10_00"); //Whatever you see, whatever you hear, feel or taste, none of it is true.
	AI_Output(self, hero, "Info_Mod_Wesen_05_Hi_10_01"); //There is no truth, there is only perception.
	AI_Output(self, hero, "Info_Mod_Wesen_05_Hi_10_02"); //What you perceive is what you call truth.

	AI_StopProcessInfos	(self);
};
