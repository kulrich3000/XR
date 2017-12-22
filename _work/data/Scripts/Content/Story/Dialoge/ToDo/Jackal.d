INSTANCE Info_Mod_Jackal_Hi (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_Hi_Condition;
	information	= Info_Mod_Jackal_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jackal_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jackal_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Jackal_Hi_07_00"); //Well, look who's here. You've had a bad day, and then there's you, too.
};

INSTANCE Info_Mod_Jackal_WoProblem (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_WoProblem_Condition;
	information	= Info_Mod_Jackal_WoProblem_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's the problem?";
};

FUNC INT Info_Mod_Jackal_WoProblem_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jackal_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_WoProblem_Info()
{
	AI_Output(hero, self, "Info_Mod_Jackal_WoProblem_15_00"); //What's the problem?
	AI_Output(self, hero, "Info_Mod_Jackal_WoProblem_07_01"); //I just don't like you.
	AI_Output(hero, self, "Info_Mod_Jackal_WoProblem_15_02"); //No, I mean, besides me.
	AI_Output(self, hero, "Info_Mod_Jackal_WoProblem_07_03"); //Oh, that sucks. I could bite my ass.
	AI_Output(self, hero, "Info_Mod_Jackal_WoProblem_07_04"); //Last night I drank with the boys at the campfire in the castle and when they unpacked their swamp cabbage stalks, I started to rave about my box of varant tobacco.
	AI_Output(self, hero, "Info_Mod_Jackal_WoProblem_07_05"); //This is really one of the best varieties there is, and of course everyone wanted to see the box.
	AI_Output(self, hero, "Info_Mod_Jackal_WoProblem_07_06"); //Drunk as I was, I got it and showed it and before I knew it, I had given all the tobacco away, except for the last crumb.
	AI_Output(self, hero, "Info_Mod_Jackal_WoProblem_07_07"); //This morning, of course, no one else knew anything about it, and I have no idea who I gave everything to.
	AI_Output(self, hero, "Info_Mod_Jackal_WoProblem_07_08"); //The tobacco is now safely distributed throughout the castle and the entire camp.

	Info_ClearChoices	(Info_Mod_Jackal_WoProblem);

	Info_AddChoice	(Info_Mod_Jackal_WoProblem, "I don't think you'll ever see that tobacco again.", Info_Mod_Jackal_WoProblem_B);
	Info_AddChoice	(Info_Mod_Jackal_WoProblem, "I could keep my eyes open.", Info_Mod_Jackal_WoProblem_A);
};

FUNC VOID Info_Mod_Jackal_WoProblem_B()
{
	AI_Output(hero, self, "Info_Mod_Jackal_WoProblem_B_15_00"); //You'll probably never see the tobacco again.
	AI_Output(self, hero, "Info_Mod_Jackal_WoProblem_B_07_01"); //That's why I would be in the right mood to stab you with my sword a second asshole.

	Info_ClearChoices	(Info_Mod_Jackal_WoProblem);
};

FUNC VOID Info_Mod_Jackal_WoProblem_A()
{
	AI_Output(hero, self, "Info_Mod_Jackal_WoProblem_A_15_00"); //I could keep my eyes open.
	AI_Output(self, hero, "Info_Mod_Jackal_WoProblem_A_07_01"); //It won't do you any good. The only way to find the tobacco is with your nose. It has a pungent smell of bitter vanilla with a hint of saffron.
	AI_Output(self, hero, "Info_Mod_Jackal_WoProblem_A_07_02"); //If you find any remnants of my tobacco, bring them to me immediately!

	Info_ClearChoices	(Info_Mod_Jackal_WoProblem);

	Log_CreateTopic	(TOPIC_MOD_JACKAL_TABAK, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JACKAL_TABAK, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JACKAL_TABAK, "Jackal gave away his entire stock of varant tobacco when he got pissed off, but now he wants it back at all costs. He's probably scattered all over the castle by now. I recognize him by his distinctive scent of vanilla and saffron.");

	Wld_InsertItem	(ItMi_JackalTabak_01, "FP_ITEM_JACKALTABAK_01");
	Wld_InsertItem	(ItMi_JackalTabak_02, "FP_ITEM_JACKALTABAK_02");
	Wld_InsertItem	(ItMi_JackalTabak_03, "FP_ITEM_JACKALTABAK_03");
	Wld_InsertItem	(ItMi_JackalTabak_04, "FP_ITEM_JACKALTABAK_04");
	Wld_InsertItem	(ItMi_JackalTabak_05, "FP_ITEM_JACKALTABAK_05");
	Wld_InsertItem	(ItMi_JackalTabak_06, "FP_ITEM_JACKALTABAK_06");
	Wld_InsertItem	(ItMi_JackalTabak_07, "FP_ITEM_JACKALTABAK_07");
	Wld_InsertItem	(ItMi_JackalTabak_08, "FP_ITEM_JACKALTABAK_08");
	Wld_InsertItem	(ItMi_JackalTabak_09, "FP_ITEM_JACKALTABAK_09");
	Wld_InsertItem	(ItMi_JackalTabak_10, "FP_ITEM_JACKALTABAK_10");
	Wld_InsertItem	(ItMi_JackalTabak_11, "FP_ITEM_JACKALTABAK_11");
	Wld_InsertItem	(ItMi_JackalTabak_12, "FP_ITEM_JACKALTABAK_12");
	Wld_InsertItem	(ItMi_JackalTabak_13, "FP_ITEM_JACKALTABAK_13");
};

