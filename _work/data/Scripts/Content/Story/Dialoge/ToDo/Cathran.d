INSTANCE Info_Mod_Cathran_Hi (C_INFO)
{
	npc		= Mod_1025_KGD_Cathran_MT;
	nr		= 1;
	condition	= Info_Mod_Cathran_Hi_Condition;
	information	= Info_Mod_Cathran_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cathran_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cathran_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Cathran_Hi_06_00"); //Hey stranger, before you go further into the Minental, you should stop by our camp.
	AI_Output(self, hero, "Info_Mod_Cathran_Hi_06_01"); //Someone like you can probably earn a gold coin or two from us.

	if (Mod_Gilde > 0)
	{
		AI_Output(self, hero, "Info_Mod_Cathran_Hi_06_02"); //Talk to Ole, he's in charge of camp administration right now.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Cathran_Hi_06_03"); //Talk to Ole as soon as you choose one of the big guilds, maybe he'll have something to do for you.
	};
};

INSTANCE Info_Mod_Cathran_InGilde (C_INFO)
{
	npc		= Mod_1025_KGD_Cathran_MT;
	nr		= 1;
	condition	= Info_Mod_Cathran_InGilde_Condition;
	information	= Info_Mod_Cathran_InGilde_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cathran_InGilde_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Hi))
	&& (KG_Dabei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cathran_InGilde_Info()
{
	AI_Output(self, hero, "Info_Mod_Cathran_InGilde_06_00"); //Ah, I see you've decided to join us.
	AI_Output(self, hero, "Info_Mod_Cathran_InGilde_06_01"); //Believe me, you made the right decision. Soon we'll all be swimming in the ore, so I've got it in my urine.
	AI_Output(hero, self, "Info_Mod_Cathran_InGilde_15_02"); //If you say so. I just hope we can all swim, too.
};

INSTANCE Info_Mod_Cathran_Trollholz (C_INFO)
{
	npc		= Mod_1025_KGD_Cathran_MT;
	nr		= 1;
	condition	= Info_Mod_Cathran_Trollholz_Condition;
	information	= Info_Mod_Cathran_Trollholz_Info;
	permanent	= 0;
	important	= 0;
	description	= "I hear you happen to have some ore chunks and you don't know where to put them.";
};

FUNC INT Info_Mod_Cathran_Trollholz_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Heidrek_Trollholz))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Heidrek_Trollholz2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cathran_Trollholz_Info()
{
	AI_Output(hero, self, "Info_Mod_Cathran_Trollholz_15_00"); //I hear you happen to have some ore chunks and you don't know where to put them.
	AI_Output(self, hero, "Info_Mod_Cathran_Trollholz_06_01"); //I suppose you'd like that...
	AI_Output(self, hero, "Info_Mod_Cathran_Trollholz_06_02"); //Because I'm having a good day today, I'll give you two if you do me a little favor.
	AI_Output(hero, self, "Info_Mod_Cathran_Trollholz_15_03"); //And what's that?
	AI_Output(self, hero, "Info_Mod_Cathran_Trollholz_06_04"); //Get me a boar fur. Up here it is sometimes very windy and I prefer a warm coat to two cold ore chunks.
	AI_Output(self, hero, "Info_Mod_Cathran_Trollholz_06_05"); //If you don't have one yourself, ask the guards on the towers, they probably have some of their own.

	B_LogEntry	(TOPIC_MOD_KG_TROLLHOLZ, "In order for Cathran to give him two of his ore chunks, I'm supposed to get him a boarskin first. He thinks that the tower guards could have one thing...");
};

INSTANCE Info_Mod_Cathran_Trollholz2 (C_INFO)
{
	npc		= Mod_1025_KGD_Cathran_MT;
	nr		= 1;
	condition	= Info_Mod_Cathran_Trollholz2_Condition;
	information	= Info_Mod_Cathran_Trollholz2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's your boar fur.";
};

