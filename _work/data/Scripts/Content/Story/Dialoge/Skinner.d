INSTANCE Info_Mod_Skinner_Hi (C_INFO)
{
	npc		= Mod_964_BDT_Skinner_MT;
	nr		= 1;
	condition	= Info_Mod_Skinner_Hi_Condition;
	information	= Info_Mod_Skinner_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello...";
};

FUNC INT Info_Mod_Skinner_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Skinner_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Skinner_Hi_15_00"); //Hello...
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_24_01"); //Why are you waking me up? Can't you see I'm resting now?
	AI_Output(hero, self, "Info_Mod_Skinner_Hi_15_02"); //l--
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_24_03"); //But wait, you're the new guy. Now that you're here, I can make you a great deal.
	AI_Output(hero, self, "Info_Mod_Skinner_Hi_15_04"); //What's this about?
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_24_05"); //You haven't been around long, and you want to climb up to the camp quickly and gain reputation. I can help you with that.
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_24_06"); //All you have to do is bring a few things to my business partners, have them pay you and bring me gold and other things you get from them.
	AI_Output(hero, self, "Info_Mod_Skinner_Hi_15_07"); //What's in it for me?
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_24_08"); //What?! Isn't it enough to pay you to pay me... can, uh, help the camp?
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_24_09"); //But wait, I'll think of something. I have a powerful magical ring that will greatly affect your strength.
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_24_10"); //You'll get it in addition to all the glory. What do you say?

	Info_ClearChoices	(Info_Mod_Skinner_Hi);

	Info_AddChoice	(Info_Mod_Skinner_Hi, "I'm not playing your errand boy.", Info_Mod_Skinner_Hi_B);
	Info_AddChoice	(Info_Mod_Skinner_Hi, "I'll do it.", Info_Mod_Skinner_Hi_A);
};

FUNC VOID Info_Mod_Skinner_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Skinner_Hi_B_15_00"); //I'm not playing your errand boy.
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_B_24_01"); //So don't do it, then. Now piss off!
	
	Info_ClearChoices	(Info_Mod_Skinner_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Skinner_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Skinner_Hi_A_15_00"); //I'll do it.
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_A_24_01"); //Well, you know what a good offer is.
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_A_24_02"); //Well, I've got this swampweed. I took it from a lunatic who called himself Baal Netbek, but that doesn't matter.
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_A_24_03"); //You'll bring it to my customers.

	CreateInvItems	(hero, ItMi_Traumruf, 10);
	CreateInvItems	(hero, ItMi_Addon_Joint_01, 7);
	CreateInvItems	(hero, ItMi_Addon_Joint_02, 12);

	B_ShowGivenThings ("preserved marsh herb stems");

	AI_Output(self, hero, "Info_Mod_Skinner_Hi_A_24_04"); //The demon warriors have Edward. He's smoking away loads of dream calls. You should be able to get 4 or 8 off him by now. 80 gold is due per dream call.
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_A_24_05"); //Then there's Andokai with the demon magicians. He smokes the stuff, he says, in order to be closer to his master in a trance.
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_A_24_06"); //In any case, he'll take some dream calls from you and will definitely do some black stuff. For each black wise man 40 gold pieces are due and for each green novice 20.
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_A_24_07"); //Oh, by the way, my buddy Edgor's got something else going for me. I think it should be compensated with three green novices.
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_A_24_08"); //You'll sell the rest in the lower district of the city. There's always a buyer there. You all right?
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_A_24_09"); //I expect at least 1200 gold from you. You can keep the rest and get the promised reward from me.
	
	Mod_SkinnerQuest = 1;

	Info_ClearChoices	(Info_Mod_Skinner_Hi);

	B_StartOtherRoutine	(self, "WANTTOTELLMORE");
};

