INSTANCE Info_Mod_Torgan_Hi (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_Hi_Condition;
	information	= Info_Mod_Torgan_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torgan_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Torgan_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Torgan_Hi_13_00"); //Hold it, hold it right there. What are you doing here?
};

INSTANCE Info_Mod_Torgan_Dragomir (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_Dragomir_Condition;
	information	= Info_Mod_Torgan_Dragomir_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm from Dragomir.";
};

FUNC INT Info_Mod_Torgan_Dragomir_Condition()
{
	if (Mod_Drago == 4)
	&& (Npc_KnowsInfo(hero, Info_Mod_Torgan_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_Dragomir_Info()
{
	AI_Output(hero, self, "Info_Mod_Torgan_Dragomir_15_00"); //I'm from Dragomir.
	AI_Output(self, hero, "Info_Mod_Torgan_Dragomir_13_01"); //From Dragomir? Tell me, what's the situation in Khorinis?
	AI_Output(hero, self, "Info_Mod_Torgan_Dragomir_15_02"); //He's looking bad. His camp was attacked a few nights ago by black mages and bandits.
	AI_Output(hero, self, "Info_Mod_Torgan_Dragomir_15_03"); //Now he has built up a new camp near the old mine in the dark forest.
	AI_Output(self, hero, "Info_Mod_Torgan_Dragomir_13_04"); //That doesn't sound good. Thank you for this important information. We'll discuss the incident.
	AI_Output(self, hero, "Info_Mod_Torgan_Dragomir_13_05"); //In the meantime, I have a job for you. Are you interested?

	Log_CreateTopic	(TOPIC_MOD_JG_EREMITENCAMP, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_EREMITENCAMP, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_JG_LAGER, TOPIC_MOD_JG_EREMITENCAMP, "I told Torgan about the events in Khorinis. They'll discuss the incident.", "I can't go to the druids' camp. I will have to try to work out the access.");
	B_SetTopicStatus	(TOPIC_MOD_JG_LAGER, LOG_SUCCESS);

	B_Göttergefallen(2, 1);
};

INSTANCE Info_Mod_Torgan_Zwischenzeit (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_Zwischenzeit_Condition;
	information	= Info_Mod_Torgan_Zwischenzeit_Info;
	permanent	= 0;
	important	= 0;
	description	= "Let's hear it.";
};

FUNC INT Info_Mod_Torgan_Zwischenzeit_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_Dragomir))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_Zwischenzeit_Info()
{
	AI_Output(hero, self, "Info_Mod_Torgan_Zwischenzeit_15_00"); //Let's hear it.
	AI_Output(self, hero, "Info_Mod_Torgan_Zwischenzeit_13_01"); //I haven't heard from our scouts here in the Minental for a long time. Please check on them and see if they have any new information.

	Info_ClearChoices	(Info_Mod_Torgan_Zwischenzeit);

	Info_AddChoice	(Info_Mod_Torgan_Zwischenzeit, "All right, all right.", Info_Mod_Torgan_Zwischenzeit_B);
	Info_AddChoice	(Info_Mod_Torgan_Zwischenzeit, "All right, what do I get for it?", Info_Mod_Torgan_Zwischenzeit_A);
};

FUNC VOID Info_Mod_Torgan_Zwischenzeit_B()
{
	AI_Output(hero, self, "Info_Mod_Torgan_Zwischenzeit_B_15_00"); //All right, all right.
	AI_Output(self, hero, "Info_Mod_Torgan_Zwischenzeit_B_13_01"); //Well, the camp of the scouts is located quite right in the middle of the valley at a path that leads from the old camp to the new camp.
	AI_Output(self, hero, "Info_Mod_Torgan_Zwischenzeit_B_13_02"); //You can teleport back to me with her.

	B_GiveInvItems	(self, hero, ItSc_TeleportTorgan, 1);

	Log_CreateTopic	(TOPIC_MOD_JG_TORGANSINFOS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_TORGANSINFOS, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_TORGANSINFOS, "Torgan wants me to ask the scouts, who have their camp in the middle of the Mine Valley near a path from the old camp to the new camp, for new information.");

	Wld_InsertNpc	(Mod_1966_GRD_Gardist_MT, "OC1");
	B_KillNpc	(Mod_1966_GRD_Gardist_MT);
	B_KillNpc	(Mod_1964_JG_Jaeger_MT);
	B_KillNpc	(Mod_1965_JG_Jaeger_MT);

	Mod_Drago = 5;

	Info_ClearChoices	(Info_Mod_Torgan_Zwischenzeit);
};

FUNC VOID Info_Mod_Torgan_Zwischenzeit_A()
{
	AI_Output(hero, self, "Info_Mod_Torgan_Zwischenzeit_A_15_00"); //All right, what do I get for it?
	AI_Output(self, hero, "Info_Mod_Torgan_Zwischenzeit_A_13_01"); //Our thanks as Ranger.
	AI_Output(hero, self, "Info_Mod_Torgan_Zwischenzeit_A_15_02"); //Oh, great.

	Info_ClearChoices	(Info_Mod_Torgan_Zwischenzeit);

	Info_AddChoice	(Info_Mod_Torgan_Zwischenzeit, "All right, all right.", Info_Mod_Torgan_Zwischenzeit_B);
};

INSTANCE Info_Mod_Torgan_SpaeherTot (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_SpaeherTot_Condition;
	information	= Info_Mod_Torgan_SpaeherTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found them.";
};

FUNC INT Info_Mod_Torgan_SpaeherTot_Condition()
{
	if (Mod_Drago == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_SpaeherTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Torgan_SpaeherTot_15_00"); //I found them.
	AI_Output(self, hero, "Info_Mod_Torgan_SpaeherTot_13_01"); //And what did they say?

	Info_ClearChoices	(Info_Mod_Torgan_SpaeherTot);

	Info_AddChoice	(Info_Mod_Torgan_SpaeherTot, "They're dead. But I have found the body of a guardsman (.... )", Info_Mod_Torgan_SpaeherTot_B);
	Info_AddChoice	(Info_Mod_Torgan_SpaeherTot, "Nothing. They were as mute as a corpse.", Info_Mod_Torgan_SpaeherTot_A);
};

FUNC VOID Info_Mod_Torgan_SpaeherTot_C()
{
	AI_Output(hero, self, "Info_Mod_Torgan_SpaeherTot_C_15_00"); //Yeah.
	AI_Output(self, hero, "Info_Mod_Torgan_SpaeherTot_C_13_01"); //I can't believe it. So far, we have always lived in relative peace with the guards.
	AI_Output(self, hero, "Info_Mod_Torgan_SpaeherTot_C_13_02"); //I don't understand why they should attack our scouts. I must pass this on immediately.
	AI_Output(self, hero, "Info_Mod_Torgan_SpaeherTot_C_13_03"); //It can't be a coincidence that things are happening almost at the same time. There must be more to it than that.
	AI_Output(self, hero, "Info_Mod_Torgan_SpaeherTot_C_13_04"); //Here, take this as a reward for your efforts.

	CreateInvItems	(self, ItWr_Bauplan_Wolfsring_Leben, 1);
	B_GiveInvItems	(self, hero, ItWr_Bauplan_Wolfsring_Leben, 1);

	B_GivePlayerXP	(250);

	B_LogEntry	(TOPIC_MOD_JG_TORGANSINFOS, "I told Torgan about the dead scouts. He seemed very worried.");
	B_SetTopicStatus	(TOPIC_MOD_JG_TORGANSINFOS, LOG_SUCCESS);

	B_Göttergefallen(2, 1);
};

FUNC VOID Info_Mod_Torgan_SpaeherTot_B()
{
	AI_Output(hero, self, "Info_Mod_Torgan_SpaeherTot_B_15_00"); //They're dead. But I saw the body of a guardsman with them.
	AI_Output(self, hero, "Info_Mod_Torgan_SpaeherTot_B_13_01"); //What do you say? They're dead? ... a guardsman, you say?

	Info_ClearChoices	(Info_Mod_Torgan_SpaeherTot);

	Info_Mod_Torgan_SpaeherTot_C();
};

FUNC VOID Info_Mod_Torgan_SpaeherTot_A()
{
	AI_Output(hero, self, "Info_Mod_Torgan_SpaeherTot_A_15_00"); //Nothing. They were as mute as a corpse.
	AI_Output(self, hero, "Info_Mod_Torgan_SpaeherTot_A_13_01"); //What did you say? Those damned no-good bastards.... smoking swamp herb all day long or taking this new drug. These unreliable and untrustworthy....
	AI_Output(hero, self, "Info_Mod_Torgan_SpaeherTot_A_15_02"); //Hey, give me a break. They're dead and not fogged! Next to them, I found the body of a guardsman.
	AI_Output(self, hero, "Info_Mod_Torgan_SpaeherTot_A_13_03"); //Why don't you just say something like that, damn it? They're dead? And a guardsman is supposed to be lying dead next to them, too?

	Info_ClearChoices	(Info_Mod_Torgan_SpaeherTot);

	Info_Mod_Torgan_SpaeherTot_C();
};

INSTANCE Info_Mod_Torgan_GardistenZettel (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_GardistenZettel_Condition;
	information	= Info_Mod_Torgan_GardistenZettel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torgan_GardistenZettel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_NochEinAuftrag))
	&& (Npc_HasItems(hero, ItWr_MagicPaper) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_GardistenZettel_Info()
{
	AI_Output(self, hero, "Info_Mod_Torgan_GardistenZettel_13_00"); //Have you been to the other camps yet?
	AI_Output(hero, self, "Info_Mod_Torgan_GardistenZettel_15_01"); //Yeah.
	AI_Output(self, hero, "Info_Mod_Torgan_GardistenZettel_13_02"); //Did you find anything new?

	if (Npc_KnowsInfo(hero, Info_Mod_Torwache_Sekte_01_GardistenInfos))
	{
		AI_Output(hero, self, "Info_Mod_Torgan_GardistenZettel_15_03"); //Nothing unusual has happened at the cult camp.
		AI_Output(self, hero, "Info_Mod_Torgan_GardistenZettel_13_04"); //That was to be expected. They always take a while to catch on to it.

		B_GivePlayerXP	(500);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Torwache_AL_01_Halt))
	{
		AI_Output(hero, self, "Info_Mod_Torgan_GardistenZettel_15_05"); //I couldn't find anything else at the Old Camp.
		AI_Output(self, hero, "Info_Mod_Torgan_GardistenZettel_13_06"); //Nothing? Hm. We need to find out whether they really have nothing to do with it, or whether they are just pretending. They are all about trust.

		B_GivePlayerXP	(500);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Torwache_NL_01_GardistenInfos))
	{
		AI_Output(hero, self, "Info_Mod_Torgan_GardistenZettel_15_07"); //A guard of the New Camp was fired upon by unknowns.
		AI_Output(self, hero, "Info_Mod_Torgan_GardistenZettel_13_08"); //The New Camp was just shot at? Do you know more about it?

		if (Npc_KnowsInfo(hero, Info_Mod_Nodrak_BierInfos))
		{
			AI_Output(hero, self, "Info_Mod_Torgan_GardistenZettel_15_09"); //The bandits and rangers are suspected of having committed the cowardly attack.
			AI_Output(self, hero, "Info_Mod_Torgan_GardistenZettel_13_10"); //That is questionable. We need to react quickly and not let this mistake grow in the first place.

			if (Npc_KnowsInfo(hero, Info_Mod_Hecta_Hi))
			{
				AI_Output(hero, self, "Info_Mod_Torgan_GardistenZettel_15_11"); //I think I put the two shooters up.
				AI_Output(self, hero, "Info_Mod_Torgan_GardistenZettel_13_12"); //That is at least good news. This will make it easier for us to maintain our position.
			};
		}
		else
		{
			AI_Output(hero, self, "Info_Mod_Torgan_GardistenZettel_15_13"); //Unfortunately not.
		};

		B_GivePlayerXP	(500);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_GardistenInfos))
	{
		AI_Output(hero, self, "Info_Mod_Torgan_GardistenZettel_15_14"); //A few guardsmen appeared at the bandit camp, but were killed by them.
		AI_Output(self, hero, "Info_Mod_Torgan_GardistenZettel_13_15"); //That reinforces my suspicion that they may not be guardsmen at all. None of them would just roam around near the bandits.


		B_GivePlayerXP	(500);
	};

	AI_Output(self, hero, "Info_Mod_Torgan_GardistenZettel_13_16"); //Despite all this information, it is not enough. We need something solid to get a clue!
	AI_Output(self, hero, "Info_Mod_Torgan_GardistenZettel_13_17"); //The whole situation is still too opaque to make concrete assumptions.
	AI_Output(self, hero, "Info_Mod_Torgan_GardistenZettel_13_18"); //Is there anything else that could give us a clue to who did it?

	if (Npc_HasItems(hero, ItWr_MagicPaper) == 1)
	{
		if (Mod_SanchoHatZettel == 2)
		{
			AI_Output(hero, self, "Info_Mod_Torgan_GardistenZettel_15_19"); //Yeah, here, I got this note from the bandits. He came from one of the killed guardsmen.
		}
		else
		{
			AI_Output(hero, self, "Info_Mod_Torgan_GardistenZettel_15_20"); //Yes, here, I found this note. It comes from the guards who raided the New Camp.
		};
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Torgan_GardistenZettel_15_21"); //Yeah, I found these two notes.
		AI_Output(hero, self, "Info_Mod_Torgan_GardistenZettel_15_22"); //One comes from the guards who attacked the New Camp, the other from the bandits. They found him at one of the killed guardsmen.
	};

	AI_Output(self, hero, "Info_Mod_Torgan_GardistenZettel_13_23"); //Wonderful, can I see him?

	B_GiveInvItems	(hero, self, ItWr_MagicPaper, 1);
	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Torgan_GardistenZettel_13_24"); //This note is clearly of a magical nature. Please take it back and bring it to the druid Cyrco.
	AI_Output(self, hero, "Info_Mod_Torgan_GardistenZettel_13_25"); //You have completed the tasks entrusted to you with great success. From now on you are allowed access to our camp, as you have shown your confidence in us. Please come in.

	B_GiveInvItems	(self, hero, ItWr_MagicPaper, 1);

	B_LogEntry_More	(TOPIC_MOD_JG_GARDISTEN, TOPIC_MOD_JG_EREMITENCAMP, "I told Torgan about the events. He is very satisfied with the information and I am finally allowed to enter the camp.", "Thanks to my merits, I am now in the Druids' camp.");

	B_GivePlayerXP	(500);

	B_SetTopicStatus	(TOPIC_MOD_JG_EREMITENCAMP, LOG_SUCCESS);

	B_Göttergefallen(2, 2);
};