FUNC INT Info_Mod_Cathran_Trollholz2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Trollholz))
	&& ((Npc_HasItems(hero, ItAt_Addon_KeilerFur) >= 1)
	|| (Npc_HasItems(hero, ItAt_Addon_KeilerFur_Rein) >= 1)
	|| (Npc_HasItems(hero, ItAt_Addon_KeilerFur_Feuer) >= 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cathran_Trollholz2_Info()
{
	AI_Output(hero, self, "Info_Mod_Cathran_Trollholz2_15_00"); //Here's your boar fur.

	if (Npc_HasItems(hero, ItAt_Addon_KeilerFur) >= 1)
	{
		B_GiveInvItems	(hero, self, ItAt_Addon_KeilerFur, 1);
	}
	else if (Npc_HasItems(hero, ItAt_Addon_KeilerFur_Rein) >= 1)
	{
		B_GiveInvItems	(hero, self, ItAt_Addon_KeilerFur_Rein, 1);
	}
	else
	{
		B_GiveInvItems	(hero, self, ItAt_Addon_KeilerFur_Feuer, 1);
	};

	AI_Output(self, hero, "Info_Mod_Cathran_Trollholz2_06_01"); //Thank you, here are your two ore chunks.

	B_GiveInvItems	(self, hero, ItMi_Nugget, 2);

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_KG_TROLLHOLZ, "That would give me the two lumps of Cathran's ore. I should take her to Heidrek right away....");
};

INSTANCE Info_Mod_Cathran_Asylanten (C_INFO)
{
	npc		= Mod_1025_KGD_Cathran_MT;
	nr		= 1;
	condition	= Info_Mod_Cathran_Asylanten_Condition;
	information	= Info_Mod_Cathran_Asylanten_Info;
	permanent	= 0;
	important	= 0;
	description	= "Where does the royal guard come from?";
};

FUNC INT Info_Mod_Cathran_Asylanten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cathran_Asylanten_Info()
{
	AI_Output(hero, self, "Info_Mod_Cathran_Asylanten_15_00"); //Where does the royal guard come from?
	AI_Output(self, hero, "Info_Mod_Cathran_Asylanten_06_01"); //Immediately after the fall of the barrier, we were sent here by the king to monitor the passage to Khorinis.
	AI_Output(hero, self, "Info_Mod_Cathran_Asylanten_15_02"); //But that's what Lord Hagen did on the other side.
	AI_Output(self, hero, "Info_Mod_Cathran_Asylanten_06_03"); //The King no longer trusts Lord Hagen.
	AI_Output(self, hero, "Info_Mod_Cathran_Asylanten_06_04"); //He fears that Hagen may be too weak to stop the convicts.
	AI_Output(self, hero, "Info_Mod_Cathran_Asylanten_06_05"); //He has often enough stressed that he wants to prevent bloodshed.
	AI_Output(hero, self, "Info_Mod_Cathran_Asylanten_15_06"); //What do you know about the groups in the Minental?
	AI_Output(self, hero, "Info_Mod_Cathran_Asylanten_06_07"); //Aggressive potential emanates from the old and the new camp.
	AI_Output(self, hero, "Info_Mod_Cathran_Asylanten_06_08"); //These two camps are under special observation.
	AI_Output(hero, self, "Info_Mod_Cathran_Asylanten_15_09"); //Thanks for the information.
	AI_Output(self, hero, "Info_Mod_Cathran_Asylanten_06_10"); //Have a nice day, if he gives something like this.

	B_LogEntry	(TOPIC_MOD_HAGEN_ASYLANTEN, "The king sent his guards secretly to the Minental pass to monitor him independently of Lord Hagen. Especially the old and the new camp are considered dangerous.");
};

INSTANCE Info_Mod_Cathran_Treue (C_INFO)
{
	npc		= Mod_1025_KGD_Cathran_MT;
	nr		= 1;
	condition	= Info_Mod_Cathran_Treue_Condition;
	information	= Info_Mod_Cathran_Treue_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cathran_Treue_Condition()
{
	if (Mod_Kap4_KGOrks == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cathran_Treue_Info()
{
	AI_Output(self, hero, "Info_Mod_Cathran_Treue_06_00"); //You have to slaughter them all, those green bastards.
	AI_Output(self, hero, "Info_Mod_Cathran_Treue_06_01"); //Let them come back.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Cathran_Siegelring (C_INFO)
{
	npc		= Mod_1025_KGD_Cathran_MT;
	nr		= 1;
	condition	= Info_Mod_Cathran_Siegelring_Condition;
	information	= Info_Mod_Cathran_Siegelring_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cathran_Siegelring_Condition()
{
	if (Mod_Herold_Siegelring == 3)
	&& (!Npc_IsDead(Mod_7749_OUT_Raeuber_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cathran_Siegelring_Info()
{
	AI_Output(self, hero, "Info_Mod_Cathran_Siegelring_06_00"); //Hold it. The King's dignitary does not wish to be disturbed.
	AI_Output(hero, self, "Info_Mod_Cathran_Siegelring_15_01"); //King's dignitary?
	AI_Output(self, hero, "Info_Mod_Cathran_Siegelring_06_02"); //Well... uh, he wears the clothes of a dignitary and has a royal decree with a seal.
};

INSTANCE Info_Mod_Cathran_Siegelring2 (C_INFO)
{
	npc		= Mod_1025_KGD_Cathran_MT;
	nr		= 1;
	condition	= Info_Mod_Cathran_Siegelring2_Condition;
	information	= Info_Mod_Cathran_Siegelring2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Written about in this writing?";
};

FUNC INT Info_Mod_Cathran_Siegelring2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Siegelring))
	&& (Npc_HasItems(hero, ItWr_LandstreicherSiegelring) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cathran_Siegelring2_Info()
{
	AI_Output(hero, self, "Info_Mod_Cathran_Siegelring2_15_00"); //Written about in this writing?

	B_GiveInvItems	(hero, self, ItWr_LandstreicherSiegelring, 1);

	AI_Output(self, hero, "Info_Mod_Cathran_Siegelring2_06_01"); //What?

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Cathran_Siegelring2_06_02"); //But... that.... Now I see a lot of things. I was wondering why.
	AI_Output(self, hero, "Info_Mod_Cathran_Siegelring2_06_03"); //This.... this greasy scoundrel drinks and stuffs himself on our expense the belly full.... with his fake decree.
	AI_Output(self, hero, "Info_Mod_Cathran_Siegelring2_06_04"); //I'll get rid of him.

	AI_StopProcessInfos	(self);

	Mod_7749_OUT_Raeuber_MT.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7749_OUT_Raeuber_MT, GIL_STRF);

	B_Attack	(self, Mod_7749_OUT_Raeuber_MT, AR_Kill, 0);
};

INSTANCE Info_Mod_Cathran_Siegelring3 (C_INFO)
{
	npc		= Mod_1025_KGD_Cathran_MT;
	nr		= 1;
	condition	= Info_Mod_Cathran_Siegelring3_Condition;
	information	= Info_Mod_Cathran_Siegelring3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cathran_Siegelring3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Siegelring2))
	&& (Npc_IsDead(Mod_7749_OUT_Raeuber_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cathran_Siegelring3_Info()
{
	AI_Output(self, hero, "Info_Mod_Cathran_Siegelring3_06_00"); //Well, that's what the son of a bitch gets. Thank you for opening my eyes. Here, take this as a reward.

	CreateInvItems	(hero, ItMi_Gold, 100);
	CreateInvItems	(hero, ItMi_Nugget, 5);

	B_ShowGivenThings	("100 gold and 5 pieces of ore preserved");

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Cathran_Pickpocket (C_INFO)
{
	npc		= Mod_1025_KGD_Cathran_MT;
	nr		= 1;
	condition	= Info_Mod_Cathran_Pickpocket_Condition;
	information	= Info_Mod_Cathran_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Cathran_Pickpocket_Condition()
{
	C_Beklauen	(78, ItMi_Gold, 28);
};

FUNC VOID Info_Mod_Cathran_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Cathran_Pickpocket);

	Info_AddChoice	(Info_Mod_Cathran_Pickpocket, DIALOG_BACK, Info_Mod_Cathran_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Cathran_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Cathran_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Cathran_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Cathran_Pickpocket);
};

FUNC VOID Info_Mod_Cathran_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Cathran_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Cathran_Pickpocket);

		Info_AddChoice	(Info_Mod_Cathran_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Cathran_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Cathran_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Cathran_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Cathran_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Cathran_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Cathran_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Cathran_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Cathran_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Cathran_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Cathran_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Cathran_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Cathran_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Cathran_EXIT (C_INFO)
{
	npc		= Mod_1025_KGD_Cathran_MT;
	nr		= 1;
	condition	= Info_Mod_Cathran_EXIT_Condition;
	information	= Info_Mod_Cathran_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cathran_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cathran_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
