INSTANCE Info_Mod_Vatras_Hi (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Hi_Condition;
	information	= Info_Mod_Vatras_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Vatras_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Vatras_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Vatras_Hi_16_01"); //I am Vatra's water magician.
};

INSTANCE Info_Mod_Vatras_Daemonisch (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Daemonisch_Condition;
	information	= Info_Mod_Vatras_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Vatras_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_RitterBeiCoragon_Daemonisch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Vatras_Daemonisch_16_00"); //What do you report? We need to tighten security measures immediately...

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Well, the city's done.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Vatras_Irdorath (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Irdorath_Condition;
	information	= Info_Mod_Vatras_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "I intend to go to an island by ship to continue the fight against the dark Xeres.";
};

FUNC INT Info_Mod_Vatras_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Irdorath_15_00"); //I intend to go to an island by ship to continue the fight against the dark Xeres.
	AI_Output(hero, self, "Info_Mod_Vatras_Irdorath_15_01"); //However, I need capable companions for this excursion.
	AI_Output(self, hero, "Info_Mod_Vatras_Irdorath_16_02"); //And you thought about me?
	AI_Output(self, hero, "Info_Mod_Vatras_Irdorath_16_03"); //I have seen what evil forms this threat can take, as it almost devastated the city.
	AI_Output(self, hero, "Info_Mod_Vatras_Irdorath_16_04"); //If I am offered the opportunity, it is not only my will to accompany you there, no, it is even my duty to save all of Khorinis.
};

INSTANCE Info_Mod_Vatras_Irdorath2 (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Irdorath2_Condition;
	information	= Info_Mod_Vatras_Irdorath2_Info;
	permanent	= 0;
	important	= 0;
	description	= "So it's an honor to welcome you aboard.";
};

FUNC INT Info_Mod_Vatras_Irdorath2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Irdorath2_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Irdorath2_15_00"); //So it's an honor to welcome you aboard.
	AI_Output(self, hero, "Info_Mod_Vatras_Irdorath2_16_01"); //Then I will now go to the harbour and wait for the start of our journey.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "The water magician Vatras will accompany me.");

	B_GivePlayerXP	(100);

	Mod_VatrasDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Vatras_Irdorath3 (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Irdorath3_Condition;
	information	= Info_Mod_Vatras_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "I'm sorry, but it seems we're too many.";
};

FUNC INT Info_Mod_Vatras_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_VatrasDabei == 1)
	&& (Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15)
	&& ((Mod_MiltenDabei > 0)
	|| (Mod_NamibDabei > 0)
	|| (Mod_MyxirDabei > 0))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Irdorath3_15_00"); //I'm sorry, but it seems we're too many. I can't take you with me.
	AI_Output(self, hero, "Info_Mod_Vatras_Irdorath3_16_01"); //Too bad. I'll go back then. You know where to find me if there's ever gonna be a seat left.

	Mod_VatrasDabei = 0;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Vatras_Irdorath4 (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Irdorath4_Condition;
	information	= Info_Mod_Vatras_Irdorath4_Info;
	permanent	= 1;
	important	= 0;
	description	= "I can give you a ride.";
};

FUNC INT Info_Mod_Vatras_Irdorath4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_VatrasDabei == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Irdorath4_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Irdorath4_15_00"); //I can give you a ride. There's room on the ship.
	AI_Output(self, hero, "Info_Mod_Vatras_Irdorath4_16_01"); //Very well, I'll be back at the harbour.

	Mod_VatrasDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Vatras_Novize (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Novize_Condition;
	information	= Info_Mod_Vatras_Novize_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want to become a water magician.";
};

FUNC INT Info_Mod_Vatras_Novize_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Hi))
	&& (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Novize_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Novize_15_00"); //I want to become a water magician.
	AI_Output(self, hero, "Info_Mod_Vatras_Novize_16_01"); //Before you can become one of us, you must have helped us for a while.
	AI_Output(self, hero, "Info_Mod_Vatras_Novize_16_02"); //If you do a big job for us, I'll take you in. There you will do tasks for me and the other water magicians.
	AI_Output(self, hero, "Info_Mod_Vatras_Novize_16_03"); //When you have served us for some time then we will take you into the circle of water.

	B_LogEntry	(TOPIC_MOD_WASSERMAGIER, "To become a water magician I have to serve the water magicians for a while. But before I am admitted to serve the water magicians, I have a great task to accomplish.");
};

INSTANCE Info_Mod_Vatras_Aufgabe (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Aufgabe_Condition;
	information	= Info_Mod_Vatras_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's the task?";
};

FUNC INT Info_Mod_Vatras_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Novize))
	&& (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Aufgabe_15_00"); //What's the task?
	AI_Output(self, hero, "Info_Mod_Vatras_Aufgabe_16_01"); //More and more people are missing these days. Find out where they are.

	Log_CreateTopic	(TOPIC_MOD_VERMISSTE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_VERMISSTE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_VERMISSTE, "I'm supposed to find out where the missing people are for the water magicians.");

	Info_ClearChoices	(Info_Mod_Vatras_Aufgabe);

	Info_AddChoice	(Info_Mod_Vatras_Aufgabe, "Where should I start my search?", Info_Mod_Vatras_Aufgabe_Wo);
};

FUNC VOID Info_Mod_Vatras_Aufgabe_Wo()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Aufgabe_Wo_15_00"); //Where should I start my search?
	AI_Output(self, hero, "Info_Mod_Vatras_Aufgabe_Wo_16_01"); //Go to the harbour and talk to one of our members. His name is Diego.
	AI_Output(self, hero, "Info_Mod_Vatras_Aufgabe_Wo_16_02"); //Tell him I sent you, and he'll tell you everything he knows.

	Info_ClearChoices	(Info_Mod_Vatras_Aufgabe);

	B_LogEntry	(TOPIC_MOD_VERMISSTE, "They want me to go to the port and talk to Diego. He's gonna tell me everything you know about the missing persons.");
};

INSTANCE Info_Mod_Vatras_ErsteInfos (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_ErsteInfos_Condition;
	information	= Info_Mod_Vatras_ErsteInfos_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have initial information on the missing persons.";
};

FUNC INT Info_Mod_Vatras_ErsteInfos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gerbrandt_Da))
	&& (Sklavenliste_OneTime == TRUE)
	&& (Npc_HasItems(hero, Mod_Sklavenliste_DMR) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_ErsteInfos_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_ErsteInfos_15_00"); //I have initial information on the missing persons.
	AI_Output(self, hero, "Info_Mod_Vatras_ErsteInfos_16_01"); //Reports.
	AI_Output(hero, self, "Info_Mod_Vatras_ErsteInfos_15_02"); //I found this list near Fred's house.
	AI_Output(self, hero, "Info_Mod_Vatras_ErsteInfos_16_03"); //Let me see that.
	AI_Output(hero, self, "Info_Mod_Vatras_ErsteInfos_15_04"); //Here.

	B_GiveInvItems	(hero, self, Mod_Sklavenliste_DMR, 1);

	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Vatras_ErsteInfos_16_05"); //Very good. Very good. Looks like Elvrich is her next victim.
	AI_Output(self, hero, "Info_Mod_Vatras_ErsteInfos_16_06"); //Talk to him and tail him.

	B_GivePlayerXP	(150);

	B_LogEntry	(TOPIC_MOD_VERMISSTE, "Vatras says I should talk to Elvrich and then tail him.");

	B_Göttergefallen(2, 1);
};

