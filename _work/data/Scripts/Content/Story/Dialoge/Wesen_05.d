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
	AI_Output(self, hero, "Info_Mod_Wesen_05_Hi_10_00"); //Cokolwiek widzisz, cokolwiek slyszysz, czujesz i smakujesz, nie jest to prawda.
	AI_Output(self, hero, "Info_Mod_Wesen_05_Hi_10_01"); //Nie ma prawdy, jest tylko percepcja.
	AI_Output(self, hero, "Info_Mod_Wesen_05_Hi_10_02"); //Widzisz to, co nazywasz prawda.

	AI_StopProcessInfos	(self);
};
