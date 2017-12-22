INSTANCE Info_Mod_Raritaetenhaendler_Hi (C_INFO)
{
	npc		= Mod_7542_OUT_Raritaetenhaendler_REL;
	nr		= 1;
	condition	= Info_Mod_Raritaetenhaendler_Hi_Condition;
	information	= Info_Mod_Raritaetenhaendler_Hi_Info;
	permanent	= 0;
	important	= 1;
	trade		= 1;
};

FUNC INT Info_Mod_Raritaetenhaendler_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Raritaetenhaendler_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Hi_16_00"); //Hello friend. Step closer!
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Hi_15_01"); //Friend? Do we know each other?
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Hi_16_02"); //Not yet. My name is Finder. I deal in rarities.
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Hi_15_03"); //Rarities. Those are rare things.
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Hi_16_04"); //Exactly. Rare, strange, even unique things.
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Hi_15_05"); //Let's have a look.
};

INSTANCE Info_Mod_Raritaetenhaendler_Rune (C_INFO)
{
	npc		= Mod_7542_OUT_Raritaetenhaendler_REL;
	nr		= 1;
	condition	= Info_Mod_Raritaetenhaendler_Rune_Condition;
	information	= Info_Mod_Raritaetenhaendler_Rune_Info;
	permanent	= 0;
	important	= 0;
	description	= "I see a broken rune here.";
};

