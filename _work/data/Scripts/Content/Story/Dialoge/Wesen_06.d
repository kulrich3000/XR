INSTANCE Info_Mod_Wesen_06_Hi (C_INFO)
{
	npc		= Monster_11030_Wesen_HALU;
	nr		= 1;
	condition	= Info_Mod_Wesen_06_Hi_Condition;
	information	= Info_Mod_Wesen_06_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wesen_06_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wesen_06_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Wesen_06_Hi_10_00"); //Am I strange? Or is it you?
	AI_Output(self, hero, "Info_Mod_Wesen_06_Hi_10_01"); //In this strange place, I'm more normal than you are.
	AI_Output(self, hero, "Info_Mod_Wesen_06_Hi_10_02"); //You're weird.

	AI_StopProcessInfos	(self);
};