INSTANCE Info_Mod_Torgan_InsLager (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_InsLager_Condition;
	information	= Info_Mod_Torgan_InsLager_Info;
	permanent	= 1;
	important	= 0;
	description	= "Can I go to camp now?";
};

FUNC INT Info_Mod_Torgan_InsLager_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_SpaeherTot))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torgan_GardistenZettel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_InsLager_Info()
{
	AI_Output(hero, self, "Info_Mod_Torgan_InsLager_15_00"); //Can I go to camp now?
	AI_Output(self, hero, "Info_Mod_Torgan_InsLager_13_01"); //No, not yet.
};

INSTANCE Info_Mod_Torgan_SomethingInteresting (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_SomethingInteresting_Condition;
	information	= Info_Mod_Torgan_SomethingInteresting_Info;
	permanent	= 0;
	important	= 0;
	description	= "Did something happen?";
};

FUNC INT Info_Mod_Torgan_SomethingInteresting_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_SpaeherTot))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_SomethingInteresting_Info()
{
	AI_Output(hero, self, "Info_Mod_Torgan_SomethingInteresting_15_00"); //Did something happen?
	AI_Output(self, hero, "Info_Mod_Torgan_SomethingInteresting_13_01"); //First Dragomir and now our scouts. You're not bringing positive news, that's enough for me!
};