INSTANCE Info_Mod_Vatras_Fertig (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Fertig_Condition;
	information	= Info_Mod_Vatras_Fertig_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found out who the kidnapper is.";
};

FUNC INT Info_Mod_Vatras_Fertig_Condition()
{
	if (Mod_VermisstenQuest == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Fertig_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Fertig_15_00"); //I found out who the kidnapper is.
	AI_Output(self, hero, "Info_Mod_Vatras_Fertig_16_01"); //Who is it?
	AI_Output(hero, self, "Info_Mod_Vatras_Fertig_15_02"); //A demon knight kidnapped Elvrich. So the missing people will be with the Demon Knights.
	AI_Output(self, hero, "Info_Mod_Vatras_Fertig_16_03"); //Really? What gives you this certainty?
	AI_Output(hero, self, "Info_Mod_Vatras_Fertig_15_04"); //I saw with my own eyes how Elvrich was kidnapped that night by a man wearing one of her armor.
	AI_Output(self, hero, "Info_Mod_Vatras_Fertig_16_05"); //And how did this hijacking go?
	AI_Output(hero, self, "Info_Mod_Vatras_Fertig_15_06"); //Well... the demon warrior has emerged from nowhere and disappeared in the same way as Elvrich.
	AI_Output(self, hero, "Info_Mod_Vatras_Fertig_16_07"); //Hmm, well, that all sounds very confusing.
	AI_Output(self, hero, "Info_Mod_Vatras_Fertig_16_08"); //And much remains hidden in the darkness of the night.
	AI_Output(self, hero, "Info_Mod_Vatras_Fertig_16_09"); //We won't know for sure until you find the kidnappers, too.
	AI_Output(self, hero, "Info_Mod_Vatras_Fertig_16_10"); //You've been directed. Get on your way and try to find out more from the demon warriors.
	AI_Output(self, hero, "Info_Mod_Vatras_Fertig_16_11"); //You'll find their camp somewhere in the Minental in the mountains.
	AI_Output(self, hero, "Info_Mod_Vatras_Fertig_16_12"); //I also heard they should own a mine. Perhaps this is also an important clue...

	B_LogEntry	(TOPIC_MOD_VERMISSTE, "Vatras instructed me to investigate the Demon Warriors about the missing persons. He mentioned a mine as a possible point of contact.");

	B_Göttergefallen(2, 1);

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Vatras_RealInfos (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_RealInfos_Condition;
	information	= Info_Mod_Vatras_RealInfos_Info;
	permanent	= 0;
	important	= 0;
	description	= "I now have the certainty (.... )";
};

FUNC INT Info_Mod_Vatras_RealInfos_Condition()
{
	if (Mod_WM_KurganAlarm >= 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_RealInfos_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_RealInfos_15_00"); //I now have the certainty that the demon warriors are behind everything.

	if (Mod_WM_ElvrichImSumpf == 4)
	{
		AI_Output(hero, self, "Info_Mod_Vatras_RealInfos_15_01"); //The kidnapped Elvrich himself told me about his fate and that of the others.
		AI_Output(self, hero, "Info_Mod_Vatras_RealInfos_16_02"); //What, where is he now? Still in captivity?
		AI_Output(hero, self, "Info_Mod_Vatras_RealInfos_15_03"); //No, he managed to escape from the mine, which turned the other one into a grave.
		AI_Output(hero, self, "Info_Mod_Vatras_RealInfos_15_04"); //He sits in the Minental in the camp of the swamp community and enjoys his life to the fullest.
		AI_Output(hero, self, "Info_Mod_Vatras_RealInfos_15_05"); //I also learned from him that a woman betrayed the men to the demon warriors, who were abducted by the chief of the mine with teleport magic.
		AI_Output(self, hero, "Info_Mod_Vatras_RealInfos_16_06"); //Hmm... what you're reporting to me is not inconsiderable for the security city.
		AI_Output(self, hero, "Info_Mod_Vatras_RealInfos_16_07"); //We will take the necessary steps as soon as possible to put a stop to this evil activity....

		B_GivePlayerXP	(650);
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Vatras_RealInfos_15_08"); //In an abandoned shaft of her mine, I found the bodies of three of the abductees.
		AI_Output(self, hero, "Info_Mod_Vatras_RealInfos_16_09"); //At Adanos (short pauses)? I was hoping they were still among the living...
		AI_Output(self, hero, "Info_Mod_Vatras_RealInfos_16_10"); //Well, at least now there is clarity about their fate and we can do everything necessary to put an end to this hustle and bustle within the city walls?

		B_GivePlayerXP	(400);
	};

	AI_Output(self, hero, "Info_Mod_Vatras_RealInfos_16_11"); //Be that as it may, you have done your job more than well and proved to me that you will be a worthy brother in our community.
	AI_Output(self, hero, "Info_Mod_Vatras_RealInfos_16_12"); //There's nothing standing in the way of you joining our ranks.

	if (Mod_Gilde == 0)
	{
		AI_Output(self, hero, "Info_Mod_Vatras_RealInfos_16_13"); //You can join us now.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Vatras_RealInfos_16_14"); //Unfortunately, you've already chosen another path.
	};

	Npc_RemoveInvItems	(hero, ItWr_DraalVermisstennotiz, 1);

	B_LogEntry	(TOPIC_MOD_VERMISSTE, "I've told Vatras everything. I can now join them.");

	B_SetTopicStatus	(TOPIC_MOD_VERMISSTE, LOG_SUCCESS);

	B_Göttergefallen(2, 3);
};

INSTANCE Info_Mod_Vatras_Aufnahme (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_vatras_Aufnahme_Condition;
	information	= Info_Mod_vatras_Aufnahme_Info;
	permanent	= 1;
	important	= 0;
	description	= "I'm ready to join you.";
};

FUNC INT Info_Mod_vatras_Aufnahme_Condition()
{
	if (Mod_Gilde == 0)
	&& ((Npc_KnowsInfo(hero, Info_Mod_Vatras_RealInfos))
	|| (Npc_KnowsInfo(hero, Info_Mod_Vatras_Kristall)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_vatras_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_vatras_Aufnahme_15_00"); //I'm ready to join you.
	
	if (hero.level >= 5)
	{
		AI_Output(self, hero, "Info_Mod_vatras_Aufnahme_16_01"); //You're ready to join us.
		AI_Output(self, hero, "Info_Mod_vatras_Aufnahme_16_02"); //But once you wear one of our armour, there's no turning back.
		
		if (Mod_HatPlayerNeutraleKlamotten())
		{
			if (Mod_Gottstatus > 8)
			|| (Mod_Gottstatus <= 4)
			{
				AI_Output(self, hero, "Info_Mod_Vatras_Aufnahme_16_05"); //You should, however, do a few more things in favor of Adanos first.
			}
			else
			{
				Info_ClearChoices	(Info_Mod_Vatras_Aufnahme);

				Info_AddChoice	(Info_Mod_Vatras_Aufnahme, "I changed my mind.", Info_Mod_Vatras_Aufnahme_Nein);
				Info_AddChoice	(Info_Mod_Vatras_Aufnahme, "I want to join you.", Info_Mod_Vatras_Aufnahme_Ja);
			};
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_vatras_Aufnahme_16_04"); //You should get yourself some neutral armor first.
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_vatras_Aufnahme_16_03"); //You better get some more experience.
	};
};

FUNC VOID Info_Mod_vatras_Aufnahme_Nein()
{
	AI_Output(hero, self, "Info_Mod_vatras_Aufnahme_Nein_15_00"); //I changed my mind.
	AI_Output(self, hero, "Info_Mod_vatras_Aufnahme_Nein_16_01"); //Whatever you say.

	Info_ClearChoices	(Info_Mod_vatras_Aufnahme);
};

FUNC VOID Info_Mod_vatras_Aufnahme_Ja()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Kristall))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Vatras_RealInfos)) {
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_52);
	} else {
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_53);
	};
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_55);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_61);
	
	AI_Output(hero, self, "Info_Mod_vatras_Aufnahme_Ja_15_00"); //I want to join you.
	AI_Output(self, hero, "Info_Mod_vatras_Aufnahme_Ja_16_01"); //Good. Here's your robe.

	CreateInvItems	(self, ITAR_Wassernovize1, 1);
	B_GiveInvItems	(self, hero, ITAR_Wassernovize1, 1);

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, ItAr_Wassernovize1);

	AI_Output(hero, self, "Info_Mod_vatras_Aufnahme_Ja_15_02"); //What about a gun?
	AI_Output(self, hero, "Info_Mod_vatras_Aufnahme_Ja_16_03"); //The novices have a baton with us. Here's yours.

	B_GiveInvItems	(self, hero, ItMw_RangerStaff_Addon, 1);

	AI_Output(self, hero, "Info_Mod_vatras_Aufnahme_Ja_16_04"); //If you need a better weapon, you have to buy one in the marketplace.
	AI_Output(self, hero, "Info_Mod_Vatras_Aufnahme_Ja_16_05"); //This rune should help you to safely defy the dangers that might be lurking on your way to my brothers.

	B_GiveInvItems	(self, hero, ItRu_Icebolt, 1);

	B_LogEntry_More	(TOPIC_MOD_WASSERMAGIER, TOPIC_MOD_GILDENAUFNAHME, "I am now a member of the Circle of Water.", "I am now a member of the Circle of Water.");
	B_SetTopicStatus	(TOPIC_MOD_WASSERMAGIER, LOG_SUCCESS);

	B_SetTopicStatus	(TOPIC_MOD_GILDENAUFNAHME, LOG_SUCCESS);

	B_SetTopicStatus	(TOPIC_MOD_FEUERMAGIER, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_DAEMONENBESCHWOERER, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_SÖLDNER, LOG_FAILED);

	Mod_Gilde = 9;

	hero.guild = GIL_NOV;
	Npc_SetTrueGuild	(hero, GIL_NOV);

	Info_ClearChoices	(Info_Mod_Vatras_Aufnahme);

	CreateInvItems	(Mod_9001_KDW_Cronos_AW, ItBE_Addon_WNOV_01, 1);

	Snd_Play ("LEVELUP");

	B_GivePlayerXP	(400);

	B_Göttergefallen(2, 5);
};

