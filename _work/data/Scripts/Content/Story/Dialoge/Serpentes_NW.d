INSTANCE Info_Mod_Serpentes_Hi (C_INFO)
{
	npc		= Mod_552_KDF_Serpentes_NW;
	nr		= 1;
	condition	= Info_Mod_Serpentes_Hi_Condition;
	information	= Info_Mod_Serpentes_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Serpentes_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Serpentes_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Serpentes_Hi_10_01"); //I'm Serpentes, the second-highest fire magician on Khorinis. What do you want from me?
};

INSTANCE Info_Mod_Serpentes_Weindiebe (C_INFO)
{
	npc		= Mod_552_KDF_Serpentes_NW;
	nr		= 1;
	condition	= Info_Mod_Serpentes_Weindiebe_Condition;
	information	= Info_Mod_Serpentes_Weindiebe_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Serpentes_Weindiebe_Condition()
{
	if (Wld_GetDay() > Mod_FMAufnahme_Day)
	&& (hero.guild == GIL_VLK)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Serpentes_Weindiebe_Info()
{
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe_10_00"); //Not so fast, Novice. I have a request for you.
	AI_Output(hero, self, "Info_Mod_Serpentes_Weindiebe_15_01"); //What's up?
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe_10_02"); //As you probably know, our monastery makes a good living selling wine among other sources of income.
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe_10_03"); //I know this better than anyone else, because I take care of the finances of the monastery and keep an eye on income and expenses.
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe_10_04"); //Unfortunately, I regret to say that lately there has been a disproportionate mismatch between the outgoing wine and the gold income.
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe_10_05"); //The innkeeper Orlan has complained several times about missing deliveries of our wine.
	AI_Output(hero, self, "Info_Mod_Serpentes_Weindiebe_15_06"); //What does Gorax say?
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe_10_07"); //Gorax?! He's an old drunkard who enjoys wine far more than he's good for.
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe_10_08"); //Although he insisted on using only the most reliable novices for the deliveries, he drank so much until noon that he could hardly tell the novices from the magicians.
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe_10_09"); //My sharp gaze, on the other hand, has told me that several novices have left the monastery through the entrance, which had not reached it before... and which I had never seen before.
	AI_Output(hero, self, "Info_Mod_Serpentes_Weindiebe_15_10"); //What does that mean and who could it be?
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe_10_11"); //Now that our magical gate may be an entry point for enemies, but it does not prevent them from going out, I suspect the disciples of the dark God.
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe_10_12"); //I wouldn't be surprised if these demon magicians were brazen enough to send their novices in here to steal our wine.
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe_10_13"); //But enough of the conjecture: I want certainty!
	AI_Output(hero, self, "Info_Mod_Serpentes_Weindiebe_15_14"); //What am I supposed to do?
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe_10_15"); //Only recently, one of these fake innovators left the monastery.
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe_10_16"); //If you hurry, you may be able to place it on the way between the monastery and the tavern.
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe_10_17"); //Well, you know what to do.
	AI_Output(hero, self, "Info_Mod_Serpentes_Weindiebe_15_18"); //I'll be on my way right away.

	Log_CreateTopic	(TOPIC_MOD_SERPENTES_WEINDIEBE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SERPENTES_WEINDIEBE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SERPENTES_WEINDIEBE, "Serpentes has complained about the repeated disappearance of wine deliveries. He suspects the novices of demon magicians. One of these bogus innovators has just left the monastery and I'm supposed to go after him.");

	Wld_InsertNpc	(Mod_7761_SNOV_Novize_NW, "TAVERNE");
};

INSTANCE Info_Mod_Serpentes_Weindiebe2 (C_INFO)
{
	npc		= Mod_552_KDF_Serpentes_NW;
	nr		= 1;
	condition	= Info_Mod_Serpentes_Weindiebe2_Condition;
	information	= Info_Mod_Serpentes_Weindiebe2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Serpentes_Weindiebe2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_SchwarzerNovize_Weindieb_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Serpentes_Weindiebe2_Info()
{
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe2_10_00"); //And?! Speak up! What do you have to say about the wine thieves?
	AI_Output(hero, self, "Info_Mod_Serpentes_Weindiebe2_15_01"); //You were right, it was a novice of the black mages.
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe2_10_02"); //Ha, I knew it. My keen mind did not deceive me.
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe2_10_03"); //Did you bring the culprit to justice?

	if (Npc_IsDead(Mod_7761_SNOV_Novize_NW))
	{
		AI_Output(hero, self, "Info_Mod_Serpentes_Weindiebe2_15_04"); //It'll be hard for him to steal from anyone ever again. I made sure of that.
		AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe2_10_05"); //Excellent... I'm more than happy with you, Novice. This will teach the black mages a lesson.
		AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe2_10_06"); //I doubt that any lackey of the Dark God will dare to enter our monastery.
		AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe2_10_07"); //Let Inno's flames burn anyone who stands in our way.
		AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe2_10_08"); //Here, you've earned this gold and the spell rolls!

		CreateInvItems	(hero, ItMi_Gold, 400);
		CreateInvItems	(hero, ItSc_Firestorm, 4);

		B_ShowGivenThings	("400 gold and 4 reels of fire storm preserved");

		AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe2_10_09"); //Go with Inno's blessing.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Serpentes_Weindiebe2_15_10"); //I made it clear to him that he and his confreres should never come back again.
		AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe2_10_11"); //What, you let him get away with it?!
		AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe2_10_12"); //I would have preferred it if you had purified him to death with Innos' flames.
		AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe2_10_13"); //But I want to look it up for you this one time.
		AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe2_10_14"); //Eventually you made sure that the servants of infamy will no longer steal from us.
		AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe2_10_15"); //Here, take the spell rolls and the gold as a reward.

		CreateInvItems	(hero, ItMi_Gold, 250);
		CreateInvItems	(hero, ItSc_Firestorm, 2);

		B_ShowGivenThings	("250 gold and 2 spell rolls fire storm preserved");

		AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe2_10_16"); //Now remove yourself again.
	};

	B_GivePlayerXP	(200);

	B_SetTopicStatus	(TOPIC_MOD_SERPENTES_WEINDIEBE, LOG_SUCCESS);

	B_RemoveNpc	(Mod_7761_SNOV_Novize_NW);
};

INSTANCE Info_Mod_Serpentes_Kimon (C_INFO)
{
	npc		= Mod_552_KDF_Serpentes_NW;
	nr		= 1;
	condition	= Info_Mod_Serpentes_Kimon_Condition;
	information	= Info_Mod_Serpentes_Kimon_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dealer Kimon says you paid him too little for his grapes.";
};

FUNC INT Info_Mod_Serpentes_Kimon_Condition()
{
	if (Mod_Kimons_Traubenquest == TRUE)
	&& (Npc_KnowsInfo(hero, Info_Mod_Serpentes_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Serpentes_Kimon_Info()
{
	AI_Output(hero, self, "Info_Mod_Serpentes_Kimon_15_00"); //Dealer Kimon says you paid him too little for his grapes.
	AI_Output(self, hero, "Info_Mod_Serpentes_Kimon_10_01"); //That's what he says? And how little do you think I care what he says?
	AI_Output(self, hero, "Info_Mod_Serpentes_Kimon_10_02"); //I gave him as much gold as his grapes were worth to me.
	AI_Output(hero, self, "Info_Mod_Serpentes_Kimon_15_03"); //But that was not enough.
	AI_Output(self, hero, "Info_Mod_Serpentes_Kimon_10_04"); //You question the word of the second-highest fire magician of Khorini?
	AI_Output(hero, self, "Info_Mod_Serpentes_Kimon_15_05"); //Yeah, that's what I'm doing.
	AI_Output(self, hero, "Info_Mod_Serpentes_Kimon_10_06"); //Get the hell out of here before I throw you out!
	AI_Output(hero, self, "Info_Mod_Serpentes_Kimon_15_07"); //Not until you pay for those damn grapes!
	AI_Output(self, hero, "Info_Mod_Serpentes_Kimon_10_08"); //All right, that's enough.

	B_LogEntry	(TOPIC_MOD_KIMONSTRAUBEN, "Serpentes won't pay for the rest of the gold. Either I have to try to take the gold off Serpentes or I have to pay for it myself. Maybe Pyrokar can help me, too.");

	AI_StopProcessInfos	(self);

	AI_Teleport	(hero, "KLOSTER");
};

INSTANCE Info_Mod_Serpentes_KimonsGold (C_INFO)
{
	npc		= Mod_552_KDF_Serpentes_NW;
	nr		= 1;
	condition	= Info_Mod_Serpentes_KimonsGold_Condition;
	information	= Info_Mod_Serpentes_KimonsGold_Info;
	permanent	= 1;
	important	= 0;
	description	= "Will you give me the gold now?";
};

FUNC INT Info_Mod_Serpentes_KimonsGold_Condition()
{
	if (Mod_Kimons_Traubenquest == TRUE)
	&& (Npc_KnowsInfo(hero, Info_Mod_Serpentes_Kimon))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Pyrokar_KimonGeld))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Serpentes_KimonsGold_Info()
{
	AI_Output(hero, self, "Info_Mod_Serpentes_KimonsGold_15_00"); //Will you give me the gold now?
	AI_Output(self, hero, "Info_Mod_Serpentes_KimonsGold_10_01"); //I told you to get out of here!

	AI_StopProcessInfos	(self);

	AI_Teleport	(hero, "KLOSTER");
};

INSTANCE Info_Mod_Serpentes_Pickpocket (C_INFO)
{
	npc		= Mod_552_KDF_Serpentes_NW;
	nr		= 1;
	condition	= Info_Mod_Serpentes_Pickpocket_Condition;
	information	= Info_Mod_Serpentes_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Serpentes_Pickpocket_Condition()
{
	C_Beklauen	(165, ItMi_Gold, 93);
};

FUNC VOID Info_Mod_Serpentes_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Serpentes_Pickpocket);

	Info_AddChoice	(Info_Mod_Serpentes_Pickpocket, DIALOG_BACK, Info_Mod_Serpentes_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Serpentes_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Serpentes_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Serpentes_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Serpentes_Pickpocket);
};

FUNC VOID Info_Mod_Serpentes_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Serpentes_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Serpentes_Pickpocket);

		Info_AddChoice	(Info_Mod_Serpentes_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Serpentes_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Serpentes_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Serpentes_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Serpentes_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Serpentes_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Serpentes_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Serpentes_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Serpentes_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Serpentes_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Serpentes_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Serpentes_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Serpentes_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Serpentes_EXIT (C_INFO)
{
	npc		= Mod_552_KDF_Serpentes_NW;
	nr		= 1;
	condition	= Info_Mod_Serpentes_EXIT_Condition;
	information	= Info_Mod_Serpentes_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Serpentes_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Serpentes_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