INSTANCE Info_Mod_Torgan_NochEinAuftrag (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_NochEinAuftrag_Condition;
	information	= Info_Mod_Torgan_NochEinAuftrag_Info;
	permanent	= 0;
	important	= 0;
	description	= "Is there anything else I can do for you?";
};

FUNC INT Info_Mod_Torgan_NochEinAuftrag_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_SomethingInteresting))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_NochEinAuftrag_Info()
{
	AI_Output(hero, self, "Info_Mod_Torgan_NochEinAuftrag_15_00"); //Is there anything else I can do for you?
	AI_Output(self, hero, "Info_Mod_Torgan_NochEinAuftrag_13_01"); //I must admit that I am not quite comfortable distributing tasks to an outsider. But it seems I have no choice.
	AI_Output(self, hero, "Info_Mod_Torgan_NochEinAuftrag_13_02"); //You have already proven your reliability, I expect you to be extremely discreet about our affairs.
	AI_Output(hero, self, "Info_Mod_Torgan_NochEinAuftrag_15_03"); //Of course it is.
	AI_Output(self, hero, "Info_Mod_Torgan_NochEinAuftrag_13_04"); //All right, watch out. We need to find out more about these supposed guardsmen.
	AI_Output(self, hero, "Info_Mod_Torgan_NochEinAuftrag_13_05"); //I just can't imagine that the old camp should attack us and leave the body of their buddy lying there with all his equipment.
	AI_Output(self, hero, "Info_Mod_Torgan_NochEinAuftrag_13_06"); //Find out if anyone in the other camps of the Valley of the Mine knows more about these "guards". The best way is to ask the gatekeepers of the cult camp, old camp and new camp.
	AI_Output(self, hero, "Info_Mod_Torgan_NochEinAuftrag_13_07"); //You should be particularly careful with the Old Camp, as I hear there are some tensions there.
	AI_Output(self, hero, "Info_Mod_Torgan_NochEinAuftrag_13_08"); //If you know where the bandits are, why don't you go and see the bandits? In the latest scout reports, they reportedly saw some in the south.
	AI_Output(self, hero, "Info_Mod_Torgan_NochEinAuftrag_13_09"); //As soon as you find out, come back to us right away.
	AI_Output(hero, self, "Info_Mod_Torgan_NochEinAuftrag_15_10"); //I'm already on my way!
	AI_Output(self, hero, "Info_Mod_Torgan_NochEinAuftrag_13_11"); //And here, take these speeding potions. I think you'll be able to use it.

	B_GiveInvItems	(self, hero, ItPo_Speed, 4);

	AI_Output(self, hero, "Info_Mod_Torgan_NochEinAuftrag_13_12"); //And I have a spell for you again.

	B_GiveInvItems	(self, hero, ItSc_TeleportTorgan, 1);

	Log_CreateTopic	(TOPIC_MOD_JG_GARDISTEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_GARDISTEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Torgan wants me to find out more about the guards. For this purpose I should ask the gatekeepers of the various camps here in the Minental for information. I should watch out for the old camp.");
};

INSTANCE Info_Mod_Torgan_Scharmuetzel (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_Scharmuetzel_Condition;
	information	= Info_Mod_Torgan_Scharmuetzel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torgan_Scharmuetzel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orun_Cyrco))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_Scharmuetzel_Info()
{
	AI_Output(self, hero, "Info_Mod_Torgan_Scharmuetzel_13_00"); //Who were they? What did they want? They didn't say a word.
	AI_Output(hero, self, "Info_Mod_Torgan_Scharmuetzel_15_01"); //Maybe Cyrco knows something. Let's see now.
};