INSTANCE Info_Mod_Skinner_Laufbursche (C_INFO)
{
	npc		= Mod_964_BDT_Skinner_MT;
	nr		= 1;
	condition	= Info_Mod_Skinner_Laufbursche_Condition;
	information	= Info_Mod_Skinner_Laufbursche_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Skinner_Laufbursche_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Hi))
	&& (Mod_SkinnerQuest == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Skinner_Laufbursche_Info()
{
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche_24_00"); //Oh, I almost forgot. I've got something nice to take over Myxir. He's experimenting on some new summoning spells right now.
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche_24_01"); //First a few skeletal bones....

	B_GiveInvItems	(self, hero, ItAt_SkeletonBone, 20);

	AI_Output(hero, self, "Info_Mod_Skinner_Laufbursche_15_02"); //Aha...
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche_24_03"); //... a couple of goblink bones....

	B_GiveInvItems	(self, hero, ItAt_GoblinBone, 14);

	AI_Output(hero, self, "Info_Mod_Skinner_Laufbursche_15_04"); //nice
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche_24_05"); //... skull

	B_GiveInvItems	(self, hero, ItAt_SkeletonHead, 4);

	AI_Output(hero, self, "Info_Mod_Skinner_Laufbursche_15_06"); //What else what?
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche_24_07"); //... two heads....

	B_GiveInvItems	(self, hero, ItMi_Addon_Bloodwyn_Kopf, 2);

	AI_Output(hero, self, "Info_Mod_Skinner_Laufbursche_15_08"); //How nice...
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche_24_09"); //Oh, and here's the rest of it.

	CreateInvItems	(hero, ItPo_Blood, 17);
	CreateInvItems	(hero, ItFoMuttonZombie, 12);
	CreateInvItems	(hero, ItAt_DemonHeart, 1);

	AI_Output(hero, self, "Info_Mod_Skinner_Laufbursche_15_10"); //How...?
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche_24_11"); //Don't ask, you don't want to know.
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche_24_12"); //You'll get one incantation role each for Wolf, Golem and Demon from him in return.
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche_24_13"); //I get a good price for it from the transformation magicians, who are interested in the extent to which their transformation magic resembles the unholy incantation spells for animals.
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche_24_14"); //Fine with me, as long as they have enough gold. Oh yes, since we are already in the process: You can do that too.
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche_24_15"); //Cost the boys 800 gold and a conversion bunny spell roll.
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche_24_16"); //You do the business with Albert, who can be reached outside, to the left of the entrance of the dilapidated monastery via a fallen tree trunk.
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche_24_17"); //Now, get on your way. The stuff starts to smell slowly.

	Log_CreateTopic	(TOPIC_MOD_BDT_SKINNER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BDT_SKINNER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BDT_SKINNER, "All right, I've got some legwork coming up. Eduard gets dream calls for 80 gold a piece, Edgor gets three green novices as a gift, Andokai receives dream calls for 80 gold and black wise men for 40 gold. The rest of the money will be lost in the city, and 20 gold is expected for the green novice. Then I have to deliver a bunch of demonic and undead creatures, Myxir, and I'm supposed to get three summoning roles. These are then to be sent back to the Valley of Minental to the transformation magicians, where I am to receive 800 gold and a conversion role of Hase from Albert, whom I can find outside the monastery to the left of the entrance. Skinner expects a total of 2000 gold and the hare role from me. But he promised me a magic ring, which is supposed to' significantly influence' the strength of the wearer. I hope this one is worth the effort.");

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Skinner_Laufbursche2 (C_INFO)
{
	npc		= Mod_964_BDT_Skinner_MT;
	nr		= 1;
	condition	= Info_Mod_Skinner_Laufbursche2_Condition;
	information	= Info_Mod_Skinner_Laufbursche2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here I am again.";
};

FUNC INT Info_Mod_Skinner_Laufbursche2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Laufbursche))
	&& ((Mod_SkinnerQuest == 1)
	|| (Mod_SkinnerQuest == 2))
	&& (Npc_KnowsInfo(hero, Info_Mod_Eduard_Skinner))
	&& (Npc_KnowsInfo(hero, Info_Mod_Andokai_Skinner))
	&& (Npc_KnowsInfo(hero, Info_Mod_Myxir_Skinner))
	&& (Npc_KnowsInfo(hero, Info_Mod_Edgor_Skinner))
	&& (Npc_KnowsInfo(hero, Info_Mod_Albert_Skinner))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 2000)
	&& (Npc_HasItems(hero, ItSc_TrfRabbit) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Skinner_Laufbursche2_Info()
{
	AI_Output(hero, self, "Info_Mod_Skinner_Laufbursche2_15_00"); //Here, I threw away everything you gave me and everything you wanted for it.
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche2_24_01"); //Ah, good, give me that.
	
	Mod_SkinnerQuest = 2;

	Info_ClearChoices	(Info_Mod_Skinner_Laufbursche2);

	Info_AddChoice	(Info_Mod_Skinner_Laufbursche2, "I think I'll keep the gold and the reels.", Info_Mod_Skinner_Laufbursche2_C);
	Info_AddChoice	(Info_Mod_Skinner_Laufbursche2, "What about the ring?", Info_Mod_Skinner_Laufbursche2_B);
	Info_AddChoice	(Info_Mod_Skinner_Laufbursche2, "Here's the gold and the transformational part.", Info_Mod_Skinner_Laufbursche2_A);
};

FUNC VOID Info_Mod_Skinner_Laufbursche2_C()
{
	AI_Output(hero, self, "Info_Mod_Skinner_Laufbursche2_C_15_00"); //I think I'll keep the gold and the reels.

	Info_ClearChoices	(Info_Mod_Skinner_Laufbursche2);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);

	B_SetTopicStatus	(TOPIC_MOD_BDT_SKINNER, LOG_FAILED);
};

