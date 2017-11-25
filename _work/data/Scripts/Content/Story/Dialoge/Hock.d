INSTANCE Info_Mod_Hock_HaradLehrling (C_INFO)
{
	npc		= Mod_1200_SLD_Soeldner_NW;
	nr		= 1;
	condition	= Info_Mod_Hock_HaradLehrling_Condition;
	information	= Info_Mod_Hock_HaradLehrling_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hock_HaradLehrling_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_HaradLehrling3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hock_HaradLehrling_Info()
{
	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

INSTANCE Info_Mod_Hock_NahkampfJG (C_INFO)
{
	npc		= Mod_1200_SLD_Soeldner_NW;
	nr		= 1;
	condition	= Info_Mod_Hock_NahkampfJG_Condition;
	information	= Info_Mod_Hock_NahkampfJG_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello! Are you Hock?";
};

FUNC INT Info_Mod_Hock_NahkampfJG_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cord_NW_NahkampfJG))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hock_NahkampfJG_Info()
{
	AI_Output(hero, self, "Info_Mod_Hock_NahkampfJG_15_00"); //Hello! Are you Hock?
	AI_Output(self, hero, "Info_Mod_Hock_NahkampfJG_34_01"); //Of course I am. Can't I be seen?
	AI_Output(hero, self, "Info_Mod_Hock_NahkampfJG_15_02"); //Instruction from Cord. I want you to go to the Minental valley and report to the Ranger camp.
	AI_Output(self, hero, "Info_Mod_Hock_NahkampfJG_34_03"); //Uh-huh. And how do I find that?
	AI_Output(hero, self, "Info_Mod_Hock_NahkampfJG_15_04"); //Have you been to the Minental?
	AI_Output(self, hero, "Info_Mod_Hock_NahkampfJG_34_05"); //Used to be with Lee at the mercenary camp. Been a while, though.
	AI_Output(hero, self, "Info_Mod_Hock_NahkampfJG_15_06"); //Watch it. When you enter the valley, keep to the right, always along the mountains towards Alte Mine.
	AI_Output(hero, self, "Info_Mod_Hock_NahkampfJG_15_07"); //At some point you will see a passageway and a little further on a wooden watchtower.
	AI_Output(hero, self, "Info_Mod_Hock_NahkampfJG_15_08"); //There's the Ranger camp. At the entrance is Torgan. Tell him you're the new melee fighter.
	AI_Output(self, hero, "Info_Mod_Hock_NahkampfJG_34_09"); //So, am I?
	AI_Output(hero, self, "Info_Mod_Hock_NahkampfJG_15_10"); //Sure, you'll have a lot of fun.
	AI_Output(self, hero, "Info_Mod_Hock_NahkampfJG_34_11"); //Well, hopefully...

	B_LogEntry	(TOPIC_MOD_JG_NAHKAMPF, "I could win Hock as a fighter. For this, Cyrco must send one of the hunters to the farmer Onar.");

	B_StartOtherRoutine	(self, "WEG");
};

INSTANCE Info_Mod_Hock_EXIT (C_INFO)
{
	npc		= Mod_1200_SLD_Soeldner_NW;
	nr		= 1;
	condition	= Info_Mod_Hock_EXIT_Condition;
	information	= Info_Mod_Hock_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hock_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hock_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