INSTANCE Info_Mod_Torgan_Turm (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_Turm_Condition;
	information	= Info_Mod_Torgan_Turm_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torgan_Turm_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wulfgar_Hi))
	&& (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_Turm_Info()
{
	AI_Output(self, hero, "Info_Mod_Torgan_Turm_13_00"); //Eh. I'm glad you came. Wulfgar wants to see you.
	AI_Output(hero, self, "Info_Mod_Torgan_Turm_15_01"); //I'm on my way.
};

INSTANCE Info_Mod_Torgan_Turm2 (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_Turm2_Condition;
	information	= Info_Mod_Torgan_Turm2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torgan_Turm2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Suchender_Turm))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_Turm2_Info()
{
	AI_Output(self, hero, "Info_Mod_Torgan_Turm2_13_00"); //It's you again.
	AI_Output(hero, self, "Info_Mod_Torgan_Turm2_15_01"); //I have to....
	AI_Output(self, hero, "Info_Mod_Torgan_Turm2_13_02"); //Hold on, hold on. You hear that guy up there in the tower?
	AI_Output(self, hero, "Info_Mod_Torgan_Turm2_13_03"); //He's screaming his lungs out.
	AI_Output(hero, self, "Info_Mod_Torgan_Turm2_15_04"); //Na und? Soll er doch. I have to....
	AI_Output(self, hero, "Info_Mod_Torgan_Turm2_13_05"); //Why don't you go outside and ask him what he wants? You've got something good on you, too.

	Info_ClearChoices	(Info_Mod_Torgan_Turm2);

	Info_AddChoice	(Info_Mod_Torgan_Turm2, "I can't do that. I have to see Wulfgar.", Info_Mod_Torgan_Turm2_A);
	Info_AddChoice	(Info_Mod_Torgan_Turm2, "All right, all right. I'll take your word for it.", Info_Mod_Torgan_Turm2_B);
};