FUNC VOID Info_Mod_Skinner_Laufbursche2_B()
{
	AI_Output(hero, self, "Info_Mod_Skinner_Laufbursche2_B_15_00"); //What about the ring?
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche2_B_24_01"); //Yeah, here's the ring, and I'll take those things.

	CreateInvItems	(hero, ItRi_SkinnersRing, 1);

	Npc_RemoveInvItems	(hero, ItSc_TrfRabbit, 1);
	Npc_RemoveInvItems	(hero, ItMi_Gold, 2000);

	B_ShowGivenThings	("Maintain weathered ring and give spell and gold");

	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche2_B_24_02"); //Did I promise too much? (laughs gloatingly) But I'm sure your errand was enough for you.

	Info_ClearChoices	(Info_Mod_Skinner_Laufbursche2);

	B_GivePlayerXP	(500);

	B_SetTopicStatus	(TOPIC_MOD_BDT_SKINNER, LOG_SUCCESS);

	B_Göttergefallen(3, 1);
};

FUNC VOID Info_Mod_Skinner_Laufbursche2_A()
{
	AI_Output(hero, self, "Info_Mod_Skinner_Laufbursche2_A_15_00"); //Here's the gold and the transformational part.

	Npc_RemoveInvItems	(hero, ItSc_TrfRabbit, 1);
	Npc_RemoveInvItems	(hero, ItMi_Gold, 2000);

	B_ShowGivenThings	("The role of the spell and gold are given");	

	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche2_A_24_01"); //Very well, here's the ring.

	B_GiveInvItems	(self, hero, ItRi_SkinnersRing, 1);

	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche2_B_24_02"); //Did I promise too much? (laughs gloatingly) But I'm sure your errand was enough for you.

	Info_ClearChoices	(Info_Mod_Skinner_Laufbursche2);

	B_GivePlayerXP	(500);

	B_SetTopicStatus	(TOPIC_MOD_BDT_SKINNER, LOG_SUCCESS);
};

INSTANCE Info_Mod_Skinner_Orkjagd (C_INFO)
{
	npc		= Mod_964_BDT_Skinner_MT;
	nr		= 1;
	condition	= Info_Mod_Skinner_Orkjagd_Condition;
	information	= Info_Mod_Skinner_Orkjagd_Info;
	permanent	= 0;
	important	= 0;
	description	= "There's work to be done. Come to the camp tonight at midnight.";
};

