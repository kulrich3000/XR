INSTANCE Info_Mod_Greg_DI_Hi (C_INFO)
{
	npc		= Mod_1541_PIR_Greg_DI;
	nr		= 1;
	condition	= Info_Mod_Greg_DI_Hi_Condition;
	information	= Info_Mod_Greg_DI_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_DI_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Greg_DI_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_DI_Hi_01_00"); //I didn't think you'd wake up at all. I guess that was a little too much last night.
	AI_Output(self, hero, "Info_Mod_Greg_DI_Hi_01_01"); //Now you're gonna work for your grog.
	AI_Output(hero, self, "Info_Mod_Greg_DI_Hi_15_02"); //What am I supposed to do?
	AI_Output(self, hero, "Info_Mod_Greg_DI_Hi_01_03"); //Well, we're on a treasure hunt here, so find the treasure. Go to the caves and take a look around.
	AI_Output(self, hero, "Info_Mod_Greg_DI_Hi_01_04"); //You'll get some new armor first.

	CreateInvItems	(self, ITAR_PIR_M_Addon, 1);
	B_GiveInvItems	(self, hero, ITAR_PIR_M_Addon, 1);

	AI_Output(self, hero, "Info_Mod_Greg_DI_Hi_01_07"); //Let's get going!
	AI_Output(hero, self, "Info_Mod_Greg_DI_Hi_15_06"); //Aye, aye Captain!

	Log_CreateTopic	(TOPIC_MOD_PIRATEN_DI,	LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_PIRATEN_DI, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_PIRATEN_DI, "Greg hired me to search the caves for the treasure.");
};

INSTANCE Info_Mod_Greg_DI_Skelett (C_INFO)
{
	npc		= Mod_1541_PIR_Greg_DI;
	nr		= 1;
	condition	= Info_Mod_Greg_DI_Skelett_Condition;
	information	= Info_Mod_Greg_DI_Skelett_Info;
	permanent	= 0;
	important	= 0;
	description	= "There are difficulties.";
};

FUNC INT Info_Mod_Greg_DI_Skelett_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_DI_Hi))
	&& (Mod_HatSkeletonBook_Gelesen == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_DI_SKelett_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_DI_Skelett_15_00"); //There are difficulties.
	AI_Output(self, hero, "Info_Mod_Greg_DI_Skelett_01_01"); //Trouble? What kind of trouble?!
	AI_Output(hero, self, "Info_Mod_Greg_DI_Skelett_15_02"); //In one of the caves I was attacked by a dead pirate.
	AI_Output(self, hero, "Info_Mod_Greg_DI_Skelett_01_03"); //Have you been drinking too much rum? How's a dead pirate going to attack you?
	AI_Output(hero, self, "Info_Mod_Greg_DI_Skelett_15_04"); //He had this book with him. It says that they broke an oath on Adanos, with which they swore faithfully to their captain.

	B_GiveInvItems	(hero, self, ItWr_BookFromSkeleton, 1);

	AI_Output(hero, self, "Info_Mod_Greg_DI_Skelett_15_05"); //As a result, they were cursed to guard the treasure of this island forever.
	AI_Output(self, hero, "Info_Mod_Greg_DI_Skelett_01_06"); //Pirate spirits? Well, that's an adventure!

	B_UseItem	(self, ItWr_BookFromSkeleton);

	AI_Output(self, hero, "Info_Mod_Greg_DI_SKelett_01_07"); //According to what is written in the logbook, the treasure must be huge!
	AI_Output(self, hero, "Info_Mod_Greg_DI_Skelett_01_08"); //I'll make some arrangements. As far as I know, a friend of Bonne's novice was a water magician.
	AI_Output(self, hero, "Info_Mod_Greg_DI_Skelett_01_09"); //I'll send Skip to get him, he'll be better able to help us.
	AI_Output(hero, self, "Info_Mod_Greg_DI_Skelett_15_10"); //And what am I supposed to do for so long?
	AI_Output(self, hero, "Info_Mod_Greg_DI_Skelett_01_11"); //Well, you grab Alligator Jack and go explore the island with him.

	Npc_ExchangeRoutine	(Mod_1540_PIR_Skip_DI, "UNTERWEGS");
	AI_Teleport	(Mod_1540_PIR_Skip_DI, "WP_DI_SKIP_WAITFORPLAYER");

	Mod_DI_InselErkunden = 1;

	B_LogEntry	(TOPIC_MOD_PIRATEN_DI, "I told Greg about the skeleton. He doesn't seem to be worried at all, but regards this as a great adventure. He sends Skip out for a water magician. Until Skip gets back, I'm supposed to explore the island with Alligator Jack.");

	Wld_InsertNpc	(Mod_7642_OUT_Brunhild_DI,	"WP_DI_BRUNHILD_02");
};