FUNC VOID Info_Mod_Torgan_Turm2_B()
{
	AI_Output(hero, self, "Info_Mod_Torgan_Turm2_B_15_00"); //All right, all right. I'll take your word for it.

	Mod_JG_TurmwaechterFelle = 1;

	Info_ClearChoices	(Info_Mod_Torgan_Turm2);
};

FUNC VOID Info_Mod_Torgan_Turm2_A()
{
	AI_Output(hero, self, "Info_Mod_Torgan_Turm2_A_15_00"); //I can't do that. I have to see Wulfgar.

	Info_ClearChoices	(Info_Mod_Torgan_Turm2);
};

INSTANCE Info_Mod_Torgan_WeicheFelle (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_WeicheFelle_Condition;
	information	= Info_Mod_Torgan_WeicheFelle_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torgan_WeicheFelle_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_JGTurmwache_Felle))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_WeicheFelle_Info()
{
	AI_Output(self, hero, "Info_Mod_Torgan_WeicheFelle_13_00"); //And? What does the screamer want?
	AI_Output(hero, self, "Info_Mod_Torgan_WeicheFelle_15_01"); //A fur. A warm, soft coat.
	AI_Output(self, hero, "Info_Mod_Torgan_WeicheFelle_13_02"); //Let him move. That's where he gets warm. Or no.
	AI_Output(self, hero, "Info_Mod_Torgan_WeicheFelle_13_03"); //I hear the alchemist's doing something new with the skins. Ask him that.
	AI_Output(hero, self, "Info_Mod_Torgan_WeicheFelle_15_04"); //All right, I will. See you around.

	B_LogEntry	(TOPIC_MOD_JG_TURMFELLE, "Wulfgar's doing something with the skins. Good to know.");
};

INSTANCE Info_Mod_Torgan_Nahkampf (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_Nahkampf_Condition;
	information	= Info_Mod_Torgan_Nahkampf_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torgan_Nahkampf_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cyrco_Opferschale))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_Nahkampf_Info()
{
	AI_Output(self, hero, "Info_Mod_Torgan_Nahkampf_13_00"); //Na. Back to new adventures?
	AI_Output(hero, self, "Info_Mod_Torgan_Nahkampf_15_01"); //Adventure? New warehouse is better. Getting new people.
	AI_Output(self, hero, "Info_Mod_Torgan_Nahkampf_13_02"); //You can look right out there. There's a guy loitering around. Could be a mercenary.
	AI_Output(hero, self, "Info_Mod_Torgan_Nahkampf_15_03"); //That's a good thing.

	Wld_InsertNpc	(Mod_7475_SLD_Falin_MT, "WP_MT_JAEGERLAGER_05");
};

INSTANCE Info_Mod_Torgan_Nahkampf2 (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_Nahkampf2_Condition;
	information	= Info_Mod_Torgan_Nahkampf2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torgan_Nahkampf2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Falin_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Hock_NahkampfJG))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_Nahkampf2_Info()
{
	AI_Output(self, hero, "Info_Mod_Torgan_Nahkampf2_13_00"); //Beautiful day today.
	AI_Output(hero, self, "Info_Mod_Torgan_Nahkampf2_15_01"); //I don't know about that. It's definitely strenuous again.
};

INSTANCE Info_Mod_Torgan_Sweetwater (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_Sweetwater_Condition;
	information	= Info_Mod_Torgan_Sweetwater_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torgan_Sweetwater_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hock_JG_Sweetwater))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_Sweetwater_Info()
{
	AI_Output(self, hero, "Info_Mod_Torgan_Sweetwater_13_00"); //You're gone again? You just got here.
	AI_Output(hero, self, "Info_Mod_Torgan_Sweetwater_15_01"); //As you can see. Somebody has to do something....
	AI_Output(self, hero, "Info_Mod_Torgan_Sweetwater_13_02"); //Hmm...
};

