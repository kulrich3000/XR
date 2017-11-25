INSTANCE Info_Mod_Drache_Hi (C_INFO)
{
	npc		= Wasserdrache_11054_DT;
	nr		= 1;
	condition	= Info_Mod_Drache_Hi_Condition;
	information	= Info_Mod_Drache_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Drache_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Drache_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Drache_Hi_22_00"); //Another human being. What are you doing here? Back to your club, or you'll get to know me.
	AI_Output(hero, self, "Info_Mod_Drache_Hi_15_01"); //I don't belong to this lot. I came to find and kill Khorgor.
	AI_Output(self, hero, "Info_Mod_Drache_Hi_22_02"); //Khorgor is my enemy, too. Unfortunately, I've been powerless ever since he locked me in here.
	AI_Output(hero, self, "Info_Mod_Drache_Hi_15_03"); //Would you help me if I could free you?
	AI_Output(self, hero, "Info_Mod_Drache_Hi_22_04"); //Gladly. But it's not that simple.
	AI_Output(hero, self, "Info_Mod_Drache_Hi_15_05"); //Because?
	AI_Output(self, hero, "Info_Mod_Drache_Hi_22_06"); //I'm a water dragon. Water is my elixir of life, which I have had to do without for a long time now.
	AI_Output(self, hero, "Info_Mod_Drache_Hi_22_07"); //That's how I faint here, powerless and unable to fight. I gradually assume the structure of this environment.
	AI_Output(hero, self, "Info_Mod_Drache_Hi_15_08"); //You can see that. You're turning into a silver dragon.
	AI_Output(self, hero, "Info_Mod_Drache_Hi_22_09"); //(slightly louder) This is no fun! Bring me some water if you want me to help you. There's a lake up ahead.
	AI_Output(hero, self, "Info_Mod_Drache_Hi_15_10"); //It is. And there are only about ten enemies in between.
	AI_Output(self, hero, "Info_Mod_Drache_Hi_22_11"); //Booby! You'll sneak past them at night. Or make yourself invisible.
	AI_Output(hero, self, "Info_Mod_Drache_Hi_15_12"); //That's got something. How much water do you need?
	AI_Output(self, hero, "Info_Mod_Drache_Hi_22_13"); //Half the lake, ideally. But four buckets should do for starters.
	AI_Output(hero, self, "Info_Mod_Drache_Hi_15_14"); //And where do I get a bucket now?
	AI_Output(self, hero, "Info_Mod_Drache_Hi_22_15"); //There must be some at the lake. From the criminals there.

	Log_CreateTopic	(TOPIC_MOD_JG_DRACHENDURST, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_DRACHENDURST, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_DRACHENDURST, "A dragon in the flesh! A blue one. He's trying to help me get him some water. He wants four buckets.");
};

INSTANCE Info_Mod_Drache_Drachendurst01 (C_INFO)
{
	npc		= Wasserdrache_11054_DT;
	nr		= 1;
	condition	= Info_Mod_Drache_Drachendurst01_Condition;
	information	= Info_Mod_Drache_Drachendurst01_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here. A bucket of water.";
};