FUNC INT Info_Mod_Raritaetenhaendler_Rune_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raritaetenhaendler_Hi))
	&& (Mod_JG_Finder == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raritaetenhaendler_Rune_Info()
{
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune_15_00"); //I see a broken rune here. That thing interests me.
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune_16_01"); //I'd be happy to. You can have it for 500.
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune_15_02"); //Are you out of your mind? 500 gold for this lump of ore?
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune_15_03"); //It's at best for decoration. I'll give you 100.
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune_16_04"); //Are you out of your mind? This is an absolute rarity. Not to have less than 400.
};

INSTANCE Info_Mod_Raritaetenhaendler_Rune01 (C_INFO)
{
	npc		= Mod_7542_OUT_Raritaetenhaendler_REL;
	nr		= 1;
	condition	= Info_Mod_Raritaetenhaendler_Rune01_Condition;
	information	= Info_Mod_Raritaetenhaendler_Rune01_Info;
	permanent	= 0;
	important	= 0;
	description	= "All right, then. Here 400 coins. The pure rip-off is this.";
};

FUNC INT Info_Mod_Raritaetenhaendler_Rune01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raritaetenhaendler_Rune))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 400)
	&& (Npc_HasItems(self, ItMi_BrokenRune03) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raritaetenhaendler_Rune01_Info()
{
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune01_15_00"); //All right, then. Here 400 coins. The pure rip-off is this.

	B_GiveInvItems	(hero, self, ItMi_Gold, 400);

	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune01_16_01"); //Supply and demand is that. Here. Have a good time.

	B_GiveInvItems	(self, hero, ItMi_BrokenRune02, 1);

	Npc_RemoveInvItems	(self, ItMi_BrokenRune03, 1);
	
	if (Npc_HasItems(Mod_7540_OUT_Penner_REL, ItMi_BrokenRune01) == 1)
	{
		B_LogEntry	(TOPIC_MOD_JG_PENNER, "Swapped half a teleportune with the rarities dealer. Now I need the rest of the bum back. Shouldn't be too hard.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_JG_PENNER, "We did it! I have both parts. Maybe the rune can be repaired. Ask an expert. I wonder if there's a magician here. Let's ask. Maybe Daniel, he's dealing in magic.");
	};
};

INSTANCE Info_Mod_Raritaetenhaendler_Rune02 (C_INFO)
{
	npc		= Mod_7542_OUT_Raritaetenhaendler_REL;
	nr		= 1;
	condition	= Info_Mod_Raritaetenhaendler_Rune02_Condition;
	information	= Info_Mod_Raritaetenhaendler_Rune02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Absolute rarity? Look what I got here.";
};

FUNC INT Info_Mod_Raritaetenhaendler_Rune02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raritaetenhaendler_Rune))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 250)
	&& (Npc_HasItems(self, ItMi_BrokenRune03) == 1)
	&& (Npc_HasItems(hero, ItMi_BrokenRune01) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raritaetenhaendler_Rune02_Info()
{
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune02_15_00"); //Absolute rarity? Look what I got here.
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune02_16_01"); //Oh. Half a rune.
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune02_15_02"); //Exactly. They're around here somewhere.
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune02_16_03"); //All right, then. I'm going down to 250.
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune02_15_04"); //Because it's you. 250 gold in here.

	B_GiveInvItems	(hero, self, ItMi_Gold, 250);

	B_GiveInvItems	(self, hero, ItMi_BrokenRune02, 1);

	Npc_RemoveInvItems	(self, ItMi_BrokenRune03, 1);
	
	if (Npc_HasItems(Mod_7540_OUT_Penner_REL, ItMi_BrokenRune01) == 1)
	{
		B_LogEntry	(TOPIC_MOD_JG_PENNER, "Swapped half a teleportune with the rarities dealer. Now I need the rest of the bum back. Shouldn't be too hard.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_JG_PENNER, "We did it! I have both parts. Maybe the rune can be repaired. Ask an expert. I wonder if there's a magician here. Let's ask. Maybe Daniel, he's dealing in magic.");
	};
};

INSTANCE Info_Mod_Raritaetenhaendler_Rune03 (C_INFO)
{
	npc		= Mod_7542_OUT_Raritaetenhaendler_REL;
	nr		= 1;
	condition	= Info_Mod_Raritaetenhaendler_Rune03_Condition;
	information	= Info_Mod_Raritaetenhaendler_Rune03_Info;
	permanent	= 0;
	important	= 0;
	description	= "I only have 200 in my bag. That's all I can do.";
};

FUNC INT Info_Mod_Raritaetenhaendler_Rune03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raritaetenhaendler_Rune))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200)
	&& (Npc_HasItems(self, ItMi_BrokenRune03) == 1)
	&& (Npc_HasItems(hero, ItMi_Aquamarine) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raritaetenhaendler_Rune03_Info()
{
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune03_15_00"); //I only have 200 in my bag. That's all I can do.
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune03_16_01"); //Then we can't do business. Sorry about that.
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune03_15_02"); //I could add another aquamarine. First-class quality.

	Npc_RemoveInvItems	(hero, ItMi_Gold, 200);
	Npc_RemoveInvItems	(hero, ItMi_Aquamarine, 1);

	B_ShowGivenThings	("200 Gold and Aquamarine added");

	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune03_16_03"); //Deal. Here, the rune.

	B_GiveInvItems	(self, hero, ItMi_BrokenRune02, 1);

	Npc_RemoveInvItems	(self, ItMi_BrokenRune03, 1);
	
	if (Npc_HasItems(Mod_7540_OUT_Penner_REL, ItMi_BrokenRune01) == 1)
	{
		B_LogEntry	(TOPIC_MOD_JG_PENNER, "Swapped half a teleportune with the rarities dealer. Now I need the rest of the bum back. Shouldn't be too hard.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_JG_PENNER, "We did it! I have both parts. Maybe the rune can be repaired. Ask an expert. I wonder if there's a magician here. Let's ask. Maybe Daniel, he's dealing in magic.");
	};
};

INSTANCE Info_Mod_Raritaetenhaendler_Rune04 (C_INFO)
{
	npc		= Mod_7542_OUT_Raritaetenhaendler_REL;
	nr		= 1;
	condition	= Info_Mod_Raritaetenhaendler_Rune04_Condition;
	information	= Info_Mod_Raritaetenhaendler_Rune04_Info;
	permanent	= 0;
	important	= 0;
	description	= "Demand! What does demand mean? No one's ever gonna take that junk off you anyway.";
};

FUNC INT Info_Mod_Raritaetenhaendler_Rune04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raritaetenhaendler_Rune))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200)
	&& (Npc_HasItems(self, ItMi_BrokenRune03) == 1)
	&& (Npc_HasItems(hero, ItFo_Bread) >= 3)
	&& (Npc_HasItems(hero, ItFo_FishSoup) >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raritaetenhaendler_Rune04_Info()
{
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune04_15_00"); //Demand! What does demand mean? No one's ever gonna take that junk off you anyway.
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune04_16_01"); //You think so. Almost everyone asks me what's up with the rune.
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune04_15_02"); //And of course you say,"I don't know." Here. 200 gold.

	B_GiveInvItems	(hero, self, ItMi_Gold, 200);

	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune04_16_03"); //My final word. 250. I have to live, too. And the wife and seven children...
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune04_15_04"); //I only have 200. I'll give you three loaves of bread and three plates of soup. For the family...

	Npc_RemoveInvItems	(hero, ItFo_Bread, 3);
	Npc_RemoveInvItems	(hero, ItFo_FishSoup, 3);

	B_ShowGivenThings	("3 loaves of bread and 3 plates of soup");

	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune04_16_05"); //You're a criminal. Here. The rune.

	B_GiveInvItems	(self, hero, ItMi_BrokenRune02, 1);

	Npc_RemoveInvItems	(self, ItMi_BrokenRune03, 1);
	
	if (Npc_HasItems(Mod_7540_OUT_Penner_REL, ItMi_BrokenRune01) == 1)
	{
		B_LogEntry	(TOPIC_MOD_JG_PENNER, "Swapped half a teleportune with the rarities dealer. Now I need the rest of the bum back. Shouldn't be too hard.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_JG_PENNER, "We did it! I have both parts. Maybe the rune can be repaired. Ask an expert. I wonder if there's a magician here. Let's ask. Maybe Daniel, he's dealing in magic.");
	};
};

INSTANCE Info_Mod_Raritaetenhaendler_BrokenRune (C_INFO)
{
	npc		= Mod_7542_OUT_Raritaetenhaendler_REL;
	nr		= 1;
	condition	= Info_Mod_Raritaetenhaendler_BrokenRune_Condition;
	information	= Info_Mod_Raritaetenhaendler_BrokenRune_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello again.";
};

FUNC INT Info_Mod_Raritaetenhaendler_BrokenRune_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daniel_BrokenRune2))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Daniel_BrokenRune3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raritaetenhaendler_BrokenRune_Info()
{
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_BrokenRune_15_00"); //Hello again.
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_BrokenRune_16_01"); //What? You again? What do you want?
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_BrokenRune_15_02"); //I'm from Daniel. He sold you an adanos figure.
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_BrokenRune_16_03"); //That may be true. A nice piece of work. Carved entirely in aquamarine.

	B_GiveInvItems	(self, hero, ItMi_AdanosStatue, 1);

	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_BrokenRune_15_04"); //That's what I want to buy. You know, as a decoration...
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_BrokenRune_16_05"); //Certainly. 500 gold...
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_BrokenRune_15_06"); //Not again. That's worth a maximum of 200.

	B_GiveInvItems	(hero, self, ItMi_Gold, 200);

	B_LogEntry	(TOPIC_MOD_JG_RUNENZAUBER, "I have the Adanos figure now. Gotta get back to the magician.");
};

