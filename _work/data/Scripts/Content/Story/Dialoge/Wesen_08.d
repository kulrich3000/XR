INSTANCE Info_Mod_Wesen_08_Hi (C_INFO)
{
	npc		= Monster_11032_Wesen_HALU;
	nr		= 1;
	condition	= Info_Mod_Wesen_08_Hi_Condition;
	information	= Info_Mod_Wesen_08_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wesen_08_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wesen_08_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Wesen_08_Hi_18_00"); //Pictures of the past glow.... or are they images of the future?

	AI_StopProcessInfos	(self);
};
