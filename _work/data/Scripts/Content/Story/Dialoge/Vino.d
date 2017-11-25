INSTANCE Info_Mod_Vino_Hi (C_INFO)
{
	npc		= Mod_912_BAU_Vino_NW;
	nr		= 1;
	condition	= Info_Mod_Vino_Hi_Condition;
	information	= Info_Mod_Vino_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you doing here?";
};

FUNC INT Info_Mod_Vino_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Vino_Hi_Info()
{
	B_Say	(hero, self, "$WASMACHSTDUHIER");

	AI_Output(self, hero, "Info_Mod_Vino_Hi_05_01"); //Nice work, bum. While you were making yourself comfortable in your cupola.
	AI_Output(hero, self, "Info_Mod_Vino_Hi_15_02"); //You have some misconceptions, I'm afraid.
	AI_Output(self, hero, "Info_Mod_Vino_Hi_05_03"); //I saw all the things they sent in. A prince could have lived on that!

	Info_ClearChoices	(Info_Mod_Vino_Hi);

	Info_AddChoice	(Info_Mod_Vino_Hi, "That was a wonderful life!", Info_Mod_Vino_Hi_B);
	Info_AddChoice	(Info_Mod_Vino_Hi, "That's right, one. The rest of them didn't see anything.", Info_Mod_Vino_Hi_A);
};

FUNC VOID Info_Mod_Vino_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Vino_Hi_B_15_00"); //That was a wonderful life!
	AI_Output(self, hero, "Info_Mod_Vino_Hi_B_05_01"); //Shut the fuck up!

	Info_ClearChoices	(Info_Mod_Vino_Hi);

	Info_AddChoice	(Info_Mod_Vino_Hi, "Beer and women every night...", Info_Mod_Vino_Hi_D);
	Info_AddChoice	(Info_Mod_Vino_Hi, "I think it's better if I go slow.", Info_Mod_Vino_Hi_C);
};

FUNC VOID Info_Mod_Vino_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Vino_Hi_A_15_00"); //That's right, one. The rest of them didn't see anything.
	AI_Output(self, hero, "Info_Mod_Vino_Hi_A_05_01"); //You're busting my balls, man. Get the fuck out of here!

	Info_ClearChoices	(Info_Mod_Vino_Hi);
};

FUNC VOID Info_Mod_Vino_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Vino_Hi_D_15_00"); //Beer and women every night...
	AI_Output(self, hero, "Info_Mod_Vino_Hi_D_05_01"); //I'll show you!

	Info_ClearChoices	(Info_Mod_Vino_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

FUNC VOID Info_Mod_Vino_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Vino_Hi_C_15_00"); //I think it's better if I go slow.
	AI_Output(self, hero, "Info_Mod_Vino_Hi_C_05_01"); //Yeah, get lost!

	Info_ClearChoices	(Info_Mod_Vino_Hi);
};

INSTANCE Info_Mod_Vino_Pruegel (C_INFO)
{
	npc		= Mod_912_BAU_Vino_NW;
	nr		= 1;
	condition	= Info_Mod_Vino_Pruegel_Condition;
	information	= Info_Mod_Vino_Pruegel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Vino_Pruegel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vino_Hi))
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
	{
		return 1;
	}
	else if (Npc_KnowsInfo(hero, Info_Mod_Vino_Hi))
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
	{
		Mod_VinoWillRache = 1;
	};
};

FUNC VOID Info_Mod_Vino_Pruegel_Info()
{
	AI_Output(self, hero, "Info_Mod_Vino_Pruegel_05_00"); //I work all day for moments like that.
							
	// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
	self.aivar[AIV_ArenaFight] = AF_NONE;
		
	// ------ AIVAR resetten! ------	
	self.aivar[AIV_LastFightComment] = TRUE;
};

