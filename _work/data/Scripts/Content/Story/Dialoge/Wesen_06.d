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
	AI_Output(self, hero, "Info_Mod_Wesen_06_Hi_18_00"); //Czy jestem dziwny? A moze to Ty jestes?
	AI_Output(self, hero, "Info_Mod_Wesen_06_Hi_18_01"); //W tym dziwnym miejscu jestem bardziej normalny niz ty.
	AI_Output(self, hero, "Info_Mod_Wesen_06_Hi_18_02"); //Jestes dziwny.

	AI_StopProcessInfos	(self);
};
