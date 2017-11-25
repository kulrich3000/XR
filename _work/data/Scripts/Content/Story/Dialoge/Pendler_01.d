INSTANCE Info_Mod_Pendler_01_Hi (C_INFO)
{
	npc		= Mod_7706_OUT_Pendler_REL;
	nr		= 1;
	condition	= Info_Mod_Pendler_01_Hi_Condition;
	information	= Info_Mod_Pendler_01_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "What kind of troop are you?";
};

FUNC INT Info_Mod_Pendler_01_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Pendler_01_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Pendler_01_Hi_15_00"); //What kind of troop are you?
	AI_Output(self, hero, "Info_Mod_Pendler_01_Hi_01_01"); //We are the fools who were ordered by Anselm to transport the proceeds of our mine into town.
	AI_Output(self, hero, "Info_Mod_Pendler_01_Hi_01_02"); //But we're still lucky.
	AI_Output(self, hero, "Info_Mod_Pendler_01_Hi_01_03"); //I don't want to trade with the poor bastards who are now allowed to work in the mine.
};

INSTANCE Info_Mod_Pendler_01_WoMine (C_INFO)
{
	npc		= Mod_7706_OUT_Pendler_REL;
	nr		= 1;
	condition	= Info_Mod_Pendler_01_WoMine_Condition;
	information	= Info_Mod_Pendler_01_WoMine_Info;
	permanent	= 0;
	important	= 0;
	description	= "Which way to the mine?";
};

FUNC INT Info_Mod_Pendler_01_WoMine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pendler_01_Hi))
	&& ((Wld_IsTime(07,00,08,00))
	|| (Wld_IsTime(18,00,19,00)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pendler_01_WoMine_Info()
{
	AI_Output(hero, self, "Info_Mod_Pendler_01_WoMine_15_00"); //Which way to the mine?

	if (Wld_IsTime(07,00,08,00))
	{
		AI_Output(self, hero, "Info_Mod_Pendler_01_WoMine_01_01"); //Why don't you just come with me, we're on our way over there right now.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Pendler_01_WoMine_01_02"); //We're on our way into town right now, so you have to go the other way.
		AI_Output(self, hero, "Info_Mod_Pendler_01_WoMine_01_03"); //You'd have to find enough signposts to lead you there.
		AI_Output(self, hero, "Info_Mod_Pendler_01_WoMine_01_04"); //Otherwise, wait until we get back there, then you can come with us.
	};
};

INSTANCE Info_Mod_Pendler_01_EXIT (C_INFO)
{
	npc		= Mod_7706_OUT_Pendler_REL;
	nr		= 1;
	condition	= Info_Mod_Pendler_01_EXIT_Condition;
	information	= Info_Mod_Pendler_01_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Pendler_01_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Pendler_01_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
