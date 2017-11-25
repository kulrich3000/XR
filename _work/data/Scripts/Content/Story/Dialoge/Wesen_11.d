INSTANCE Info_Mod_Wesen_11_Hi (C_INFO)
{
	npc		= Monster_11035_Wesen_HALU;
	nr		= 1;
	condition	= Info_Mod_Wesen_11_Hi_Condition;
	information	= Info_Mod_Wesen_11_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wesen_11_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wesen_11_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Wesen_11_Hi_18_00"); //The sea is actually just a big lake and society... just a great individual.

	AI_StopProcessInfos	(self);
};
