INSTANCE Info_Mod_Riordian_AW_Obelisk (C_INFO)
{
	npc		= Mod_9003_KDW_Riordian_AW;
	nr		= 1;
	condition	= Info_Mod_Riordian_AW_Obelisk_Condition;
	information	= Info_Mod_Riordian_AW_Obelisk_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Riordian_AW_Obelisk_Condition()
{	
	return 1;
};

FUNC VOID Info_Mod_Riordian_AW_Obelisk_Info()
{
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Obelisk_23_00"); //You travel a lot, maybe I have something for you here.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Obelisk_15_01"); //What have you got?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Obelisk_23_02"); //I found this obelisk here in the ruins.

	B_GiveInvItems	(self, hero, ItRu_TeleportObelisk, 1);

	AI_Output (self, hero, "Info_Mod_Riordian_AW_Obelisk_23_03"); //In the old scripts there is nothing specific about it, but it should be possible to connect it with teleportruns.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Obelisk_15_04"); //Connected to teleportruns? And what exactly does that do?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Obelisk_23_05"); //I suspect it will become a kind of universal teleportrune that will allow you to teleport to any place you have inserted over a rune.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Obelisk_23_06"); //But I haven't tested it yet.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Obelisk_15_07"); //And how can I connect the runes to the obelisk?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Obelisk_23_08"); //Probably at a rune table.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Obelisk_15_09"); //I'll give it a try.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Obelisk_23_10"); //Well, let me know if it works.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Obelisk_23_11"); //I also found out a few things about the Night Wisp.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Obelisk_23_12"); //I can now show you how to find more items.

	Log_CreateTopic	(TOPIC_MOD_OBELISK, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_OBELISK, "Riordian gave me an obelisk in which I seem to be able to insert all teleportruns. To do this I have to go to a rune table with the obelisk, a teleportrune and an empty rune stone. There I can connect the rune with the obelisk. If I tested it, I should let Riordian know.");
};

INSTANCE Info_Mod_Riordian_AW_ObeliskTeleportFunzt (C_INFO)
{
	npc		= Mod_9003_KDW_Riordian_AW;
	nr		= 1;
	condition	= Info_Mod_Riordian_AW_ObeliskTeleportFunzt_Condition;
	information	= Info_Mod_Riordian_AW_ObeliskTeleportFunzt_Info;
	permanent	= 0;
	important	= 0;
	description	= "I tried the obelisk.";
};

