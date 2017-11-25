INSTANCE Info_Mod_Fisk_NW_Hi (C_INFO)
{
	npc		= Mod_7682_STT_Fisk_NW;
	nr		= 1;
	condition	= Info_Mod_Fisk_NW_Hi_Condition;
	information	= Info_Mod_Fisk_NW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Fisk_NW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Fisk_NW_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Fisk_NW_Hi_12_00"); //You here? Oh, man, finally a familiar face again.
	AI_Output(hero, self, "Info_Mod_Fisk_NW_Hi_15_01"); //You escaped the raid by the orcs, I see.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_Hi_12_02"); //Yeah, man. Hey, last few days have been hell, I tell you.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_Hi_12_03"); //When the orcs came to our camp at night, the chaos broke out.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_Hi_12_04"); //Everything happened so fast... I rushed through the camp in the dark without knowing exactly where I was going.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_Hi_12_05"); //Then I found myself at the rear exit of the camp.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_Hi_12_06"); //I saw that he was standing open and ran out without thinking for a long time.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_Hi_12_07"); //But it was swarming with filthy bastards.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_Hi_12_08"); //The next few hours it was a constant race and hiding until I was finally safe.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_Hi_12_09"); //On the way out of the valley I met the other three boys.... but I really don't think anyone else made it.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_Hi_12_10"); //But if you should run into someone else... Anyway, let me know, will you?

	Log_CreateTopic	(TOPIC_MOD_LEISEHOFFNUNG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LEISEHOFFNUNG, LOG_RUNNING);

	if (hero.guild == GIL_PAL)
	{
		AI_Output(hero, self, "Info_Mod_Fisk_NW_Hi_15_11"); //Sure, I will. But what are you going to do now?
		AI_Output(self, hero, "Info_Mod_Fisk_NW_Hi_12_12"); //I don't really know. I was wondering if maybe I should go into town.
		AI_Output(self, hero, "Info_Mod_Fisk_NW_Hi_12_13"); //I hope that my reputation as a trader has penetrated this far and they let me in.
		AI_Output(hero, self, "Info_Mod_Fisk_NW_Hi_15_14"); //Yes, city is certainly good for an experienced trader.
		AI_Output(hero, self, "Info_Mod_Fisk_NW_Hi_15_15"); //The two city guards here will be able to show you the way....
		AI_Output(self, hero, "Info_Mod_Fisk_NW_Hi_12_16"); //Thanks a lot, man. I'm in your debt.

		B_LogEntry_More	(TOPIC_MOD_MILIZ_FREUNDFEIND, TOPIC_MOD_LEISEHOFFNUNG, "The group at Bengars Hof is clean and will go to town.", "I met Fisk in Khorinis. With only a handful of companions, he managed to escape the orcs. He doubts that anyone else made it out of the camp. However, if I should meet any other survivors on my way, he wants me to let him know.");

		AI_StopProcessInfos	(self);

		B_StartOtherRoutine	(Mod_109_MIL_Rick_NW, "START");
		B_StartOtherRoutine	(Mod_118_MIL_Rumbold_NW, "START");

		B_StartOtherRoutine	(Mod_7682_STT_Fisk_NW,	"NW_BIGMILL_FARM3_07");
		B_StartOtherRoutine	(Mod_7683_BUD_Buddler_NW,	"NW_BIGMILL_FARM3_07");
		B_StartOtherRoutine	(Mod_7684_STT_Schatten_NW,	"NW_BIGMILL_FARM3_07");
		B_StartOtherRoutine	(Mod_7685_BUD_Buddler_NW,	"NW_BIGMILL_FARM3_07");
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Fisk_NW_Hi_15_17"); //Sure, I will. Good luck to you.
		AI_Output(self, hero, "Info_Mod_Fisk_NW_Hi_12_18"); //Thank you.... I could really use that.

		B_LogEntry	(TOPIC_MOD_LEISEHOFFNUNG, "I met Fisk in Khorinis. With only a handful of companions, he managed to escape the orcs. He doubts that anyone else made it out of the camp. However, if I should meet any other survivors on my way, he wants me to let him know.");
	};
};

