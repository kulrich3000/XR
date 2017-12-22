INSTANCE Info_Mod_Wesen_07_Hi (C_INFO)
{
	npc		= Monster_11031_Wesen_HALU;
	nr		= 1;
	condition	= Info_Mod_Wesen_07_Hi_Condition;
	information	= Info_Mod_Wesen_07_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wesen_07_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wesen_07_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Wesen_07_Hi_10_00"); //This place... What are you doing? What is this and who are you?

	AI_StopProcessInfos	(self);
};
