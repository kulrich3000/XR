INSTANCE Info_Mod_Wesen_02_Hi (C_INFO)
{
	npc		= Monster_11026_Wesen_HALU;
	nr		= 1;
	condition	= Info_Mod_Wesen_02_Hi_Condition;
	information	= Info_Mod_Wesen_02_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wesen_02_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wesen_02_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Wesen_02_Hi_18_00"); //Kiss me again, Lord, fill me with music.

	AI_StopProcessInfos	(self);
};