INSTANCE Info_Mod_Vatras_AkilsHof (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_AkilsHof_Condition;
	information	= Info_Mod_Vatras_AkilsHof_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mage Adanos', I have a request that requires your healing skills.";
};

FUNC INT Info_Mod_Vatras_AkilsHof_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Telbor_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Telbor_AllDead))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Akil_Heilung))
	&& (Mod_AkilsHofAusgestorben == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_AkilsHof_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_AkilsHof_15_00"); //Mage Adanos', I have a request that requires your healing skills.
	AI_Output(self, hero, "Info_Mod_Vatras_AkilsHof_16_01"); //So tell me what brings you to me.
	AI_Output(hero, self, "Info_Mod_Vatras_AkilsHof_15_02"); //On Akil's farm, bad things happened after a henchman of dark powers spent the night in her house.
	AI_Output(hero, self, "Info_Mod_Vatras_AkilsHof_15_03"); //Egill has inflicted severe injuries on his brother in an attack of tobacco addiction and the others are seriously ill within a very short time.
	AI_Output(self, hero, "Info_Mod_Vatras_AkilsHof_16_04"); //What do you say?! A lackey of evil? In that case, my options will hardly be sufficient.
	AI_Output(self, hero, "Info_Mod_Vatras_AkilsHof_16_05"); //It is probably more a form of obsession than ordinary illnesses, and my art fails.
	AI_Output(self, hero, "Info_Mod_Vatras_AkilsHof_16_06"); //You would do well to rush to the Monastery of Fire Magicians to recite your request there.
	AI_Output(self, hero, "Info_Mod_Vatras_AkilsHof_16_07"); //This simple potion should help Ehnim's suffering.

	B_GiveInvItems	(self, hero, ItPo_Health_01, 1);

	AI_Output(self, hero, "Info_Mod_Vatras_AkilsHof_16_08"); //Go now, you know what to do.
	
	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Vatras_Hexenfluch (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Hexenfluch_Condition;
	information	= Info_Mod_Vatras_Hexenfluch_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have a problem and I hope to get help from you.";
};

FUNC INT Info_Mod_Vatras_Hexenfluch_Condition()
{
	if (Mod_WM_Verflucht == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Hexenfluch_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Hexenfluch_15_00"); //I have a problem and I hope to get help from you.
	AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_16_01"); //Yes, I sense that you seem to be under the spell of a bad spell. What has happened?
	AI_Output(hero, self, "Info_Mod_Vatras_Hexenfluch_15_02"); //A woman in Orlan's tavern has cast treacherous magic on me.
	AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_16_03"); //What?! A woman?! That sounds like it to me.... of a witch.

	AI_TurnAway	(self, hero);

	AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_16_04"); //Here on Khorinis...

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_16_05"); //What exactly has happened?

	Info_ClearChoices	(Info_Mod_Vatras_Hexenfluch);

	if (Mod_AttraktiveFrau == 2)
	{
		Info_AddChoice	(Info_Mod_Vatras_Hexenfluch, "Uh... and made suggestive offers.", Info_Mod_Vatras_Hexenfluch_C);
	};
	Info_AddChoice	(Info_Mod_Vatras_Hexenfluch, "She spoke to me and I suddenly fell for her.", Info_Mod_Vatras_Hexenfluch_B);
	Info_AddChoice	(Info_Mod_Vatras_Hexenfluch, "Not much. She just spoke to me and I was suddenly in that state.", Info_Mod_Vatras_Hexenfluch_A);
};

FUNC VOID Info_Mod_Vatras_Hexenfluch_C()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Hexenfluch_C_15_00"); //Uh... and made suggestive offers. I'm sorry about that. I was foolish to get involved.
	AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_C_16_01"); //What?! Yeah, you've been acting really unworthy. (Slightly calmer) But I think it's a good thing you're telling me the truth.
	AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_C_16_02"); //I hope you learned from your mistake. Go to the monastery of Pyrokar now, because I can't help you with this matter.

	B_GivePlayerXP	(100);

	Info_ClearChoices	(Info_Mod_Vatras_Hexenfluch);
};

FUNC VOID Info_Mod_Vatras_Hexenfluch_B()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Hexenfluch_B_15_00"); //She spoke to me and I suddenly fell for her. I could do nothing and was subject to her will.

	if (Mod_AttraktiveFrau == 2)
	{
		AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_B_16_01"); //Yeah, is that right? It could actually be because witches are capable of such work. However, I cannot see that it is true.
		AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_B_16_02"); //If you get involved with demonic prostitutes in an immoral way - and of your own free will - at least confess it.
		AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_B_16_03"); //And while you are going to the monastery to Pyrokar, who can help you with your request, you should think carefully about your behaviour.
		AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_B_16_04"); //Now get out of my sight.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_B_16_05"); //Hmm, I can see in your eyes that you're telling the truth.
		AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_B_16_06"); //It actually corresponds to the nature of witches to be able to influence their victims.
		AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_B_16_07"); //Unfortunately, I'm not in a position to help you with this matter. It's best to go directly to Pyrokar Monastery.

		B_GivePlayerXP	(150);
	};

	Info_ClearChoices	(Info_Mod_Vatras_Hexenfluch);
};