FUNC INT Info_Mod_Riordian_AW_ObeliskTeleportFunzt_Condition()
{
	if (Mod_TeleportObelisk_Funzt == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_AW_ObeliskTeleportFunzt_Info()
{
	AI_Output (hero, self, "Info_Mod_Riordian_AW_ObeliskTeleportFunzt_15_00"); //I tried the obelisk.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_ObeliskTeleportFunzt_23_01"); //Well, did it work?
	AI_Output (hero, self, "Info_Mod_Riordian_AW_ObeliskTeleportFunzt_15_02"); //Yeah, he took me to my destination like a regular teleport rune.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_ObeliskTeleportFunzt_23_03"); //Outstanding. The old people are really amazing. Hopefully we'll find some more of the old relics.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_ObeliskTeleportFunzt_23_04"); //Here's a little reward.

	B_GiveInvItems	(self, hero, ItMi_Gold, 250);

	B_GivePlayerXP	(250);
};

INSTANCE Info_Mod_Riordian_AW_SteinkreisTafel (C_INFO)
{
	npc		= Mod_9003_KDW_Riordian_AW;
	nr		= 1;
	condition	= Info_Mod_Riordian_AW_SteinkreisTafel_Condition;
	information	= Info_Mod_Riordian_AW_SteinkreisTafel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Riordian_AW_SteinkreisTafel_Condition()
{
	if (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_AW_SteinkreisTafel_Info()
{
	AI_Output (self, hero, "Info_Mod_Riordian_AW_SteinkreisTafel_23_00"); //I found something interesting in the ruins again.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_SteinkreisTafel_15_01"); //What did you find?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_SteinkreisTafel_23_02"); //It's a stone tablet. On it there is a formula and below it is something that looks very similar to a stone circle.

	B_GiveInvItems	(self, hero, ItMi_SteinkreisTafel, 1);

	AI_Output (self, hero, "Info_Mod_Riordian_AW_SteinkreisTafel_23_03"); //You should try the formula on a stone circle, maybe it works.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_SteinkreisTafel_15_04"); //And that's not dangerous?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_SteinkreisTafel_23_05"); //Oh, what's the point?
	AI_Output (hero, self, "Info_Mod_Riordian_AW_SteinkreisTafel_15_06"); //All right, I'll try.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_SteinkreisTafel_23_07"); //Well, then tell me what happened.

	Log_CreateTopic	(TOPIC_MOD_STEINKREIS, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_STEINKREIS, "Riordian gave me a stone tablet which I should use for stone circles. Let's see what happens....");

	Mod_Riordian_Geister_Tag = Wld_GetDay();
};

INSTANCE Info_Mod_Riordian_AW_SteinkreisTafelFunzt (C_INFO)
{
	npc		= Mod_9003_KDW_Riordian_AW;
	nr		= 1;
	condition	= Info_Mod_Riordian_AW_SteinkreisTafelFunzt_Condition;
	information	= Info_Mod_Riordian_AW_SteinkreisTafelFunzt_Info;
	permanent	= 0;
	important	= 0;
	description	= "The formula actually works.";
};

FUNC INT Info_Mod_Riordian_AW_SteinkreisTafelFunzt_Condition()
{
	if (Mod_TeleportSteinkreis_Funzt == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_AW_SteinkreisTafelFunzt_Info()
{
	AI_Output (hero, self, "Info_Mod_Riordian_AW_SteinkreisTafelFunzt_15_00"); //The formula actually works.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_SteinkreisTafelFunzt_23_01"); //What does it do?
	AI_Output (hero, self, "Info_Mod_Riordian_AW_SteinkreisTafelFunzt_15_02"); //It appears to be some kind of teleport spell.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_SteinkreisTafelFunzt_15_03"); //When I had pronounced the formula, I was teleported into a huge stone circle in an ice landscape.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_SteinkreisTafelFunzt_15_04"); //After that I was able to control any stone circle.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_SteinkreisTafelFunzt_23_05"); //Very interesting. It'll be very useful to you. You can keep the blackboard. I still remember that formula.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_SteinkreisTafelFunzt_23_06"); //Here's a little reward.

	B_GiveInvItems	(self, hero, ItMi_Gold, 250);

	B_GivePlayerXP	(250);

	B_LogEntry	(TOPIC_MOD_STEINKREIS, "It turned out that I can travel back and forth between the stone circles with the stone plate.");
};

INSTANCE Info_Mod_Riordian_AW_Plagegeister (C_INFO)
{
	npc		= Mod_9003_KDW_Riordian_AW;
	nr		= 1;
	condition	= Info_Mod_Riordian_AW_Plagegeister_Condition;
	information	= Info_Mod_Riordian_AW_Plagegeister_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Riordian_AW_Plagegeister_Condition()
{
	if (Mod_Riordian_Geister == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_AW_Plagegeister_Info()
{
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister_23_00"); //I'm glad you came. This is where all hell broke loose.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Plagegeister_15_01"); //I can see that. What has happened?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister_23_02"); //Well, lately we've been doing a lot of research in the ruins and we've gotten many secrets out of her.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister_23_03"); //Unfortunately, well, we must have been a little too careless and have probably awakened some ghosts who are now restless and furious here.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister_23_04"); //And they don't seem to want to stop soon...
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Plagegeister_15_05"); //Wouldn't a few magic bullets not put them back to rest?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister_23_06"); //(interrupts) For Adano's sake, no. The danger of us waking up more sleeping powers would be too great.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Plagegeister_15_07"); //Then what can we do?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister_23_08"); //Well, I've recently come across something in my research that might help us.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister_23_09"); //It is a formula that should be able to soothe restless spirits.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Plagegeister_15_10"); //Will it work?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister_23_11"); //Perhaps... but she must speak while a sacrifice is made at an altar and two magic spells are cast.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Plagegeister_15_12"); //A death offering and magic?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister_23_13"); //The victim of the death is probably three marsh herb plants. They were supposed to make contact with the otherworldly spheres.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister_23_14"); //The spells, on the other hand, are said to have the quality of making you forget what has happened and bring wakeful spirits to sleep.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Plagegeister_15_15"); //Hmm...
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister_23_16"); //We also do not know exactly where to find such a sacrificial altar, but you will undoubtedly find it in one of the old sites.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Plagegeister_15_17"); //Okay, I'll take a look around. The formula?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister_23_18"); //Here you have them.

	B_GiveInvItems	(self, hero, ItWr_PlagegeisterFormel, 1);

	AI_Output (hero, self, "Info_Mod_Riordian_AW_Plagegeister_15_19"); //All right, I'll be on my way.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister_23_20"); //Good luck to you. Adanos be with you.

	Log_CreateTopic	(TOPIC_MOD_RIORDIAN_PLAGEGEISTER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_RIORDIAN_PLAGEGEISTER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_RIORDIAN_PLAGEGEISTER, "The water magicians have angered some ghosts in their research, who are now restlessly roaring around there. Riordian said that in order to appease her again, a ritual should be performed on a sacrificial altar. To do so, I have to sacrifice the formula, 3 swamp herbs and 2 spells. The spells should have the ability to forget events and wake spirits to bring sleep.");
};

INSTANCE Info_Mod_Riordian_AW_Plagegeister2 (C_INFO)
{
	npc		= Mod_9003_KDW_Riordian_AW;
	nr		= 1;
	condition	= Info_Mod_Riordian_AW_Plagegeister2_Condition;
	information	= Info_Mod_Riordian_AW_Plagegeister2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Riordian_AW_Plagegeister2_Condition()
{
	if (Mod_Riordian_Geister == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_AW_Plagegeister2_Info()
{
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister2_23_00"); //You did it! You did it! The restless souls and spirits are soothed.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Plagegeister2_15_01"); //I hope you'll be a little more careful with your research in the future.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister2_23_02"); //Yes, of course! You can be sure of that. But here, take these tablets for your help.

	B_ShowGivenThings	("2 stone tablets preserved");

	CreateInvItems	(hero, ItWr_DexStonePlate1_Addon, 1);
	CreateInvItems	(hero, ItWr_HitPointStonePlate1_Addon, 1);

	AI_Output (self, hero, "Info_Mod_Riordian_AW_Plagegeister2_23_03"); //May they be useful to you in your further ways.

	B_SetTopicStatus	(TOPIC_MOD_RIORDIAN_PLAGEGEISTER, LOG_SUCCESS);

	B_GivePlayerXP	(400);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Riordian_AW_ScrollJG (C_INFO)
{
	npc		= Mod_9003_KDW_Riordian_AW;
	nr		= 1;
	condition	= Info_Mod_Riordian_AW_ScrollJG_Condition;
	information	= Info_Mod_Riordian_AW_ScrollJG_Info;
	permanent	= 0;
	important	= 0;
	description	= "Maybe you can help me.";
};

FUNC INT Info_Mod_Riordian_AW_ScrollJG_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wulfgar_Key2))
	&& (Npc_HasItems(hero, ItWr_TruhenNotizJG) == 1)
	&& (Npc_HasItems(hero, ItWr_TruhenScrollJG) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_AW_ScrollJG_Info()
{
	AI_Output (hero, self, "Info_Mod_Riordian_AW_ScrollJG_15_00"); //Maybe you can help me.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_ScrollJG_23_01"); //Let me see that.

	B_UseFakeScroll ();

	AI_Output (self, hero, "Info_Mod_Riordian_AW_ScrollJG_23_02"); //Hm. It's the old script. I've seen signs like that before. Seems to be a higher language.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_ScrollJG_15_03"); //And?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_ScrollJG_23_04"); //I haven't quite deciphered them yet. Come back later.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_ScrollJG_15_05"); //Adano's help! All this way for free...
	AI_Output (self, hero, "Info_Mod_Riordian_AW_ScrollJG_23_06"); //Wait. Wait. Do you know the hermit in the valley?
	AI_Output (hero, self, "Info_Mod_Riordian_AW_ScrollJG_15_07"); //Um...
	AI_Output (self, hero, "Info_Mod_Riordian_AW_ScrollJG_23_08"); //He came to Jhakendar a long time ago with the first pirates. Studied the scriptures, too.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_ScrollJG_23_09"); //Suddenly, however, he has abandoned it and retired to the valley.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_ScrollJG_15_10"); //How do you know?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_ScrollJG_23_11"); //That pirate, Greg, he told me.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_ScrollJG_15_12"); //Uh-huh. And you think he might have...
	AI_Output (self, hero, "Info_Mod_Riordian_AW_ScrollJG_23_13"); //Just try it. It's the platform on the far right.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_ScrollJG_15_14"); //I know.

	B_LogEntry	(TOPIC_MOD_JG_SCROLL, "I have to go to the hermit in the valley and ask. Probably the last chance.");
};

INSTANCE Info_Mod_Riordian_AW_ScrollJG2 (C_INFO)
{
	npc		= Mod_9003_KDW_Riordian_AW;
	nr		= 1;
	condition	= Info_Mod_Riordian_AW_ScrollJG2_Condition;
	information	= Info_Mod_Riordian_AW_ScrollJG2_Info;
	permanent	= 0;
	important	= 0;
	description	= "The hermit could help me. I have to find a specific sacrificial bowl.";
};

FUNC INT Info_Mod_Riordian_AW_ScrollJG2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eremit_ScrollJG))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_AW_ScrollJG2_Info()
{
	AI_Output (hero, self, "Info_Mod_Riordian_AW_ScrollJG2_15_00"); //The hermit could help me. I have to find a specific sacrificial bowl.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_ScrollJG2_23_01"); //It won't be easy. You'll need luck to do it. By the way...
	AI_Output (hero, self, "Info_Mod_Riordian_AW_ScrollJG2_15_02"); //Yes?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_ScrollJG2_23_03"); //Cavalorn told me to get you back to the camp as soon as possible.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_ScrollJG2_15_04"); //Into the Minental?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_ScrollJG2_23_05"); //Yeah. Maybe this Wulfgar can help you.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_ScrollJG2_15_06"); //I'm on my way.

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_JG_OPFERSCHALE, "Off to Wulfgar. Maybe he knows something...");
};

INSTANCE Info_Mod_Riordian_AW_Zeremoniendolch (C_INFO)
{
	npc		= Mod_9003_KDW_Riordian_AW;
	nr		= 1;
	condition	= Info_Mod_Riordian_AW_Zeremoniendolch_Condition;
	information	= Info_Mod_Riordian_AW_Zeremoniendolch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Good day. Merdarion says you have new insights.";
};

FUNC INT Info_Mod_Riordian_AW_Zeremoniendolch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Merdarion_AW_Zeremoniendolch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_AW_Zeremoniendolch_Info()
{
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Zeremoniendolch_15_00"); //Good day. Merdarion says you have new insights.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Zeremoniendolch_23_01"); //Well, yeah. Recently I was able to decipher another inscription in the temple.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Zeremoniendolch_23_02"); //This is a weapon that was obviously used in ancient times for certain sacrificial rituals.
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Zeremoniendolch_23_03"); //Seems deadly and invisible to the victim. Called her a ritual dagger.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Zeremoniendolch_15_04"); //Uh-huh. And where could you find a gun like that?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Zeremoniendolch_23_05"); //I don't know about that. But if it is, it's here in Jharkendar, I think.
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Zeremoniendolch_15_06"); //And can you think any further?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Zeremoniendolch_23_07"); //Well, yeah. A place of sacrifice.... or a ritual place... a temple. Kind of like that... Hmm...
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Zeremoniendolch_15_08"); //Maybe here in the temple?
	AI_Output (self, hero, "Info_Mod_Riordian_AW_Zeremoniendolch_23_09"); //Meriadon has already looked around, there's nothing there. Possibly the adano stamp in the marsh...

	B_LogEntry	(TOPIC_MOD_ASS_ZEREMONIENDOLCH, "The dagger is probably found at some sacrificial site, ritual site or temple. Riordian thinks I should search the Adano temple in the swamp...");
};

INSTANCE Info_Mod_Riordian_AW_Gast (C_INFO)
{
	npc		= Mod_9003_KDW_Riordian_AW;
	nr		= 1;
	condition	= Info_Mod_Riordian_AW_Gast_Condition;
	information	= Info_Mod_Riordian_AW_Gast_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why did you come along anyway?";
};

FUNC INT Info_Mod_Riordian_AW_Gast_Condition()
{
	if (Mod_Saturas_Gast == 1)
	{
		Info_Mod_Riordian_AW_Gast.description = "I'm looking for the thief who stole your equipment.";
	}
	else
	{
		Info_Mod_Riordian_AW_Gast.description = "Someone has stolen parts of your equipment.";
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_UngebeterBesucher))
	&& (Mod_Saturas_Gast_Fortschritt == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_AW_Gast_Info()
{
	if (Mod_Saturas_Gast == 1)
	{
		AI_Output(hero, self, "Info_Mod_Riordian_AW_Gast_15_00"); //I'm looking for the thief who stole your equipment.
		AI_Output(self, hero, "Info_Mod_Riordian_AW_Gast_23_01"); //Yeah, right, find that son of a bitch!
		AI_Output(hero, self, "Info_Mod_Riordian_AW_Gast_15_02"); //Any leads?
		AI_Output(self, hero, "Info_Mod_Riordian_AW_Gast_23_03"); //Me? No. But it could have been this Argez. I don't trust him.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Riordian_AW_Gast_15_04"); //Someone has stolen parts of your equipment.
		AI_Output(self, hero, "Info_Mod_Riordian_AW_Gast_23_05"); //I beg your pardon? Who could steal something from us?
		AI_Output(hero, self, "Info_Mod_Riordian_AW_Gast_15_06"); //I haven't decided yet. So you didn't notice anything unusual?
		AI_Output(self, hero, "Info_Mod_Riordian_AW_Gast_23_07"); //I was asleep like a baby.
	};
};

instance Info_Mod_Riordian_AW_Irrlicht		(C_INFO)
{
	npc		= Mod_9003_KDW_Riordian_AW;
	nr		= 1;
	condition	= Info_Mod_Riordian_AW_Irrlicht_Condition;
	information	= Info_Mod_Riordian_AW_Irrlicht_Info;
	permanent	= 1;
	important	= 0;
	description	= "Show me how to train my will-o'-the-wisp.";
};

var int Info_Mod_Riordian_AW_Irrlicht_NoPerm;

FUNC INT Info_Mod_Riordian_AW_Irrlicht_Condition()
{
	if (Npc_HasItems (hero, ItAm_Addon_WispDetector) == 1)
	&& ((PLAYER_TALENT_WISPDETECTOR[WISPSKILL_NF] == FALSE)
	|| (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_FF] == FALSE)
	|| (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_NONE] == FALSE)
	|| (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_RUNE] == FALSE)
	|| (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_MAGIC] == FALSE)
	|| (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_FOOD] == FALSE)
	|| (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_POTIONS] == FALSE))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Riordian_AW_Irrlicht_Info()
{
	if ( PLAYER_TALENT_WISPDETECTOR[WISPSKILL_NF] == FALSE)
	|| ( PLAYER_TALENT_WISPDETECTOR[WISPSKILL_FF] == FALSE)
	|| ( PLAYER_TALENT_WISPDETECTOR[WISPSKILL_NONE] == FALSE)	
	|| ( PLAYER_TALENT_WISPDETECTOR[WISPSKILL_RUNE] == FALSE)	
	|| ( PLAYER_TALENT_WISPDETECTOR[WISPSKILL_MAGIC] == FALSE)	
	|| ( PLAYER_TALENT_WISPDETECTOR[WISPSKILL_FOOD] == FALSE)	
	|| ( PLAYER_TALENT_WISPDETECTOR[WISPSKILL_POTIONS] == FALSE)	
	{                                            
		Info_ClearChoices (Info_Mod_Riordian_AW_Irrlicht);
		Info_AddChoice (Info_Mod_Riordian_AW_Irrlicht,DIALOG_BACK,Info_Mod_Riordian_AW_Irrlicht_BACK);
		
		if (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_FF] == FALSE)
		{
			Info_AddChoice (Info_Mod_Riordian_AW_Irrlicht,B_BuildLearnString (NAME_ADDON_WISPSKILL_FF, B_GetLearnCostTalent (other, NPC_TALENT_WISPDETECTOR, WISPSKILL_FF)),Info_Mod_Riordian_AW_Irrlicht_WISPSKILL_FF);
		};
		
		if (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_NONE] == FALSE)
		{
			Info_AddChoice (Info_Mod_Riordian_AW_Irrlicht,B_BuildLearnString (NAME_ADDON_WISPSKILL_NONE, B_GetLearnCostTalent (other, NPC_TALENT_WISPDETECTOR, WISPSKILL_NONE)),Info_Mod_Riordian_AW_Irrlicht_WISPSKILL_NONE);
		};	
		
		if (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_RUNE] == FALSE)
		&& (WISPSKILL_LEVEL >= 2)
		{
			Info_AddChoice (Info_Mod_Riordian_AW_Irrlicht,B_BuildLearnString (NAME_ADDON_WISPSKILL_RUNE, B_GetLearnCostTalent (other, NPC_TALENT_WISPDETECTOR, WISPSKILL_RUNE)),Info_Mod_Riordian_AW_Irrlicht_WISPSKILL_RUNE);
		};
		
		if (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_MAGIC] == FALSE)
		&& (WISPSKILL_LEVEL >= 2)
		{
			Info_AddChoice (Info_Mod_Riordian_AW_Irrlicht,B_BuildLearnString (NAME_ADDON_WISPSKILL_MAGIC, B_GetLearnCostTalent (other, NPC_TALENT_WISPDETECTOR, WISPSKILL_MAGIC)),Info_Mod_Riordian_AW_Irrlicht_WISPSKILL_MAGIC);
		};
		
		if (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_FOOD] == FALSE)
		&& (WISPSKILL_LEVEL >= 3)
		{
			Info_AddChoice (Info_Mod_Riordian_AW_Irrlicht,B_BuildLearnString (NAME_ADDON_WISPSKILL_FOOD, B_GetLearnCostTalent (other, NPC_TALENT_WISPDETECTOR, WISPSKILL_FOOD)),Info_Mod_Riordian_AW_Irrlicht_WISPSKILL_FOOD);
		};
		
		if (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_POTIONS] == FALSE)
		&& (WISPSKILL_LEVEL >= 3)
		{
			Info_AddChoice (Info_Mod_Riordian_AW_Irrlicht,B_BuildLearnString (NAME_ADDON_WISPSKILL_POTIONS, B_GetLearnCostTalent (other, NPC_TALENT_WISPDETECTOR, WISPSKILL_POTIONS)),Info_Mod_Riordian_AW_Irrlicht_WISPSKILL_POTIONS);
		};
	};
};