INSTANCE Info_Mod_Torgan_Drachental (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_Drachental_Condition;
	information	= Info_Mod_Torgan_Drachental_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Torgan_Drachental_Condition()
{
	if (Mod_JG_SuchenderDT == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_Drachental_Info()
{
	AI_Output(self, hero, "Info_Mod_Torgan_Drachental_13_00"); //You've been gone a long time this time. What was going on?
	AI_Output(hero, self, "Info_Mod_Torgan_Drachental_15_01"); //Stress without end. I'll tell you on occasion.
	AI_Output(self, hero, "Info_Mod_Torgan_Drachental_13_02"); //Your word in Adano's ear!
	AI_Output(hero, self, "Info_Mod_Torgan_Drachental_15_03"); //See you around.
};

INSTANCE Info_Mod_Torgan_AlterMann (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_AlterMann_Condition;
	information	= Info_Mod_Torgan_AlterMann_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ask about old man in the woods.";
};

FUNC INT Info_Mod_Torgan_AlterMann_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgahard_AlterWaldMann))
	&& (Mod_BDT_AlterWaldMann < 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_AlterMann_Info()
{
	if (Mod_BDT_AlterWaldMann == 0)
	{
		B_Say	(hero, self, "$ALTERWALDMANN01");

		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_13_00"); //Ahh, you mean the old man of the woods. Yeah, I know something about him.
		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_13_01"); //It is said to be centuries old and to protect the animals of the forest around Khorata.
		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_13_02"); //It is said that he is blind, but at the same time he has a magical talent.
		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_13_03"); //That's all I can think of right now. Maybe someone else knows more.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "From the first ranger I didn't get much new information. The old man of the forest, protecting the animals, he is ancient, blind and magical. Maybe another ranger knows more.");
	}
	else if (Mod_BDT_AlterWaldMann == 1)
	{
		B_Say	(hero, self, "$ALTERWALDMANN02");

		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_13_04"); //The old man of the forest? Yes, I heard he was once a servant of Adano.
		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_13_05"); //It is unclear whether he was a ranger like us, a magician of water, or a transforming mage.
		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_13_06"); //His magical abilities, as well as his strong attachment to the animal and plant world are proof that he has something of everything.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "At the 2nd ranger I also didn't learn much worth knowing. The old man of the forest is said to be connected with Adanos and creation, especially the animals and plants.");
	}
	else if (Mod_BDT_AlterWaldMann == 2)
	{
		B_Say	(hero, self, "$ALTERWALDMANN03");

		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_13_07"); //Well, I can't tell you much about him.
		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_13_08"); //The problem is also that he does not talk to anyone, not even us, even if we are pursuing similar goals.
		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_13_09"); //Alone with the animals of the forest he entertains himself.
		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_13_10"); //Well, if I were a boar, I'm sure I could tell you more about him.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Acha, this could have been an important clue. The old man of the forest completely avoids humans, only speaks to animals.");
	}
	else if (Mod_BDT_AlterWaldMann == 3)
	{
		B_Say	(hero, self, "$ALTERWALDMANN04");

		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_13_11"); //The old man of the forest? Well, he's supposed to be closely related to the fauna and flora.
		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_13_12"); //It is said that he leads pack animals such as boar or wolves to protect the forest against intruders.
		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_13_13"); //Even it is said that it is often found in the shape of a green wolf.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Above all, he should also instruct larger pack animals such as boar and wolves to protect the forest against intruders.");
	}
	else if (Mod_BDT_AlterWaldMann == 4)
	{
		B_Say	(hero, self, "$ALTERWALDMANN05");

		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_13_14"); //You're interested in stories about the old man of the forest?
		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_13_15"); //Well, I don't know much about this mystical oddball.
		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_13_16"); //It is said to reside mostly in the dark forest, but also near water bodies such as lakes.
		AI_Output(self, hero, "Info_Mod_Torgan_AlterMann_13_17"); //Rarely has someone seen him....

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "It is most likely to be found in Khorata's dense forest near a lake.");
	};

	Mod_BDT_AlterWaldMann += 1;
};

INSTANCE Info_Mod_Torgan_Asylanten (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_Asylanten_Condition;
	information	= Info_Mod_Torgan_Asylanten_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why are you hunters here in the Minental?";
};

FUNC INT Info_Mod_Torgan_Asylanten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_Asylanten_Info()
{
	AI_Output(hero, self, "Info_Mod_Torgan_Asylanten_15_00"); //Why are you hunters here in the Minental?
	AI_Output(self, hero, "Info_Mod_Torgan_Asylanten_13_01"); //Well, about our profession.
	AI_Output(self, hero, "Info_Mod_Torgan_Asylanten_13_02"); //The Minental is a dangerous place, and the camps send out only a few of their own hunters, so there is a lot of loot to make for us here.
	AI_Output(hero, self, "Info_Mod_Torgan_Asylanten_15_03"); //Have you been in contact with other camps?
	AI_Output(self, hero, "Info_Mod_Torgan_Asylanten_13_04"); //Not much. Most of them are felons. We don't want anything to do with them.

	B_LogEntry	(TOPIC_MOD_HAGEN_ASYLANTEN, "A troop of hunters has also found their way into the Minental. However, it is only there to hunt and hardly comes into contact with the other groups.");
};

INSTANCE Info_Mod_Torgan_WerBistDu (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_WerBistDu_Condition;
	information	= Info_Mod_Torgan_WerBistDu_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Torgan_WerBistDu_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_WerBistDu_Info()
{
	AI_Output(hero, self, "Info_Mod_Torgan_WerBistDu_15_00"); //Who are you?
	AI_Output(self, hero, "Info_Mod_Torgan_WerBistDu_13_01"); //My name is Torgan and I'm instructed not to let anyone unknown in.
};

INSTANCE Info_Mod_Torgan_WasBewachstDu (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_WasBewachstDu_Condition;
	information	= Info_Mod_Torgan_WasBewachstDu_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you protecting there?";
};

FUNC INT Info_Mod_Torgan_WasBewachstDu_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_WasBewachstDu_Info()
{
	AI_Output(hero, self, "Info_Mod_Torgan_WasBewachstDu_15_00"); //What are you protecting there?
	AI_Output(self, hero, "Info_Mod_Torgan_WasBewachstDu_13_01"); //We are rangers and hunters, one of our camps is located here at the moment, which should not be entered by any strangers.
};

INSTANCE Info_Mod_Torgan_Wegschauen (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_Wegschauen_Condition;
	information	= Info_Mod_Torgan_Wegschauen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Couldn't you make one small exception (...) )";
};

FUNC INT Info_Mod_Torgan_Wegschauen_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Torgan_WerBistDu))
	|| (Npc_KnowsInfo(hero, Info_Mod_Torgan_WasBewachstDu)))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torgan_GardistenZettel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torgan_Wegschauen_Info()
{
	AI_Output(hero, self, "Info_Mod_Torgan_Wegschauen_15_00"); //Couldn't you make a little exception and look the other way?
	AI_Output(self, hero, "Info_Mod_Torgan_Wegschauen_13_01"); //No! Can't you listen? Maybe some of our hunting squads have something for you to do, they're after them.
	AI_Output(self, hero, "Info_Mod_Torgan_Wegschauen_13_02"); //Dragomir in Khorinis is always enough for you.
};