FUNC VOID Info_Mod_Vatras_Hexenfluch_A()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Hexenfluch_A_15_00"); //Not much. She just spoke to me and I was suddenly in that state.
	AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_A_16_01"); //I can't see you telling me the truth.
	AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_A_16_02"); //If you're getting involved with demonic prostitutes in an immoral way, at least confess it.

	Info_ClearChoices	(Info_Mod_Vatras_Hexenfluch);

	Info_AddChoice	(Info_Mod_Vatras_Hexenfluch, "Yeah, you're right, I'm sorry.", Info_Mod_Vatras_Hexenfluch_E);
	Info_AddChoice	(Info_Mod_Vatras_Hexenfluch, "I'm sorry about that. She spoke to me and I suddenly fell for her.", Info_Mod_Vatras_Hexenfluch_D);
};

FUNC VOID Info_Mod_Vatras_Hexenfluch_E()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Hexenfluch_E_15_00"); //Yeah, you're right, I'm sorry.
	AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_E_16_01"); //I really hope for your sake you learn from your mistakes.
	AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_E_16_02"); //Now go to Pyrokar Monastery. You'll find help with him.

	Info_ClearChoices	(Info_Mod_Vatras_Hexenfluch);
};

FUNC VOID Info_Mod_Vatras_Hexenfluch_D()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Hexenfluch_D_15_00"); //I'm sorry about that. She spoke to me and I suddenly fell for her. I could do nothing and was subject to her will.

	if (Mod_AttraktiveFrau == 2)
	{
		AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_D_16_01"); //Yes, really? I am deeply saddened and angry that you lie to me again so shamelessly.
		AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_D_16_02"); //Now get out of my sight, you dirty liar.

		B_GivePlayerXP	(-100);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_D_16_03"); //Hmm, I sense at least there's truth in your words. Well, you would have done well to be sincere right away.
		AI_Output(self, hero, "Info_Mod_Vatras_Hexenfluch_D_16_04"); //Go to Pyrokar Monastery now. He can help you with your problem.
	};

	Info_ClearChoices	(Info_Mod_Vatras_Hexenfluch);
};

INSTANCE Info_Mod_Vatras_NovizenTrank (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_NovizenTrank_Condition;
	information	= Info_Mod_Vatras_NovizenTrank_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm supposed to pick up a medicine for the fire novices.";
};

FUNC INT Info_Mod_Vatras_NovizenTrank_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daron_ZugangZumKloster))
	&& (Npc_KnowsInfo(hero, Info_Mod_Vatras_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_NovizenTrank_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_NovizenTrank_15_00"); //I'm supposed to pick up a medicine for the fire novices.
	AI_Output(self, hero, "Info_Mod_Vatras_NovizenTrank_16_01"); //A medicine for the fire novices? What suffering needs to be cured?
	AI_Output(hero, self, "Info_Mod_Vatras_NovizenTrank_15_02"); //There seems to be a strong fever in the monastery, which has infected the novices.
	AI_Output(hero, self, "Info_Mod_Vatras_NovizenTrank_15_03"); //Inno's magic is not enough to heal the novices, so your healing skills are needed.
	AI_Output(self, hero, "Info_Mod_Vatras_NovizenTrank_16_04"); //Ah, the black fever. Take this potion, it should help.

	B_GiveInvItems	(self, hero, VatrasNovizenTrunk, 1);

	B_LogEntry	(TOPIC_MOD_DARONSGEFALLEN, "Vatras gave me the medicine.");
};

INSTANCE Info_Mod_Vatras_TempelDicht (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_TempelDicht_Condition;
	information	= Info_Mod_Vatras_TempelDicht_Info;
	permanent	= 0;
	important	= 0;
	description	= "I come with urgent news of your brothers.";
};

FUNC INT Info_Mod_Vatras_TempelDicht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Riordian_TempelDicht2))
	&& (Npc_KnowsInfo(hero, Info_Mod_Vatras_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_TempelDicht_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_TempelDicht_15_00"); //I come with urgent news of your brothers.
	AI_Output(self, hero, "Info_Mod_Vatras_TempelDicht_16_01"); //Speak, son.
	AI_Output(hero, self, "Info_Mod_Vatras_TempelDicht_15_02"); //The Water Magicians were attacked and captured in their own temple.
	AI_Output(hero, self, "Info_Mod_Vatras_TempelDicht_15_03"); //Access was sealed by a barrier that can only be opened by a magic key.
	AI_Output(hero, self, "Info_Mod_Vatras_TempelDicht_15_04"); //Riordian said you knew where that key was.
	AI_Output(self, hero, "Info_Mod_Vatras_TempelDicht_16_05"); //That is truly terrible news. I'd like to give you the key, but unfortunately he was stolen some time ago.
	AI_Output(hero, self, "Info_Mod_Vatras_TempelDicht_15_06"); //What? Who stole the key?
	AI_Output(self, hero, "Info_Mod_Vatras_TempelDicht_16_07"); //It was a member of the ominous blood cult. Blood cult is a group of despicable creatures who conjure up a disturbance of balance.
	AI_Output(hero, self, "Info_Mod_Vatras_TempelDicht_15_08"); //Where can the thief have fled to?
	AI_Output(self, hero, "Info_Mod_Vatras_TempelDicht_16_09"); //There is a cave near Orlan's tavern. If I recall correctly, there is one of the hiding places of the blood cult. Try your luck there.
	AI_Output(hero, self, "Info_Mod_Vatras_TempelDicht_15_10"); //Thanks for the tip.
	AI_Output(self, hero, "Info_Mod_Vatras_TempelDicht_16_11"); //One more thing! The blood cult has unknown abilities and powers that frighten even us. You should be careful.
	AI_Output(hero, self, "Info_Mod_Vatras_TempelDicht_15_12"); //I will, I will. I'm leaving now.
	AI_Output(self, hero, "Info_Mod_Vatras_TempelDicht_16_13"); //May you return safely!

	B_LogEntry	(TOPIC_MOD_BEL_TEMPEL, "The magic key was stolen some time ago by a follower of the blood cult. It is said to be located near Orlan's tavern in a cave. Vatras also warned me that the blood cult is very powerful. I should be on my guard.");

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Mod_4092_BlutkultKrieger_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_4093_BlutkultKrieger_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_4094_BlutkultKrieger_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_4095_BlutkultKrieger_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_4096_BlutkultKrieger_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_4097_BlutkultMagier_NW,	"TAVERNE");
};