FUNC VOID Info_Mod_Riordian_AW_Irrlicht_BACK ()
{
	Info_ClearChoices (Info_Mod_Riordian_AW_Irrlicht);
};

FUNC VOID Info_Mod_Riordian_AW_Irrlicht_WISPSKILL_FF ()
{
	if B_TeachPlayerTalentWispDetector  (self, other, WISPSKILL_FF)
	{
		if (WISPSKILL_LEVEL < 2)
		{
			WISPSKILL_LEVEL = 2;
		};
	};
	
	Info_ClearChoices (Info_Mod_Riordian_AW_Irrlicht);
};

FUNC VOID Info_Mod_Riordian_AW_Irrlicht_WISPSKILL_NONE ()
{
	if B_TeachPlayerTalentWispDetector (self, other, WISPSKILL_NONE)
	{
		if (WISPSKILL_LEVEL < 2)
		{
			WISPSKILL_LEVEL = 2;
		};
	};
	
	Info_ClearChoices (Info_Mod_Riordian_AW_Irrlicht);
};

FUNC VOID Info_Mod_Riordian_AW_Irrlicht_WISPSKILL_RUNE ()
{
	if B_TeachPlayerTalentWispDetector (self, other, WISPSKILL_RUNE)
	{
		if (WISPSKILL_LEVEL < 3)
		{
			WISPSKILL_LEVEL = 3;
		};
	};
	
	Info_ClearChoices (Info_Mod_Riordian_AW_Irrlicht);
};