var int TabakReceived;

INSTANCE Info_Mod_Jackal_HabTabak (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_HabTabak_Condition;
	information	= Info_Mod_Jackal_HabTabak_Info;
	permanent	= 1;
	important	= 0;
	description	= "I have something here for you....";
};

FUNC INT Info_Mod_Jackal_HabTabak_Condition()
{
	Spine_UpdateAchievementProgress(SPINE_ACHIEVEMENT_8, TabakReceived);
	if (Npc_HasItems(hero, ItMi_JackalTabak) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_HabTabak_Info()
{
	var int goldamount; goldamount = Npc_HasItems(hero, ItMi_JackalTabak);
	var int epamount; epamount = goldamount;

	AI_Output(hero, self, "Info_Mod_Jackal_HabTabak_15_00"); //I have something here for you....

	B_GiveInvItems	(hero, self, ItMi_JackalTabak, goldamount);
	Npc_RemoveInvItems(self, ItMi_JackalTabak, Npc_HasItems(self, ItMi_JackalTabak));
	TabakReceived += goldamount;

	if (TabakReceived == 13)
	{
		AI_Output(self, hero, "Info_Mod_Jackal_HabTabak_07_01"); //I don't believe it! The box is full again! You brought me back all my tobacco.
		AI_Output(self, hero, "Info_Mod_Jackal_HabTabak_07_02"); //l-- I don't know what to say. But I'm gonna do a little jumping for that.

		if (Mod_Jackal_Tabak_1 == FALSE)
		&& (Mod_Jackal_Tabak_7 == FALSE)
		{
			goldamount += 6;

			Mod_Jackal_Tabak_1 = TRUE;
		}
		else if (Mod_Jackal_Tabak_1 == TRUE)
		&& (Mod_Jackal_Tabak_7 == FALSE)
		{
			goldamount += 5;

			Mod_Jackal_Tabak_1 = TRUE;
		}
		else if (Mod_Jackal_Tabak_1 == FALSE)
		&& (Mod_Jackal_Tabak_7 == TRUE)
		{
			goldamount += 1;

			Mod_Jackal_Tabak_1 = TRUE;
		};

		goldamount += 12;

		epamount += 10;

		CurrentNQ += 1;

		B_SetTopicStatus	(TOPIC_MOD_JACKAL_TABAK, LOG_SUCCESS);
	}
	else if (TabakReceived >= 7)
	&& (Mod_Jackal_Tabak_7 == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Jackal_HabTabak_07_03"); //That should be more than half the tobacco by now. Good work. There's a little bonus.

		if (Mod_Jackal_Tabak_1 == FALSE)
		{
			goldamount += 6;

			Mod_Jackal_Tabak_1 = TRUE;
		}
		else
		{
			goldamount += 5;
		};

		Mod_Jackal_Tabak_7 = TRUE;
	}
	else if (TabakReceived >= 1)
	&& (Mod_Jackal_Tabak_1 == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Jackal_HabTabak_07_04"); //You actually found some of my tobacco. At least I got a little bit back now.
		AI_Output(self, hero, "Info_Mod_Jackal_HabTabak_07_05"); //Here, that's worth something.

		goldamount += 1;

		Mod_Jackal_Tabak_1 = TRUE;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Jackal_HabTabak_07_06"); //You got more? Thanks, man.
	};

	B_GiveInvItems	(self, hero, ItMi_Gold, goldamount*20);

	B_GivePlayerXP	(epamount*30);
};

INSTANCE Info_Mod_Jackal_Dieb (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_Dieb_Condition;
	information	= Info_Mod_Jackal_Dieb_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've heard...";
};

FUNC INT Info_Mod_Jackal_Dieb_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Dieb))
	&& (Mod_PDV_Jackal_Infos == 0)
	&& (Mod_PDV_Fisk_Infos == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_Dieb_Info()
{
	AI_Output(hero, self, "Info_Mod_Jackal_Dieb_15_00"); //I hear they're stealing from the arch barons, and you're on the suspect list.
	AI_Output(self, hero, "Info_Mod_Jackal_Dieb_07_01"); //Well, you hear a lot and not always the right thing.
	AI_Output(hero, self, "Info_Mod_Jackal_Dieb_15_02"); //You tell me what you know, or you'll wish you were born dead.
	AI_Output(self, hero, "Info_Mod_Jackal_Dieb_07_03"); //Then come over here!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_NONE, 0);
};

INSTANCE Info_Mod_Jackal_Frage (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_Frage_Condition;
	information	= Info_Mod_Jackal_Frage_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you have any idea...";
};

FUNC INT Info_Mod_Jackal_Frage_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Dieb))
	&& (Mod_PDV_Jackal_Infos == 0)
	&& (Mod_PDV_Fisk_Infos == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_Frage_Info()
{
	AI_Output(hero, self, "Info_Mod_Jackal_Frage_15_00"); //Do you have any idea who might be responsible for the theft at the Archbarons?
	AI_Output(self, hero, "Info_Mod_Jackal_Frage_07_01"); //No, but if I knew who it was, I wouldn't tell you.
	AI_Output(hero, self, "Info_Mod_Jackal_Frage_15_02"); //You tell me what you know, or you'll wish you were born dead.
	AI_Output(self, hero, "Info_Mod_Jackal_Frage_07_03"); //Then come over here!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_NONE, 0);
};

INSTANCE Info_Mod_Jackal_Dealer (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_Dealer_Condition;
	information	= Info_Mod_Jackal_Dealer_Info;
	permanent	= 0;
	important	= 0;
	description	= "lf l--";
};

FUNC INT Info_Mod_Jackal_Dealer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Dieb))
	&& (Mod_PDV_Jackal_Infos == 0)
	&& (Mod_PDV_Fisk_Infos == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_Dealer_Info()
{
	AI_Output(hero, self, "Info_Mod_Jackal_Dealer_15_00"); //Wenn ich "particular" Waren kaufen möchte, an wen sollte ich mich da wenden?
	AI_Output(self, hero, "Info_Mod_Jackal_Dealer_07_01"); //If I were you, I'd try Fisk.
	AI_Output(hero, self, "Info_Mod_Jackal_Dealer_15_02"); //I see, maybe he can help me.

	Mod_PDV_Jackal_Infos = 1;

	Mod_PDV_Genug_Infos += 1;

	B_LogEntry	(TOPIC_MOD_PDV, "Jackal apparently knows something, but the only information I got was that I should try Fisk.");
};

INSTANCE Info_Mod_Jackal_Umgehauen (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_Umgehauen_Condition;
	information	= Info_Mod_Jackal_Umgehauen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jackal_Umgehauen_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Jackal_Dieb))
	|| (Npc_KnowsInfo(hero, Info_Mod_Jackal_Frage)))
	&& (Mod_PDV_Jackal_Infos == 0)
	&& (Mod_PDV_Fisk_Infos == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_Umgehauen_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Jackal_Umgehauen_07_00"); //Okay, okay, you win. But I'm the wrong man for this. You better go to Fisk.

			Mod_PDV_Jackal_Infos	=	1;

			Mod_PDV_Genug_Infos += 1;

			B_LogEntry	(TOPIC_MOD_PDV, "Jackal apparently knows something, but the only information I got was that I should try Fisk.");
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Jackal_Umgehauen_07_01"); //Get lost, I'll kill you next time!
		};
							
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};
};