INSTANCE Info_Mod_Raritaetenhaendler_Pickpocket (C_INFO)
{
	npc		= Mod_7542_OUT_Raritaetenhaendler_REL;
	nr		= 1;
	condition	= Info_Mod_Raritaetenhaendler_Pickpocket_Condition;
	information	= Info_Mod_Raritaetenhaendler_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Raritaetenhaendler_Pickpocket_Condition()
{
	C_Beklauen	(107, ItMi_Runeblank, 1);
};

FUNC VOID Info_Mod_Raritaetenhaendler_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Raritaetenhaendler_Pickpocket);

	Info_AddChoice	(Info_Mod_Raritaetenhaendler_Pickpocket, DIALOG_BACK, Info_Mod_Raritaetenhaendler_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Raritaetenhaendler_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Raritaetenhaendler_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Raritaetenhaendler_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Raritaetenhaendler_Pickpocket);
};

FUNC VOID Info_Mod_Raritaetenhaendler_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Raritaetenhaendler_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Raritaetenhaendler_Pickpocket);

		Info_AddChoice	(Info_Mod_Raritaetenhaendler_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Raritaetenhaendler_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Raritaetenhaendler_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Raritaetenhaendler_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Raritaetenhaendler_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Raritaetenhaendler_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Raritaetenhaendler_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Raritaetenhaendler_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Raritaetenhaendler_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Raritaetenhaendler_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Raritaetenhaendler_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Raritaetenhaendler_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Raritaetenhaendler_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Raritaetenhaendler_EXIT (C_INFO)
{
	npc		= Mod_7542_OUT_Raritaetenhaendler_REL;
	nr		= 1;
	condition	= Info_Mod_Raritaetenhaendler_EXIT_Condition;
	information	= Info_Mod_Raritaetenhaendler_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Raritaetenhaendler_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Raritaetenhaendler_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