INSTANCE Info_Mod_Torgan_Lernen (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr          	= 1;
	condition	= Info_Mod_Torgan_Lernen_Condition;
	information	= Info_Mod_Torgan_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "What can you teach me?";
};

FUNC INT Info_Mod_Torgan_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dusty_Hi))
	{
		return 1;
	};
};

var int Mod_Torgan_Lehrer;

FUNC VOID Info_Mod_Torgan_Lernen_ShowOptions()
{
	Info_ClearChoices	(Info_Mod_Torgan_Lernen);

	Info_AddChoice	(Info_Mod_Torgan_Lernen, DIALOG_BACK, Info_Mod_Torgan_Lernen_BACK);

	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Torgan_Lernen, B_BuildLearnString ("Teeth torn",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Teeth)), Info_Mod_Torgan_Lernen_Teeth);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Torgan_Lernen, B_BuildLearnString ("Chipping claws",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Claws)), Info_Mod_Torgan_Lernen_Claws);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Torgan_Lernen, B_BuildLearnString("fly spine", B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_BFSting)), Info_Mod_Torgan_Lernen_BFSting);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Torgan_Lernen, B_BuildLearnString ("skin",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Fur)), Info_Mod_Torgan_Lernen_Fur);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_TrollTeeth] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Torgan_Lernen, B_BuildLearnString ("Trollhauer ripped",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_TrollTeeth)), Info_Mod_Torgan_Lernen_TrollTeeth);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_SwampSharkTeeth] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Torgan_Lernen, B_BuildLearnString ("swamp shark teeth pull",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_SwampSharkTeeth)), Info_Mod_Torgan_Lernen_SwampsharkTeeth);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_ReptileSkin] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Torgan_Lernen, B_BuildLearnString ("Skinning of reptiles",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_ReptileSkin)), Info_Mod_Torgan_Lernen_ReptileSkin);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Heart] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Torgan_Lernen, B_BuildLearnString ("take hearts",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Heart)), Info_Mod_Torgan_Lernen_Heart);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_ShadowHorn] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Torgan_Lernen, B_BuildLearnString ("Take the shadow runner horns",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_ShadowHorn)), Info_Mod_Torgan_Lernen_ShadowHorn);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_FireTongue] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Torgan_Lernen, B_BuildLearnString ("snap tongues of fire",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_FireTongue)), Info_Mod_Torgan_Lernen_FireTongue);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFWing] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Torgan_Lernen, B_BuildLearnString ("Take wing",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_BFWing)), Info_Mod_Torgan_Lernen_BFWing);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Mandibles] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Torgan_Lernen, B_BuildLearnString ("steal",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_Mandibles)), Info_Mod_Torgan_Lernen_Mandibles);
	};
	if (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_DrgSnapperHorn] == FALSE)
	{ 
		Info_AddChoice	(Info_Mod_Torgan_Lernen, B_BuildLearnString ("take the dragon snapperhorn",B_GetLearnCostTalent (hero,NPC_TALENT_TAKEANIMALTROPHY, TROPHY_DrgSnapperHorn)), Info_Mod_Torgan_Lernen_DrgSnapperHorn);
	};
};

FUNC VOID Info_Mod_Torgan_Lernen_Info()
{
	if (Mod_Torgan_Lehrer == FALSE) {
		Mod_Torgan_Lehrer = TRUE;
		
		Log_CreateTopic	(TOPIC_MOD_LEHRER_WALDIS, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_WALDIS, "Torgan can teach me to take different hunting trophies.");
	};
	AI_Output(hero, self, "Info_Mod_Torgan_Lernen_15_00"); //What can you teach me?

	if ((PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Claws] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Fur] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Teeth] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSting] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_TrollTeeth] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_SwampSharkTeeth] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_ReptileSkin] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Heart] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_ShadowHorn] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_FireTongue] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFWing] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_Mandibles] == FALSE)
	|| (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_DrgSnapperHorn] == FALSE))
	{
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_13_01"); //Depends on what you want to know.

		Info_Mod_Torgan_Lernen_ShowOptions();
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_13_02"); //I can't teach you any more than you already know. Sorry about that.
	};
};

FUNC void Info_Mod_Torgan_Lernen_BACK()
{
	Info_ClearChoices (Info_Mod_Torgan_Lernen);
};