INSTANCE Info_Mod_Jackal_Fluchthilfe (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_Fluchthilfe_Condition;
	information	= Info_Mod_Jackal_Fluchthilfe_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jackal_Fluchthilfe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gardist1_Hi))
	&& (Npc_IsDead(Mod_1895_GRD_Gardist_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_Fluchthilfe_Info()
{
	AI_Output(self, hero, "Info_Mod_Jackal_Fluchthilfe_07_00"); //Take that spell and get out of here.

	B_GiveInvItems	(self, hero, ItSc_TeleportVorAL, 1);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Jackal_KillMission (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_KillMission_Condition;
	information	= Info_Mod_Jackal_KillMission_Info;
	permanent	= 0;
	important	= 0;
	description	= "I heard you can help me with my assignment.";
};

FUNC INT Info_Mod_Jackal_KillMission_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Makanius_KillMission))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_KillMission_Info()
{
	AI_Output(hero, self, "Info_Mod_Jackal_KillMission_15_00"); //I heard you can help me with my assignment.
	AI_Output(self, hero, "Info_Mod_Jackal_KillMission_07_01"); //Yes, I can. I should have taken him out, but Bartholo suspects me.
	AI_Output(hero, self, "Info_Mod_Jackal_KillMission_15_02"); //So, how can you help me?
	AI_Output(self, hero, "Info_Mod_Jackal_KillMission_07_03"); //I've been gathering intel on the targets.
	AI_Output(self, hero, "Info_Mod_Jackal_KillMission_07_04"); //Fletcher is usually standing in front of the inner ring, but he reports to Bloodwyn at 10 pm at night.
	AI_Output(self, hero, "Info_Mod_Jackal_KillMission_07_05"); //Ian is usually in the outer ring near the former hut of Diego, but he goes to the arena fights at noon and only comes back in the evening, after which he goes to his guarded hut and sleeps.
	AI_Output(self, hero, "Info_Mod_Jackal_KillMission_07_06"); //Cathran goes from the royal guard's camp every morning to the old camp, where he reports something new to Bloodwyn.
	AI_Output(self, hero, "Info_Mod_Jackal_KillMission_07_07"); //Afterwards he is in the house of the guards until evening, where he gets drunk in the pub and then goes back to the royal guard where he spied on them.
	AI_Output(self, hero, "Info_Mod_Jackal_KillMission_07_08"); //You can't leave the camp, though.

	B_LogEntry	(TOPIC_MOD_AL_KillMission, "Jackal gave me information about the targets: Fletcher walks over the inner ring at 10:00 p. m., so I could catch him.");
	B_LogEntry	(TOPIC_MOD_AL_KillMission, "Ian goes to the arena fights at noon and only returns in the evening. Good moment to take him out.");
	B_LogEntry	(TOPIC_MOD_AL_KillMission, "Cathran comes to the old camp in the morning and leaves it again in the evening. In the evening, I think it's a good chance to kill him.");

	Wld_SendTrigger	("EVT_OC_MAINGATE01_01");
};

INSTANCE Info_Mod_Jackal_AllDead (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_AllDead_Condition;
	information	= Info_Mod_Jackal_AllDead_Info;
	permanent	= 0;
	important	= 0;
	description	= "All three of them are dead.";
};

FUNC INT Info_Mod_Jackal_AllDead_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jackal_KillMission))
	&& (Npc_IsDead(Mod_1113_GRD_Fletcher_MT))
	&& (Npc_IsDead(Mod_1902_STT_Ian_MT))
	&& (Npc_IsDead(Mod_1025_KGD_Cathran_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_AllDead_Info()
{
	AI_Output(hero, self, "Info_Mod_Jackal_AllDead_15_00"); //All three of them are dead.
	AI_Output(self, hero, "Info_Mod_Jackal_AllDead_07_01"); //All right, go and get teleported back to the mountain fort at Alissandro.

	AI_Teleport	(Mod_1876_EBR_Bloodwyn_MT, "WP_LAUSCH_BLOODWYN");
	B_StartOtherRoutine	(Mod_1876_EBR_Bloodwyn_MT, "BELAUSCHEN");
	AI_Teleport	(Mod_1876_EBR_Bloodwyn_MT, "WP_LAUSCH_BLOODWYN");
};

INSTANCE Info_Mod_Jackal_AngriffBloodwyn (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_AngriffBloodwyn_Condition;
	information	= Info_Mod_Jackal_AngriffBloodwyn_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jackal_AngriffBloodwyn_Condition()
{
	if (Mod_AL_BloodwynBartholoGefangen == 2)
	&& (Npc_GetDistToWP(self, "CASTLE_MOVEMENT_STRAIGHT") < 10000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_AngriffBloodwyn_Info()
{
	AI_Output(self, hero, "Info_Mod_Jackal_AngriffBloodwyn_07_00"); //Attack!

	B_StartOtherRoutine	(Mod_1145_GRD_Gardist_MT, "FLUCHT");

	AI_StopProcessInfos	(self);
	
	Mod_1876_EBR_Bloodwyn_MT.flags = 0;

	B_Attack	(self, Mod_1876_EBR_Bloodwyn_MT, AR_Kill, 0);
};

INSTANCE Info_Mod_Jackal_BloodwynDead (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_BloodwynDead_Condition;
	information	= Info_Mod_Jackal_BloodwynDead_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jackal_BloodwynDead_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Jackal_AngriffBloodwyn))
	|| (Mod_AL_BloodwynBartholoGefangen == 2))
	&& (Npc_IsDead(Mod_1876_EBR_Bloodwyn_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_BloodwynDead_Info()
{
	AI_Output(self, hero, "Info_Mod_Jackal_BloodwynDead_07_00"); //Now we must warn Alissandro.
	
	B_LogEntry	(TOPIC_MOD_AL_KillMission, "Jackal helped me kill Bloodwyn outside the camp. However, we must warn Alissandro.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Jackal_AtZuflucht (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_AtZuflucht_Condition;
	information	= Info_Mod_Jackal_AtZuflucht_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jackal_AtZuflucht_Condition()
{
	if (Mod_AL_EnteredGobboCaveFirstTime == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_AtZuflucht_Info()
{
	AI_Output(self, hero, "Info_Mod_Jackal_AtZuflucht_07_00"); //Damn, lucky I found you in time.
	AI_Output(hero, self, "Info_Mod_Jackal_AtZuflucht_15_01"); //What's happening?
	AI_Output(self, hero, "Info_Mod_Jackal_AtZuflucht_07_02"); //I have protected Alissandro as much as possible, but we got into a fight with guardsmen.
	AI_Output(self, hero, "Info_Mod_Jackal_AtZuflucht_07_03"); //We were able to defeat them, but Alissandro sent me away afterwards. He said it would get too much attention when we were together.
	AI_Output(hero, self, "Info_Mod_Jackal_AtZuflucht_15_04"); //And what's the problem?
	AI_Output(self, hero, "Info_Mod_Jackal_AtZuflucht_07_05"); //Alissandro said that if he doesn't report immediately, when he reaches the sanctuary, I should look for him.
	AI_Output(hero, self, "Info_Mod_Jackal_AtZuflucht_15_06"); //Well, where should we look?
	AI_Output(self, hero, "Info_Mod_Jackal_AtZuflucht_07_07"); //We got lost in the sunken tower.
	AI_Output(hero, self, "Info_Mod_Jackal_AtZuflucht_15_08"); //Well, let's have a look around.
	AI_Output(self, hero, "DEFAULT"); //

	Log_CreateTopic	(TOPIC_MOD_AL_WhereAlissandro, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AL_WhereAlissandro, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_AL_WhereAlissandro, "Jackal said Alissandro could be in danger. I should go to Xardas's sunken tower where he lost Alissandro.");

	self.aivar[AIV_PARTYMEMBER] = TRUE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATTURM");
	B_StartOtherRoutine	(Mod_1870_EBR_Alissandro_MT, "GEFANGEN");	
	B_StartOtherRoutine	(Mod_1141_GRD_Gardist_MT, "ATTURM");
};

INSTANCE Info_Mod_Jackal_AtTurm (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_AtTurm_Condition;
	information	= Info_Mod_Jackal_AtTurm_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jackal_AtTurm_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gardist2_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_AtTurm_Info()
{
	AI_Output(self, hero, "Info_Mod_Jackal_AtTurm_07_00"); //You caught Alissandro?
	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Jackal_WeHaveToGoToOC (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_WeHaveToGoToOC_Condition;
	information	= Info_Mod_Jackal_WeHaveToGoToOC_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jackal_WeHaveToGoToOC_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gardist2_Jackal))
	&& (Npc_IsDead(Mod_1141_GRD_Gardist_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_WeHaveToGoToOC_Info()
{
	AI_Output(self, hero, "Info_Mod_Jackal_WeHaveToGoToOC_07_00"); //He said they caught Alissandro and tried to execute him, but they can't get away with it. We must go to the old camp!

	B_LogEntry	(TOPIC_MOD_AL_WhereAlissandro, "A guardsman attacked us at the tower. He said Alissandro was captured and is to be executed.");
	
	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOOLDCAMP");
};

INSTANCE Info_Mod_Jackal_AtOC (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_AtOC_Condition;
	information	= Info_Mod_Jackal_AtOC_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jackal_AtOC_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jackal_WeHaveToGoToOC))
	&& (Npc_GetDistToWP(self, "OC_ROUND_1") < 2000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_AtOC_Info()
{
	AI_Output(self, hero, "Info_Mod_Jackal_AtOC_07_00"); //Take this scroll and open the gate.

	B_GiveInvItems	(self, hero, ItSc_TrfRabbit, 1);
	
	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOOLDCAMP");

	B_LogEntry	(TOPIC_MOD_AL_WhereAlissandro, "I'm supposed to rush through the gate with the transformational spell into a rabbit and then open the gate to let Jackal in.");
};

INSTANCE Info_Mod_Jackal_ComeIn (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_ComeIn_Condition;
	information	= Info_Mod_Jackal_ComeIn_Info;
	permanent	= 0;
	important	= 0;
	description	= "Come on in!";
};

FUNC INT Info_Mod_Jackal_ComeIn_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jackal_AtOC))
	&& (Npc_GetDistToWP(self, "OC_ROUND_1") < 2000)
	&& (Mod_ALTor_01 == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_ComeIn_Info()
{
	AI_Output(hero, self, "Info_Mod_Jackal_ComeIn_15_00"); //Come on in!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "INOLDCAMP");
};

INSTANCE Info_Mod_Jackal_InOC (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_InOC_Condition;
	information	= Info_Mod_Jackal_InOC_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jackal_InOC_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jackal_ComeIn))
	&& (Npc_GetDistToWP(self, "OCR_MAINGATE_INSIDE") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_InOC_Info()
{
	AI_Output(self, hero, "Info_Mod_Jackal_InOC_07_00"); //Distract the guards, I'll free Alissandro.

	B_LogEntry	(TOPIC_MOD_AL_WhereAlissandro, "I went to the old camp with Jackal. He wants to free Alissandro while I distract the guards.");
	
	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "BEFREIUNG");
};

INSTANCE Info_Mod_Jackal_AtPC (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_AtPC_Condition;
	information	= Info_Mod_Jackal_AtPC_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jackal_AtPC_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_GotoZufluchten))
	&& (Npc_KnowsInfo(hero, Info_Mod_Gardist_Zuflucht_01_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Gardist_Zuflucht_02_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Gardist_Zuflucht_03_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Gardist_Zuflucht_04_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Gardist_Zuflucht_05_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Gardist_Zuflucht_06_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Gardist_Zuflucht_07_Hi))
	&& (Npc_GetDistToWP(self, "PSI_TEMPLE_STAIRS_1") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jackal_AtPC_Info()
{
	AI_Output(self, hero, "Info_Mod_Jackal_AtPC_07_00"); //Alissandro wants you to go to the temple. There the guild leaders consult each other.

	B_LogEntry	(TOPIC_MOD_AL_EROBERUNG, "I shall go to the temple to the guild leaders, Alissandro is already waiting for me.");
	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Jackal_Pickpocket (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_Pickpocket_Condition;
	information	= Info_Mod_Jackal_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Jackal_Pickpocket_Condition()
{
	C_Beklauen	(108, ItMi_Gold, 45);
};

FUNC VOID Info_Mod_Jackal_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Jackal_Pickpocket);

	Info_AddChoice	(Info_Mod_Jackal_Pickpocket, DIALOG_BACK, Info_Mod_Jackal_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Jackal_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Jackal_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Jackal_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Jackal_Pickpocket);
};

FUNC VOID Info_Mod_Jackal_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Jackal_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Jackal_Pickpocket);

		Info_AddChoice	(Info_Mod_Jackal_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Jackal_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Jackal_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Jackal_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Jackal_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Jackal_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Jackal_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Jackal_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Jackal_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Jackal_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Jackal_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Jackal_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Jackal_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Jackal_EXIT (C_INFO)
{
	npc		= Mod_1107_GRD_Jackal_MT;
	nr		= 1;
	condition	= Info_Mod_Jackal_EXIT_Condition;
	information	= Info_Mod_Jackal_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Jackal_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jackal_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