FUNC INT Info_Mod_Skinner_Orkjagd_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgahard_OrkQuest))
	&& (Mod_Orks_Morgahard == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Skinner_Orkjagd_Info()
{
	AI_Output(hero, self, "Info_Mod_Skinner_Orkjagd_15_00"); //There's work to be done. Come to the camp tonight at midnight. We're going orc hunting.
	AI_Output(self, hero, "Info_Mod_Skinner_Orkjagd_24_01"); //But I don't want to hunt orcs. Besides, I have other things to do.

	AI_StopProcessInfos	(self);

	CreateInvItems	(self, ItFo_Booze, 1);
	B_UseItem	(self, ItFo_Booze);
};

INSTANCE Info_Mod_Skinner_Orkjagd2 (C_INFO)
{
	npc		= Mod_964_BDT_Skinner_MT;
	nr		= 1;
	condition	= Info_Mod_Skinner_Orkjagd2_Condition;
	information	= Info_Mod_Skinner_Orkjagd2_Info;
	permanent	= 0;
	important	= 0;
	description	= "That wasn't a request, it was an order from Morgahard.";
};

FUNC INT Info_Mod_Skinner_Orkjagd2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Orkjagd))
	&& (Mod_Orks_Morgahard == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Skinner_Orkjagd2_Info()
{
	AI_Output(hero, self, "Info_Mod_Skinner_Orkjagd2_15_00"); //That wasn't a request, it was an order from Morgahard.
	AI_Output(self, hero, "Info_Mod_Skinner_Orkjagd2_24_01"); //Ah, for my sake.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Skinner_Orkjagd3 (C_INFO)
{
	npc		= Mod_964_BDT_Skinner_MT;
	nr		= 1;
	condition	= Info_Mod_Skinner_Orkjagd3_Condition;
	information	= Info_Mod_Skinner_Orkjagd3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Skinner, get up, come on, now!";
};

FUNC INT Info_Mod_Skinner_Orkjagd3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Orkjagd2))
	&& (Mod_Orks_Morgahard == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Skinner_Orkjagd3_Info()
{
	AI_Output(hero, self, "Info_Mod_Skinner_Orkjagd3_15_00"); //Skinner, get up, come on, now!
	AI_Output(self, hero, "Info_Mod_Skinner_Orkjagd3_24_01"); //Bah, I'm coming.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "LAGER");
};

INSTANCE Info_Mod_Skinner_Orkjagd4 (C_INFO)
{
	npc		= Mod_964_BDT_Skinner_MT;
	nr		= 1;
	condition	= Info_Mod_Skinner_Orkjagd4_Condition;
	information	= Info_Mod_Skinner_Orkjagd4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Skinner_Orkjagd4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Orkjagd3))
	&& (Npc_GetDistToWP(self, "OW_PATH_188") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Skinner_Orkjagd4_Info()
{
	AI_Output(self, hero, "Info_Mod_Skinner_Orkjagd4_24_00"); //Well, let's get going. I have better things to do.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ORKJAGD");
	self.aivar[AIV_Partymember] = TRUE;

	if (Npc_GetDistToWP(Mod_4072_BDT_Bandit_MT, "OW_PATH_188") < 500)
	{
		B_StartOtherRoutine	(Mod_4072_BDT_Bandit_MT, "HOEHLE");
		Mod_4072_BDT_Bandit_MT.aivar[AIV_Partymember] = TRUE;
	};
	if (Npc_GetDistToWP(Mod_4073_BDT_Bandit_MT, "OW_PATH_188") < 500)
	{
		B_StartOtherRoutine	(Mod_4073_BDT_Bandit_MT, "HOEHLE");
		Mod_4073_BDT_Bandit_MT.aivar[AIV_Partymember] = TRUE;
	};
	if (Npc_GetDistToWP(Mod_4074_BDT_Bandit_MT, "OW_PATH_188") < 500)
	{
		B_StartOtherRoutine	(Mod_4074_BDT_Bandit_MT, "HOEHLE");
		Mod_4074_BDT_Bandit_MT.aivar[AIV_Partymember] = TRUE;
	};
	if (Npc_GetDistToWP(Mod_4075_BDT_Bandit_MT, "OW_PATH_188") < 500)
	{
		B_StartOtherRoutine	(Mod_4075_BDT_Bandit_MT, "HOEHLE");
		Mod_4075_BDT_Bandit_MT.aivar[AIV_Partymember] = TRUE;
	};
};

INSTANCE Info_Mod_Skinner_Orkjagd5 (C_INFO)
{
	npc		= Mod_964_BDT_Skinner_MT;
	nr		= 1;
	condition	= Info_Mod_Skinner_Orkjagd5_Condition;
	information	= Info_Mod_Skinner_Orkjagd5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Skinner_Orkjagd5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Orkjagd3))
	&& (Npc_GetDistToWP(self, "OW_PATH_188") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Skinner_Orkjagd5_Info()
{
	AI_Output(self, hero, "Info_Mod_Skinner_Orkjagd5_24_00"); //Now keep it down.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Skinner_Orkjagd6 (C_INFO)
{
	npc		= Mod_964_BDT_Skinner_MT;
	nr		= 1;
	condition	= Info_Mod_Skinner_Orkjagd6_Condition;
	information	= Info_Mod_Skinner_Orkjagd6_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Skinner_Orkjagd6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Orkjagd3))
	&& (Npc_IsDead(OrkWarrior_BDTPatroullie))
	&& (Npc_IsDead(OrkScout_BDTPatroullie_01))
	&& (Npc_IsDead(OrkScout_BDTPatroullie_02))
	&& (Npc_IsDead(OrkScout_BDTPatroullie_03))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Skinner_Orkjagd6_Info()
{
	AI_Output(self, hero, "Info_Mod_Skinner_Orkjagd6_24_00"); //So, I'm going back, that was stress enough for today.

	AI_StopProcessInfos	(self);

	Mod_Orks_Morgahard = 4;

	B_LogEntry	(TOPIC_MOD_BDT_MORGAHARD, "Our attack was successful and the orcs are in the dust. Now I just have to tell Morgahard about the success.");

	B_StartOtherRoutine	(self, "START");
	self.aivar[AIV_Partymember] = FALSE;

	B_StartOtherRoutine	(Mod_4072_BDT_Bandit_MT, "START");
	Mod_4072_BDT_Bandit_MT.aivar[AIV_Partymember] = FALSE;
	
	B_StartOtherRoutine	(Mod_4073_BDT_Bandit_MT, "START");
	Mod_4073_BDT_Bandit_MT.aivar[AIV_Partymember] = FALSE;
	
	B_StartOtherRoutine	(Mod_4074_BDT_Bandit_MT, "START");
	Mod_4074_BDT_Bandit_MT.aivar[AIV_Partymember] = FALSE;
	
	B_StartOtherRoutine	(Mod_4075_BDT_Bandit_MT, "START");
	Mod_4075_BDT_Bandit_MT.aivar[AIV_Partymember] = FALSE;
};

INSTANCE Info_Mod_Skinner_Lehrer (C_INFO)
{
	npc		= Mod_964_BDT_Skinner_MT;
	nr		= 1;
	condition	= Info_Mod_Skinner_Lehrer_Condition;
	information	= Info_Mod_Skinner_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me something?";
};

FUNC INT Info_Mod_Skinner_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Hi))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Skinner_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Skinner_Lehrer_24_01"); //I can teach you how to handle a hand.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_BANDITEN, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_BANDITEN, "Skinner can teach me how to deal with one-handed people.");
};