FUNC VOID Info_Mod_Riordian_AW_Irrlicht_WISPSKILL_MAGIC ()
{
	if B_TeachPlayerTalentWispDetector (self, other, WISPSKILL_MAGIC)
	{
		if (WISPSKILL_LEVEL < 3)
		{
			WISPSKILL_LEVEL = 3;
		};
	};
	
	Info_ClearChoices (Info_Mod_Riordian_AW_Irrlicht);
};

FUNC VOID Info_Mod_Riordian_AW_Irrlicht_WISPSKILL_FOOD ()
{
	if B_TeachPlayerTalentWispDetector (self, other, WISPSKILL_FOOD)
	{
	};
	Info_ClearChoices (Info_Mod_Riordian_AW_Irrlicht);
};

FUNC VOID Info_Mod_Riordian_AW_Irrlicht_WISPSKILL_POTIONS ()
{
	if B_TeachPlayerTalentWispDetector (self, other, WISPSKILL_POTIONS)
	{
	};
	Info_ClearChoices (Info_Mod_Riordian_AW_Irrlicht);
};

INSTANCE Info_Mod_Riordian_AW_Lehrer (C_INFO)
{
	npc		= Mod_9003_KDW_Riordian_AW;
	nr		= 1;
	condition	= Info_Mod_Riordian_AW_Lehrer_Condition;
	information	= Info_Mod_Riordian_AW_Lehrer_Info;
	permanent	= 1;
	important	= 0;
	description	= "Can I learn from you?";
};