FUNC void Info_Mod_Torgan_Lernen_Claws()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_Claws))
	{
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_Claws_13_00"); //Animals don't like to give their claws away. You have to hit the exact spot where you're going with your knife.
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_Claws_13_01"); //The posture of your hand should be slightly entangled. With a strong jolt you cut off the claw.
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_Claws_13_02"); //Claws are always a sought-after means of payment for a trader.
	};

	Info_Mod_Torgan_Lernen_ShowOptions();
		
};

FUNC void Info_Mod_Torgan_Lernen_Teeth()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_Teeth))
	{
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_Teeth_13_00"); //The easiest thing you can extract from animals is their teeth. You're driving your knife around the dentures in his mouth.
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_Teeth_13_01"); //Then you skillfully separate it from the animal's skull with a jerk.
	};

	Info_Mod_Torgan_Lernen_ShowOptions();
};

FUNC void Info_Mod_Torgan_Lernen_BFSting()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_BFSting))
	{
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_BFSting_13_00"); //The fly has a soft spot on the back.
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_BFSting_13_01"); //If you press your hand against it, the sting extends very far and you can cut it with a knife.
	};

	Info_Mod_Torgan_Lernen_ShowOptions();
};

FUNC void Info_Mod_Torgan_Lernen_Fur()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_Fur))
	{
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_Fur_13_00"); //The best way to remove fur is to make a deep cut on the animal's hind legs.
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_Fur_13_01"); //Then you can always pull the fur from the front to the back very easily.
	};

	Info_Mod_Torgan_Lernen_ShowOptions();
};

FUNC void Info_Mod_Torgan_Lernen_TrollTeeth()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_TrollTeeth))
	{
	};

	Info_Mod_Torgan_Lernen_ShowOptions();
};

FUNC void Info_Mod_Torgan_Lernen_SwampSharkTeeth()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_SwampSharkTeeth))
	{
	};

	Info_Mod_Torgan_Lernen_ShowOptions();
};

FUNC void Info_Mod_Torgan_Lernen_ReptileSkin()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_ReptileSkin))
	{
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_ReptileSkin_13_00"); //When you cut the skin on the sides, it will detach itself. You shouldn't have a problem skinning lizards from now on.
	};

	Info_Mod_Torgan_Lernen_ShowOptions();
};

FUNC void Info_Mod_Torgan_Lernen_Heart()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_Heart))
	{
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_Heart_13_00"); //A heart is removed from the animal with a clever incision in the chest. However, it is often only worthwhile for special animals or magical beings.
	};

	Info_Mod_Torgan_Lernen_ShowOptions();
};

FUNC void Info_Mod_Torgan_Lernen_ShadowHorn()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_ShadowHorn))
	{
	};

	Info_Mod_Torgan_Lernen_ShowOptions();
};

FUNC void Info_Mod_Torgan_Lernen_FireTongue()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_FireTongue))
	{
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_FireTongue_13_00"); //You strike the tongue of a fire monitor with a knife cut out of your mouth while holding it with the other hand.
	};

	Info_Mod_Torgan_Lernen_ShowOptions();
};

FUNC void Info_Mod_Torgan_Lernen_BFWing()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_BFWing))
	{
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_BFWing_13_00"); //The best way to remove the wings of a fly is to cut a sharp blade very close to the body of the fly.
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_BFWing_13_01"); //Just make sure you don't damage the fine fabric of the wings. They're worthless unless you do it carefully.
	};

	Info_Mod_Torgan_Lernen_ShowOptions();
};

FUNC void Info_Mod_Torgan_Lernen_Mandibles()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_Mandibles))
	{
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_Mandibles_13_00"); //Sure, after you kill the cattle, grab it by the tongs and rip it out. Then the secretion gland comes out without tearing.
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_Mandibles_13_01"); //By the way, I've heard that this is how it works with field robbers.
	};

	Info_Mod_Torgan_Lernen_ShowOptions();
};

FUNC void Info_Mod_Torgan_Lernen_DrgSnapperHorn()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy(self, hero, TROPHY_DrgSnapperHorn))
	{
		AI_Output(self, hero, "Info_Mod_Torgan_Lernen_DrgSnapperHorn_13_00"); //At the base of the dragon snapper's forehead is the best place to separate the horn from the skull with a stable knife.
	};

	Info_Mod_Torgan_Lernen_ShowOptions();
};

INSTANCE Info_Mod_Torgan_Pickpocket (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_Pickpocket_Condition;
	information	= Info_Mod_Torgan_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Torgan_Pickpocket_Condition()
{
	C_Beklauen	(105, ItMi_Gold, 39);
};

FUNC VOID Info_Mod_Torgan_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Torgan_Pickpocket);

	Info_AddChoice	(Info_Mod_Torgan_Pickpocket, DIALOG_BACK, Info_Mod_Torgan_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Torgan_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Torgan_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Torgan_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Torgan_Pickpocket);
};

FUNC VOID Info_Mod_Torgan_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Torgan_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Torgan_Pickpocket);

		Info_AddChoice	(Info_Mod_Torgan_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Torgan_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Torgan_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Torgan_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Torgan_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Torgan_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Torgan_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Torgan_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Torgan_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Torgan_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Torgan_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Torgan_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Torgan_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Torgan_EXIT (C_INFO)
{
	npc		= Mod_1963_JG_Torgan_MT;
	nr		= 1;
	condition	= Info_Mod_Torgan_EXIT_Condition;
	information	= Info_Mod_Torgan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Torgan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Torgan_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
