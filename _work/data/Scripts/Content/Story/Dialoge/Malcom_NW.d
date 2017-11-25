INSTANCE Info_Mod_Malcom_NW_Hi (C_INFO)
{
	npc		= Mod_963_PIR_Malcom_NW;
	nr		= 1;
	condition	= Info_Mod_Malcom_NW_Hi_Condition;
	information	= Info_Mod_Malcom_NW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Malcom_NW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Malcom_NW_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Malcom_NW_Hi_30_00"); //Hey, what do you want?
	AI_Output(hero, self, "Info_Mod_Malcom_NW_Hi_15_01"); //You look suspiciously like a pirate.
	AI_Output(self, hero, "Info_Mod_Malcom_NW_Hi_30_02"); //I'm one too, with my one-legged grandmother! Fierce and dangerous!
	AI_Output(hero, self, "Info_Mod_Malcom_NW_Hi_15_03"); //But without a ship...
	AI_Output(self, hero, "Info_Mod_Malcom_NW_Hi_30_04"); //Yeah, damn it! I capsized in a storm a few days ago. Now my boat's over there on the beach, by my one-eyed aunt!

	Log_CreateTopic	(TOPIC_MOD_MALCOM_GOLD, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MALCOM_GOLD, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MALCOM_GOLD, "Malcom got stranded a few days ago on the beach in front of Khorinis and lost his wallet. This is guarded by a monitor monitor.");
};

INSTANCE Info_Mod_Malcom_NW_WarumKhorinis (C_INFO)
{
	npc		= Mod_963_PIR_Malcom_NW;
	nr		= 1;
	condition	= Info_Mod_Malcom_NW_WarumKhorinis_Condition;
	information	= Info_Mod_Malcom_NW_WarumKhorinis_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you doing in Khorinis?";
};

FUNC INT Info_Mod_Malcom_NW_WarumKhorinis_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Malcom_NW_WarumKhorinis_Info()
{
	AI_Output(hero, self, "Info_Mod_Malcom_NW_WarumKhorinis_15_00"); //What are you doing in Khorinis?
	AI_Output(self, hero, "Info_Mod_Malcom_NW_WarumKhorinis_30_01"); //Business - but nothing that needs to interest you.
};

INSTANCE Info_Mod_Malcom_NW_Boot (C_INFO)
{
	npc		= Mod_963_PIR_Malcom_NW;
	nr		= 1;
	condition	= Info_Mod_Malcom_NW_Boot_Condition;
	information	= Info_Mod_Malcom_NW_Boot_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why don't you get your boat ready?";
};

FUNC INT Info_Mod_Malcom_NW_Boot_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Malcom_NW_Boot_Info()
{
	AI_Output(hero, self, "Info_Mod_Malcom_NW_Boot_15_00"); //Why don't you get your boat ready?
	AI_Output(self, hero, "Info_Mod_Malcom_NW_Boot_30_01"); //With my single-chested nurse, that's beyond salvation! But I would like to have my wallet back, otherwise I don't need to show up in my camp anymore.
};

INSTANCE Info_Mod_Malcom_NW_BeutelProblem (C_INFO)
{
	npc		= Mod_963_PIR_Malcom_NW;
	nr		= 1;
	condition	= Info_Mod_Malcom_NW_BeutelProblem_Condition;
	information	= Info_Mod_Malcom_NW_BeutelProblem_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's the problem with your bag?";
};

FUNC INT Info_Mod_Malcom_NW_BeutelProblem_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Malcom_NW_Boot)) {
		return 1;
	};
};

FUNC VOID Info_Mod_Malcom_NW_BeutelProblem_Info()
{
	AI_Output(hero, self, "Info_Mod_Malcom_NW_BeutelProblem_15_00"); //What's the problem with your bag?
	AI_Output(self, hero, "Info_Mod_Malcom_NW_BeutelProblem_30_01"); //It was somewhere in the boat when I got caught, so it was probably washed up on the beach.
	AI_Output(self, hero, "Info_Mod_Malcom_NW_BeutelProblem_30_02"); //But there's a fat monitor, and without iron between his fingers he won't ask him to piss off.
	AI_Output(self, hero, "Info_Mod_Malcom_NW_BeutelProblem_30_03"); //I can't offer you anything because I don't have anything, but if you bring me the bag, I'll see if I can show my gratitude later.

	Log_CreateTopic	(TOPIC_MOD_MALCOM_GOLD, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MALCOM_GOLD, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MALCOM_GOLD, "Malcom got stranded a few days ago on the beach in front of Khorinis and lost his wallet. This is guarded by a monitor monitor.");
};

INSTANCE Info_Mod_Malcom_NW_Piratenlager (C_INFO)
{
	npc		= Mod_963_PIR_Malcom_NW;
	nr		= 1;
	condition	= Info_Mod_Malcom_NW_Piratenlager_Condition;
	information	= Info_Mod_Malcom_NW_Piratenlager_Info;
	permanent	= 0;
	important	= 0;
	description	= "You pirates even have a camp?";
};

FUNC INT Info_Mod_Malcom_NW_Piratenlager_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Malcom_NW_Boot)) {
		return 1;
	};
};

FUNC VOID Info_Mod_Malcom_NW_Piratenlager_Info()
{
	AI_Output(hero, self, "Info_Mod_Malcom_NW_Piratenlager_15_00"); //You pirates even have a camp?
	AI_Output(self, hero, "Info_Mod_Malcom_NW_Piratenlager_30_01"); //Want to join in, or why are you so curious? But I'm not gonna tell you anything. If you want to join the pirates, you'll find them alone sooner or later.
};

INSTANCE Info_Mod_Malcom_NW_Beutel (C_INFO)
{
	npc		= Mod_963_PIR_Malcom_NW;
	nr		= 1;
	condition	= Info_Mod_Malcom_NW_Beutel_Condition;
	information	= Info_Mod_Malcom_NW_Beutel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Got your purse.";
};

FUNC INT Info_Mod_Malcom_NW_Beutel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Malcom_NW_BeutelProblem))
	&& (Npc_HasItems(hero, ItMi_Malcom_Beutel) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Malcom_NW_Beutel_Info()
{
	AI_Output(hero, self, "Info_Mod_Malcom_NW_Beutel_15_00"); //Got your purse.
	
	B_GiveInvItems	(hero, self, ItMi_Malcom_Beutel, 1);

	AI_Output(self, hero, "Info_Mod_Malcom_NW_Beutel_30_01"); //Thanks a lot, now I just have to find a way back to the camp. I hope one of my buddies will stop by here soon.

	B_LogEntry	(TOPIC_MOD_MALCOM_GOLD, "I brought Malcom his gold.");
	B_SetTopicStatus	(TOPIC_MOD_MALCOM_GOLD, LOG_SUCCESS);

	B_GivePlayerXP	(100);

	B_Göttergefallen(2, 1);
};

INSTANCE Info_Mod_Malcom_NW_EXIT (C_INFO)
{
	npc		= Mod_963_PIR_Malcom_NW;
	nr		= 1;
	condition	= Info_Mod_Malcom_NW_EXIT_Condition;
	information	= Info_Mod_Malcom_NW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Malcom_NW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Malcom_NW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
