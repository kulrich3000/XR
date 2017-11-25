INSTANCE Info_Mod_Dragon_Hi (C_INFO)
{
	npc		= Dragon_11009_NW;
	nr		= 1;
	condition	= Info_Mod_Dragon_Hi_Condition;
	information	= Info_Mod_Dragon_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dragon_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_KoboldDragon_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragon_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Dragon_Hi_22_00"); //That's how I finally get to see you human.
	AI_Output(self, hero, "Info_Mod_Dragon_Hi_22_01"); //One of my servants told me that it was you who opened the book.
	AI_Output(hero, self, "Info_Mod_Dragon_Hi_15_02"); //I'm relieved, though.
	AI_Output(self, hero, "Info_Mod_Dragon_Hi_22_03"); //It's hard for me to outweigh the service you've done me with gold.
	AI_Output(self, hero, "Info_Mod_Dragon_Hi_22_04"); //Your reward should be to act as my right hand on khorinis and to participate in my growing power.
	AI_Output(hero, self, "Info_Mod_Dragon_Hi_15_05"); //(slightly ironic) Too generous.
	AI_Output(self, hero, "Info_Mod_Dragon_Hi_22_06"); //Well, first of all....

	AI_TurnToNpc	(self, Kobold_11010_NW);

	AI_Output(self, hero, "Info_Mod_Dragon_Hi_22_07"); //What do you say, goblin, you caught the culprit who didn't relinquish the portion of his loot from the last raid to me.
	AI_Output(self, hero, "Info_Mod_Dragon_Hi_22_08"); //So, the naughty worm has stolen 20 gold coins from me. What, now he's begging for mercy and mercy for his wrongdoing?!
	AI_Output(self, hero, "Info_Mod_Dragon_Hi_22_09"); //Burned and pierced by 20 blades he shall be!
	AI_Output(hero, self, "Info_Mod_Dragon_Hi_15_10"); //(to himself, shocked) Ohh, his henchman?
	AI_Output(self, hero, "Info_Mod_Dragon_Hi_22_11"); //Well, that's supposed to teach him a lesson....
	AI_Output(self, hero, "Info_Mod_Dragon_Hi_22_12"); //He thanks you for my mild verdict?! That's what I told him to do.
	AI_Output(self, hero, "Info_Mod_Dragon_Hi_22_13"); //And woe betide him to afford another lapse..... Then I want him to feel really bad.

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Dragon_Hi_22_14"); //So, where were we? Exactly, your duties.
	AI_Output(self, hero, "Info_Mod_Dragon_Hi_22_15"); //For the time being, I have nothing concrete to do for you. Just ask around on this island with humans and monsters to find out if you can get some useful information for me.
	AI_Output(self, hero, "Info_Mod_Dragon_Hi_22_16"); //My dragon treasure is miserable, not even worthy of a lentil worm, and I senses to enlarge it.

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Dragon_Hi_15_17"); //At the moment, the dragon and his servants seem to me to be overpowering. I should play along and see if I can find out something useful.

	AI_TurnToNpc	(hero, self);

	B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "Well, a mighty dragon with a fearsome followers is this dragon. For the time being I am still without chances and should therefore play along. And it wouldn't really be a disadvantage if I looked around and listened. Hmm, he wants to enlarge his kite treasure...");
};

INSTANCE Info_Mod_Dragon_Kloster (C_INFO)
{
	npc		= Dragon_11009_NW;
	nr		= 1;
	condition	= Info_Mod_Dragon_Kloster_Condition;
	information	= Info_Mod_Dragon_Kloster_Info;
	permanent	= 0;
	important	= 0;
	description	= "Lords of demons and beasts (...) )";
};

FUNC INT Info_Mod_Dragon_Kloster_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Gormgniez))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragon_Kloster_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragon_Kloster_15_00"); //Lord of demons and beasts, I know a way to increase your dragon treasure.
	AI_Output(self, hero, "Info_Mod_Dragon_Kloster_22_01"); //Yes, speak human!
	AI_Output(hero, self, "Info_Mod_Dragon_Kloster_15_02"); //Not far to the east lies a monastery of fire magicians, which holds great riches. You should dig these out.
	AI_Output(self, hero, "Info_Mod_Dragon_Kloster_22_03"); //That sounds very tempting indeed. Good clue, man.
	AI_Output(self, hero, "Info_Mod_Dragon_Kloster_22_04"); //Tonight at nightfall, we'll take care of the monastery.

	Mod_NL_DragonKlosterTag = Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_NL_DRAGON, "I taught Dragon about the monastery and its riches. He was satisfied and wants to start a robbery at nightfall.");
};

