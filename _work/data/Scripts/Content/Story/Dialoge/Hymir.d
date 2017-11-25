INSTANCE Info_Mod_Hymir_Hi (C_INFO)
{
	npc		= Mod_1016_KGD_Hymir_MT;
	nr		= 1;
	condition	= Info_Mod_Hymir_Hi_Condition;
	information	= Info_Mod_Hymir_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hymir_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_LeibwacheHymir_DarfDurch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hymir_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Hymir_Hi_08_00"); //So you're the one everyone's talking about. You've done a lot of work for us.
	AI_Output(self, hero, "Info_Mod_Hymir_Hi_08_01"); //But we can't yet extract any ore, because there are these strange stone monsters in the mine.
	AI_Output(self, hero, "Info_Mod_Hymir_Hi_08_02"); //We need some more time to prepare, then we'll storm the mine.
	AI_Output(self, hero, "Info_Mod_Hymir_Hi_08_03"); //So come back later.

	Log_CreateTopic	(TOPIC_MOD_KG_STEINMONSTER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KG_STEINMONSTER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "Hymir needs some time for the preparations. I'm supposed to come back later, then we can storm the mine.");
};

INSTANCE Info_Mod_Hymir_MineLos (C_INFO)
{
	npc		= Mod_1016_KGD_Hymir_MT;
	nr		= 1;
	condition	= Info_Mod_Hymir_MineLos_Condition;
	information	= Info_Mod_Hymir_MineLos_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hymir_MineLos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hymir_Hi))
	&& (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hymir_MineLos_Info()
{
	AI_Output(self, hero, "Info_Mod_Hymir_MineLos_08_00"); //We're ready now. The stone monsters are still romping around the mine.
	AI_Output(self, hero, "Info_Mod_Hymir_MineLos_08_01"); //It is now up to you to destroy them and open up the mine.
	AI_Output(self, hero, "Info_Mod_Hymir_MineLos_08_02"); //Go to Granmar, he's waiting for you in the mine. He will help you in your task.

	B_LogEntry	(TOPIC_MOD_KG_STEINMONSTER, "I'm supposed to work with Granmar to eliminate the monsters in the mine. He's already waiting for me in the mine. As a melee weapon, I should definitely have my club with me.");

	B_RemoveNpc	(Mod_1017_KGD_Granmar_MT);

	Mod_7537_KG_Minenwache_MT.aivar[AIV_PassGate] = TRUE;
};

INSTANCE Info_Mod_Hymir_MineFertig (C_INFO)
{
	npc		= Mod_1016_KGD_Hymir_MT;
	nr		= 1;
	condition	= Info_Mod_Hymir_MineFertig_Condition;
	information	= Info_Mod_Hymir_MineFertig_Info;
	permanent	= 0;
	important	= 0;
	description	= "The mine is now free of monsters and back in operation.";
};

FUNC INT Info_Mod_Hymir_MineFertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Granmar_VM_Trent2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hymir_MineFertig_Info()
{
	AI_Output(hero, self, "Info_Mod_Hymir_MineFertig_15_00"); //The mine is now free of monsters and back in operation.
	AI_Output(self, hero, "Info_Mod_Hymir_MineFertig_08_01"); //It's nice to hear, so you've managed to be accepted into the small line of archprince.
	AI_Output(self, hero, "Info_Mod_Hymir_MineFertig_08_02"); //And believe me, very few people have managed to do that in such a short time.
	AI_Output(self, hero, "Info_Mod_Hymir_MineFertig_08_03"); //You now account for 10% of the mine's income. You can get the money from Ole every week.

	B_GiveInvItems	(self, hero, ItMi_Nugget, 5);

	AI_Output(self, hero, "Info_Mod_Hymir_MineFertig_08_04"); //Of course, you're getting a new armor now.

	CreateInvItems	(hero, ItAr_Erzbaron_Blau, 1);

	B_ShowGivenThings	("Royal armour of the archprince received");

	AI_Output(self, hero, "Info_Mod_Hymir_MineFertig_08_05"); //By the way, the Paladin was with me just before you. He said he owes you his life.
	AI_Output(self, hero, "Info_Mod_Hymir_MineFertig_08_06"); //Together with a militia force, he was personally sent to the Minental by Lord Andre. Tell them to spy on the orcs there.
	AI_Output(self, hero, "Info_Mod_Hymir_MineFertig_08_07"); //Lord Andre wanted to talk to you again, but I think there's still time.

	B_SetTopicStatus	(TOPIC_MOD_KG_STEINMONSTER, LOG_SUCCESS);

	B_GivePlayerXP	(500);

	Mod_KG_OleErz = Wld_GetDay();
};

INSTANCE Info_Mod_Hymir_Trent (C_INFO)
{
	npc		= Mod_1016_KGD_Hymir_MT;
	nr		= 1;
	condition	= Info_Mod_Hymir_Trent_Condition;
	information	= Info_Mod_Hymir_Trent_Info;
	permanent	= 0;
	important	= 0;
	description	= "Looks like I opened up another mine.";
};

FUNC INT Info_Mod_Hymir_Trent_Condition()
{
	if (Mod_KG_OrkTot == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hymir_Trent_Info()
{
	AI_Output(hero, self, "Info_Mod_Hymir_Trent_15_00"); //Looks like I opened up another mine.
	AI_Output(self, hero, "Info_Mod_Hymir_Trent_08_01"); //What...? we're not even gonna get there yet. Maybe Lord Andre will send us some new people now.
	AI_Output(self, hero, "Info_Mod_Hymir_Trent_08_02"); //Anyway, this has to be celebrated. Go to Melcador and have an ore weapon and a fresh beer delivered to you.
	AI_Output(self, hero, "Info_Mod_Hymir_Trent_08_03"); //There's nothing more to do for you now. Sit back and enjoy life as much as I do!

	B_SetTopicStatus	(TOPIC_MOD_KG_RITUAL, LOG_SUCCESS);

	B_GivePlayerXP	(300);
};

INSTANCE Info_Mod_Hymir_Eroberung_06 (C_INFO)
{
	npc		= Mod_1016_KGD_Hymir_MT;
	nr		= 1;
	condition	= Info_Mod_Hymir_Eroberung_06_Condition;
	information	= Info_Mod_Hymir_Eroberung_06_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hymir_Eroberung_06_Condition()
{	
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_Eroberung_05))
	&& (!Npc_IsInState(Mod_761_BDT_Dexter_MT, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hymir_Eroberung_06_Info()
{
	AI_Output(self, hero, "Info_Mod_Hymir_Eroberung_06_08_00"); //... and we entered the camp....
};

INSTANCE Info_Mod_Hymir_Treue (C_INFO)
{
	npc		= Mod_1016_KGD_Hymir_MT;
	nr		= 1;
	condition	= Info_Mod_Hymir_Treue_Condition;
	information	= Info_Mod_Hymir_Treue_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hymir_Treue_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_AndreVermaechtnis11))
	&& (Npc_HasItems(hero, ItWr_HagenForHymir) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hymir_Treue_Info()
{
	AI_Output(self, hero, "Info_Mod_Hymir_Treue_08_00"); //A message from Hagen? I wonder what the bragger wants from me.

	B_GiveInvItems	(hero, self, ItWr_HagenForHymir, 1);

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Hymir_Treue_08_01"); //Ha, don't make me laugh. Now that his ass is burning, we're supposed to get the coals out of the fire for him.
	AI_Output(self, hero, "Info_Mod_Hymir_Treue_08_02"); //Anything right. And how...? You're the new captain? This is getting nicer all the time.
	AI_Output(self, hero, "Info_Mod_Hymir_Treue_08_03"); //What about Andre-- the only one with a little decency and backbone?
	AI_Output(hero, self, "Info_Mod_Hymir_Treue_15_04"); //He's dead. He sacrificed himself for the city when it was threatened.
	AI_Output(self, hero, "Info_Mod_Hymir_Treue_08_05"); //(shocked) What... he's dead? For the city...?

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Hymir_Treue_15_06"); //Maybe that's what makes him think now?

	AI_TurnToNpc	(hero, self);

	AI_Output(self, hero, "Info_Mod_Hymir_Treue_08_07"); //Sacrificed? Don't tell me anything.
	AI_Output(self, hero, "Info_Mod_Hymir_Treue_08_08"); //Hagen must have used him as a pawn sacrifice, to make himself a noble savior afterwards.
	AI_Output(self, hero, "Info_Mod_Hymir_Treue_08_09"); //And now we're supposed to take the fall for him. That's where it all ends.
	AI_Output(self, hero, "Info_Mod_Hymir_Treue_08_10"); //He doesn't even have the decency to appear himself, but sends a errand boy.
	AI_Output(self, hero, "Info_Mod_Hymir_Treue_08_11"); //No... and now you better get out of my sight.

	AI_GotoWP	(hero, "MC_WA_4");

	AI_Output(hero, self, "Info_Mod_Hymir_Treue_15_12"); //That didn't go so well. But... is true, the part of the saying.
	AI_Output(self, hero, "DEFAULT"); //

	AI_StopProcessInfos	(self);

};

INSTANCE Info_Mod_Hymir_Treue2 (C_INFO)
{
	npc		= Mod_1016_KGD_Hymir_MT;
	nr		= 1;
	condition	= Info_Mod_Hymir_Treue2_Condition;
	information	= Info_Mod_Hymir_Treue2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hymir_Treue2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_MT_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hymir_Treue2_Info()
{
	var c_npc Hymir; Hymir = Hlp_GetNpc(Mod_1016_KGD_Hymir_MT);
	var c_npc Hagen; Hagen = Hlp_GetNpc(Mod_7698_PAL_Hagen_MT);

	TRIA_Invite(Hagen);
	TRIA_Start();

	TRIA_Next(Hymir);

	AI_TurnToNpc	(Hymir, Hagen);
	AI_TurnToNpc	(Hagen, Hymir);

	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_08_00"); //Is it possible? Hagen, you here!?

	TRIA_Next(Hagen);

	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_04_01"); //Yes, since my request is of great breadth for all of Khorinis, I have personally come to clarify the matter with you.

	TRIA_Next(Hymir);

	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_08_02"); //l-- (captures itself again) Yes, I have received your letter.
	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_08_03"); //And even if you are standing here in front of me, I don't see any reason to go into it.
	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_08_04"); //You know best of all that we owe our stay in the colony to you.
	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_08_05"); //And the fact that Andre left his life under your command doesn't exactly improve the situation.

	TRIA_Next(Hagen);

	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_04_06"); //Andre sacrificed himself selflessly because he saw no other way to save the city from an overpowering enemy.
	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_04_07"); //But here, read it yourself.

	B_ShowGivenThings	("Lord Hagen gives Hymir Andres testament");

	TRIA_Next(Hymir);

	B_UseFakeScroll	();

	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_08_08"); //(reads) To melt down robots[...] murdering machine[...] she took their lives from[...] no one without guilt is....
	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_08_09"); //Hmm, this is actually Andres handwriting... and it seems to be true what you told me about his fate.
	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_08_10"); //In the light of these events, I no longer want to oppose cooperation with the city in principle.
	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_08_11"); //But I certainly don't do it to do you a favour, Hagen, but for the sake of the example Andre has given us.

	TRIA_Next(Hagen);

	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_04_12"); //I appreciate it. In the current situation, city and kingdom depend on men like you.
	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_04_13"); //I have here some spell rolls, which allow a fast journey between the pass and the city.

	TRIA_Next(Hymir);

	AI_Output(self, hero, "Info_Mod_Hymir_Treue2_08_14"); //Well... I'll take you to the city for another briefing.
    
	TRIA_Finish();

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_MILIZ_TREUE, "Hymir teleported to the city with Lord Hagen. I should drop by at times.");

};

INSTANCE Info_Mod_Hymir_Pickpocket (C_INFO)
{
	npc		= Mod_1016_KGD_Hymir_MT;
	nr		= 1;
	condition	= Info_Mod_Hymir_Pickpocket_Condition;
	information	= Info_Mod_Hymir_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Hymir_Pickpocket_Condition()
{
	C_Beklauen	(174, ItMi_Gold, 94);
};

FUNC VOID Info_Mod_Hymir_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Hymir_Pickpocket);

	Info_AddChoice	(Info_Mod_Hymir_Pickpocket, DIALOG_BACK, Info_Mod_Hymir_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Hymir_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Hymir_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Hymir_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Hymir_Pickpocket);
};

FUNC VOID Info_Mod_Hymir_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Hymir_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Hymir_Pickpocket);

		Info_AddChoice	(Info_Mod_Hymir_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Hymir_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Hymir_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Hymir_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Hymir_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Hymir_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Hymir_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Hymir_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Hymir_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Hymir_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Hymir_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Hymir_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Hymir_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Hymir_EXIT (C_INFO)
{
	npc		= Mod_1016_KGD_Hymir_MT;
	nr		= 1;
	condition	= Info_Mod_Hymir_EXIT_Condition;
	information	= Info_Mod_Hymir_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hymir_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hymir_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