INSTANCE Info_Mod_Vatras_TempelDicht2 (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_TempelDicht2_Condition;
	information	= Info_Mod_Vatras_TempelDicht2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found the key!";
};

FUNC INT Info_Mod_Vatras_TempelDicht2_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Riordian_TempelDicht3))
	&& (Npc_KnowsInfo(hero, Info_Mod_Vatras_TempelDicht))
	&& (Npc_HasItems(hero, ItKe_MagicTempelKey) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_TempelDicht2_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_TempelDicht2_15_00"); //I found the key!
	AI_Output(self, hero, "Info_Mod_Vatras_TempelDicht2_16_01"); //Very good, son. You are an extraordinary warrior.
	AI_Output(hero, self, "Info_Mod_Vatras_TempelDicht2_15_02"); //I'm going to go to Riordian right now and save the others.
	AI_Output(self, hero, "Info_Mod_Vatras_TempelDicht2_16_03"); //Do this, but hurry up. Time is not our ally.
	
	AI_StopProcessInfos	(self);

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Vatras_Kristall (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Kristall_Condition;
	information	= Info_Mod_Vatras_Kristall_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'll bring you the Paladin crystal.";
};

FUNC INT Info_Mod_Vatras_Kristall_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lothar_Bier))
	&& (Npc_HasItems(hero, Mod_PaladinKristall) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Kristall_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Kristall_15_00"); //I'll bring you the Paladin crystal.
	
	B_GiveInvItems	(hero, self, Mod_PaladinKristall, 1);

	AI_Output(self, hero, "Info_Mod_Vatras_Kristall_16_01"); //A valuable item. I will see to it that he takes his rightful place.
	AI_Output(self, hero, "Info_Mod_Vatras_Kristall_16_02"); //This act enables you to join us.

	B_GivePlayerXP	(200);

	B_LogEntry_More	(TOPIC_MOD_WASSERMAGIER, TOPIC_MOD_SÖLDNER, "Vatras says I can join the circle of water.", "I gave the crystal to Vatras. Torlof won't like that very much.");

	B_SetTopicStatus	(TOPIC_MOD_TORLOFSPIONAGE, LOG_FAILED);

	B_Göttergefallen(2, 3);
};

INSTANCE Info_Mod_Vatras_Sweetwater (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Sweetwater_Condition;
	information	= Info_Mod_Vatras_Sweetwater_Info;
	permanent	= 0;
	important	= 0;
	description	= "You want to see me?";
};

FUNC INT Info_Mod_Vatras_Sweetwater_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hock_JG_Sweetwater))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Sweetwater_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Sweetwater_15_00"); //You want to see me?
	AI_Output(self, hero, "Info_Mod_Vatras_Sweetwater_16_01"); //Quite so. I have received news that Saturas needs your help.
	AI_Output(self, hero, "Info_Mod_Vatras_Sweetwater_16_02"); //It's been a while. You better hurry up.
	AI_Output(hero, self, "Info_Mod_Vatras_Sweetwater_15_03"); //I'm already on my way....

	B_LogEntry	(TOPIC_MOD_JG_SWEETWATER, "Vatras sends me to Saturas. It's urgent again....");
};

INSTANCE Info_Mod_Vatras_Zeremoniendolch (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Zeremoniendolch_Condition;
	information	= Info_Mod_Vatras_Zeremoniendolch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Adanos, greeting. They say you know something about a ceremonial dagger.";
};

FUNC INT Info_Mod_Vatras_Zeremoniendolch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Amir_Zeremoniendolch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Zeremoniendolch_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Zeremoniendolch_15_00"); //Adanos, greeting. They say you know something about a ceremonial dagger.
	AI_Output(self, hero, "Info_Mod_Vatras_Zeremoniendolch_16_01"); //Only so much that records of such a relic were found in Jharkendar. You know Jharkendar?
	AI_Output(hero, self, "Info_Mod_Vatras_Zeremoniendolch_15_02"); //Yes, I opened the portal.
	AI_Output(self, hero, "Info_Mod_Vatras_Zeremoniendolch_16_03"); //Then talk to Merdarion. I'm sure he can tell you more.
	AI_Output(hero, self, "Info_Mod_Vatras_Zeremoniendolch_15_04"); //Thank you, magician.
	AI_Output(self, hero, "Info_Mod_Vatras_Zeremoniendolch_16_05"); //Hold on a second. If you go over there, you can take some things with you.
	AI_Output(self, hero, "Info_Mod_Vatras_Zeremoniendolch_16_06"); //Usually Cavalon does, but he hasn't been here in a long time.
	AI_Output(hero, self, "Info_Mod_Vatras_Zeremoniendolch_15_07"); //He is in the portal temple and stands there his legs in his belly.
	AI_Output(self, hero, "Info_Mod_Vatras_Zeremoniendolch_16_08"); //Then tell him to show up here. I have more to transport.
	AI_Output(hero, self, "Info_Mod_Vatras_Zeremoniendolch_15_09"); //That's what I do. What should I take with me?
	AI_Output(self, hero, "Info_Mod_Vatras_Zeremoniendolch_16_10"); //Here. You give this bag to the magician Cronos.

	B_GiveInvItems	(self, hero, ItMi_CronosBeutel, 1);

	AI_Output(hero, self, "Info_Mod_Vatras_Zeremoniendolch_15_11"); //It's done.

	B_LogEntry	(TOPIC_MOD_ASS_ZEREMONIENDOLCH, "Vatras sends me to Merdarion. I'm supposed to take a bag for Cronos and send Cavalon back.");
};