INSTANCE Info_Mod_Dragon_KlosterErfolg (C_INFO)
{
	npc		= Dragon_11009_NW;
	nr		= 1;
	condition	= Info_Mod_Dragon_KlosterErfolg_Condition;
	information	= Info_Mod_Dragon_KlosterErfolg_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dragon_KlosterErfolg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragon_Kloster))
	&& (Mod_NL_DragonKloster == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragon_KlosterErfolg_Info()
{
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_00"); //(cheers) Wuahahaha, your proposition was really worth its weight in gold, man.
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_01"); //We gathered so much from the treasuries and storerooms of the monastery that we could hardly carry everything, they had so much.
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_02"); //These fire magicians seem to be pursuing an extremely lucrative trade....
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_03"); //Be that as it may, you earned your share.

	B_ShowGivenThings	("2000 Gold, 16 ham and 30 wine obtained");

	CreateInvItems	(hero, ItMi_Gold, 2000);
	CreateInvItems	(hero, ItFo_Bacon, 16);
	CreateInvItems	(hero, ItFo_Wine, 30);

	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_04"); //What I am now longing for: magical, bluish shimmering ore.
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_05"); //If I could still enrich my dragon treasure with it, every other dragon, king or whatever else on this globe has rank and treasures would have to go green with envy.
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_06"); //Take this ring and put it on in a mine where my servants can dig ore for me.

	B_GiveInvItems	(self, hero, ItRi_DragonRing, 1);

	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_07"); //But now.... (yawns) I have to retire again.
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_08"); //The successful raid and the sheep in the stomach.... (yawns) call for leisure, rest and sleep.
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_09"); //(speaks in sleep) Gold....
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_10"); //(speaks in sleep) Gemstones....
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_11"); //(speaks in sleep) ovine
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_12"); //(speaks in sleep) Power and wealth...
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_13"); //(speaks in sleep) Power and immortality....
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_14"); //(speaks in sleep) shared with the one who's undead...
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_15"); //(speaks in sleep) with the magic alliance....
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_16"); //(speaks in sleep) in caves, dungeons and torture chambers....
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_17"); //(speaks in sleep) an object that contains life....
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_18"); //(speaks in sleep) in the country...
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_19"); //(speaks in sleep) of the mother's grain....
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_20"); //(speaks in sleep) the swamp...
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_21"); //(speaks in sleep) and its occupant...
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_22"); //(speaks in sleep) latent
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_23"); //(speaks in sleep) to the mighty...
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_24"); //(speaks in sleep) she wears it...
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_25"); //(speaks in sleep) mhhh, sheepmeat...
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_26"); //(speaks in sleep) ham
	AI_Output(self, hero, "Info_Mod_Dragon_KlosterErfolg_22_27"); //(speaks in sleep) blonde virgins....

	B_LogEntry_NS	(TOPIC_MOD_NL_DRACHEN, "Dragon gave me a ring to raise in a mine where his servants can dig ore for him.");
	B_LogEntry	(TOPIC_MOD_NL_DRAGON, "Power and immortality shared with the undead... magical alliance, in caves, dungeons and torture chambers... an object that holds life, in the land, the grain of the mother, the moor and its inhabitant, hides itself to the mighty, it carries him.");
	B_LogEntry	(TOPIC_MOD_NL_DRAGON, "Okey, the dragon has formed an alliance with an undead in which immortality is shared.");

	if (Mod_HSNL_RatProblem == 1)
	{
		Mod_HSNL_RatProblem = 2;

		// ToDo

		//Npc_ExchangeRoutine	(Mod_520_DMR_Raven_NW, "RAT");
		//Npc_ExchangeRoutine	(Mod_517_DMR_Gomez_NW, "RAT");
		Npc_ExchangeRoutine	(Mod_551_KDF_Pyrokar_NW, "RAT");
		Npc_ExchangeRoutine	(Mod_592_PAL_Hagen_NW, "RAT");
		Npc_ExchangeRoutine	(Mod_774_KDW_Saturas_NW, "RAT");
		Npc_ExchangeRoutine	(Mod_527_SLD_Torlof_NW, "RAT");
		Npc_ExchangeRoutine	(Mod_925_KDF_Talamon_NW, "RAT");
	};
};

INSTANCE Info_Mod_Dragon_Mine (C_INFO)
{
	npc		= Dragon_11009_NW;
	nr		= 1;
	condition	= Info_Mod_Dragon_Mine_Condition;
	information	= Info_Mod_Dragon_Mine_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dragon_Mine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragon_KlosterErfolg))
	&& (Npc_KnowsInfo(hero, Info_Mod_Dschinn_VM_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragon_Mine_Info()
{
	AI_Output(self, hero, "Info_Mod_Dragon_Mine_22_00"); //Once again you have fulfilled your task to my satisfaction and found a rich mine. Here's your reward.

	B_GiveInvItems	(self, hero, ItMi_Nugget, 25);

	B_GivePlayerXP	(350);
};

INSTANCE Info_Mod_Dragon_Snorre (C_INFO)
{
	npc		= Dragon_11009_NW;
	nr		= 1;
	condition	= Info_Mod_Dragon_Snorre_Condition;
	information	= Info_Mod_Dragon_Snorre_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dragon_Snorre_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andokai_Moorhexe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragon_Snorre_Info()
{
	AI_Output(self, hero, "Info_Mod_Dragon_Snorre_22_00"); //That dirty little thief! I'll burn him to ashes!
	AI_Output(hero, self, "Info_Mod_Dragon_Snorre_15_01"); //What has happened?
	AI_Output(self, hero, "Info_Mod_Dragon_Snorre_22_02"); //This brazen goblin Snorre has taken some of my treasures out of the dust. Among them particularly valuable pieces from the monastery. Grrr (snorted)
	AI_Output(self, hero, "Info_Mod_Dragon_Snorre_22_03"); //My dragon instincts tell me he fled north. Do me a favor and kill him.
	AI_Output(self, hero, "Info_Mod_Dragon_Snorre_22_04"); //As a special incentive, you can even keep the treasures.
	AI_Output(self, hero, "Info_Mod_Dragon_Snorre_22_05"); //There has to be an example before others come up with stupid ideas.

	B_LogEntry	(TOPIC_MOD_NL_STAB, "The goblin Snorre has blown up with a part of Dragon's appreciate. He probably ran north. Was the staff also among them? At least I don't see him here.");

	B_StartOtherRoutine	(Kobold_11010_NW, "FLUCHT");

	Wld_InsertItem	(ItWr_SnorresNotiz, "FP_ROAM_UNTIER_02");
};

INSTANCE Info_Mod_Dragon_SnorreTot (C_INFO)
{
	npc		= Dragon_11009_NW;
	nr		= 1;
	condition	= Info_Mod_Dragon_SnorreTot_Condition;
	information	= Info_Mod_Dragon_SnorreTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dragon_SnorreTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragon_Snorre))
	&& (Npc_IsDead(Kobold_11010_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragon_SnorreTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Dragon_SnorreTot_22_00"); //Hmm, I don't feel Snorress Aura anymore. I can therefore assume that you have fulfilled your task to my utmost satisfaction.
	AI_Output(self, hero, "Info_Mod_Dragon_SnorreTot_22_01"); //Rewarded by the treasures you are already more than enough.

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Dragon_Kamm (C_INFO)
{
	npc		= Dragon_11009_NW;
	nr		= 1;
	condition	= Info_Mod_Dragon_Kamm_Condition;
	information	= Info_Mod_Dragon_Kamm_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dragon_Kamm_Condition()
{
	if (Mod_NL_HasKamm >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragon_Kamm_Info()
{
	AI_Output(self, hero, "Info_Mod_Dragon_Kamm_22_00"); //(huffles) Grrr, an enemy has destroyed one of my allies, destroying a powerful magical pact that was invaluable to me and the other dragons.
	AI_Output(self, hero, "Info_Mod_Dragon_Kamm_22_01"); //In exchange, another magician contacted me and informed me about the alleged evildoer.
	AI_Output(hero, self, "Info_Mod_Dragon_Kamm_15_02"); //(to himself) Uh-huh...
	AI_Output(self, hero, "Info_Mod_Dragon_Kamm_22_03"); //I have his picture.... Here, take it and find this vermin and then prepare a painful death for him.

	B_GiveInvItems	(self, hero, ItWr_Poster_MIS, 1);

	AI_Output(self, hero, "Info_Mod_Dragon_Kamm_22_04"); //I will load you with gold and riches, more than you can carry. I can't help myself, but you people look the same to me.
	AI_Output(self, hero, "Info_Mod_Dragon_Kamm_22_05"); //Oh, and don't run into my brothers.
	AI_Output(self, hero, "Info_Mod_Dragon_Kamm_22_06"); //After the recent events, they will not hesitate to put an immediate stop to every person who feeds them.

	B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "Slowly the air becomes thin for me at the upper kite Dragon. Xeres seems to have taught the dragon about me. And I'm not sure I have a chance against him now, even if he should be mortal now. Maybe I should try myself on a weaker specimen with some support.");
};

INSTANCE Info_Mod_Dragon_Infos (C_INFO)
{
	npc		= Dragon_11009_NW;
	nr		= 1;
	condition	= Info_Mod_Dragon_Infos_Condition;
	information	= Info_Mod_Dragon_Infos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Lord of dragons and demons, can you tell me more (... )";
};

FUNC INT Info_Mod_Dragon_Infos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragon_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dragon_Infos_Info()
{
	AI_Output(hero, self, "Info_Mod_Dragon_Infos_15_00"); //Lord of dragons and demons, can you tell me more about you and your creatures? What's the big deal....
	AI_Output(self, hero, "Info_Mod_Dragon_Infos_22_01"); //(interrupts, reprimands) Don't be so curious, man. You'll find out what you need to know.
};

INSTANCE Info_Mod_Dragon_EXIT (C_INFO)
{
	npc		= Dragon_11009_NW;
	nr		= 1;
	condition	= Info_Mod_Dragon_EXIT_Condition;
	information	= Info_Mod_Dragon_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Dragon_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dragon_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
