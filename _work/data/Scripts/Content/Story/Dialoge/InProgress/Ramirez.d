INSTANCE Info_Mod_Ramirez_Hi (C_INFO)
{
	npc		= Mod_746_NONE_Ramirez_NW;
	nr		= 1;
	condition	= Info_Mod_Ramirez_Hi_Condition;
	information	= Info_Mod_Ramirez_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ramirez_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ramirez_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Ramirez_Hi_03_00"); //What are you doing here?
};

INSTANCE Info_Mod_Ramirez_Dieb (C_INFO)
{
	npc		= Mod_746_NONE_Ramirez_NW;
	nr		= 1;
	condition	= Info_Mod_Ramirez_Dieb_Condition;
	information	= Info_Mod_Ramirez_Dieb_Info;
	permanent	= 0;
	important	= 0;
	description	= "(Show thieves' signal)";
};

FUNC INT Info_Mod_Ramirez_Dieb_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_Goldmuenzen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramirez_Dieb_Info()
{
	AI_PlayAni (hero, "T_YES");

	AI_Output(self, hero, "Info_Mod_Ramirez_Dieb_03_00"); //So you're with us.
	AI_Output(self, hero, "Info_Mod_Ramirez_Dieb_03_01"); //I can teach you how to pick locks.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_STADT, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_STADT, "Ramirez can teach me how to pick locks.");
};

INSTANCE Info_Mod_Ramirez_Cassia (C_INFO)
{
	npc		= Mod_746_NONE_Ramirez_NW;
	nr		= 1;
	condition	= Info_Mod_Ramirez_Cassia_Condition;
	information	= Info_Mod_Ramirez_Cassia_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why don't you trust me?";
};

FUNC INT Info_Mod_Ramirez_Cassia_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_WasNun_Ramirez))
	&& (Npc_KnowsInfo(hero, Info_Mod_Ramirez_Dieb))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramirez_Cassia_Info()
{
	AI_Output(hero, self, "Info_Mod_Ramirez_Cassia_15_00"); //Why don't you trust me?
	AI_Output(self, hero, "Info_Mod_Ramirez_Cassia_03_01"); //All you have to do is look at you and imagine that you want to crack the barracks.
	AI_Output(hero, self, "Info_Mod_Ramirez_Cassia_15_02"); //Is there any way I can prove myself?
	AI_Output(self, hero, "Info_Mod_Ramirez_Cassia_03_03"); //You could take Attila's job, just for a little while, to see the biggest troublemaker.
	AI_Output(hero, self, "Info_Mod_Ramirez_Cassia_15_04"); //But then you come with me to the barracks.
	AI_Output(self, hero, "Info_Mod_Ramirez_Cassia_03_05"); //If you manage to take down a gang in the waterfront and bring me the ring from their leader, I'll come with you.
	AI_Output(hero, self, "Info_Mod_Ramirez_Cassia_15_06"); //And where do they hang out?
	AI_Output(self, hero, "Info_Mod_Ramirez_Cassia_03_07"); //Everywhere, you have to find her first.

	Wld_InsertNpc	(Mod_1891_NONE_Bandenchef_NW,	"BIGFARM");
	Wld_InsertNpc	(Mod_1892_NONE_Bandenmitglied1_NW,	"BIGFARM");

	Log_CreateTopic	(TOPIC_MOD_RAMIREZ_BANDE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_RAMIREZ_BANDE, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_DIEB_ATTILA, TOPIC_MOD_RAMIREZ_BANDE, "So that Ramirez accompanies me into the barracks, I shall exterminate a gang in the harbour quarter and bring him the ring from its leader.", "Ramirez wants me to take down a gang in the docks. As proof, I'm supposed to bring him the ring from their leader.");
};

INSTANCE Info_Mod_Ramirez_Bandenchef (C_INFO)
{
	npc		= Mod_746_NONE_Ramirez_NW;
	nr		= 1;
	condition	= Info_Mod_Ramirez_Bandenchef_Condition;
	information	= Info_Mod_Ramirez_Bandenchef_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's the ring from the gang leader.";
};