INSTANCE Info_Mod_Greg_DI_Brunhild (C_INFO)
{
	npc		= Mod_1541_PIR_Greg_DI;
	nr		= 1;
	condition	= Info_Mod_Greg_DI_Brunhild_Condition;
	information	= Info_Mod_Greg_DI_Brunhild_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_DI_Brunhild_Condition()
{
	if (Mod_DI_InselErkunden == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_DI_Brunhild_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_DI_Brunhild_01_00"); //Well, well. What did you bring with you?
	AI_Output(hero, self, "Info_Mod_Greg_DI_Brunhild_15_01"); //It's not gold and silver. But it may prove to be a treasure in the kitchen.
	AI_Output(self, hero, "Info_Mod_Greg_DI_Brunhild_01_02"); //And how did...?
	AI_Output(hero, self, "Info_Mod_Greg_DI_Brunhild_15_03"); //A castaway. She wrote the message in a bottle. Your people are all dead. She asked if she could ride with us.
	AI_Output(self, hero, "Info_Mod_Greg_DI_Brunhild_01_04"); //Does she know where the treasure's hidden? Or have you found him yet?
	AI_Output(hero, self, "Info_Mod_Greg_DI_Brunhild_15_05"); //Neither nor. But we've seen some blocked corridors. One of them should be exposed. Seems to have spilled it.
	AI_Output(hero, self, "Info_Mod_Greg_DI_Brunhild_15_06"); //The others are closed with solid rock.
	AI_Output(self, hero, "Info_Mod_Greg_DI_Brunhild_01_07"); //Well, then. I'll send two men out to the hallway.
	AI_Output(self, hero, "Info_Mod_Greg_DI_Brunhild_01_08"); //You're talking to Skip. Tell him to take the maid to the ship. She'll replace Samuel in the kitchen.

	B_LogEntry	(TOPIC_MOD_PIRATEN_DI, "While I have Brunhild bring Brunhild from Skip to the ship, Greg wants to send two of his boys to uncover the tunnel.");

	B_StartOtherRoutine	(Mod_1546_PIR_Francis_DI, "STOLLEN");
	B_StartOtherRoutine	(Mod_1549_PIR_Malcom_DI, "STOLLEN");
};

INSTANCE Info_Mod_Greg_DI_StollenFrei (C_INFO)
{
	npc		= Mod_1541_PIR_Greg_DI;
	nr		= 1;
	condition	= Info_Mod_Greg_DI_StollenFrei_Condition;
	information	= Info_Mod_Greg_DI_StollenFrei_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's the next step?";
};

FUNC INT Info_Mod_Greg_DI_StollenFrei_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skip_DI_Brunhild))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_DI_StollenFrei_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_DI_StollenFrei_15_01"); //What's the next step?
	AI_Output(self, hero, "Info_Mod_Greg_DI_StollenFrei_01_02"); //Malcom is back and says the corridor's clear. Francis is still there, securing the spot.
	AI_Output(hero, self, "Info_Mod_Greg_DI_StollenFrei_15_03"); //And now I'm supposed to...?
	AI_Output(self, hero, "Info_Mod_Greg_DI_StollenFrei_01_04"); //That's right, lad. You're the most reliable of them all. Spute yourself!

	B_LogEntry	(TOPIC_MOD_PIRATEN_DI, "The corridor is free and I'm supposed to see if I can find the treasure.");

	Wld_SendTrigger	("EVT_STOLLEN_01");

	B_StartOtherRoutine	(Mod_1549_PIR_Malcom_DI, "START");
};