FUNC INT Info_Mod_Drache_Drachendurst01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Drache_Hi))
	&& (Npc_HasItems(hero, ItMi_EimerW) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Drache_Drachendurst01_Info()
{
	AI_Output(hero, self, "Info_Mod_Drache_Drachendurst01_15_00"); //Here. A bucket of water.

	B_GiveInvItems	(hero, self, ItMi_EimerW, 1);

	Mdl_SetVisualBody		(self,	"Dragon_WATER02_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);

	AI_Output(self, hero, "Info_Mod_Drache_Drachendurst01_22_01"); //Ahh. Delicious! I'm already feeling better. But I need more.
	AI_Output(hero, self, "Info_Mod_Drache_Drachendurst01_15_02"); //I'm on my way.

	B_GiveInvItems	(self, hero, ItMi_Eimer, 1);
};

INSTANCE Info_Mod_Drache_Drachendurst02 (C_INFO)
{
	npc		= Wasserdrache_11054_DT;
	nr		= 1;
	condition	= Info_Mod_Drache_Drachendurst02_Condition;
	information	= Info_Mod_Drache_Drachendurst02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here. The second load.";
};

FUNC INT Info_Mod_Drache_Drachendurst02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Drache_Drachendurst01))
	&& (Npc_HasItems(hero, ItMi_EimerW) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Drache_Drachendurst02_Info()
{
	AI_Output(hero, self, "Info_Mod_Drache_Drachendurst02_15_00"); //Here. The second load.

	B_GiveInvItems	(hero, self, ItMi_EimerW, 1);

	Mdl_SetVisualBody		(self,	"Dragon_WATER03_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);

	AI_Output(self, hero, "Info_Mod_Drache_Drachendurst02_22_01"); //Thanks, man. You're saving my life.
	AI_Output(hero, self, "Info_Mod_Drache_Drachendurst02_15_02"); //And risk mine.
	AI_Output(self, hero, "Info_Mod_Drache_Drachendurst02_22_03"); //You don't stand a chance without me anyway.
	AI_Output(hero, self, "Info_Mod_Drache_Drachendurst02_15_04"); //Maybe I'm on my way.

	B_GiveInvItems	(self, hero, ItMi_Eimer, 1);
};

INSTANCE Info_Mod_Drache_Drachendurst03 (C_INFO)
{
	npc		= Wasserdrache_11054_DT;
	nr		= 1;
	condition	= Info_Mod_Drache_Drachendurst03_Condition;
	information	= Info_Mod_Drache_Drachendurst03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's the third batch. How are you now?";
};

FUNC INT Info_Mod_Drache_Drachendurst03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Drache_Drachendurst02))
	&& (Npc_HasItems(hero, ItMi_EimerW) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Drache_Drachendurst03_Info()
{
	AI_Output(hero, self, "Info_Mod_Drache_Drachendurst03_15_00"); //Here's the third batch. How are you now?

	B_GiveInvItems	(hero, self, ItMi_EimerW, 1);

	Mdl_SetVisualBody		(self,	"Dragon_WATER04_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);

	AI_Output(self, hero, "Info_Mod_Drache_Drachendurst03_22_01"); //Feel better than I've felt in a long time. And I'm back to my strength.
	AI_Output(self, hero, "Info_Mod_Drache_Drachendurst03_22_02"); //Now, one more bucket and I'll tear the grate down here.

	B_GiveInvItems	(self, hero, ItMi_Eimer, 1);
};

INSTANCE Info_Mod_Drache_Drachendurst04 (C_INFO)
{
	npc		= Wasserdrache_11054_DT;
	nr		= 1;
	condition	= Info_Mod_Drache_Drachendurst04_Condition;
	information	= Info_Mod_Drache_Drachendurst04_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here. All good things come in four.";
};

FUNC INT Info_Mod_Drache_Drachendurst04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Drache_Drachendurst03))
	&& (Npc_HasItems(hero, ItMi_EimerW) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Drache_Drachendurst04_Info()
{
	AI_Output(hero, self, "Info_Mod_Drache_Drachendurst04_15_00"); //Here. All good things come in four.

	B_GiveInvItems	(hero, self, ItMi_EimerW, 1);

	Mdl_SetVisualBody		(self,	"Dragon_WATER_Body",		DEFAULT,	DEFAULT,	"",			DEFAULT,  	DEFAULT,	-1);

	AI_Output(self, hero, "Info_Mod_Drache_Drachendurst04_22_01"); //True! Get the buckets over there.
	AI_Output(hero, self, "Info_Mod_Drache_Drachendurst04_15_02"); //There. And now what? The grid?
	AI_Output(self, hero, "Info_Mod_Drache_Drachendurst04_22_03"); //I wasn't serious. I can't do that, of course.
	AI_Output(hero, self, "Info_Mod_Drache_Drachendurst04_15_04"); //Well, well. At least you're getting your blue back. And now what?
	AI_Output(self, hero, "Info_Mod_Drache_Drachendurst04_22_05"); //Honestly? I'm blue again?
	AI_Output(hero, self, "Info_Mod_Drache_Drachendurst04_15_06"); //Like a sailor who's drunk off his last paycheck.
	AI_Output(self, hero, "Info_Mod_Drache_Drachendurst04_22_07"); //Aah! Here I am Dragon, here I may be!
	AI_Output(hero, self, "Info_Mod_Drache_Drachendurst04_15_08"); //To the point, Lindwurm. How do I get you out of there?
	AI_Output(self, hero, "Info_Mod_Drache_Drachendurst04_22_09"); //So listen, over there in the temple hangs such a strange black figure. With glowing eyes.
	AI_Output(hero, self, "Info_Mod_Drache_Drachendurst04_15_10"); //The Seeker! I finally tracked him down.
	AI_Output(self, hero, "Info_Mod_Drache_Drachendurst04_22_11"); //You know this figure?
	AI_Output(hero, self, "Info_Mod_Drache_Drachendurst04_15_12"); //He's escaped twice before. But I'll get him this time!
	AI_Output(self, hero, "Info_Mod_Drache_Drachendurst04_22_13"); //Very well. But don't forget my creel, you'll need me with the pack in the woods.
	AI_Output(self, hero, "Info_Mod_Drache_Drachendurst04_22_14"); //So further on: Some time ago I was able to eavesdrop on a conversation between the dark and one of the minions.
	AI_Output(self, hero, "Info_Mod_Drache_Drachendurst04_22_15"); //That's when I found out the opening mechanism was in the library. Hidden, however, whatever that means.
	AI_Output(hero, self, "Info_Mod_Drache_Drachendurst04_15_16"); //Hm. One lever maybe. Or a winch. Nah... You can't hide a winch. Let's see....

	Log_CreateTopic	(TOPIC_MOD_JG_SUCHENDER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_SUCHENDER, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_JG_DRACHENDURST, TOPIC_MOD_JG_SUCHENDER, "The dragon was satisfied with four buckets of water. Let's see what happens next.", "The water dragon tells of a device that opens the gate. It's supposed to be hidden in the temple library. Probably the seeker, too. I have to watch out for his ice attacks. Do I still have magic protection in my bag? And better get melee combat. Maybe a ruse is helpful...");
	B_SetTopicStatus	(TOPIC_MOD_JG_DRACHENDURST, LOG_SUCCESS);

	Wld_InsertNpc	(Mod_7543_DMT_Suchender_DT, "DT_039");
};

INSTANCE Info_Mod_Drache_Drachental (C_INFO)
{
	npc		= Wasserdrache_11054_DT;
	nr		= 1;
	condition	= Info_Mod_Drache_Drachental_Condition;
	information	= Info_Mod_Drache_Drachental_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Drache_Drachental_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cyrco_Drachental))
	&& (Mod_JG_Gitter == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Drache_Drachental_Info()
{
	AI_Output(self, hero, "Info_Mod_Drache_Drachental_22_00"); //Hey! Where the hell are you? What about the gate?
	AI_Output(hero, self, "Info_Mod_Drache_Drachental_15_01"); //Patience! Had other things to do. The black room, you say?
	AI_Output(self, hero, "Info_Mod_Drache_Drachental_22_02"); //Yeah. Somewhere there's supposed to be the lever.
	AI_Output(hero, self, "Info_Mod_Drache_Drachental_15_03"); //Let's see now.

	Log_CreateTopic	(TOPIC_MOD_JG_VASALLEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_VASALLEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_VASALLEN, "I was supposed to free the dragon and then kill the guards here.");
};

INSTANCE Info_Mod_Drache_Drachental2 (C_INFO)
{
	npc		= Wasserdrache_11054_DT;
	nr		= 1;
	condition	= Info_Mod_Drache_Drachental2_Condition;
	information	= Info_Mod_Drache_Drachental2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Drache_Drachental2_Condition()
{
	if (Npc_IsDead(Mod_7544_OUT_Wache_DT))
	&& (Npc_IsDead(Mod_7545_OUT_Wache_DT))
	&& (Npc_IsDead(Mod_7546_OUT_Wache_DT))
	&& (Npc_IsDead(Mod_7547_OUT_Wache_DT))
	&& (Npc_IsDead(Mod_7548_OUT_Wache_DT))
	&& (Npc_IsDead(Mod_7549_OUT_Wache_DT))
	&& (Npc_IsDead(Mod_7550_OUT_Wache_DT))
	&& (Npc_IsDead(Mod_7551_OUT_Wache_DT))
	&& (Npc_IsDead(Mod_7552_OUT_Wache_DT))
	&& (Npc_IsDead(Mod_7553_OUT_Wache_DT))
	&& (Mod_JG_Gitter == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Drache_Drachental2_Info()
{
	AI_Output(self, hero, "Info_Mod_Drache_Drachental2_22_00"); //Duuurst! I need water urgently! I'm by the lake.
	AI_Output(hero, self, "Info_Mod_Drache_Drachental2_15_01"); //I'll take a look around.

	B_LogEntry_More	(TOPIC_MOD_JG_VASALLEN, TOPIC_MOD_JG_DRACHENTAL, "It's amazing what power water has. I should have my back now.", "It's amazing what power water has. I should have my back now. I'd better go back to the library. Maybe I missed something earlier today....");
	B_SetTopicStatus	(TOPIC_MOD_JG_VASALLEN, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "DURST");

	Wld_InsertItem	(ItWr_RaetselWand, "FP_ITEM_RAETSELWANDZETTEL");
};

INSTANCE Info_Mod_Drache_Khorgor (C_INFO)
{
	npc		= Wasserdrache_11054_DT;
	nr		= 1;
	condition	= Info_Mod_Drache_Khorgor_Condition;
	information	= Info_Mod_Drache_Khorgor_Info;
	permanent	= 0;
	important	= 0;
	description	= "So, my assignment here is done.";
};

FUNC INT Info_Mod_Drache_Khorgor_Condition()
{
	if (Mod_JG_Khorgor == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Drache_Khorgor_Info()
{
	AI_Output(hero, self, "Info_Mod_Drache_Khorgor_15_00"); //So, my assignment here is done. I have to get back to my people. I wish I knew how.
	AI_Output(self, hero, "Info_Mod_Drache_Khorgor_22_01"); //There's got to be a van in there somewhere. The footmen are always out and in...
	AI_Output(hero, self, "Info_Mod_Drache_Khorgor_15_02"); //I have to take a look. And what are you going to do?
	AI_Output(self, hero, "Info_Mod_Drache_Khorgor_22_03"); //I drink the lake empty unnecessarily make me look for my brothers.
	AI_Output(hero, self, "Info_Mod_Drache_Khorgor_15_04"); //I wish you every success.
	AI_Output(self, hero, "Info_Mod_Drache_Khorgor_22_05"); //You too. And here, a little present.

	B_GiveInvItems	(self, hero, ItMi_Aquamarine, 10);
};

INSTANCE Info_Mod_Drache_EXIT (C_INFO)
{
	npc		= Wasserdrache_11054_DT;
	nr		= 1;
	condition	= Info_Mod_Drache_EXIT_Condition;
	information	= Info_Mod_Drache_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Drache_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Drache_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
