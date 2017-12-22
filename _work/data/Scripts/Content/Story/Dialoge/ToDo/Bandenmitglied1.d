INSTANCE Info_Mod_Bandenmitglied1_Hi (C_INFO)
{
	npc		= Mod_1892_NONE_Bandenmitglied1_NW;
	nr		= 1;
	condition	= Info_Mod_Bandenmitglied1_Hi_Condition;
	information	= Info_Mod_Bandenmitglied1_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Bandenmitglied1_Hi_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Bandenchef_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bandenmitglied1_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Bandenmitglied1_Hi_15_00"); //What are you doing here?
	AI_Output(self, hero, "Info_Mod_Bandenmitglied1_Hi_06_01"); //What business is it of yours?
	AI_Output(hero, self, "Info_Mod_Bandenmitglied1_Hi_15_02"); //Where's your boss?
	AI_Output(self, hero, "Info_Mod_Bandenmitglied1_Hi_06_03"); //I don't think I'm gonna tell you.
	AI_Output(hero, self, "Info_Mod_Bandenmitglied1_Hi_15_04"); //Then I'll have to beat it out of you.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_NONE, 0);
};

INSTANCE Info_Mod_Bandenmitglied1_Umgehauen (C_INFO)
{
	npc		= Mod_1892_NONE_Bandenmitglied1_NW;
	nr		= 1;
	condition	= Info_Mod_Bandenmitglied1_Umgehauen_Condition;
	information	= Info_Mod_Bandenmitglied1_Umgehauen_Info;
	permanent	= 0;
	important	= 0;
	description	= "What now?";
};

FUNC INT Info_Mod_Bandenmitglied1_Umgehauen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bandenmitglied1_Hi))
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bandenmitglied1_Umgehauen_Info()
{
	AI_Output(hero, self, "Info_Mod_Bandenmitglied1_Umgehauen_15_00"); //What now?
	AI_Output(self, hero, "Info_Mod_Bandenmitglied1_Umgehauen_06_01"); //I'll tell you everything, but let me go.
	AI_Output(self, hero, "Info_Mod_Bandenmitglied1_Umgehauen_06_02"); //My boss went to the red lantern. However, you will only meet him there at night.
	AI_Output(hero, self, "Info_Mod_Bandenmitglied1_Umgehauen_15_03"); //See, there you go.

	B_LogEntry	(TOPIC_MOD_RAMIREZ_BANDE, "A gang member told me that the gang leader can be found by the red lantern at night.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Bandenmitglied1_EXIT (C_INFO)
{
	npc		= Mod_1892_NONE_Bandenmitglied1_NW;
	nr		= 1;
	condition	= Info_Mod_Bandenmitglied1_EXIT_Condition;
	information	= Info_Mod_Bandenmitglied1_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bandenmitglied1_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bandenmitglied1_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