FUNC INT Info_Mod_Riordian_AW_Lehrer_Condition()
{	
	if (Npc_KnowsInfo(hero, Info_Mod_Riordian_Hi))
	&& ((Mod_Gilde == 9)
	|| (Mod_Gilde == 10)
	|| (Mod_Gilde == 11))
	&& (Mod_IstLehrling == 1)
	{	
		return 1;
	};
};

FUNC VOID Info_Mod_Riordian_AW_Lehrer_Info()
{
	AI_Output (hero, self, "Info_Mod_Riordian_AW_Lehrer_15_00"); //Can I study with you?
	
	if (Mod_Gilde == 9)
	|| (Mod_Gilde == 10)
	|| (Mod_Gilde == 11)
	{
		AI_Output (self, hero, "Info_Mod_Riordian_AW_Lehrer_23_01"); //I'll let you in on the secrets of alchemy.
		
		if (!Npc_KnowsInfo(hero, Info_Mod_Riordian_AW_Lehrer))
		{
			Log_CreateTopic	(TOPIC_MOD_LEHRER_WASSERMAGIER, LOG_NOTE);
			B_LogEntry	(TOPIC_MOD_LEHRER_WASSERMAGIER, "Riordian can teach me about alchemy.");
		};

		Info_ClearChoices 	(Info_Mod_Riordian_AW_Lehrer);
		Info_AddChoice 		(Info_Mod_Riordian_AW_Lehrer,DIALOG_BACK,Info_Mod_Riordian_AW_Lehrer_BACK);
	
		if ( PLAYER_TALENT_ALCHEMY[POTION_Genesung] == FALSE)
		{
			Info_AddChoice 		(Info_Mod_Riordian_AW_Lehrer,B_BuildLearnString ("Drink of Recovery", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Genesung)),Info_Mod_Riordian_AW_Lehrer_Genesung);
		};
	
		if ( PLAYER_TALENT_ALCHEMY[POTION_Health_01] == FALSE)
		&& (Mod_LehrlingBei != 1)
		{
			Info_AddChoice 		(Info_Mod_Riordian_AW_Lehrer,B_BuildLearnString ("Essence of Healing", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Health_01)),Info_Mod_Riordian_AW_Lehrer_HEALTH_01);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Health_02] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Health_01] == TRUE)
		{
			Info_AddChoice	  (Info_Mod_Riordian_AW_Lehrer, B_BuildLearnString ("Extract of Healing", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Health_02)), Info_Mod_Riordian_AW_Lehrer_Health_02);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Health_03] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Health_02] == TRUE)
		{
			Info_AddChoice	  (Info_Mod_Riordian_AW_Lehrer, B_BuildLearnString ("Elixir of Healing", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Health_03)), Info_Mod_Riordian_AW_Lehrer_Health_03);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Perm_Health] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Health_03] == TRUE)
		&& (Mod_LehrlingBei != 1)
		&& (Kapitel >= 4)
		{
			Info_AddChoice	  (Info_Mod_Riordian_AW_Lehrer, B_BuildLearnString ("Elixir of Life", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Perm_Health)), Info_Mod_Riordian_AW_Lehrer_Perm_Health);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Mana_01] == FALSE)
		&& (Mod_LehrlingBei != 1)
		{
			Info_AddChoice	  (Info_Mod_Riordian_AW_Lehrer, B_BuildLearnString ("Mana Essence", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Mana_01)), Info_Mod_Riordian_AW_Lehrer_Mana_01);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Mana_02] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Mana_01] == TRUE)
		{
			Info_AddChoice	  (Info_Mod_Riordian_AW_Lehrer, B_BuildLearnString ("Mana Extract", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Mana_02)), Info_Mod_Riordian_AW_Lehrer_Mana_02);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Mana_03] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Mana_02] == TRUE)
		{
			Info_AddChoice	  (Info_Mod_Riordian_AW_Lehrer, B_BuildLearnString ("Mana Elixir", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Mana_03)), Info_Mod_Riordian_AW_Lehrer_Mana_03);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Perm_Mana] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Mana_03] == TRUE)
		&& (Kapitel >= 4)
		{
			Info_AddChoice	  (Info_Mod_Riordian_AW_Lehrer, B_BuildLearnString ("Elixir of Spirit", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Perm_Mana)), Info_Mod_Riordian_AW_Lehrer_Perm_Mana);
		};                                                                                                                                                                            
		if (PLAYER_TALENT_ALCHEMY[POTION_Perm_STR] == FALSE) 
		&& (Kapitel >= 4)
		{                                                                                                                                                                                     
			Info_AddChoice (Info_Mod_Riordian_AW_Lehrer, B_BuildLearnString ("Elixir of Strength", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Perm_STR)), Info_Mod_Riordian_AW_Lehrer_PermSTR);               
		};
		if (PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX] == FALSE)
		&& (Kapitel >= 4)
		{
			Info_AddChoice (Info_Mod_Riordian_AW_Lehrer,B_BuildLearnString ("Elixir of Dexterity", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Perm_DEX)), Info_Mod_Riordian_AW_Lehrer_Perm_DEX);
		};
		
	};
};
FUNC VOID Info_Mod_Riordian_AW_Lehrer_BACK()
{
	Info_ClearChoices 	(Info_Mod_Riordian_AW_Lehrer);
};
FUNC VOID Info_Mod_Riordian_AW_Lehrer_Genesung()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Genesung);
};
FUNC VOID Info_Mod_Riordian_AW_Lehrer_HEALTH_01()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Health_01);
};
FUNC VOID Info_Mod_Riordian_AW_Lehrer_HEALTH_02()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Health_02);
};
FUNC VOID Info_Mod_Riordian_AW_Lehrer_Health_03()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Health_03);
};
FUNC VOID Info_Mod_Riordian_AW_Lehrer_PermStr()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Perm_STR);
};
FUNC VOID Info_Mod_Riordian_AW_Lehrer_Perm_DEX()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Perm_DEX);
};
FUNC VOID Info_Mod_Riordian_AW_Lehrer_Perm_Health()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Perm_Health);
};
FUNC VOID Info_Mod_Riordian_AW_Lehrer_MANA_01()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Mana_01);
};
FUNC VOID Info_Mod_Riordian_AW_Lehrer_MANA_02()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Mana_02);
};
FUNC VOID Info_Mod_Riordian_AW_Lehrer_MANA_03()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Mana_03);
};
FUNC VOID Info_Mod_Riordian_AW_Lehrer_Perm_Mana()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Perm_Mana);
};