INSTANCE Info_Mod_Vino_KingImRing (C_INFO)
{
	npc		= Mod_912_BAU_Vino_NW;
	nr		= 1;
	condition	= Info_Mod_Vino_KingImRing_Condition;
	information	= Info_Mod_Vino_KingImRing_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Vino_KingImRing_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vino_Hi))
	&& (Kapitel > 2)
	&& (Mod_VinoWillRache == 1)
	&& (((!Npc_KnowsInfo(hero, Info_Mod_BauerLobart_01_VinoBrennerei))
	&& (!Npc_KnowsInfo(hero, Info_Mod_BauerLobart_02_VinoBrennerei)))
	|| (Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei3)))
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vino_KingImRing_Info()
{
	AI_Output(self, hero, "Info_Mod_Vino_KingImRing_05_00"); //Hey, you there!
	AI_Output(hero, self, "Info_Mod_Vino_KingImRing_15_01"); //Are you talking to me?
	AI_Output(self, hero, "Info_Mod_Vino_KingImRing_05_02"); //You insulted me pretty bad once.
	AI_Output(hero, self, "Info_Mod_Vino_KingImRing_15_03"); //You're saying, finished?
	AI_Output(self, hero, "Info_Mod_Vino_KingImRing_05_04"); //I've waited a long time for this moment.
	AI_Output(hero, self, "Info_Mod_Vino_KingImRing_15_05"); //Why don't you be reasonable?
	AI_Output(self, hero, "Info_Mod_Vino_KingImRing_05_06"); //Now it's your turn!

	AI_StopProcessInfos	(self);

	B_SetAttributesToChapter	(self, 3);

	self.level = 10;

	B_Attack	(self, hero, AR_None, 0);
};

INSTANCE Info_Mod_Vino_Brennerei (C_INFO)
{
	npc		= Mod_912_BAU_Vino_NW;
	nr		= 1;
	condition	= Info_Mod_Vino_Brennerei_Condition;
	information	= Info_Mod_Vino_Brennerei_Info;
	permanent	= 0;
	important	= 0;
	description	= "So this is where you're at. What's going on?";
};

FUNC INT Info_Mod_Vino_Brennerei_Condition()
{
	if (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vino_Brennerei_Info()
{
	AI_Output(hero, self, "Info_Mod_Vino_Brennerei_15_00"); //So this is where you're at. What's going on?
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei_05_01"); //What's going on? I almost got caught.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei_05_02"); //It's only thanks to Nandor that I'm still alive. He pulled me out of the cave when I lost my senses...
	AI_Output(hero, self, "Info_Mod_Vino_Brennerei_15_03"); //What exactly happened?
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei_05_04"); //These loathsome beasts.... and left the barrels where they were.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei_05_05"); //But when I heard these noises at the door, I put them aside to listen with the ear at the door.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei_05_06"); //And when I looked down again.... there were these horrible creatures hanging on my legs.... and then it went black on me.
	AI_Output(hero, self, "Info_Mod_Vino_Brennerei_15_07"); //Yeah, doesn't sound so nice. But how are you doing now? They miss you already in the yard...
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei_05_08"); //Actually, I feel quite recovered already.... but I still can't go back to the yard.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei_05_09"); //At the platform below, countless of these disgusting spider beasts are still crawling.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei_05_10"); //As long as they're there, I won't set foot in the cave.

	if (!Npc_KnowsInfo(hero, Info_Mod_Nandor_VinoBrennerei))
	{
		B_LogEntry	(TOPIC_MOD_VINO_WO, "Vino is in Nandor's camp. He was attacked by small spiders, but will soon recover.");
	};

	B_LogEntry	(TOPIC_MOD_VINO_WO, "But he can't go back to the yard, because the spiders are still roaring around in the cave with the teleporter.");

	B_GivePlayerXP	(150);

	// Tür zum Spinnenbau aufschließen

	var int ptr;
	ptr = MEM_SearchVobByName("DOOR_SPINNENBAU_01");

	if (ptr > 0)
	{
		MEM_AssignInst(Platzhalter_Door, ptr);

		Platzhalter_Door._oCMobLockable_bitfield = Platzhalter_Door._oCMobLockable_bitfield & ~ oCMobLockable_bitfield_locked;
	};

	ptr = MEM_SearchVobByName("DOOR_SPINNENBAU_02");

	if (ptr > 0)
	{
		MEM_AssignInst(Platzhalter_Door, ptr);

		Platzhalter_Door._oCMobLockable_bitfield = Platzhalter_Door._oCMobLockable_bitfield & ~ oCMobLockable_bitfield_locked;
	};
};

INSTANCE Info_Mod_Vino_Brennerei2 (C_INFO)
{
	npc		= Mod_912_BAU_Vino_NW;
	nr		= 1;
	condition	= Info_Mod_Vino_Brennerei2_Condition;
	information	= Info_Mod_Vino_Brennerei2_Info;
	permanent	= 0;
	important	= 0;
	description	= "The platform is secure.";
};