INSTANCE Info_Mod_Vatras_BosperLehrling (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_BosperLehrling_Condition;
	information	= Info_Mod_Vatras_BosperLehrling_Info;
	permanent	= 0;
	important	= 0;
	description	= "I need a tincture that transforms back when I touch it.";
};

FUNC INT Info_Mod_Vatras_BosperLehrling_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bosper_LehrlingQuest10))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_BosperLehrling_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_BosperLehrling_15_00"); //I need a tincture that transforms back when I touch it.

	if (hero.guild != GIL_KDF)
	{
		AI_Output(self, hero, "Info_Mod_Vatras_BosperLehrling_16_01"); //Tinctures are not my specialty.
		AI_Output(self, hero, "Info_Mod_Vatras_BosperLehrling_16_02"); //I can give you a role of reversion, which you then have to have an alchemist break down into its components.

		B_GiveInvItems	(self, hero, ItSc_Rueckverwandlung, 1);

		AI_Output(hero, self, "Info_Mod_Vatras_BosperLehrling_15_03"); //That helps me a lot. Thanks.

		Mod_Bosper_Tinktur = 1;

		B_LogEntry	(TOPIC_MOD_LEHRLING_BOSPER_FOUR, "Vatras only had a retroversion role for me, which I had to have dismantled by an alchemist so that a tincture could be made from it.");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Vatras_BosperLehrling_16_04"); //You don't seriously think I'd help a devil pendant like you?
		AI_Output(hero, self, "Info_Mod_Vatras_BosperLehrling_15_05"); //This is not a question of faith. Bosper is being pursued by remorse.
		AI_Output(self, hero, "Info_Mod_Vatras_BosperLehrling_16_06"); //(zweifelnd) Na ja, Tinctures are not my specialty.
		AI_Output(self, hero, "Info_Mod_Vatras_BosperLehrling_16_07"); //I could sell you a reversionary spell that you'd have to have an alchemist break down into its constituent parts.
		AI_Output(hero, self, "Info_Mod_Vatras_BosperLehrling_15_08"); //How much do you want?
		AI_Output(self, hero, "Info_Mod_Vatras_BosperLehrling_16_09"); //300 gold pieces. And no negotiations.
	};
};

INSTANCE Info_Mod_Vatras_BosperLehrling2 (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_BosperLehrling2_Condition;
	information	= Info_Mod_Vatras_BosperLehrling2_Info;
	permanent	= 0;
	important	= 0;
	description	= "All right, give me the scroll.";
};

FUNC INT Info_Mod_Vatras_BosperLehrling2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_BosperLehrling))
	&& (Mod_Bosper_Tinktur == 0)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_BosperLehrling2_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_BosperLehrling2_15_00"); //All right, give me the scroll.

	B_GiveInvItems	(hero, self, ItMi_Gold, 300);

	B_GiveInvItems	(self, hero, ItSc_Rueckverwandlung, 1);

	Mod_Bosper_Tinktur = 1;

	B_LogEntry	(TOPIC_MOD_LEHRLING_BOSPER_FOUR, "Vatras only had a retroversion role for me, which I had to have dismantled by an alchemist so that a tincture could be made from it.");
};

