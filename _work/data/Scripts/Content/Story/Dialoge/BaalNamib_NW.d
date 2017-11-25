INSTANCE Info_Mod_Namib_NW_Irdorath3 (C_INFO)
{
	npc		= Mod_7456_GUR_BaalNamib_NW;
	nr		= 1;
	condition	= Info_Mod_Namib_NW_Irdorath3_Condition;
	information	= Info_Mod_Namib_NW_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "I'm sorry, but it seems we're too many.";
};

FUNC INT Info_Mod_Namib_NW_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_NamibDabei == 1)
	&& (Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_NW_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_NW_Irdorath3_15_00"); //I'm sorry, but it seems we're too many. I can't take you with me.
	AI_Output(self, hero, "Info_Mod_Namib_NW_Irdorath3_02_01"); //Too bad. I'll go back to the camp.

	Mod_NamibDabei = 3;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Namib_NW_EXIT (C_INFO)
{
	npc		= Mod_7456_GUR_BaalNamib_NW;
	nr		= 1;
	condition	= Info_Mod_Namib_NW_EXIT_Condition;
	information	= Info_Mod_Namib_NW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Namib_NW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Namib_NW_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Namib_NW_EXIT_02_00"); //Towards the goal!

	AI_StopProcessInfos	(self);
};
