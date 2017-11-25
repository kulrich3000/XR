INSTANCE Info_Mod_HofstaatKoenig_Hi (C_INFO)
{
	npc		= Mod_7285_HS_Koenig_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatKoenig_Hi_Condition;
	information	= Info_Mod_HofstaatKoenig_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatKoenig_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatArsch_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatKoenig_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Hi_06_00"); //Who is he who has grown up to our royal knight from and to Raufbold?
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_Hi_15_01"); //I am....
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Hi_06_02"); //Hold on! You are now one of us!
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Hi_06_03"); //But you don't look like you deserve your position! From now on you will live here in the castle.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Hi_06_04"); //You are today to the royal girl for everything!
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Hi_06_05"); //Lower your heads in humility!
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_Hi_15_06"); //Yeah, that's all right...
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Hi_06_07"); //Hold on! I suppose you've already met my ass?
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_Hi_15_08"); //Yeah.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Hi_06_09"); //So then, go to her and have her make an appointment with the courtly magician.

	B_LogEntry	(TOPIC_MOD_SEKTE_Freudenspender, "The king sent me to my ass to make an appointment with the court magician.");
};

INSTANCE Info_Mod_HofstaatKoenig_Sorge (C_INFO)
{
	npc		= Mod_7285_HS_Koenig_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatKoenig_Sorge_Condition;
	information	= Info_Mod_HofstaatKoenig_Sorge_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatKoenig_Sorge_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatRaufbold_KoenigSorge))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatKoenig_Sorge_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Sorge_06_00"); //There is nothing that can surpass the beauty of my kingdom.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Sorge_06_01"); //And yet... when I look along the free river.... I always yearn for the sea.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Sorge_06_02"); //Did I tell you that your king was a fisherman before his time in politics? Of course not, it's a lie.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Sorge_06_03"); //To tell the truth, faithful sweep, I once fell in love with a mermaid.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Sorge_06_04"); //It was beautiful like the first rays of sunshine of the day reflected on the sea....
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_Sorge_15_05"); //I'm supposed to bring you these notes.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Sorge_06_06"); //I know that the art of our Minister for Drugs is unsurpassed, but I am not in the mood for it now... Don't step on the Royal roughneck if you leave me.

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "The king's too worried to take care of the secretary's records. I need to find a solution to this problem.");
};

INSTANCE Info_Mod_HofstaatKoenig_Meer (C_INFO)
{
	npc		= Mod_7285_HS_Koenig_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatKoenig_Meer_Condition;
	information	= Info_Mod_HofstaatKoenig_Meer_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have the answer!";
};

FUNC INT Info_Mod_HofstaatKoenig_Meer_Condition()
{
	if (Mod_SL_Meer == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatKoenig_Meer_Info()
{
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_Meer_15_00"); //I have the answer!
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Meer_06_01"); //You bother me worrying, sweeping. This is something that can only affect the spirit of the King, I cannot help myself.
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_Meer_15_02"); //But I have a sea for you, King!
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Meer_06_03"); //THERE IS NO SEA FOR ME! Now get out of my sight, sweeping.

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "The King won't listen to reason. What now?");

	AI_StopProcessInfos	(self);

	AI_Teleport	(Mod_7328_HS_Hofnarr_REL, "REL_HS_005");
	B_StartOtherRoutine	(Mod_7328_HS_Hofnarr_REL, "ATKING");
};

INSTANCE Info_Mod_HofstaatKoenig_Gemaelde (C_INFO)
{
	npc		= Mod_7285_HS_Koenig_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatKoenig_Gemaelde_Condition;
	information	= Info_Mod_HofstaatKoenig_Gemaelde_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatKoenig_Gemaelde_Condition()
{
	if (Npc_HasItems(hero, ItMi_StrandBild) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatKoenig_Gemaelde_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Gemaelde_06_00"); //Sweeping! You're exceeding your authority.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Gemaelde_06_01"); //Disappear immediately or you will feel my Royal Wrath.
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_Gemaelde_15_02"); //Maybe this painting will cheer you up.

	B_GiveInvItems	(hero, self, ItMi_StrandBild, 1);

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Gemaelde_06_03"); //That... that's beautiful. What was the inspiration for this work of art?
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_Gemaelde_15_04"); //A beach. It's in the old mining colony.
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_Gemaelde_15_05"); //There is an acquaintance of mine and I'm sure I could arrange an alliance.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Gemaelde_06_06"); //You mean.... I'd have access to this god-kissed patch of earth at any time?
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_Gemaelde_15_07"); //Exactly. Come with me, I'll take you there.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Gemaelde_06_08"); //No.
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_Gemaelde_15_09"); //What do you mean, no?
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Gemaelde_06_10"); //I may be worried, but I'm still king! I expect you to find a permanent solution to the transport problem.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Gemaelde_06_11"); //Get me as soon as you find a way.

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "The king is impressed by the beauty of the swamp. However, he wants a solution to the transport problem. I should ask around here if anyone knows anything about this.");

	Mod_SL_Meer = 5;
};

INSTANCE Info_Mod_HofstaatKoenig_Loch (C_INFO)
{
	npc		= Mod_7285_HS_Koenig_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatKoenig_Loch_Condition;
	information	= Info_Mod_HofstaatKoenig_Loch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatKoenig_Loch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alex_AtLoch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatKoenig_Loch_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Loch_06_00"); //Have you found a way?
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_Loch_15_01"); //Yes, I did, come on.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Loch_06_02"); //Woe to you, he is not worthy of a king!

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "I told the king about the new transport hole. He left immediately.");

	Mod_SL_Meer = 8;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "LOCH");
};

