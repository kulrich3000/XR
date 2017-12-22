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
	AI_Output(self, hero, "Info_Mod_Halbtoter_Hi_13_00"); //Och, nie, ty znów.
	AI_Output(self, hero, "Info_Mod_Halbtoter_Hi_13_01"); //Po zabiciu wszystkich innych, przyszedles, zeby przyniesc mi reszte.
	AI_Output(self, hero, "Info_Mod_Halbtoter_Hi_13_02"); //Przykry metalowy potwór.

	AI_StopProcessInfos	(self);
};