INSTANCE Info_Mod_Riordian_AW_Pickpocket (C_INFO)
{
	npc		= Mod_9003_KDW_Riordian_AW;
	nr		= 1;
	condition	= Info_Mod_Riordian_AW_Pickpocket_Condition;
	information	= Info_Mod_Riordian_AW_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Riordian_AW_Pickpocket_Condition()
{
	C_Beklauen	(148, ItPo_Health_Addon_04, 2);
};

FUNC VOID Info_Mod_Riordian_AW_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Riordian_AW_Pickpocket);

	Info_AddChoice	(Info_Mod_Riordian_AW_Pickpocket, DIALOG_BACK, Info_Mod_Riordian_AW_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Riordian_AW_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Riordian_AW_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Riordian_AW_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Riordian_AW_Pickpocket);
};

FUNC VOID Info_Mod_Riordian_AW_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Riordian_AW_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Riordian_AW_Pickpocket);

		Info_AddChoice	(Info_Mod_Riordian_AW_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Riordian_AW_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Riordian_AW_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Riordian_AW_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Riordian_AW_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Riordian_AW_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Riordian_AW_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Riordian_AW_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Riordian_AW_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Riordian_AW_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Riordian_AW_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Riordian_AW_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Riordian_AW_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Riordian_AW_EXIT (C_INFO)
{
	npc		= Mod_9003_KDW_Riordian_AW;
	nr		= 1;
	condition	= Info_Mod_Riordian_AW_EXIT_Condition;
	information	= Info_Mod_Riordian_AW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Riordian_AW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Riordian_AW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