INSTANCE Info_Mod_Vatras_Kreis1	(C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Kreis1_Condition;
	information	= Info_Mod_Vatras_Kreis1_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me the first Circle of Magic.";
};
FUNC INT Info_Mod_Vatras_Kreis1_Condition()
{	
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Hi))
	&& ((Mod_Gilde == 9)
	|| (Mod_Gilde == 10)
	|| (Mod_Gilde == 11)
	|| (Mod_Gilde == 17)
	|| (Mod_Gilde == 18))
	&& (Mod_MagieKreis == 0)
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Vatras_Kreis1_Info ()
{
	AI_Output (hero, self, "Info_Mod_Vatras_Kreis1_15_00"); //Teach me the first circle of magic.
	
	if B_TeachMagicCircle (self, hero, 1)
	{
		AI_Output (self, hero, "Info_Mod_Vatras_Kreis1_16_01"); //The first circle allows you to use the runes you have created.
		AI_Output (self, hero, "Info_Mod_Vatras_Kreis1_16_02"); //You can now learn the spell formulas to create your own runes.

		Mod_MagieKreis = 1;
	};
};	
///////////////////////////////////////////////////////////////////////
//	Info TECH_CIRCLE_02
///////////////////////////////////////////////////////////////////////
INSTANCE Info_Mod_Vatras_Kreis2		(C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Kreis2_Condition;
	information	= Info_Mod_Vatras_Kreis2_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me the second Circle of Magic.";
};
FUNC INT Info_Mod_Vatras_Kreis2_Condition ()
{	
	if ((Mod_Gilde == 9)
	|| (Mod_Gilde == 10)
	|| (Mod_Gilde == 11)
	|| (Mod_Gilde == 17)
	|| (Mod_Gilde == 18))
	&& (Mod_MagieKreis == 1)
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Vatras_Kreis2_Info ()
{
	AI_Output (hero, self, "Info_Mod_Vatras_Kreis2_15_00"); //Teach me the second circle of magic.
	
	if (Kapitel >= 2)
	{
		if B_TeachMagicCircle (self, hero, 2)
		{
			AI_Output (self, hero, "Info_Mod_Vatras_Kreis2_16_01"); //Step into the second circle and learn to cast even more powerful spells.

			Mod_MagieKreis = 2;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Vatras_Kreis2_16_02"); //The time has not yet come.
	};
};	
///////////////////////////////////////////////////////////////////////
//	Info TECH_CIRCLE_03
///////////////////////////////////////////////////////////////////////
INSTANCE Info_Mod_Vatras_Kreis3		(C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Kreis3_Condition;
	information	= Info_Mod_Vatras_Kreis3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me the third Circle of Magic.";
};
FUNC INT Info_Mod_Vatras_Kreis3_Condition ()
{	
	if ((Mod_Gilde == 10)
	|| (Mod_Gilde == 11))
	&& (Mod_MagieKreis == 2)
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Vatras_Kreis3_Info ()
{
	AI_Output (hero, self, "Info_Mod_Vatras_Kreis3_15_00"); //Teach me the third circle of magic.
	
	if (Kapitel >= 3)
	{
		if B_TeachMagicCircle (self, hero, 3)
		{
			AI_Output (self, hero, "Info_Mod_Vatras_Kreis3_16_01"); //Yes, the time has come. Enter the third circle of magic. New spells await you.

			Mod_MagieKreis = 3;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Vatras_Kreis3_16_02"); //It's not yet time for you to learn the third circle.
	};
};		

INSTANCE Info_Mod_Vatras_Kreis4 (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Kreis4_Condition;
	information	= Info_Mod_Vatras_Kreis4_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to learn the fourth Circle of Magic.";
};

FUNC INT Info_Mod_Vatras_Kreis4_Condition()
{	
	if (Mod_MagieKreis == 3)
	&& ((Mod_Gilde == 10)
	|| (Mod_Gilde == 11))
	{
		return 1;
	};
};
FUNC VOID Info_Mod_Vatras_Kreis4_Info ()
{
	AI_Output (hero, self, "Info_Mod_Vatras_Kreis4_15_00"); //I want to learn the fourth circle of magic.
	
	if (Kapitel >= 4)
	{
		if B_TeachMagicCircle (self,hero, 4)
		{
			AI_Output (self, hero, "Info_Mod_Vatras_Kreis4_16_01"); //Good. All characters are fulfilled. Now step into the fourth circle so that you have the power of the new spells.

			Mod_MagieKreis = 4;
		};
	}
	else
	{
			AI_Output (self, hero, "Info_Mod_Vatras_Kreis4_16_02"); //It's not yet.
	};
};

INSTANCE Info_Mod_Vatras_Kreis5 (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Kreis5_Condition;
	information	= Info_Mod_Vatras_Kreis5_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to learn the fifth Circle of Magic.";
};

FUNC INT Info_Mod_Vatras_Kreis5_Condition()
{	
	if (Mod_MagieKreis == 4)
	&& (Mod_Gilde == 11)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Kreis5_Info()
{
	AI_Output (hero, self, "Info_Mod_Vatras_Kreis5_15_00"); //I want to learn the fifth circle of magic.
	
	if (Kapitel >= 5)
	{
		if B_TeachMagicCircle (self,hero, 5)
		{
			AI_Output (self, hero, "Info_Mod_Vatras_Kreis5_16_01"); //Then join the fifth circle of magic. You will now master more powerful spells than ever before.

			Mod_MagieKreis = 5;
		};
	}
	else
	{
			AI_Output (self, hero, "Info_Mod_Vatras_Kreis5_16_02"); //The time has not yet come.
	};
};

INSTANCE Info_Mod_Vatras_Kreis6	(C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Kreis6_Condition;
	information	= Info_Mod_Vatras_Kreis6_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me the last Circle of Magic.";
};

FUNC INT Info_Mod_Vatras_Kreis6_Condition()
{	
	if (Mod_MagieKreis == 5)
	&& (Mod_Gilde == 11)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Kreis6_Info()
{
	AI_Output (hero, self, "Info_Mod_Vatras_Kreis6_15_00"); //Teach me the last circle of magic.
	
	if (Kapitel >= 6)
	{
		if B_TeachMagicCircle (self,hero, 6)  
		{
			AI_Output (self, hero, "Info_Mod_Vatras_Kreis6_16_01"); //A lot of time has passed since you made your covenant with Innos. Much has happened and we find no peace.
			AI_Output (self, hero, "Info_Mod_Vatras_Kreis6_16_02"); //You are the Chosen Adanos'. And as such, you will need all the strength to survive your battles.
			AI_Output (self, hero, "Info_Mod_Vatras_Kreis6_16_03"); //I dedicate you now, elect. You're entering the sixth circle.
			AI_Output (self, hero, "Info_Mod_Vatras_Kreis6_16_04"); //You can now learn the spells of the last circle from Nefarius if you wish.

			Mod_MagieKreis = 6;
		};
	}
	else
	{
		AI_Output (self, hero, "Info_Mod_Vatras_Kreis6_16_05"); //It's not the time yet. If you have walked a little further on the way Beliar shows you, then I will instruct you.
	};
};

INSTANCE Info_Mod_Vatras_Lehrer (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Lehrer_Condition;
	information	= Info_Mod_Vatras_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who can teach me how to increase my magical power?";
};

FUNC INT Info_Mod_Vatras_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Hi))
	&& ((Mod_Gilde == 9)
	|| (Mod_Gilde == 10)
	|| (Mod_Gilde == 11))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Lehrer_15_00"); //Who can teach me how to increase my magical power?
	AI_Output(self, hero, "Info_Mod_Vatras_Lehrer_16_01"); //I can certainly help you with that.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_STADT, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_STADT, "Vatras can teach me how to raise my MANA.");
};

INSTANCE Info_Mod_Vatras_Lernen (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Lernen_Condition;
	information	= Info_Mod_Vatras_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me something.";
};

FUNC INT Info_Mod_Vatras_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_Lehrer))
	&& (hero.attribute[ATR_MANA_MAX]	<	300)
	&& ((Mod_Gilde == 9)
	|| (Mod_Gilde == 10)
	|| (Mod_Gilde == 11))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Lernen_15_00"); //Teach me something.

	Info_ClearChoices	(Info_Mod_Vatras_Lernen);

	Info_AddChoice		(Info_Mod_Vatras_Lernen, DIALOG_BACK, INFO_MOD_Vatras_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Vatras_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Vatras_Lernen_5);
	Info_AddChoice		(Info_Mod_Vatras_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Vatras_Lernen_1);
};

FUNC VOID Info_Mod_Vatras_Lernen_BACK()
{
	if (hero.attribute[ATR_MANA_MAX]	>=	300)
	{
		AI_Output(self, hero, "Info_Mod_Vatras_Lernen_BACK_16_01"); //Your magic skills are so good now, I can't teach you anything.
	};
	Info_ClearChoices	(Info_Mod_Vatras_Lernen);
};

FUNC VOID Info_Mod_Vatras_Lernen_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_MANA_MAX, 5, 300);

	Info_ClearChoices	(Info_Mod_Vatras_Lernen);

	Info_AddChoice		(Info_Mod_Vatras_Lernen, DIALOG_BACK, INFO_MOD_Vatras_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Vatras_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Vatras_Lernen_5);
	Info_AddChoice		(Info_Mod_Vatras_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Vatras_Lernen_1);
};

FUNC VOID Info_Mod_Vatras_Lernen_1()
{
	B_TeachAttributePoints (self, hero, ATR_MANA_MAX, 1, 300);

	Info_ClearChoices	(Info_Mod_Vatras_Lernen);

	Info_AddChoice		(Info_Mod_Vatras_Lernen, DIALOG_BACK, INFO_MOD_Vatras_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Vatras_Lernen, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Vatras_Lernen_5);
	Info_AddChoice		(Info_Mod_Vatras_Lernen, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Vatras_Lernen_1);
};

INSTANCE Info_Mod_Vatras_Ruestung (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Ruestung_Condition;
	information	= Info_Mod_Vatras_Ruestung_Info;
	permanent	= 1;
	important	= 0;
	description	= "Can I get a better robe with you?";
};

