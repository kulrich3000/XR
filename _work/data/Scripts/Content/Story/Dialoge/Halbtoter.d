INSTANCE Info_Mod_Halbtoter_Hi (C_INFO)
{
	npc		= Mod_7681_ASS_Halbtoter_NW;
	nr		= 1;
	condition	= Info_Mod_Halbtoter_Hi_Condition;
	information	= Info_Mod_Halbtoter_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Halbtoter_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Halbtoter_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Halbtoter_Hi_13_00"); //Ohh, no, you again.
	AI_Output(self, hero, "Info_Mod_Halbtoter_Hi_13_01"); //After you killed everyone else, you've come to bring me the rest.
	AI_Output(self, hero, "Info_Mod_Halbtoter_Hi_13_02"); //You ugly metal monster.

	AI_StopProcessInfos	(self);
};