INSTANCE Info_Mod_HofstaatKoenig_Tuersteher (C_INFO)
{
	npc		= Mod_7285_HS_Koenig_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatKoenig_Tuersteher_Condition;
	information	= Info_Mod_HofstaatKoenig_Tuersteher_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatKoenig_Tuersteher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatTuersteher_NachFest))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatKoenig_Tuersteher_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Tuersteher_06_00"); //Bath attendant! Good that you come, seeeeeeeeeeeehr good that you come! GOD must send you!
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_Tuersteher_15_01"); //No, the bouncer.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Tuersteher_06_02"); //Maybe I should deliver the man. Never mind! I'm asking you to do one last errand for me, pool attendant!
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Tuersteher_06_03"); //Something so secret and dangerous that only YOU can do it!
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_Tuersteher_15_04"); //What's this about? Do children walk at the edge of the pool?
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Tuersteher_06_05"); //Much more important. You have to see the secretary of drugs! He will instruct you further! Hurry up!

	B_LogEntry	(TOPIC_MOD_SEKTE_KING, "The King has a very secret and dangerous mission for me. I'm supposed to go to the secretary of drugs.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HofstaatKoenig_Fluffy (C_INFO)
{
	npc		= Mod_7285_HS_Koenig_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatKoenig_Fluffy_Condition;
	information	= Info_Mod_HofstaatKoenig_Fluffy_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatKoenig_Fluffy_Condition()
{
	if (Mod_SL_PartFluffy == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatKoenig_Fluffy_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Fluffy_06_00"); //Fluffy!!!! Come back to me, my darling!
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Fluffy_06_01"); //We also play catching the tree and you may rammle the castle tower.... Fluffy....
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_Fluffy_06_02"); //FLUUUUUUUUFFYYYYYYYY!

	B_LogEntry	(TOPIC_MOD_SL_FLUFFY, "Fluffy's gone and the king's sad about it.");

	Mod_SL_PartFluffy = 3;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_HofstaatKoenig_HofstaatFutsch (C_INFO)
{
	npc		= Mod_7285_HS_Koenig_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatKoenig_HofstaatFutsch_Condition;
	information	= Info_Mod_HofstaatKoenig_HofstaatFutsch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatKoenig_HofstaatFutsch_Condition()
{
	if (Mod_SL_Schwaechen == 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatKoenig_HofstaatFutsch_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_HofstaatFutsch_06_00"); //NEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE!!!!! WARUM?
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_HofstaatFutsch_06_01"); //Damn you gods! Give me back my world, I don't want your reality.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_HofstaatFutsch_06_02"); //(Voice weeps and fails at the end) What have I done...

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "The court is now finally destroyed. I should go to Baal Namib now.");

	Mod_SL_Schwaechen = 8;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HofstaatKoenig_FreudenspenderGeheimnis (C_INFO)
{
	npc		= Mod_7285_HS_Koenig_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatKoenig_FreudenspenderGeheimnis_Condition;
	information	= Info_Mod_HofstaatKoenig_FreudenspenderGeheimnis_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have a few more questions about the narcotics here.";
};

FUNC INT Info_Mod_HofstaatKoenig_FreudenspenderGeheimnis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatKoenig_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatKoenig_FreudenspenderGeheimnis_Info()
{
	AI_Output(hero, self, "Info_Mod_HofstaatKoenig_FreudenspenderGeheimnis_15_00"); //I have a few more questions about the narcotics here.
	AI_Output(self, hero, "Info_Mod_HofstaatKoenig_FreudenspenderGeheimnis_06_01"); //Set it up for the court magician! And now away!
};

INSTANCE Info_Mod_HofstaatKoenig_Pickpocket (C_INFO)
{
	npc		= Mod_7285_HS_Koenig_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatKoenig_Pickpocket_Condition;
	information	= Info_Mod_HofstaatKoenig_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_HofstaatKoenig_Pickpocket_Condition()
{
	C_Beklauen	(118, ItMi_Gold, 39);
};

FUNC VOID Info_Mod_HofstaatKoenig_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HofstaatKoenig_Pickpocket);

	Info_AddChoice	(Info_Mod_HofstaatKoenig_Pickpocket, DIALOG_BACK, Info_Mod_HofstaatKoenig_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HofstaatKoenig_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HofstaatKoenig_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HofstaatKoenig_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HofstaatKoenig_Pickpocket);
};

FUNC VOID Info_Mod_HofstaatKoenig_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HofstaatKoenig_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HofstaatKoenig_Pickpocket);

		Info_AddChoice	(Info_Mod_HofstaatKoenig_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HofstaatKoenig_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HofstaatKoenig_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HofstaatKoenig_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HofstaatKoenig_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HofstaatKoenig_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HofstaatKoenig_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HofstaatKoenig_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HofstaatKoenig_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HofstaatKoenig_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HofstaatKoenig_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HofstaatKoenig_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HofstaatKoenig_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HofstaatKoenig_EXIT (C_INFO)
{
	npc		= Mod_7285_HS_Koenig_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatKoenig_EXIT_Condition;
	information	= Info_Mod_HofstaatKoenig_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatKoenig_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatKoenig_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