FUNC INT Info_Mod_Ramirez_Bandenchef_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_Cassia))
	&& (Npc_IsDead(Mod_1891_NONE_Bandenchef_NW))
	&& (Npc_HasItems(hero, ItRi_Bandenchef) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramirez_Bandenchef_Info()
{
	AI_Output(hero, self, "Info_Mod_Ramirez_Bandenchef_15_00"); //Here's the ring from the gang leader.

	B_GiveInvItems	(hero, self, ItRi_Bandenchef, 1);

	AI_Output(self, hero, "Info_Mod_Ramirez_Bandenchef_03_01"); //In fact, I wouldn't have thought you'd be capable of it.
	AI_Output(self, hero, "Info_Mod_Ramirez_Bandenchef_03_02"); //I was just playing around with the idea that you're already dead.
	AI_Output(hero, self, "Info_Mod_Ramirez_Bandenchef_15_03"); //So you trust me now and you're gonna walk me to the barracks?
	AI_Output(self, hero, "Info_Mod_Ramirez_Bandenchef_03_04"); //Yeah, I gave you my word. Just let Cassia know first.

	B_GivePlayerXP	(250);

	B_StartOtherRoutine	(Mod_1892_NONE_Bandenmitglied1_NW, "TOT");

	B_SetTopicStatus	(TOPIC_MOD_RAMIREZ_BANDE, LOG_SUCCESS);
	B_LogEntry	(TOPIC_MOD_DIEB_ATTILA, "I convinced Ramirez. I'm supposed to let Cassia know before we leave.");

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Ramirez_ZuAndre (C_INFO)
{
	npc		= Mod_746_NONE_Ramirez_NW;
	nr		= 1;
	condition	= Info_Mod_Ramirez_ZuAndre_Condition;
	information	= Info_Mod_Ramirez_ZuAndre_Info;
	permanent	= 0;
	important	= 0;
	description	= "Cassia knows, let's go.";
};

FUNC INT Info_Mod_Ramirez_ZuAndre_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_RamirezDabei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramirez_ZuAndre_Info()
{
	AI_Output(hero, self, "Info_Mod_Ramirez_ZuAndre_15_00"); //Cassia knows, let's go.
	AI_Output(self, hero, "Info_Mod_Ramirez_ZuAndre_03_01"); //All right, go ahead, I'll follow you.

	B_LogEntry	(TOPIC_MOD_DIEB_ATTILA, "Ramirez is following me and I'm going to stop by the barracks.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWTOANDRE");
};

INSTANCE Info_Mod_Ramirez_Flucht (C_INFO)
{
	npc		= Mod_746_NONE_Ramirez_NW;
	nr		= 1;
	condition	= Info_Mod_Ramirez_Flucht_Condition;
	information	= Info_Mod_Ramirez_Flucht_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here I am.";
};

FUNC INT Info_Mod_Ramirez_Flucht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Boltan_Hilfe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramirez_Flucht_Info()
{
	AI_Output(hero, self, "Info_Mod_Ramirez_Flucht_15_00"); //Here I am.
	AI_Output(self, hero, "Info_Mod_Ramirez_Flucht_03_01"); //At last, I thought you were gonna leave us in here forever.
	AI_Output(hero, self, "Info_Mod_Ramirez_Flucht_15_02"); //Go quietly, the road is clear.
	AI_Output(self, hero, "Info_Mod_Ramirez_Flucht_03_03"); //Meet me at Cassia's. Oh one more thing: while you're at it, rob the chest of Lord Andre.
	AI_Output(self, hero, "Info_Mod_Ramirez_Flucht_03_04"); //I noticed there's supposed to be all the gold in his chest.
	AI_Output(hero, self, "Info_Mod_Ramirez_Flucht_15_05"); //But then it's over.
	AI_Output(self, hero, "Info_Mod_Ramirez_Flucht_03_06"); //Then we've really paid them back.

	B_LogEntry	(TOPIC_MOD_DIEB_ATTILA, "Ramirez and Attila are free. But I'm still to plunder Lord Andres' chest.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLUCHT");
	B_StartOtherRoutine	(Mod_760_NONE_Attila_NW, "FLUCHT");
};

INSTANCE Info_Mod_Ramirez_WelcomeBack (C_INFO)
{
	npc		= Mod_746_NONE_Ramirez_NW;
	nr		= 1;
	condition	= Info_Mod_Ramirez_WelcomeBack_Condition;
	information	= Info_Mod_Ramirez_WelcomeBack_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ramirez_WelcomeBack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_Flucht))
	&& (Mob_HasItems("ANDRETRUHE", ItMi_Gold) == 0)
	&& (Npc_GetDistToWP(self, "NW_CITY_KANAL_ROOM_05_03") < 300)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 5000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramirez_WelcomeBack_Info()
{
	AI_Output(self, hero, "Info_Mod_Ramirez_WelcomeBack_03_00"); //There's our deliverer. Best of all, you go back to Lord Andre and tell him some fairy tale about our escape and give it up as a militia.
	AI_Output(hero, self, "Info_Mod_Ramirez_WelcomeBack_15_01"); //And what am I supposed to tell him?
	AI_Output(self, hero, "Info_Mod_Ramirez_WelcomeBack_03_02"); //Think of something.

	Npc_RemoveInvItems	(hero, ItMi_Gold, 5000);

	B_LogEntry	(TOPIC_MOD_DIEB_ATTILA, "Ramirez and Attila are free. But I'm still to plunder Lord Andre's chest.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_760_NONE_Attila_NW, "FREE");

	Mod_Diebe_Andre_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Ramirez_AndreFertig (C_INFO)
{
	npc		= Mod_746_NONE_Ramirez_NW;
	nr		= 1;
	condition	= Info_Mod_Ramirez_AndreFertig_Condition;
	information	= Info_Mod_Ramirez_AndreFertig_Info;
	permanent	= 0;
	important	= 0;
	description	= "I spoke to Lord Andre--";
};

FUNC INT Info_Mod_Ramirez_AndreFertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_MortisBadGuy))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramirez_AndreFertig_Info()
{
	AI_Output(hero, self, "Info_Mod_Ramirez_AndreFertig_15_00"); //I spoke to Lord Andre, and he bought my story.
	AI_Output(self, hero, "Info_Mod_Ramirez_AndreFertig_03_01"); //Very well, everything is coming to a happy end. Attila is free again, Meldor is no longer disturbed and the militia became much poorer.
	AI_Output(self, hero, "Info_Mod_Ramirez_AndreFertig_03_02"); //Then you helped with many other little things. I don't think we would have gotten this far without you.
	AI_Output(hero, self, "Info_Mod_Ramirez_AndreFertig_15_03"); //Now you're overdoing it.
	AI_Output(self, hero, "Info_Mod_Ramirez_AndreFertig_03_04"); //You proved to me that you are one of the best thieves in our ranks!
	AI_Output(hero, self, "Info_Mod_Ramirez_AndreFertig_15_05"); //I'd better go now and see what the others are up to.
	AI_Output(self, hero, "Info_Mod_Ramirez_AndreFertig_03_06"); //All right, but stop by down here once in a while.

	B_SetTopicStatus	(TOPIC_MOD_DIEB_ATTILA, LOG_SUCCESS);

	B_GivePlayerXP	(500);

	AI_StopProcessInfos	(self);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Ramirez_Lernen (C_INFO)
{
	npc		= Mod_746_NONE_Ramirez_NW;
	nr		= 1;
	condition	= Info_Mod_Ramirez_Lernen_Condition;
	information	= Info_Mod_Ramirez_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Learn to break locks (10 LP)";
};

FUNC INT Info_Mod_Ramirez_Lernen_Condition()
{
	Info_Mod_Ramirez_Lernen.description = B_BuildLearnString("Learn to pick locks", B_GetLearnCostTalent(hero, NPC_TALENT_PICKLOCK, 1));

	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_Dieb))
	&& (Npc_GetTalentSkill (hero, NPC_TALENT_PICKLOCK) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ramirez_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Ramirez_Lernen_15_00"); //Teach me how to pick locks.

	if (B_TeachThiefTalent (self, other, NPC_TALENT_PICKLOCK))
	{
		AI_Output (self, hero, "Info_Mod_Ramirez_Lernen_03_01"); //If you want to pick a lock, you should have enough lockers with you. Besides, you should be pretty smart.
	};
};

INSTANCE Info_Mod_Ramirez_Pickpocket (C_INFO)
{
	npc		= Mod_746_NONE_Ramirez_NW;
	nr		= 1;
	condition	= Info_Mod_Ramirez_Pickpocket_Condition;
	information	= Info_Mod_Ramirez_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Ramirez_Pickpocket_Condition()
{
	C_Beklauen	(120, ItMi_Gold, 37);
};

FUNC VOID Info_Mod_Ramirez_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ramirez_Pickpocket);

	Info_AddChoice	(Info_Mod_Ramirez_Pickpocket, DIALOG_BACK, Info_Mod_Ramirez_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ramirez_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ramirez_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ramirez_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ramirez_Pickpocket);
};

FUNC VOID Info_Mod_Ramirez_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ramirez_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ramirez_Pickpocket);

		Info_AddChoice	(Info_Mod_Ramirez_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ramirez_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ramirez_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ramirez_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ramirez_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ramirez_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ramirez_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ramirez_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ramirez_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ramirez_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ramirez_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ramirez_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ramirez_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ramirez_EXIT (C_INFO)
{
	npc		= Mod_746_NONE_Ramirez_NW;
	nr		= 1;
	condition	= Info_Mod_Ramirez_EXIT_Condition;
	information	= Info_Mod_Ramirez_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ramirez_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ramirez_EXIT_Info()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_Dieb))
	{
		AI_Output(self, hero, "Info_Mod_Ramirez_EXIT_03_00"); //Don't come home empty-handed!
	};

	AI_StopProcessInfos	(self);
};