INSTANCE Info_Mod_Skinner_Lernen (C_INFO)
{
	npc		= Mod_964_BDT_Skinner_MT;
	nr		= 1;
	condition	= Info_Mod_Skinner_Lernen_Condition;
	information	= Info_Mod_Skinner_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to learn.";
};

FUNC INT Info_Mod_Skinner_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Lehrer))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Skinner_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Skinner_Lernen_15_00"); //I want to learn.

	Info_ClearChoices	(Info_Mod_Skinner_Lernen);

	Info_AddChoice	(Info_Mod_Skinner_Lernen, DIALOG_BACK, Info_Mod_Skinner_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Skinner_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Skinner_Lernen_1H_5);
	Info_AddChoice	(Info_Mod_Skinner_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Skinner_Lernen_1H_1);
};

FUNC VOID Info_Mod_Skinner_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Skinner_Lernen);
};

FUNC VOID Info_Mod_Skinner_Lernen_1H_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_1H, 5, 60)
	{
		Info_ClearChoices	(Info_Mod_Skinner_Lernen);

		Info_AddChoice	(Info_Mod_Skinner_Lernen, DIALOG_BACK, Info_Mod_Skinner_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Skinner_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Skinner_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Skinner_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Skinner_Lernen_1H_1);
	};
};

FUNC VOID Info_Mod_Skinner_Lernen_1H_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_1H, 1, 60)
	{
		Info_ClearChoices	(Info_Mod_Skinner_Lernen);

		Info_AddChoice	(Info_Mod_Skinner_Lernen, DIALOG_BACK, Info_Mod_Skinner_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Skinner_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Skinner_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Skinner_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Skinner_Lernen_1H_1);
	};
};

INSTANCE Info_Mod_Skinner_Pickpocket (C_INFO)
{
	npc		= Mod_964_BDT_Skinner_MT;
	nr		= 1;
	condition	= Info_Mod_Skinner_Pickpocket_Condition;
	information	= Info_Mod_Skinner_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Skinner_Pickpocket_Condition()
{
	C_Beklauen	(61, ItMi_Gold, 25);
};

FUNC VOID Info_Mod_Skinner_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Skinner_Pickpocket);

	Info_AddChoice	(Info_Mod_Skinner_Pickpocket, DIALOG_BACK, Info_Mod_Skinner_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Skinner_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Skinner_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Skinner_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Skinner_Pickpocket);
};

FUNC VOID Info_Mod_Skinner_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Skinner_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Skinner_Pickpocket);

		Info_AddChoice	(Info_Mod_Skinner_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Skinner_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Skinner_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Skinner_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Skinner_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Skinner_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Skinner_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Skinner_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Skinner_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Skinner_Pickpocket);

		AI_StopProcessInfos	(self);

		B_Attack (self, hero, AR_Theft, 1);
	}
	else
	{
		if (rnd >= 75)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 200);
		}
		else if (rnd >= 50)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 100);
		}
		else if (rnd >= 25)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 50);
		};

		B_Say	(self, hero, "$PICKPOCKET_BESTECHUNG_01");

		Info_ClearChoices	(Info_Mod_Skinner_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Skinner_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Skinner_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Skinner_EXIT (C_INFO)
{
	npc		= Mod_964_BDT_Skinner_MT;
	nr		= 1;
	condition	= Info_Mod_Skinner_EXIT_Condition;
	information	= Info_Mod_Skinner_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Skinner_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Skinner_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