FUNC INT Info_Mod_Vino_Brennerei2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei))
	&& (Mod_Vino_Brennerei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vino_Brennerei2_Info()
{
	AI_Output(hero, self, "Info_Mod_Vino_Brennerei2_15_00"); //The platform is secure.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei2_05_01"); //Really? None of those nasty beasts left?
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei2_05_02"); //All right, I'll take a look to see if it's really safe.

	B_GivePlayerXP	(250);

	B_StartOtherRoutine	(self, "TELEPORT");
};

INSTANCE Info_Mod_Vino_Brennerei3 (C_INFO)
{
	npc		= Mod_912_BAU_Vino_NW;
	nr		= 1;
	condition	= Info_Mod_Vino_Brennerei3_Condition;
	information	= Info_Mod_Vino_Brennerei3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Vino_Brennerei3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei2))
	&& (Npc_GetDistToWP(self, "FARM1") < 10000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vino_Brennerei3_Info()
{
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei3_05_00"); //Ahh, there you are. Thank you so much for your help with the spider thing.
	AI_Output(hero, self, "Info_Mod_Vino_Brennerei3_15_01"); //You're up again?
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei3_05_02"); //Yeah, I'm doing great.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei3_05_03"); //(slightly melancholy) Well, only in the distillery I will probably not set foot in the distillery for the time being, as long as the spiders are cavorting in the caves and corridors.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei3_05_04"); //(again more cheerful) Anyway, here, as a little thank-you some gold and some of my good herbal liquors.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei3_05_05"); //They have an invigorating effect and quickly revive every sick person. To your health.

	B_GivePlayerXP	(200);

	B_GiveInvItems	(self, hero, ItMi_Gold, 60);

	B_SetTopicStatus	(TOPIC_MOD_VINO_WO, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Vino_Brennerei4 (C_INFO)
{
	npc		= Mod_912_BAU_Vino_NW;
	nr		= 1;
	condition	= Info_Mod_Vino_Brennerei4_Condition;
	information	= Info_Mod_Vino_Brennerei4_Info;
	permanent	= 0;
	important	= 0;
	description	= "There is no longer any danger from the spiders.";
};

FUNC INT Info_Mod_Vino_Brennerei4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei3))
	&& (Npc_IsDead(Spider_Queen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vino_Brennerei4_Info()
{
	AI_Output(hero, self, "Info_Mod_Vino_Brennerei4_15_00"); //There is no longer any danger from the spiders. Your queen was once.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei4_05_01"); //Really? That's great news. I'll soon be able to visit my distillery again.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei4_05_02"); //I had already missed my alchemy table....
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei4_05_03"); //Hmm, but how can I thank you now? I'm out of Schnapps.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei4_05_04"); //But wait... take this ring here.

	B_GiveInvItems	(self, hero, ItRi_Alchemist, 1);

	AI_Output(self, hero, "Info_Mod_Vino_Brennerei4_05_05"); //I found him back in the cave before I started burning.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei4_05_06"); //I had the impression that he helped me to quickly grasp the basics of alchemy.
	AI_Output(self, hero, "Info_Mod_Vino_Brennerei4_05_07"); //Well, now I don't need it anymore. Maybe he'll do you some good.

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Vino_Pickpocket (C_INFO)
{
	npc		= Mod_912_BAU_Vino_NW;
	nr		= 1;
	condition	= Info_Mod_Vino_Pickpocket_Condition;
	information	= Info_Mod_Vino_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Vino_Pickpocket_Condition()
{
	C_Beklauen	(34, ItPl_Weed, 4);
};

FUNC VOID Info_Mod_Vino_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Vino_Pickpocket);

	Info_AddChoice	(Info_Mod_Vino_Pickpocket, DIALOG_BACK, Info_Mod_Vino_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Vino_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Vino_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Vino_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Vino_Pickpocket);
};

FUNC VOID Info_Mod_Vino_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Vino_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Vino_Pickpocket);

		Info_AddChoice	(Info_Mod_Vino_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Vino_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Vino_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Vino_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Vino_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Vino_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Vino_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Vino_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Vino_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Vino_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Vino_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Vino_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Vino_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Vino_EXIT (C_INFO)
{
	npc		= Mod_912_BAU_Vino_NW;
	nr		= 1;
	condition	= Info_Mod_Vino_EXIT_Condition;
	information	= Info_Mod_Vino_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Vino_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Vino_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
