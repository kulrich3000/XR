INSTANCE Info_Mod_Natalia_Hi (C_INFO)
{
	npc		= Mod_1624_GUR_Natalia_MT;
	nr		= 1;
	condition	= Info_Mod_Natalia_Hi_Condition;
	information	= Info_Mod_Natalia_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Natalia_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Natalia_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Natalia_Hi_43_01"); //I'm Natalia, one of the maids of Cor Cadar.
};

INSTANCE Info_Mod_Natalia_Woher (C_INFO)
{
	npc		= Mod_1624_GUR_Natalia_MT;
	nr		= 1;
	condition	= Info_Mod_Natalia_Woher_Condition;
	information	= Info_Mod_Natalia_Woher_Info;
	permanent	= 1;
	important	= 0;
	description	= "Why were you in the colony?";
};

FUNC INT Info_Mod_Natalia_Woher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Natalia_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Natalia_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Natalia_Woher_15_00"); //Why were you in the colony?
	AI_Output(self, hero, "Info_Mod_Natalia_Woher_43_01"); //I killed a man who's been following me all along.
	AI_Output(self, hero, "Info_Mod_Natalia_Woher_43_02"); //Then I was sent here to the swamp camp and served Y' Berion and now I serve Cor Cadar.
};

INSTANCE Info_Mod_Natalia_EXIT (C_INFO)
{
	npc		= Mod_1624_GUR_Natalia_MT;
	nr		= 1;
	condition	= Info_Mod_Natalia_EXIT_Condition;
	information	= Info_Mod_Natalia_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Natalia_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Natalia_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