INSTANCE Info_Mod_Fisk_NW_Markt (C_INFO)
{
	npc		= Mod_7682_STT_Fisk_NW;
	nr		= 1;
	condition	= Info_Mod_Fisk_NW_Markt_Condition;
	information	= Info_Mod_Fisk_NW_Markt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Fisk_NW_Markt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_AndreVermaechtnis10))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fisk_NW_Markt_Info()
{
	AI_Output(self, hero, "Info_Mod_Fisk_NW_Markt_12_00"); //Ah, there you are. Thank you for your help.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_Markt_12_01"); //Otherwise it would have been a lot harder to get into town.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_Markt_12_02"); //But what are words... here, some of the things I had with me when I escaped from the camp.

	B_ShowGivenThings	("50 gold, 3 chunks of ore, 1 dream call and 2 mana essences received");

	CreateInvItems	(hero, ItMi_Gold, 50);
	CreateInvItems	(hero, ItMi_Nugget, 3);
	CreateInvItems	(hero, ItMi_Traumruf, 1);
	CreateInvItems	(hero, ItPo_Mana_01, 2);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Fisk_NW_LeiseHoffnung (C_INFO)
{
	npc		= Mod_7682_STT_Fisk_NW;
	nr		= 1;
	condition	= Info_Mod_Fisk_NW_LeiseHoffnung_Condition;
	information	= Info_Mod_Fisk_NW_LeiseHoffnung_Info;
	permanent	= 1;
	important	= 0;
	description	= "I was a little bit on the road.... and I actually met someone from the old camp.";
};

FUNC INT Info_Mod_Fisk_NW_LeiseHoffnung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fisk_NW_Hi))
	&& (Mod_Fisk_LeiseHoffnung < 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fisk_NW_LeiseHoffnung_Info()
{
	AI_Output(hero, self, "Info_Mod_Fisk_NW_LeiseHoffnung_15_00"); //I was a little bit on the road.... and I actually met someone from the old camp.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_LeiseHoffnung_12_01"); //(agitated) What?! To whom?

	Info_ClearChoices	(Info_Mod_Fisk_NW_LeiseHoffnung);

	Info_AddChoice	(Info_Mod_Fisk_NW_LeiseHoffnung, DIALOG_BACK, Info_Mod_Fisk_NW_LeiseHoffnung_BACK);

	if (Mod_Fisk_LH_Mud == 0)
	&& (Mod_Mud_Unterwegs == 3)
	{
		Mod_Fisk_LeiseHoffnung += 1;

		Mod_Fisk_LH_Mud = 1;
	};
	if (Mod_Fisk_LH_Mud == 0)
	&& (Npc_KnowsInfo(hero, Info_Mod_Mud_REL_Hi))
	{
		Info_AddChoice	(Info_Mod_Fisk_NW_LeiseHoffnung, "Mud guards sheep in Relendel.", Info_Mod_Fisk_NW_LeiseHoffnung_C);
	};
	if (Mod_Fisk_LH_Fingers == 0)
	&& (Npc_KnowsInfo(hero, Info_Mod_Fingers_Kap4))
	{
		Info_AddChoice	(Info_Mod_Fisk_NW_LeiseHoffnung, "Fingers is with the bandits. He seems to be doing all right.", Info_Mod_Fisk_NW_LeiseHoffnung_B);
	};
	if (Mod_Fisk_LH_Scatty == 0)
	&& (Npc_KnowsInfo(hero, Info_Mod_Scatty_Kap4))
	{
		Info_AddChoice	(Info_Mod_Fisk_NW_LeiseHoffnung, "I ran into Scatty at the swamp.", Info_Mod_Fisk_NW_LeiseHoffnung_A);
	};
};

FUNC VOID Info_Mod_Fisk_NW_LeiseHoffnung_D()
{
	AI_Output(self, hero, "Info_Mod_Fisk_NW_LeiseHoffnung_D_12_00"); //However, thank you very much for that information.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_LeiseHoffnung_D_12_01"); //Knowing that's a real relief.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_LeiseHoffnung_D_12_02"); //But I'll tell you some tricks, which you have to take into account when trading.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_LeiseHoffnung_D_12_03"); //If you're really looking for an item, don't let it through.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_LeiseHoffnung_D_12_04"); //First of all, pretend that you are only a little bit interested, offer small amounts and hesitate to accept higher bids.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_LeiseHoffnung_D_12_05"); //Then you don't attract any attention, no one will bid, and the dealer will leave it to you at a much lower price, because he is sure that you are not willing to give more for it.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_LeiseHoffnung_D_12_06"); //Bluffing is half the battle.

	B_GivePlayerXP	(600);

	B_RaiseHandelsgeschick (10);

	B_SetTopicStatus	(TOPIC_MOD_LEISEHOFFNUNG, LOG_SUCCESS);

	CurrentNQ += 1;

	Info_ClearChoices	(Info_Mod_Fisk_NW_LeiseHoffnung);
};

FUNC VOID Info_Mod_Fisk_NW_LeiseHoffnung_BACK()
{
	Info_ClearChoices	(Info_Mod_Fisk_NW_LeiseHoffnung);
};

FUNC VOID Info_Mod_Fisk_NW_LeiseHoffnung_C()
{
	AI_Output(hero, self, "Info_Mod_Fisk_NW_LeiseHoffnung_C_15_00"); //Mud guards sheep in Relendel.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_LeiseHoffnung_C_12_01"); //What?! Mud? If I certainly wasn't expecting it from someone, it was from him.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_LeiseHoffnung_C_12_02"); //But at least. If he has even managed it, the chances are good that some others have escaped with their lives.

	Mod_Fisk_LeiseHoffnung += 1;

	Mod_Fisk_LH_Mud = 1;

	if (Mod_Fisk_LeiseHoffnung == 3)
	{
		Info_Mod_Fisk_NW_LeiseHoffnung_D();
	}
	else
	{
		B_GiveInvItems	(self, hero, ItMi_Gold, 50);

		B_GivePlayerXP	(200);
	};
};

FUNC VOID Info_Mod_Fisk_NW_LeiseHoffnung_B()
{
	AI_Output(hero, self, "Info_Mod_Fisk_NW_LeiseHoffnung_B_15_00"); //Fingers is with the bandits. He seems to be doing all right.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_LeiseHoffnung_B_12_01"); //Fingers, then. The master of the thief talents has once again proven his art.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_LeiseHoffnung_B_12_02"); //I take my hat off to him.

	Mod_Fisk_LeiseHoffnung += 1;

	Mod_Fisk_LH_Fingers = 1;

	if (Mod_Fisk_LeiseHoffnung == 3)
	{
		Info_Mod_Fisk_NW_LeiseHoffnung_D();
	}
	else
	{
		B_GiveInvItems	(self, hero, ItMi_Gold, 50);

		B_GivePlayerXP	(200);
	};
};

FUNC VOID Info_Mod_Fisk_NW_LeiseHoffnung_A()
{
	AI_Output(hero, self, "Info_Mod_Fisk_NW_LeiseHoffnung_A_15_00"); //I ran into Scatty at the swamp.
	AI_Output(hero, self, "Info_Mod_Fisk_NW_LeiseHoffnung_A_15_01"); //He is now allowed to protect novices there during the bogweed harvest.
	AI_Output(self, hero, "Info_Mod_Fisk_NW_LeiseHoffnung_A_12_02"); //Scatty, that old warden. Yeah, if anyone's gotten away with it, he certainly has.

	Mod_Fisk_LeiseHoffnung += 1;

	Mod_Fisk_LH_Scatty = 1;

	if (Mod_Fisk_LeiseHoffnung == 3)
	{
		Info_Mod_Fisk_NW_LeiseHoffnung_D();
	}
	else
	{
		B_GiveInvItems	(self, hero, ItMi_Gold, 50);

		B_GivePlayerXP	(200);
	};
};

INSTANCE Info_Mod_Fisk_NW_EXIT (C_INFO)
{
	npc		= Mod_7682_STT_Fisk_NW;
	nr		= 1;
	condition	= Info_Mod_Fisk_NW_EXIT_Condition;
	information	= Info_Mod_Fisk_NW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Fisk_NW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Fisk_NW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