FUNC INT Info_Mod_Vatras_Ruestung_Condition()
{
	if ((Mod_Gilde == 9)
	|| (Mod_Gilde == 10))
	&& (Npc_KnowsInfo(hero, Info_Mod_Vatras_Hi))
	&& (Mod_ZweiteVerbesserung < 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vatras_Ruestung_Info()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Ruestung_15_00"); //Can I get a better robe with you?

	if (Kapitel > 1)
	&& (Mod_ErsteVerbesserung == FALSE)
	&& (Mod_Gilde < 10)
	{
		AI_Output(self, hero, "Info_Mod_Vatras_Ruestung_16_02"); //I've heard that a pack of water snappers is said to live near the lake northwest of the excavation site. With their skin I could certainly improve your water novice robe a little bit.
	
		Mod_ErsteVerbesserung = TRUE;
	
		Wld_InsertNpc	(Wassersnapper,	"NW_TROLLAREA_PATH_72");
		Wld_InsertNpc	(Wassersnapper,	"NW_TROLLAREA_PATH_72");
		Wld_InsertNpc	(Wassersnapper,	"NW_TROLLAREA_PATH_72");

		Log_CreateTopic	(TOPIC_MOD_RUESTUNGSUPGADSE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_RUESTUNGSUPGADSE, "Near the lake northwest of the excavation site there is a herd of water snapper, with whose skin Vatras can improve my water novice robe.");
	};

	if (Kapitel > 3)
	&& (Mod_ZweiteVerbesserung == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Vatras_Ruestung_16_03"); //I hear there's a water skater on the way to the excavation site. With its fur I could certainly improve your water magic robe a little bit.
	
		Mod_ZweiteVerbesserung = TRUE;
	
		Wld_InsertNpc	(Wasserlaeufer,	"FP_MAGICGOLEM");

		Log_CreateTopic	(TOPIC_MOD_RUESTUNGSUPGADSE, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_RUESTUNGSUPGADSE, "On the way to the water magician's excavation site there is a water stranger, whose fur Vatras can use to improve my water magic robe.");
	};

	Info_ClearChoices	(Info_Mod_Vatras_Ruestung);
	Info_AddChoice	(Info_Mod_Vatras_Ruestung, DIALOG_BACK, Info_Mod_Vatras_Ruestung_BACK);

	if (Mod_ErsteVerbesserung == TRUE)
	&& ((Mod_Gilde == 9)
	|| (Mod_Gilde == 10)
	|| (Mod_Gilde == 11)
	|| (Mod_Gilde == 17)
	|| (Mod_Gilde == 18))
	&& (Npc_HasItems(hero, ItAr_KDW_L_ADDON) == 0)
	&& (Mod_Gilde < 10)
	{
		Info_AddChoice	(Info_Mod_Vatras_Ruestung, "Water Novice Robe Improve", Info_Mod_Vatras_Ruestung_WNOV_S);
	};

	if (Mod_ZweiteVerbesserung == TRUE)
	&& ((Mod_Gilde == 9)
	|| (Mod_Gilde == 10)
	|| (Mod_Gilde == 11)
	|| (Mod_Gilde == 17)
	|| (Mod_Gilde == 18))
	{
		Info_AddChoice	(Info_Mod_Vatras_Ruestung, "Improve Water Magic Robe", Info_Mod_Vatras_Ruestung_KDW_S);
	};
};

FUNC VOID Info_Mod_Vatras_Ruestung_BACK ()
{
	Info_ClearChoices	(Info_Mod_Vatras_Ruestung);
};

FUNC VOID Info_Mod_Vatras_Ruestung_WNOV_S ()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Ruestung_WNOV_S_15_00"); //Improve my water novice robe.

	if (Npc_HasItems(hero, ItAt_WassersnapperHaut) >= 1)
	&& (Npc_HasItems(hero, ItAr_Wassernovize1) == 1)
	{
		AI_Output(self, hero, "Info_Mod_Vatras_Ruestung_WNOV_S_16_01"); //All clear.

		Npc_RemoveInvItems	(hero, ItAt_WassersnapperHaut, 1);
		
		AI_UnequipArmor	(hero);

		Npc_RemoveInvItems	(hero, ItAr_Wassernovize1, 1);

		CreateInvItems	(self, ItAr_WNOV_S, 1);

		B_GiveInvItems	(self, hero, ItAr_WNOV_S, 1);

		AI_UnequipArmor	(hero);
		AI_EquipArmor	(hero, ItAr_WNOV_S);

		Mod_ErsteVerbesserung = 2;
	}
	else if (Npc_HasItems(hero, ItAr_Wassernovize1) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Vatras_Ruestung_WNOV_S_16_02"); //You must have a water novice sample or I won't be able to fix it for you.
	}
	else if (Npc_HasItems(hero, ItAt_Wassersnapperhaut) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Vatras_Ruestung_WNOV_S_16_03"); //If you don't have snapper skin, I can't improve your armor.
	};

	Info_ClearChoices	(Info_Mod_Vatras_Ruestung);
};

FUNC VOID Info_Mod_Vatras_Ruestung_KDW_S ()
{
	AI_Output(hero, self, "Info_Mod_Vatras_Ruestung_KDW_S_15_00"); //Improve my water magic robe.

	if (Npc_HasItems(hero, ItAt_WaterShadowFur) == 1)
	&& (Npc_HasItems(hero, ItAr_KDW_L_ADDON) == 1)
	{
		AI_Output(self, hero, "Info_Mod_Vatras_Ruestung_KDW_S_16_01"); //All clear.

		Npc_RemoveInvItems	(hero, ItAt_WaterShadowFur, 1);
		
		AI_UnequipArmor	(hero);

		Npc_RemoveInvItems	(hero, ItAr_KDW_L_ADDON, 1);

		CreateInvItems	(self, ItAr_KDW_L_S, 1);

		B_GiveInvItems	(self, hero, ItAr_KDW_L_S, 1);

		AI_UnequipArmor	(hero);
		AI_EquipArmor	(hero, ItAr_KDW_L_S);

		Mod_ZweiteVerbesserung = 2;
	}
	else if (Npc_HasItems(hero, ItAr_KDW_L_ADDON) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Vatras_Ruestung_RIT_S_16_02"); //You must have a water magic robe or I won't be able to fix it for you.
	}
	else if (Npc_HasItems(hero, ItAt_WaterShadowFur) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Vatras_Ruestung_RIT_S_16_03"); //If you don't have the bouncing coat, I can't improve your armor.
	};

	Info_ClearChoices	(Info_Mod_Vatras_Ruestung);
};

INSTANCE Info_Mod_Vatras_Pickpocket (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_Pickpocket_Condition;
	information	= Info_Mod_Vatras_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Vatras_Pickpocket_Condition()
{
	C_Beklauen	(180, ItMi_Gold, 97);
};

FUNC VOID Info_Mod_Vatras_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Vatras_Pickpocket);

	Info_AddChoice	(Info_Mod_Vatras_Pickpocket, DIALOG_BACK, Info_Mod_Vatras_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Vatras_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Vatras_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Vatras_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Vatras_Pickpocket);
};

FUNC VOID Info_Mod_Vatras_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Vatras_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Vatras_Pickpocket);

		Info_AddChoice	(Info_Mod_Vatras_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Vatras_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Vatras_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Vatras_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Vatras_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Vatras_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Vatras_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Vatras_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Vatras_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Vatras_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Vatras_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Vatras_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Vatras_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Vatras_EXIT (C_INFO)
{
	npc		= Mod_524_KDW_Vatras_NW;
	nr		= 1;
	condition	= Info_Mod_Vatras_EXIT_Condition;
	information	= Info_Mod_Vatras_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Vatras_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Vatras_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