INSTANCE Info_Mod_Greg_DI_Amulett (C_INFO)
{
	npc		= Mod_1541_PIR_Greg_DI;
	nr		= 1;
	condition	= Info_Mod_Greg_DI_Amulett_Condition;
	information	= Info_Mod_Greg_DI_Amulett_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_DI_Amulett_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Francis_DI_Amulett))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_DI_Amulett_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_DI_Amulett_01_00"); //You're back? Reports from the treasure.
	AI_Output(hero, self, "Info_Mod_Greg_DI_Amulett_15_01"); //Nothing with treasure. I found this aluminum and some chalices, ore chunks and so on in the tunnel. Nothing else.
	AI_Output(self, hero, "Info_Mod_Greg_DI_Amulett_01_02"); //Hmm. Then remain the blocked corridors. But how...?
	AI_Output(hero, self, "Info_Mod_Greg_DI_Amulett_15_03"); //I'll think of something.

	B_LogEntry	(TOPIC_MOD_PIRATEN_DI, "We need to find a way to open the locked hallways.");
};

INSTANCE Info_Mod_Greg_DI_Los (C_INFO)
{
	npc		= Mod_1541_PIR_Greg_DI;
	nr		= 1;
	condition	= Info_Mod_Greg_DI_Los_Condition;
	information	= Info_Mod_Greg_DI_Los_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_DI_Los_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jones_Los))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_DI_Los_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_DI_Los_01_00"); //Wait, boy, I'm coming too. I don't want to miss it.

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "SKELETT");

	self.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_Greg_DI_Ende (C_INFO)
{
	npc		= Mod_1541_PIR_Greg_DI;
	nr		= 1;
	condition	= Info_Mod_Greg_DI_Ende_Condition;
	information	= Info_Mod_Greg_DI_Ende_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_DI_Ende_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jones_Ende))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_DI_Ende_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_DI_Ende_01_00"); //Great! Now we can finally lift the treasure. And you should take a closer look at the passage Jones has just mentioned before you leave.
	AI_Output(self, hero, "Info_Mod_Greg_DI_Ende_01_01"); //I'll go back to the beach and prepare the departure, you go to the caves and get the treasures.

	B_LogEntry	(TOPIC_MOD_PIRATEN_DI, "Greg hired me to recover the treasures from the caves.");

	AI_StopProcessInfos	(self);

	B_GivePlayerXP	(100);

	Npc_ExchangeRoutine	(self, "START");

	Adanos_Gefallen += 1;

	B_Göttergefallen(2, 1);

	self.aivar[AIV_PARTYMEMBER] = FALSE;
};

INSTANCE Info_Mod_Greg_DI_Alles (C_INFO)
{
	npc		= Mod_1541_PIR_Greg_DI;
	nr		= 1;
	condition	= Info_Mod_Greg_DI_Alles_Condition;
	information	= Info_Mod_Greg_DI_Alles_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found the true treasure of the island.";
};

FUNC INT Info_Mod_Greg_DI_Alles_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_DI_Ende))
	&& (Mod_PirInsel_Teleport == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_DI_Alles_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_DI_Alles_15_00"); //I found the true treasure of the island.
	AI_Output(hero, self, "Info_Mod_Greg_DI_Alles_15_01"); //Through the wall I got into a big cave system and in a huge hall everything was full of gold.
	AI_Output(hero, self, "Info_Mod_Greg_DI_Alles_15_02"); //You should send some more of these guys down to get the gold up.
	AI_Output(self, hero, "Info_Mod_Greg_DI_Alles_01_03"); //Well, min young, I'll see to it!
	AI_Output(self, hero, "Info_Mod_Greg_DI_Alles_01_04"); //Meanwhile, I'll be preparing to leave. The loot will be divided up in the camp when we get back.
	AI_Output(self, hero, "Info_Mod_Greg_DI_Alles_01_05"); //Talk to Skip when you've done everything here. He's gonna take us to the ship, and then we're gonna leave.

	B_LogEntry	(TOPIC_MOD_PIRATEN_DI, "I told Greg about the cave, and he's gonna send down some of the boys. He's preparing to leave. When I'm ready, I should talk to Skip and we'll all be transferred to the ship.");
	B_SetTopicStatus	(TOPIC_MOD_PIRATEN_DI, LOG_SUCCESS);

	B_Göttergefallen(2, 2);

	B_GivePlayerXP	(1000);
};

INSTANCE Info_Mod_Greg_DI_EXIT (C_INFO)
{
	npc		= Mod_1541_PIR_Greg_DI;
	nr		= 1;
	condition	= Info_Mod_Greg_DI_EXIT_Condition;
	information	= Info_Mod_Greg_DI_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Greg_DI_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Greg_DI_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
