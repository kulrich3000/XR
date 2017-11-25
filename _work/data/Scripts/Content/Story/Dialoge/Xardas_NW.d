INSTANCE Info_Mod_Xardas_NW_Hallo (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Hallo_Condition;
	information	= Info_Mod_Xardas_NW_Hallo_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_Hallo_Condition()
{
	if (HeroIstKeinZombie == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Hallo_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Hallo_14_00"); //What?! With Beliar! You here?! How is that possible? It's been three weeks since you banished the sleeper.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Hallo_14_01"); //I was sure you were dead...
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Hallo_15_02"); //That's the way it was.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Hallo_14_03"); //What do you say? I need you to explain...
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Hallo_15_04"); //After your servants had removed the debris, I woke up to new consciousness.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Hallo_15_05"); //I managed to steer my body, but I soon realized that it was about to decompose.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Hallo_14_06"); //This is highly unusual. Wherein... I remember an ancient tradition, according to which the wearer of a magic armor continued the fight in a battle even then,....
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Hallo_14_07"); //... when his body had been pierced by innumerable weapons and burned by flames.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Hallo_14_08"); //His spirit was apparently held back by the magical armor in his dead body, like a cage. The same thing must have happened to you.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Hallo_14_09"); //The magical explosion after the fall of the barrier may also have played its part.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Hallo_14_10"); //Hmm... but then how is it possible that you're standing before me alive again? What has happened?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Hallo_15_11"); //In the rubble I found a book that revealed a formula to combine armor and healing rune.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Hallo_15_12"); //With the magical energy of the armor, a complete healing of the wearer can be achieved in this way.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Hallo_14_13"); //You're very lucky to have such a book in your hands. Books containing such ancient knowledge are extremely rare.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Hallo_14_14"); //Be that as it may, you are now standing before me alive again.

	B_GivePlayerXP	(100);

	Mod_RealStrength	=	10;
	Mod_RealDexterity	=	10;
	Mod_RealMana		=	10;
	Mod_KenntBodo	=	0;
	FokiEingesetzt	=	0;
	Monster_Max = 2307;
	Erzhackchance = 10;

	Mod_Gottstatus = 8;

	Mod_Verhandlungsgeschick = 10;

	Npc_RemoveInvItems	(hero, ItWr_XardasLetterForHeroOT, 1);

	Npc_SetTalentSkill (hero, NPC_TALENT_GOTTSTATUS, 8);

	B_LogEntry	(TOPIC_MOD_ANFANG, "I found Xardas and told him my story. Now I will hopefully find out what happens next.");
	B_SetTopicStatus	(TOPIC_MOD_ANFANG, LOG_SUCCESS);

	if (Mod_OT_Geheimkammer == 1) {
		B_SetTopicStatus	(TOPIC_MOD_OT_GEHEIMKAMMER, LOG_FAILED);
	};

	Mod_BeliarStatue_Krieger_Dabei = 1;
};

INSTANCE Info_Mod_Xardas_NW_WasJetzt (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_WasJetzt_Condition;
	information	= Info_Mod_Xardas_NW_WasJetzt_Info;
	permanent	= 0;
	important	= 0;
	description	= "What am I supposed to do now?";
};

FUNC INT Info_Mod_Xardas_NW_WasJetzt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Hallo))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_WasJetzt_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_WasJetzt_15_00"); //What am I supposed to do now?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasJetzt_14_01"); //You banished the sleeper and destroyed the barrier. An unsuspected observer might now think that everything is peaceful.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasJetzt_14_02"); //But peace is deceptive.
};

INSTANCE Info_Mod_Xardas_NW_Vorahnung (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Vorahnung_Condition;
	information	= Info_Mod_Xardas_NW_Vorahnung_Info;
	permanent	= 0;
	important	= 0;
	description	= "How do you know that?";
};

FUNC INT Info_Mod_Xardas_NW_Vorahnung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_WasJetzt))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Vorahnung_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Vorahnung_15_00"); //How do you know that?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Vorahnung_14_01"); //In the last few days, I've been plagued by visions. A dark figure streaked over khorinis and spread disaster.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Vorahnung_15_02"); //That doesn't sound good. Don't you know anything more specific?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Vorahnung_14_03"); //No, so far I only have these visions. However, I do research information in my books.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Vorahnung_15_04"); //Can I help you with that?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Vorahnung_14_05"); //In your weakened state, you can't be much help to me. You should regain strength first.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Vorahnung_14_06"); //Surely it would be a good idea to join one of the guilds here. They still have the best teachers.

	Log_CreateTopic	(TOPIC_MOD_DIEBEDROHUNG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DIEBEDROHUNG, LOG_RUNNING);
	
	Log_CreateTopic	(TOPIC_MOD_GILDENAUFNAHME, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_GILDENAUFNAHME, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_GILDENAUFNAHME, TOPIC_MOD_DIEBEDROHUNG, "Xardas told me to gather strength first and join a guild.", "Xardas has had some visions lately. A dark figure will spread disaster over khorinis. Xardas is still researching information in his books. Until he finds out something new, I have to join a guild.");
};

INSTANCE Info_Mod_Xardas_NW_WasFuerGilden (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_WasFuerGilden_Condition;
	information	= Info_Mod_Xardas_NW_WasFuerGilden_Info;
	permanent	= 0;
	important	= 0;
	description	= "What guilds are there?";
};

FUNC INT Info_Mod_Xardas_NW_WasFuerGilden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Vorahnung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_WasFuerGilden_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_WasFuerGilden_15_00"); //What guilds are there?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasFuerGilden_14_01"); //There are militia in the city who are good at fighting.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasFuerGilden_14_02"); //I hear there's some mercenaries on a farm. I think you know her.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasFuerGilden_14_03"); //Fire magicians live in a monastery. You can also join them.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasFuerGilden_14_04"); //There are also the water magicians, who are currently tampering with an old ruin. One of them is said to be in town.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasFuerGilden_14_05"); //Or you choose the path of Beliar.

	Mod_Gilde	=	0;

	B_LogEntry	(TOPIC_MOD_GILDENAUFNAHME, "I can become either a member of the militia, mercenary, fire novice, water novice or black novice.");

	Mil_310_schonmalreingelassen = TRUE;

	Log_CreateTopic	(TOPIC_MOD_MILIZ, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ, LOG_RUNNING);
	Log_CreateTopic	(TOPIC_MOD_SÖLDNER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SÖLDNER, LOG_RUNNING);
	Log_CreateTopic	(TOPIC_MOD_DAEMONENBESCHWOERER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DAEMONENBESCHWOERER, LOG_RUNNING);
	Log_CreateTopic	(TOPIC_MOD_FEUERMAGIER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FEUERMAGIER, LOG_RUNNING);
	Log_CreateTopic	(TOPIC_MOD_WASSERMAGIER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_WASSERMAGIER, LOG_RUNNING);

	B_LogEntry_NS	(TOPIC_MOD_MILIZ, "I can join the militia in town.");
	B_LogEntry_NS	(TOPIC_MOD_SÖLDNER, "I find the mercenaries on a farm. Xardas means I know her.");
	B_LogEntry_NS	(TOPIC_MOD_DAEMONENBESCHWOERER, "With Xardas, I can join the black novices.");
	B_LogEntry_NS	(TOPIC_MOD_FEUERMAGIER, "In a monastery on the island live the fire magicians I can join.");
	B_LogEntry_NS	(TOPIC_MOD_WASSERMAGIER, "The water magicians are in an ancient ruin in the north of the island. However, there is said to be one in the city of Khorini.");

	B_Kapitelwechsel (1, NEWWORLD_ZEN);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine (self, "START");
};

INSTANCE Info_Mod_Xardas_NW_Urnol (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Urnol_Condition;
	information	= Info_Mod_Xardas_NW_Urnol_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_Urnol_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Urnol_WerBistDu))
	&& (Mod_Gilde > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Urnol_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol_14_00"); //Ahh. Oh, there you are. Did you join a guild?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Urnol_15_01"); //Yeah. But it wasn't easy.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol_14_02"); //Very nice. And did you also speak to the dark pilgrim?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Urnol_15_03"); //Not yet, so far. He's always one step ahead of me.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol_14_04"); //Fiddlesticks! We need to know what's driving him. I feel terrible.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol_14_05"); //Go find that pilgrim. And then report to me.

	B_LogEntry	(TOPIC_MOD_DIEBEDROHUNG, "It seems the pilgrim is important. Xardas wants me to go see him at all costs.");
};

INSTANCE Info_Mod_Xardas_NW_Urnol1 (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Urnol1_Condition;
	information	= Info_Mod_Xardas_NW_Urnol1_Info;
	permanent	= 0;
	important	= 0;
	description	= "I met a shadow lord.";
};

FUNC INT Info_Mod_Xardas_NW_Urnol1_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Urnol_WerBistDu))
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_WasFuerGilden))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Urnol1_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Urnol1_15_00"); //I met a shadow lord.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol1_14_01"); //Then the threat appears to be closer than I expected. What did he tell you?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Urnol1_15_02"); //He said that his master would return to kill me because I had killed one of his servants.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol1_14_03"); //And the servant was probably the sleeper.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Urnol1_15_04"); //Yes, that's what the shadow lord said. But the sleeper was the god of orcs and was created by them?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol1_14_05"); //I thought so too, but apparently I wasn't well informed. I'll try to find out more about this.

	if (Mod_Gilde == 0)
	{
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol1_14_06"); //Join a guild first.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol1_14_07"); //Come back tomorrow and I'll have news for you.

		Mod_HS_UrnolXardas_NextDay = Wld_GetDay();
	};

	AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol1_14_08"); //By the way, this dark creature isn't the only thing that's bothering me.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol1_14_09"); //On a stroll through Khorinis I met another hiker.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol1_14_10"); //He called himself Argez, but couldn't tell me where he came from.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol1_14_11"); //The conversation would not have attracted my attention if I hadn't had the dull feeling of having heard the name before. A long time ago....
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol1_14_12"); //It may well be that he is an important figure in the foggy game that is currently being played with us.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Urnol1_14_13"); //Maybe you'll meet him; he was going to Khorinis.

	B_GivePlayerXP	(250);

	if (!Npc_KnowsInfo(hero, Info_Mod_Argez_NW_Hi))
	{
		Log_CreateTopic	(TOPIC_MOD_ARGEZ, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_ARGEZ, LOG_RUNNING);
	};

	B_LogEntry_More	(TOPIC_MOD_DIEBEDROHUNG, TOPIC_MOD_ARGEZ, "After I told Xardas about the meeting with Urnol, he was very surprised, but his suspicion seemed to have been confirmed. He was particularly astonished by the fact of the sleeper.", "Xardas spoke of a possible key figure in his foreboding, called Argez. When Xardas met him, he was on his way to Khorinis.");
};

INSTANCE Info_Mod_Xardas_NW_InGilde (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_InGilde_Condition;
	information	= Info_Mod_Xardas_NW_InGilde_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_InGilde_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Urnol1))
	&& (Mod_Gilde > 0)
	&& (Mod_HS_UrnolXardas_NextDay < Wld_GetDay())
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_InGilde_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_InGilde_14_00"); //Ah, good of you to come. I found out a few things.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_InGilde_15_01"); //That's what I was hoping.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_InGilde_14_02"); //Well, I'm afraid the threat is greater than expected.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_InGilde_15_03"); //Is there anything more specific?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_InGilde_14_04"); //For now, no. I may have found a trail, but I don't want to burden you with things I'm not sure they even exist.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_InGilde_14_05"); //But you can do me a big favor and help the water magicians at their excavation site.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_InGilde_14_06"); //If I'm right, the portal they discovered will answer some important questions.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_InGilde_15_07"); //But you don't want to answer my important questions.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_InGilde_14_08"); //In return, I'll let you share a historic moment. Not everyone is allowed to pass through a portal thousands of years old.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_InGilde_15_09"); //It wasn't one of my life goals until now.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_InGilde_14_10"); //(strength) But now!

	B_LogEntry	(TOPIC_MOD_DIEBEDROHUNG, "Xardas instructed me to walk with the water magicians through the portal they discovered.");
};

INSTANCE Info_Mod_Xardas_NW_Saturas (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Saturas_Condition;
	information	= Info_Mod_Xardas_NW_Saturas_Info;
	permanent	= 0;
	important	= 0;
	description	= "The Water Magicians won't want to take me with them.";
};

FUNC INT Info_Mod_Xardas_NW_Saturas_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_InGilde))
	&& ((Mod_Gilde == 1)
	|| (Mod_Gilde == 6)
	|| (Mod_Gilde == 12))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Saturas_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Saturas_15_00"); //The Water Magicians won't want to take me with them.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Saturas_14_01"); //Then give Satan's message of me.

	B_GiveInvItems	(self, hero, XardasLetterForSaturas, 1);
};

INSTANCE Info_Mod_Xardas_NW_XeresLebt (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_XeresLebt_Condition;
	information	= Info_Mod_Xardas_NW_XeresLebt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_XeresLebt_Condition()
{
	if (Kapitel == 4)
	&& (Npc_KnowsInfo(hero, Info_Mod_Xeres_Beliar))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_XeresLebt_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_XeresLebt_14_00"); //Did you destroy Xeres?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_XeresLebt_15_01"); //No, he beat me again. I'm still alive thanks to your amulet.

	Log_CreateTopic	(TOPIC_MOD_MAGIERRAT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MAGIERRAT, LOG_RUNNING);

	if (hero.guild == GIL_VLK)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Aaron_BarriereWeg))
	{
		AI_Output(self, hero, "Info_Mod_Xardas_NW_XeresLebt_14_02"); //I have to recall the council. However, my subordinates who are currently in Patherion will not agree.
		AI_Output(self, hero, "Info_Mod_Xardas_NW_XeresLebt_14_03"); //You must ensure that the problem is resolved there before I can call the Council.

		B_LogEntry	(TOPIC_MOD_MAGIERRAT, "Xardas wants to reconvene the Council, but I must first solve the problems in Patherion.");
	}
	else if (hero.guild == GIL_KDF)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Xardas_AW_Bshydal))
	{
		AI_Output(self, hero, "Info_Mod_Xardas_NW_XeresLebt_14_04"); //I have to recall the council. However, there is something more urgent at the moment.
		AI_Output(self, hero, "Info_Mod_Xardas_NW_XeresLebt_14_05"); //But you have to do something for Myxir first. Come back when you get it done.

		B_LogEntry	(TOPIC_MOD_MAGIERRAT, "Xardas wants to recall the council, but before that I have to do something for Myxir.");

		B_StartOtherRoutine	(self, "BUMMEL");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Xardas_NW_XeresLebt_14_06"); //I'll recall the Magician's Council. I'll be on my way right away.
		AI_Output(self, hero, "Info_Mod_Xardas_NW_XeresLebt_14_07"); //It will take place in the monastery cellar. I'll meet you there. Take this ring, it'll take you there.

		B_GiveInvItems	(self, hero, Mod_XardasBeamRing, 1);

		B_LogEntry	(TOPIC_MOD_MAGIERRAT, "Xardas has set out to convene the Mage Council. This takes place in the monastery cellar. He gave me a ring that will take me there.");

		if (Mod_Gilde != 2)
		&& (Mod_Gilde != 19)
		&& (Mod_Gilde != 7)
		&& (Mod_Gilde != 10)
		&& (Mod_Gilde != 13)
		&& (Mod_Gilde != 15)
		&& (Mod_Gilde != 17)
		{
			AI_Output(self, hero, "Info_Mod_Xardas_NW_XeresLebt_14_08"); //However, you should first reach the next rank of your guild.
		};

		Mod_HS_XardasRat = 1;

		AI_StopProcessInfos	(self);

		AI_Teleport	(self, "WP_KLOSTER_KELLER_RAT_VERTEILER");

		B_StartOtherRoutine	(self, "RAT");

		if (hero.guild == GIL_MIL)
		&& (!Npc_KnowsInfo(hero, Info_Mod_Dragon_KlosterErfolg))
		&& (!Npc_IsDead(Dragon_11009_NW))
		{
			Mod_HSNL_RatProblem = 1;
		}
		else if (hero.guild == GIL_NOV)
		&& (!Npc_KnowsInfo(hero, Info_Mod_Saturas_AW_Member_26))
		{
			Mod_HSWM_RatProblem = 1;

			// ToDo

			Wld_InsertNpc(Mod_510_DMR_Raven_NW, "BIGFARM");
			//B_StartOtherRoutine	(Mod_517_DMR_Gomez_NW, "RAT");
			B_StartOtherRoutine	(Mod_551_KDF_Pyrokar_NW, "RAT");
			B_StartOtherRoutine	(Mod_592_PAL_Hagen_NW, "RAT");
			B_StartOtherRoutine	(Mod_925_KDF_Talamon_NW, "RAT");
		}
		else
		{
			Wld_InsertNpc(Mod_510_DMR_Raven_NW, "BIGFARM");
			//B_StartOtherRoutine	(Mod_517_DMR_Gomez_NW, "RAT");
			B_StartOtherRoutine	(Mod_551_KDF_Pyrokar_NW, "RAT");
			B_StartOtherRoutine	(Mod_774_KDW_Saturas_NW, "RAT");
			B_StartOtherRoutine	(Mod_527_SLD_Torlof_NW, "RAT");
			B_StartOtherRoutine	(Mod_925_KDF_Talamon_NW, "RAT");

			if (hero.guild != GIL_PAL)
			{
				B_StartOtherRoutine	(Mod_592_PAL_Hagen_NW, "RAT");
			};
		};
	};
};

INSTANCE Info_Mod_Xardas_NW_PatherionOk (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_PatherionOk_Condition;
	information	= Info_Mod_Xardas_NW_PatherionOk_Info;
	permanent	= 0;
	important	= 0;
	description	= "Patherion's safe.";
};

FUNC INT Info_Mod_Xardas_NW_PatherionOk_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_XeresLebt))
	&& (Mod_HS_XardasRat == 0)
	&& (Npc_KnowsInfo(hero, Info_Mod_Aaron_BarriereWeg))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_PatherionOk_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_PatherionOk_15_00"); //Patherion is safe and the black mages are defeated.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_PatherionOk_14_01"); //That's good news. Now I can recall the Wizard's Council. I'll leave immediately.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_PatherionOk_14_02"); //We'll meet in the monastery cellar. You can get there with that ring.

	B_GiveInvItems	(self, hero, Mod_XardasBeamRing, 1);

	B_LogEntry	(TOPIC_MOD_MAGIERRAT, "Xardas has set out to convene the Mage Council. This takes place in the monastery cellar. He gave me a ring that will take me there.");

	Mod_HS_XardasRat = 1;

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "WP_KLOSTER_KELLER_RAT_VERTEILER");

	// ToDo

	B_StartOtherRoutine	(self, "RAT");
	Wld_InsertNpc(Mod_510_DMR_Raven_NW, "BIGFARM");
	//B_StartOtherRoutine	(Mod_517_DMR_Gomez_NW, "RAT");
	B_StartOtherRoutine	(Mod_551_KDF_Pyrokar_NW, "RAT");
	B_StartOtherRoutine	(Mod_592_PAL_Hagen_NW, "RAT");
	B_StartOtherRoutine	(Mod_774_KDW_Saturas_NW, "RAT");
	B_StartOtherRoutine	(Mod_527_SLD_Torlof_NW, "RAT");
	B_StartOtherRoutine	(Mod_925_KDF_Talamon_NW, "RAT");
};

INSTANCE Info_Mod_Xardas_NW_BshydalOk (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_BshydalOk_Condition;
	information	= Info_Mod_Xardas_NW_BshydalOk_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you call the council now?";
};

FUNC INT Info_Mod_Xardas_NW_BshydalOk_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_XeresLebt))
	&& (Mod_HS_XardasRat == 0)
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_AW_Bshydal))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_BshydalOk_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_BshydalOk_15_00"); //Can you call the council now?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_BshydalOk_14_01"); //Yes, I'll leave immediately.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_BshydalOk_14_02"); //We'll meet in the monastery cellar. You can get there with that ring.

	B_GiveInvItems	(self, hero, Mod_XardasBeamRing, 1);

	B_LogEntry	(TOPIC_MOD_MAGIERRAT, "Xardas has set out to convene the Mage Council. This takes place in the monastery cellar. He gave me a ring that will take me there.");

	Mod_HS_XardasRat = 1;

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "WP_KLOSTER_KELLER_RAT_VERTEILER");

	// ToDo

	B_StartOtherRoutine	(self, "RAT");
	//B_StartOtherRoutine	(Mod_520_DMR_Raven_NW, "RAT");
	//B_StartOtherRoutine	(Mod_517_DMR_Gomez_NW, "RAT");
	B_StartOtherRoutine	(Mod_551_KDF_Pyrokar_NW, "RAT");
	B_StartOtherRoutine	(Mod_592_PAL_Hagen_NW, "RAT");
	B_StartOtherRoutine	(Mod_774_KDW_Saturas_NW, "RAT");
	B_StartOtherRoutine	(Mod_527_SLD_Torlof_NW, "RAT");
	B_StartOtherRoutine	(Mod_925_KDF_Talamon_NW, "RAT");
};

INSTANCE Info_Mod_Xardas_NW_Rat_Dragon (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Rat_Dragon_Condition;
	information	= Info_Mod_Xardas_NW_Rat_Dragon_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_Rat_Dragon_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_XeresLebt))
	&& (Mod_HS_XardasRat == 1)
	&& (Mod_HSNL_RatProblem == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Rat_Dragon_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rat_Dragon_14_00"); //(raised) These narrow-minded ignoramuses...
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rat_Dragon_15_01"); //What's going on?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rat_Dragon_14_02"); //Ach, die Feuermagier haben Zweifel daran, ob die Bedrohung wirklich so groß ist, dass sie ihr Schicksal in die Hände eine "godless mercenaries and delinquents from the penal colony" legen müssten, wie sie es nannten.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rat_Dragon_14_03"); //Something fatal must happen first, which will convince them of the immediacy of danger...

	B_LogEntry	(TOPIC_MOD_MAGIERRAT, "Xardas is with the Council, but the rest does not want to participate because he does not want to face the threat.");
};

INSTANCE Info_Mod_Xardas_NW_Rat_Dragon2 (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Rat_Dragon2_Condition;
	information	= Info_Mod_Xardas_NW_Rat_Dragon2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_Rat_Dragon2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_XeresLebt))
	&& (Mod_HS_XardasRat == 1)
	&& (Mod_HSNL_RatProblem == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Rat_Dragon2_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rat_Dragon2_14_00"); //So, the attack of demonic creatures on the monastery has convinced the Fire Magicians of the urgency of our cause.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rat_Dragon2_14_01"); //However, before discussing the next steps in the fight against Xeres, they want to be banned from the danger that has struck their monastery.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rat_Dragon2_14_02"); //You probably know what to do.

	B_LogEntry	(TOPIC_MOD_MAGIERRAT, "Before the Fire Magicians come to the meeting, the matter of dragons must be resolved.");

	Mod_HSNL_RatProblem = 0;
};

INSTANCE Info_Mod_Xardas_NW_Rat_Unheil (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Rat_Unheil_Condition;
	information	= Info_Mod_Xardas_NW_Rat_Unheil_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_Rat_Unheil_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_XeresLebt))
	&& (Mod_HS_XardasRat == 1)
	&& (Mod_HSWM_RatProblem == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Rat_Unheil_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rat_Unheil_14_00"); //Unfortunately, we are not yet complete and therefore cannot discuss further steps in the fight against Xeres.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rat_Unheil_14_01"); //Saturas is confronted with no less threatening events on the pasture plateau and will only join us when this danger is averted.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rat_Unheil_14_02"); //You should support him as much as you can.

	B_LogEntry	(TOPIC_MOD_MAGIERRAT, "Saturas will not come to the Council until the problems on the pasture plateau have been resolved.");
};

INSTANCE Info_Mod_Xardas_NW_Rat_Ende (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Rat_Ende_Condition;
	information	= Info_Mod_Xardas_NW_Rat_Ende_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_Rat_Ende_Condition()
{
	var int dialog;

	dialog = FALSE;

	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_XeresLebt))
	&& (Mod_HS_XardasRat == 1)
	&& (Mod_HSNL_RatProblem == 0)
	&& (Mod_HSWM_RatProblem == 0)
	{
		if (Hlp_IsValidNpc(Dragon_11009_NW))
		{
			if (Npc_IsDead(Dragon_11009_NW))
			{
				dialog = TRUE;
			}
			else
			{
				dialog = FALSE;

				return FALSE;
			};
		}
		else
		{
			dialog = TRUE;
		};
		if (Hlp_IsValidNpc(Knucker_11001_NW))
		{
			if (Npc_IsDead(Knucker_11001_NW))
			{
				dialog = TRUE;
			}
			else
			{
				dialog = FALSE;

				return FALSE;
			};
		}
		else
		{
			dialog = TRUE;
		};
		if (Hlp_IsValidNpc(Feuerdrache_11002_NW))
		{
			if (Npc_IsDead(Feuerdrache_11002_NW))
			{
				dialog = TRUE;
			}
			else
			{
				dialog = FALSE;

				return FALSE;
			};
		}
		else
		{
			dialog = TRUE;
		};
	};

	return dialog;
};

FUNC VOID Info_Mod_Xardas_NW_Rat_Ende_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rat_Ende_14_00"); //We only have one option left. We need Uriziel. You'll go to the sleeper temple and get it.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rat_Ende_14_01"); //That's the only way we have a chance now. Take this teleportrune and get out of here and into the convent.

	B_GiveInvItems	(self, hero, ItRu_TeleportMonastery, 1);

	Log_CreateTopic	(TOPIC_MOD_URIZIEL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_URIZIEL, LOG_RUNNING);
	B_SetTopicStatus	(TOPIC_MOD_MAGIERRAT, LOG_SUCCESS);
	B_LogEntry	(TOPIC_MOD_URIZIEL, "Xardas says I have to get Uriziel out of the sleeper temple. It's our only chance.");
};

INSTANCE Info_Mod_Xardas_NW_WoTempel (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_WoTempel_Condition;
	information	= Info_Mod_Xardas_NW_WoTempel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Where was the entrance to the temple?";
};

FUNC INT Info_Mod_Xardas_NW_WoTempel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Rat_Ende))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_WoTempel_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_WoTempel_15_00"); //Where was the entrance to the temple?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WoTempel_14_01"); //In the city of orcs. There you will find a place with a column. From there you reached Xeres' chamber.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WoTempel_14_02"); //In any case, there is a lattice behind which the temple of the sleeper extends.
};

INSTANCE Info_Mod_Xardas_NW_WieInTempel (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_WieInTempel_Condition;
	information	= Info_Mod_Xardas_NW_WieInTempel_Info;
	permanent	= 0;
	important	= 0;
	description	= "How do I get to the temple?";
};

FUNC INT Info_Mod_Xardas_NW_WieInTempel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Rat_Ende))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_WieInTempel_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_WieInTempel_15_00"); //How do I get to the temple?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WieInTempel_14_01"); //You must be careful, the orcs have been heavily influenced by Xeres. They won't recognize your Ulu-Mulu anymore.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WieInTempel_14_02"); //I don't know what it looks like in the temple either, so watch out.
};

INSTANCE Info_Mod_Xardas_NW_UrizielKaputt (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_UrizielKaputt_Condition;
	information	= Info_Mod_Xardas_NW_UrizielKaputt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Uriziel is destroyed.";
};

FUNC INT Info_Mod_Xardas_NW_UrizielKaputt_Condition()
{
	if (Mod_HasUrizielKaputt == 1)
	&& (Npc_HasItems(hero, ItMi_UrizielKaputt) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_UrizielKaputt_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_UrizielKaputt_15_00"); //Uriziel is destroyed.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrizielKaputt_14_01"); //That's not good. Uriziel was my last and greatest hope. We are now defencelessly at the mercy of Xeres.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_UrizielKaputt_15_02"); //Not necessarily.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrizielKaputt_14_03"); //What do you think?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_UrizielKaputt_15_04"); //I met a shaman in the temple and he told me that Uriziel was broken.

	B_GiveInvItems	(hero, self, ItMi_UrizielKaputt, 1);

	AI_Output(hero, self, "Info_Mod_Xardas_NW_UrizielKaputt_15_05"); //He also said that the power of the three gods had now been broken. What does that mean?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrizielKaputt_14_06"); //That means we still have a chance. As I told you, they give ordained weapons to the gods.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrizielKaputt_14_07"); //If we now have a weapon from every god and unite them...
	AI_Output(hero, self, "Info_Mod_Xardas_NW_UrizielKaputt_15_08"); //... then we can restore Uriziel. So what needs to be done?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrizielKaputt_14_09"); //We need the remaining two god weapons. You have to find her. We will try to find a way to unite them.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrizielKaputt_14_10"); //Go to Saturas, he's been studying the history of the gods' weapons.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrizielKaputt_14_11"); //Here are some summoning roles that might help you in your search.

	B_ShowGivenThings	("7 Keeping the banner rolls");

	CreateInvItems	(hero, ItSc_SumSkel, 5);
	CreateInvItems	(hero, ItSc_SumRabbit, 2);

	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrizielKaputt_14_12"); //And then there's something else I want to discuss with you in private.

	B_LogEntry	(TOPIC_MOD_URIZIEL, "Xardas has an idea how to restore Uriziel. To do this, however, we still need the remaining two weapons of the gods. Saturas knows more about it.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "PRIVAT");
};

INSTANCE Info_Mod_Xardas_NW_UrnolKap4 (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_UrnolKap4_Condition;
	information	= Info_Mod_Xardas_NW_UrnolKap4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Yeah, I'm all ears.";
};

FUNC INT Info_Mod_Xardas_NW_UrnolKap4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_UrizielKaputt))
	&& (Npc_GetDistToWP(self, "NW_KDF_LIBRARY_15") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_UrnolKap4_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_UrnolKap4_15_00"); //Yeah, I'm all ears.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrnolKap4_14_01"); //I can sense that Urnol is on Khorinis... and seems to move around freely, even in inhabited areas.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_UrnolKap4_15_02"); //What?! And nobody noticed anything?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrnolKap4_14_03"); //That's what's worrying. He must have found a way to camouflage himself, to hide.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrnolKap4_14_04"); //And then I can feel numerous other diffuse demonic energies that change their location both day and night...
	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrnolKap4_14_05"); //Strange things seem to be going on in secret. You have to try to figure out what's going on. It's the only way to find Urnol.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_UrnolKap4_15_06"); //All right, I understand... hmm, where should I start my search?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrnolKap4_14_07"); //Use your brain. Wherever many people meet, there is also the greatest chance that someone will notice something.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrnolKap4_14_08"); //Taverns are always a good place to go. Listen and look around in the city and the farms.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_UrnolKap4_14_09"); //But be careful... the evil could lurk close by without recognizing itself as such.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "RAT");

	AI_Teleport	(Mod_534_KDF_Milten_NW, "NW_KDF_LIBRARY_21");
	B_StartOtherRoutine	(Mod_534_KDF_Milten_NW, "PRIVAT");
	AI_Teleport	(Mod_534_KDF_Milten_NW, "NW_KDF_LIBRARY_21");

	Log_CreateTopic	(TOPIC_MOD_DAEMONISCH, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DAEMONISCH, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Xardas senses Urnol's presence on inhabited terrain around Khorinis, as well as other diffuse demonic energies. I'm supposed to ask around and see if I notice anything unusual and then report back to him. I should ask around at taverns, but also on farms and in the city.");
};

INSTANCE Info_Mod_Xardas_NW_Daemonisch (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Daemonisch_Condition;
	information	= Info_Mod_Xardas_NW_Daemonisch_Info;
	permanent	= 1;
	important	= 0;
	description	= "I have news to report.";
};

FUNC INT Info_Mod_Xardas_NW_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_UrnolKap4))
	&& (Mod_HQ_Daemonisch == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Daemonisch_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_00"); //I have news to report.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_01"); //Yeah, what did you find out?

	if (Npc_KnowsInfo(hero, Info_Mod_Rosi_Daemonisch))
	{
		AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_02"); //People change suddenly when they travel in the dark.
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Babo_Daemonisch))
	|| (Npc_KnowsInfo(hero, Info_Mod_Orlan_Daemonisch))
	|| (Npc_KnowsInfo(hero, Info_Mod_Opolos_Daemonisch))
	{
		AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_03"); //In connection with the monastery wine there are strange things to tell.

		if (Npc_KnowsInfo(hero, Info_Mod_Babo_Daemonisch))
		{
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_04"); //Novice Dyrian died suddenly after enjoying monastery wine at Mass.
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_05"); //Another novice saw how black smoke spilled out of him.
		};
		if (Npc_KnowsInfo(hero, Info_Mod_Orlan_Daemonisch))
		{
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_06"); //Rukhar drank a lot of monastery wine before accompanying some people outside in the evening.
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_07"); //He came back to the tavern on his own and was completely disturbed.
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_08"); //His companions returned unharmed after him.
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_09"); //The next morning Rukhar was dead.
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_10"); //In Orlan's tavern, hardly anyone drinks the monastery's wine.
		};
		if (Npc_KnowsInfo(hero, Info_Mod_Opolos_Daemonisch))
		{
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_11"); //In the monastery, many novices are supposed to suffer from stomach disorders and can no longer enjoy monastery wine.
		};
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Thekla_Daemonisch))
	|| (Npc_KnowsInfo(hero, Info_Mod_Orlan_Daemonisch))
	|| (Npc_KnowsInfo(hero, Info_Mod_Coragon_Daemonisch))
	{
		AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_12"); //There are many people who eat unusually much.
		AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_13"); //And yet they all seem emaciated, visibly deteriorating physically.
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Tengron_Daemonisch))
	|| (Npc_KnowsInfo(hero, Info_Mod_Brian_Daemonisch))
	|| (Npc_KnowsInfo(hero, Info_Mod_Orlan_Daemonisch))
	|| (Npc_KnowsInfo(hero, Info_Mod_Pepe_Daemonisch))
	{
		AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_14"); //Some people want black shadows seen in the dark.
		AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_15"); //But these eyewitnesses are usually not doing well.

		if (Npc_KnowsInfo(hero, Info_Mod_Tengron_Daemonisch))
		{
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_16"); //Tengron is in the dungeon.
		};
		if (Npc_KnowsInfo(hero, Info_Mod_Brian_Daemonisch))
		{
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_17"); //Brian was killed by paladins.

			if (Mod_HQ_BrianDaemonisch == 2)
			{
				AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_18"); //They tried to kill me when they found out what Brian had told me.
			};
		};
		if (Npc_KnowsInfo(hero, Info_Mod_Orlan_Daemonisch))
		{
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_19"); //Rukhar is dead.
		};
		if (Npc_KnowsInfo(hero, Info_Mod_Pepe_Daemonisch))
		{
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_20"); //Pepe keeps himself hidden and fears for his life.
		};
	};

	if (Mod_HQ_PaladineDaemonisch == TRUE)
	{
		AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_21"); //I saw undead paladins near the city that were not long before alive.
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Tengron_Daemonisch))
	|| (Npc_KnowsInfo(hero, Info_Mod_Pepe_Daemonisch))
	{
		AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_22"); //Some even saw people sinking to the ground under the influence of the shadows, initially seeming to be lifeless and then rising in a twitch.
	};

	if (Mod_HQ_SPGesehen == TRUE)
	{
		AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_23"); //I encountered black shadows in the night that attacked me.

		if (Npc_KnowsInfo(hero, Info_Mod_Rupert_Daemonisch3))
		{
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_24"); //It was even the citizen Rupert who lured me to them and said that I would join them or die.
		};
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Tengron_Daemonisch))
	|| (Npc_KnowsInfo(hero, Info_Mod_Pepe_Daemonisch))
	|| (Mod_HQ_SPGesehen == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_25"); //By Beliar, we're all in grave danger.
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_26"); //Even I wouldn't have seen the forest of trees...
		AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_27"); //What are you talking about?
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_28"); //While we turn our eyes to the orcish hordes in the Minental valley and prepare for a warlike confrontation, Xeres infiltrates unnoticed with his shadow beings all over Khorini.
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_29"); //They take possession of every person they meet, control them and gradually consume them.
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_30"); //What remains is the lifeless shell, which becomes the undead.
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_31"); //If we don't hurry, every settlement will soon be under Xeres' influence.
		AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_32"); //What can we do to stop the shadow beings?

		if (Npc_KnowsInfo(hero, Info_Mod_Babo_Daemonisch))
		|| (Npc_KnowsInfo(hero, Info_Mod_Orlan_Daemonisch))
		|| (Npc_KnowsInfo(hero, Info_Mod_Opolos_Daemonisch))
		{
			AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_33"); //Well, your remarks in connection with the monastery wine indicate that blessed beverages are a way of freeing the obsessed from their parasite.
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_34"); //Soll ich jetzt etwa zu jedem hinrennen und ihn zu einem Schluck Klosterwein oder "Healing the obsession" überreden?
			AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_35"); //For Beliar's sake, no, of course not. Now is not the time for antics.
			AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_36"); //The connection of the shadow beings with the life force of their hosts is too strong.
			AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_37"); //Such a strong potion would suddenly banish the demons, but it would also extinguish the lives of those affected.
			AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_38"); //Try to mix them unnoticed in one of the restaurants, or to soak the food at an alchemy table with it.
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_39"); //(unintentionally) All right, so now I can get some potions to heal obsession.
			AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_40"); //I do not think that will be necessary. Here.

			B_GiveInvItems	(self, hero, ItMi_HolyWater, 3);

			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_41"); //What am I supposed to do with this?
			AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_42"); //At an alchemy table, mix a field knotweed with the consecrated little waters to obtain three potions for healing the obsession...
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_43"); //How...?
			AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_44"); //I was once a fire magician myself - don't forget that - and so I know what the overpriced potions of the monastery consist of.
			AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch_15_45"); //Oh, that's right, I sometimes forget, because until now I've only seen you in the dark robe....
			AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_46"); //And don't forget to visit the town, Orlan and the big farm... and see if you've been successful.

			Mod_HQ_Daemonisch = 1;

			B_GivePlayerXP	(800);

			B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Uh-huh, so the shadow beings take control of people. I'm supposed to stop by the pub in town, Orlan and the big farm to mix sacred potions with food and drink. That should ban the parasites from their hosts... which I should see for myself every time.");

			if (Npc_KnowsInfo(hero, Info_Mod_Babo_Daemonisch))
			{
				B_StartOtherRoutine	(Mod_914_NOV_Babo_NW, "DAEMONISCH3");
			};
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_47"); //Well, I don't really know myself yet.
			AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_48"); //You must try to find out more about restaurants and settlements in the area.

			B_LogEntry	(TOPIC_MOD_DAEMONISCH, "I have to try to find out more about settlements and restaurants in the area.");
		};
	}
	else if (Npc_KnowsInfo(hero, Info_Mod_Tengron_Daemonisch))
	|| (Npc_KnowsInfo(hero, Info_Mod_Brian_Daemonisch))
	|| (Npc_KnowsInfo(hero, Info_Mod_Orlan_Daemonisch))
	|| (Npc_KnowsInfo(hero, Info_Mod_Pepe_Daemonisch))
	|| (Mod_HQ_PaladineDaemonisch == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_49"); //What you're telling me is extremely disturbing. Try to find out more. I swear evil...
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch_14_50"); //Very mysterious. These could be important clues. Try to find out more.
	};
};

INSTANCE Info_Mod_Xardas_NW_Daemonisch2 (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Daemonisch2_Condition;
	information	= Info_Mod_Xardas_NW_Daemonisch2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I brought the potions to the infected people.";
};

FUNC INT Info_Mod_Xardas_NW_Daemonisch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_UrnolKap4))
	&& (Mod_HQ_Daemonisch == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Daemonisch2_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch2_15_00"); //I brought the potions to the infected people. The danger should thus be recognized and averted.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch2_14_01"); //Really, banned? Very careless, while still the hordes of these soul tormentors roam through the night.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch2_15_02"); //I'm not supposed to...?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch2_14_03"); //Yes, you shall... and on that occasion you can still look around for clues.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch2_14_04"); //Urnol is still roaming around here somewhere, don't forget that...
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch2_14_05"); //And remember, shadows avoid light. Use this knowledge when you face them.

	B_GivePlayerXP	(400);

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Xardas wants me to defeat the soul tormentors and look for more clues. After all, Urnol is still hanging around here somewhere.");

	Mod_HQ_Daemonisch = 3;

	Wld_InsertNpc	(Mod_13021_SP_Seelenpeiniger_NW, "TAVERNE");
	Wld_InsertNpc	(Mod_13022_SP_Seelenpeiniger_NW, "TAVERNE");
	Wld_InsertNpc	(Mod_13023_SP_Seelenpeiniger_NW, "TAVERNE");
	Wld_InsertNpc	(Mod_13024_SP_Seelenpeiniger_NW, "TAVERNE");
	Wld_InsertNpc	(Mod_13025_SP_Seelenpeiniger_NW, "TAVERNE");
	Wld_InsertNpc	(Mod_13026_SP_Seelenpeiniger_NW, "TAVERNE");
};

INSTANCE Info_Mod_Xardas_NW_Daemonisch3 (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Daemonisch3_Condition;
	information	= Info_Mod_Xardas_NW_Daemonisch3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_Daemonisch3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Urnol_Daemonisch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Daemonisch3_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch3_14_00"); //I no longer feel Urnol's presence in the area. So you were successful?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Daemonisch3_15_01"); //Yeah, his masquerade's over. He spoke of commanding Xeres' armies and must have gone back to the Minental.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch3_14_02"); //Excellent. Once you have all the godly weapons with you, nothing should stand in the way of the end of Xeres' lackeys.

	AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch3_14_03"); //Hmm, Urnol was talking about the orcish army.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch3_14_04"); //As I heard, they destroyed the old camp and set up their new base there. Maybe you'll find him there.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch3_14_05"); //Here you have a teleport saying role in the old camp and spell rolls, which will make sure that you remain undetected.

	CreateInvItems	(hero, ItSc_TeleportOldcamp, 1);
	CreateInvItems	(hero, ItSc_TrfSkeleton, 2);

	B_ShowGivenThings	("3 Keeping saying-rolls");	

	AI_Output(self, hero, "Info_Mod_Xardas_NW_Daemonisch3_14_06"); //Good luck.

	B_GivePlayerXP	(400);

	B_SetTopicStatus	(TOPIC_MOD_DAEMONISCH, LOG_SUCCESS);

	B_StartOtherRoutine	(Mod_981_RIT_Tengron_NW, "START");

	Mod_SenyanTom_Kraut_Tag = Wld_GetDay();
	Mod_SP_Killed_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Xardas_NW_HolyHammer (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_HolyHammer_Condition;
	information	= Info_Mod_Xardas_NW_HolyHammer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you still have the Holy Hammer?";
};

FUNC INT Info_Mod_Xardas_NW_HolyHammer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andokai_Hammer))
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_UrizielKaputt))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_HolyHammer_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_HolyHammer_15_00"); //Do you still have the Holy Hammer?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_HolyHammer_14_01"); //Of course I still have the hammer. You don't think I don't know what he's up to.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_HolyHammer_14_02"); //After all, before the creation of the barrier, I was chief of the Fire Magicians. Here he is, sir.

	B_GiveInvItems	(self, hero, Holy_Hammer_MIS, 1);

	B_LogEntry	(TOPIC_MOD_URIZIEL, "Xardas gave with the holy hammer.");
};

INSTANCE Info_Mod_Xardas_NW_Goetterschwerter (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Goetterschwerter_Condition;
	information	= Info_Mod_Xardas_NW_Goetterschwerter_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got the three guns.";
};

FUNC INT Info_Mod_Xardas_NW_Goetterschwerter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_UrizielKaputt))
	&& ((Npc_HasItems(hero, ItMw_Adanos_Stab_Magieteil) == 1)
	|| (Npc_HasItems(hero, ItMw_Adanos_Stab_Kampfteil) == 1))
	&& (Npc_HasItems(hero, Holy_Hammer_MIS) == 1)
	&& ((Npc_HasItems(hero, ItMw_BeliarWeapon_1H_01) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_02) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_03) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_04) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_05) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_06) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_07) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_08) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_09) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_10) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_11) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_12) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_13) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_14) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_15) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_16) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_17) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_18) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_19) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_20) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_01) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_02) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_03) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_04) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_05) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_06) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_07) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_08) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_09) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_10) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_11) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_12) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_13) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_14) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_15) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_16) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_17) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_18) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_19) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_20) == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Goetterschwerter_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Goetterschwerter_15_00"); //I got the three guns.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_01"); //Excellent! With the power of the three gods, we should in principle be able to restore Uriziel.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Goetterschwerter_15_02"); //Good. When will you perform the ritual?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_03"); //Well... die Frage sollte viel eher lauten, "where".
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_04"); //We searched intensively for a suitable ritual place... have not been found on Khorinis.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Goetterschwerter_15_05"); //What? How could that be? Jharkendar is the origin of the old culture.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_06"); //Yes, undoubtedly there were once such places of ritual here...
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_07"); //During Xeres' reign of terror, however, these must have been destroyed... or eroded by the tides.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Goetterschwerter_15_08"); //And how are we going to restore Uriziel?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_09"); //That's what I was just going to talk about.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_10"); //Sources reveal that many builders evaded Xeres persecution by opening portals to other regions of the world.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_11"); //Among them were also some priests and scholars who had escaped the murders.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_12"); //Without them, teleportation processes over great distances of so many people would not have been possible.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_13"); //We were able to decode the target coordinates of one of their portals and believe that it must be an island far from the mainland.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Goetterschwerter_15_14"); //And you are now hoping to find the necessary ritual site there?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_15"); //Yes, so our expectation.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_16"); //We have now adjusted the focus of the magical ore so that they should be able to follow the teleport.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Goetterschwerter_15_17"); //Then you only have to walk through the teleport flame and look around.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_18"); //Exactly. For the time being, however, only one person can pass through. The magic structure is still very unstable.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_19"); //This pioneer would then have to activate one of the teleport platforms that are undoubtedly on the island.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_20"); //Then there would be a stable magical connection between here and there.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Goetterschwerter_15_21"); //Oh, I see. I suppose the choice was mine?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_22"); //Exactly. We do not know exactly what awaits us there.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_23"); //The island has probably been abandoned for a long time.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_24"); //There could be many dangers lurking there, creatures of bygone times, magical creatures and guardians.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_25"); //It is also said that the island was born of fire, which originated from the depths of the ocean.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_26"); //So it could turn out to be an environment that not everyone can cope with.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_27"); //However, as we may have only one attempt, we chose the man who has often distinguished himself through his actions, the man who has escaped death many times and to whom the gods have always been weighed. Here's to you.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Goetterschwerter_15_28"); //I see.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_29"); //We've already sent a magical focus of ore through the teleport flame.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_30"); //Once you're there, all you have to do is find a teleport platform and activate it with the focus...
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Goetterschwerter_15_31"); //All right, all right. When do you want me to leave?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_32"); //The teleport flame is ready for you and you can go through at any time when you feel so far away.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_33"); //Here's the key to the door so you can reach the teleporter.

	B_GiveInvItems	(self, hero, ItKe_RitualsinselDoor, 1);

	AI_Output(self, hero, "Info_Mod_Xardas_NW_Goetterschwerter_14_34"); //May the blessing of the gods accompany you.

	B_LogEntry	(TOPIC_MOD_URIZIEL, "All right, the ritual is to take place on a distant island. To do this, however, I have to activate through the teleport flame in the monastery cellar and a teleport platform on the island. The magic focus for this is already on site.");

	B_GivePlayerXP	(1000);

	B_Kapitelwechsel	(5, NEWWORLD_ZEN);

	if (Mod_Gilde == 2)
	{
		B_StartOtherRoutine (Mod_579_RIT_Girion_NW, "SLD");

		AI_UnequipArmor	(Mod_579_RIT_Girion_NW);
		CreateInvItems	(Mod_579_RIT_Girion_NW, ItAr_Sld_M, 1);
		AI_EquipArmor	(Mod_579_RIT_Girion_NW, ItAr_Sld_M);

		Wld_InsertNpc	(Demon, "FP_ROAM_NW_TROLLAREA_RIVERSIDECAVE_07_02");
		Wld_InsertItem	(Pala_Feuer_Amulett, "FP_ROAM_NW_TROLLAREA_RIVERSIDECAVE_07_03");
	};
};

INSTANCE Info_Mod_Xardas_NW_Trimedron (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Trimedron_Condition;
	information	= Info_Mod_Xardas_NW_Trimedron_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_Trimedron_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Trimedron_Formel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Trimedron_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_00"); //You're back! So I take it you're supposed to have succeeded?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Trimedron_15_01"); //Yes, the teleporter is activated. And I got to know something new...
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_02"); //reports...
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Trimedron_15_03"); //There is actually a ceremonial site on the island.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Trimedron_15_04"); //It is guarded by a spirit of ancient culture.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_05"); //A potential witness to previous centuries? Excellent! Go on...
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Trimedron_15_06"); //He told me that the island's culture was wiped out by a natural disaster. Their settlement...
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_07"); //(interrupts) This is tragic.... but more important than these details is access to the ritual site. What's the score?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Trimedron_15_08"); //He made conditions before he allowed us in.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Trimedron_15_09"); //I am to bring him the soul stones of those in power as a testimony to the impending danger.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_10"); //The Five Powerbearers?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_11"); //Now that we should have got rid of them sooner or later, it will only mean that this task is preferable.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_12"); //However, we will hardly be able to recover the sleeper's soul stone.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_13"); //He won't be able to escape the intermediate world so quickly.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Trimedron_15_14"); //What about the others?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_15"); //Well, another power carrier was, as already mentioned, weak.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_16"); //This is revealed by the patchy sources of Xeres' followers from the time of his reign of terror.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_17"); //However, we cannot say anything more about this creature.... neither where it is at the moment, nor whether it has woken up at all.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_18"); //Go to Pyrokar, he was more concerned with the powers that be.

	B_LogEntry	(TOPIC_MOD_URIZIEL, "I hope Pyrokar can tell me more about the whereabouts of those in power.");

	if (Mod_Gilde == 2)
	{
		B_StartOtherRoutine (Mod_579_RIT_Girion_NW, "SLD");

		AI_UnequipArmor	(Mod_579_RIT_Girion_NW);
		CreateInvItems	(Mod_579_RIT_Girion_NW, ItAr_Sld_M, 1);
		AI_EquipArmor	(Mod_579_RIT_Girion_NW, ItAr_Sld_M);

		Wld_InsertNpc	(Demon, "FP_ROAM_NW_TROLLAREA_RIVERSIDECAVE_07_02");
		Wld_InsertItem	(Pala_Feuer_Amulett, "FP_ROAM_NW_TROLLAREA_RIVERSIDECAVE_07_03");
	};

	if (hero.guild == GIL_VLK)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Aaron_Party))
	{
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_19"); //Pyrokar doesn't want to leave Khorinis until he knows Patherion is safe.
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_20"); //So you should take care of it before we leave Khorinis.
	}
	else
	{
		AUFSUCHENACHSEELENSTEINE = 1;

		AI_Output(self, hero, "Info_Mod_Xardas_NW_Trimedron_14_21"); //We'll make our way to the island. Meet me there when you find the location of the ritual site.
	};
};

INSTANCE Info_Mod_Xardas_NW_Irdorath (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Irdorath_Condition;
	information	= Info_Mod_Xardas_NW_Irdorath_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Machttraeger))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Irdorath_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Irdorath_14_00"); //For the soul stone on the island you will need a ship and a crew.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Irdorath_15_01"); //Ship and crew?! Where am I supposed to get that in a hurry?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Irdorath_14_02"); //Well, in the harbour of the city of Khorinis there is a ship at anchor.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Irdorath_14_03"); //The fire magicians of the monastery could try to have a positive effect on the paladins so that they can make it available to you.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Irdorath_14_04"); //And a crew... well, visiting the island won't be an easy undertaking.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Irdorath_14_05"); //In addition to men who are trained in swordplaying, you should have magicians on board under all circumstances.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Irdorath_14_06"); //Your companions from the penal colony should be able to help you find suitable people.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Irdorath_15_07"); //Well, then I can start hiring people.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Irdorath_14_08"); //Yeah, do that... from my side I can still point you to Myxir and Raven, as possible companions...
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Irdorath_14_09"); //Very well. May Beliar assist you in your search.

	Pal_213_Schiffswache.aivar[AIV_PASSGATE] = TRUE;

	if (Mod_VelayaFrei == 1)
	{
		Mod_VelayaFrei = 2;

		Wld_InsertNpc	(Mod_7416_BAU_Velaya_NW, "BIGFARM");
	};

	B_RemoveNpc	(Pal_212_Schiffswache);
	B_RemoveNpc	(Pal_213_Schiffswache);

	Log_CreateTopic	(TOPIC_MOD_HQ_CREW, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_HQ_CREW, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Ok, then I am allowed to pick up a team with which I go to the island to recover the soul stone. Xardas advised me to take magicians with me and to consult my friends Milten, Gorn, Diego and Lester in the search for capable people. He himself suggested Myxir and Raven as possible candidates.");
};

INSTANCE Info_Mod_Xardas_NW_Kap6 (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Kap6_Condition;
	information	= Info_Mod_Xardas_NW_Kap6_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_Kap6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Kap6))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Kap6_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Kap6_14_00"); //Are you happy about my little surprise?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Kap6_15_01"); //It's comforting not to be alone.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Kap6_14_02"); //I have something else for you.

	B_GiveInvItems	(self, hero, ItRu_TeleportUW, 1);

	AI_Output(self, hero, "Info_Mod_Xardas_NW_Kap6_14_03"); //This is the product of long sweaty nights. I've found a way to get you right into Xeres' world.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Kap6_14_04"); //If my calculations are correct, you should materialize near Xeres' temple. The rest is up to you.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Kap6_15_05"); //Unless we show up directly in his arena.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Kap6_14_06"); //It's not gonna happen.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Kap6_14_07"); //Now everything has been said. May the gods be with you.

	B_LogEntry	(TOPIC_MOD_XERES, "Diego, Lester, Milten and Gorn have come to my aid. Xardas has equipped us all with teleporters near Xeres' temple. Now we can start!");
};

INSTANCE Info_Mod_Xardas_NW_Argez (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Argez_Condition;
	information	= Info_Mod_Xardas_NW_Argez_Info;
	permanent	= 0;
	important	= 0;
	description	= "I met Argez.";
};

FUNC INT Info_Mod_Xardas_NW_Argez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Urnol1))
	&& (Npc_KnowsInfo(hero, Info_Mod_Argez_NW_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Argez_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Argez_15_00"); //I met Argez.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Argez_14_01"); //Very good! Keep an eye on him if possible.

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Xardas_NW_NachAufnahmeQuest (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_NachAufnahmeQuest_Condition;
	information	= Info_Mod_Xardas_NW_NachAufnahmeQuest_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_NachAufnahmeQuest_Condition()
{
	if (hero.guild == GIL_KDF)
	&& (Wld_GetDay() > BeliarAufnahme)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_NachAufnahmeQuest_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_NachAufnahmeQuest_14_00"); //You're just in time. I've discovered something to do with that book you took off Ryan.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_NachAufnahmeQuest_15_01"); //What's this about?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_NachAufnahmeQuest_14_02"); //There seems to be a protective spell on the book which is supposed to prevent you from reading it. This spell only makes the content more interesting.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_NachAufnahmeQuest_14_03"); //That's why I need your help.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_NachAufnahmeQuest_15_04"); //What do you want me to do?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_NachAufnahmeQuest_14_05"); //The book can only be opened by a suitable breaker. But I don't have the necessary knowledge.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_NachAufnahmeQuest_14_06"); //Ironically, the solution to breaking the spell is found in another book, an Almanac.

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(OrcScout,	"FP_ROAM_FARM1_GOBBO_04");
	Wld_InsertNpc	(OrcScout,	"FP_ROAM_FARM1_GOBBO_06");
	Wld_InsertNpc	(OrcWarrior_Almanach,	"FP_ROAM_FARM1_GOBBO_02");

	Log_CreateTopic	(TOPIC_MOD_BEL_ALMANACH, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_ALMANACH, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_ALMANACH, "The book I took at my entrance exam, Ryan, is magically sealed. In order to open it, Xardas needs an almanac in which the appropriate breaker stands. This book, however, was stolen by orcs in a raid. The orcs are said to be in the woods near Lobart's farm.");

	Info_ClearChoices	(Info_Mod_Xardas_NW_NachAufnahmeQuest);

	Info_AddChoice	(Info_Mod_Xardas_NW_NachAufnahmeQuest, "Where can I find the ham?", Info_Mod_Xardas_NW_NachAufnahmeQuest_B);
	Info_AddChoice	(Info_Mod_Xardas_NW_NachAufnahmeQuest, "How do you know what the almanac says?", Info_Mod_Xardas_NW_NachAufnahmeQuest_A);
};

FUNC VOID Info_Mod_Xardas_NW_NachAufnahmeQuest_B()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_NachAufnahmeQuest_B_15_00"); //Where can I find the ham?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_NachAufnahmeQuest_B_14_01"); //Now it's getting exciting. The traveling merchant who lent the books was attacked yesterday - probably by chance - near orcs and robbed of his entire stock.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_NachAufnahmeQuest_B_15_02"); //Orcs? Here? And stole books?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_NachAufnahmeQuest_B_14_03"); //Strange, isn't it?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_NachAufnahmeQuest_B_15_04"); //Then I must find the orcs.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_NachAufnahmeQuest_B_14_05"); //You get the message. The farmers on Lobart's farm told me that the orcs disappeared in the forest outside the city walls.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_NachAufnahmeQuest_B_14_06"); //And I'm afraid they're going to have trouble there than to have a reading contest. Maybe they'll meet with a contractor there.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_NachAufnahmeQuest_B_14_07"); //You must go after them now and take the book away from them!
	AI_Output(hero, self, "Info_Mod_Xardas_NW_NachAufnahmeQuest_B_15_08"); //Then I'll leave immediately.

	Info_ClearChoices	(Info_Mod_Xardas_NW_NachAufnahmeQuest);

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(OrcScout,	"FP_ROAM_FARM1_GOBBO_04");
	Wld_InsertNpc	(OrcScout,	"FP_ROAM_FARM1_GOBBO_06");
	Wld_InsertNpc	(OrcWarrior_Almanach,	"FP_ROAM_FARM1_GOBBO_02");

	Log_CreateTopic	(TOPIC_MOD_BEL_ALMANACH, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_ALMANACH, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_ALMANACH, "The book I took at my entrance exam, Ryan, is magically sealed. In order to open it, Xardas needs an almanac in which the appropriate breaker stands. This book, however, was stolen by orcs in a raid. The orcs are said to be in the woods near Lobart's farm.");
};

FUNC VOID Info_Mod_Xardas_NW_NachAufnahmeQuest_A()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_NachAufnahmeQuest_A_15_00"); //How do you know what the almanac says?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_NachAufnahmeQuest_A_14_01"); //Because I used to own it myself. I then bequeathed it to a travelling library at some point when I was cleaning it out.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_NachAufnahmeQuest_A_14_02"); //Who knew I'd need it later?
};

INSTANCE Info_Mod_Xardas_NW_HabAlmanach (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_HabAlmanach_Condition;
	information	= Info_Mod_Xardas_NW_HabAlmanach_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here I am again.";
};

FUNC INT Info_Mod_Xardas_NW_HabAlmanach_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_NachAufnahmeQuest))
	&& (Npc_HasItems(hero, ItWr_XardasAlmanach) == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Drach_Besiegt))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_HabAlmanach_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_HabAlmanach_15_00"); //Here I am again.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_HabAlmanach_14_01"); //And do you have the almanac?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_HabAlmanach_15_02"); //Yeah, here he is.

	B_GiveInvItems	(hero, self, ItWr_XardasAlmanach, 1);

	AI_Output(self, hero, "Info_Mod_Xardas_NW_HabAlmanach_14_03"); //Well, then I'll start opening up right away!
	AI_Output(hero, self, "Info_Mod_Xardas_NW_HabAlmanach_15_04"); //There's something else.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_HabAlmanach_14_05"); //What's this about?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_HabAlmanach_15_06"); //When I had recovered the book and arrived at your tower, I was stopped by a Shadow Warrior who claimed that he belonged to a group of six warriors.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_HabAlmanach_15_07"); //After that he wanted the books and attacked me. After I had defeated him, he disappeared and explained that the warriors will now come.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_HabAlmanach_14_08"); //With Beliar! The old warriors are back!
	AI_Output(hero, self, "Info_Mod_Xardas_NW_HabAlmanach_15_09"); //What do you mean?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_HabAlmanach_14_10"); //The six warriors are the bodyguards of a renegade. They only come out when there's something important to do. Apparently they're the ones after the book.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_HabAlmanach_14_11"); //Give me a day and I've opened the book and figured out why it's so important to the warriors.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_HabAlmanach_15_12"); //Well, see you tomorrow.

	B_LogEntry	(TOPIC_MOD_BEL_ALMANACH, "I gave Xardas the almanac and told him about Drach. They want me to come back tomorrow.");
	B_SetTopicStatus	(TOPIC_MOD_BEL_ALMANACH, LOG_SUCCESS);

	OpenRyanBook = Wld_GetDay();

	B_GivePlayerXP	(600);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Xardas_NW_AlmanachOffen (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_AlmanachOffen_Condition;
	information	= Info_Mod_Xardas_NW_AlmanachOffen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you finished?";
};

FUNC INT Info_Mod_Xardas_NW_AlmanachOffen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_HabAlmanach))
	&& (Wld_GetDay() > OpenRyanBook)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_AlmanachOffen_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_AlmanachOffen_15_00"); //Are you finished?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlmanachOffen_14_01"); //I'm glad you came. It's terrible what I've discovered!
	AI_Output(hero, self, "Info_Mod_Xardas_NW_AlmanachOffen_15_02"); //What did you find out?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlmanachOffen_14_03"); //The book contains a detailed description of how to get to the axe of doom.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_AlmanachOffen_15_04"); //The what?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlmanachOffen_14_05"); //The axe of doom! This weapon is an ancient piece of power of Beliar. It was created by a powerful black magician.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlmanachOffen_14_06"); //But he recognized the demonic self-will of the weapon and hid it from the rest of the world with a mystery. Only those who can solve this riddle are ready to carry the weapon!
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlmanachOffen_14_07"); //That's why the warriors are after her.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_AlmanachOffen_15_08"); //What kind of riddle is that?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlmanachOffen_14_09"); //The black magician kept the axe in a safe place and left six almanacs where the nearest almanac is located. However, in a puzzle that can only be solved by logical thinking.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlmanachOffen_14_10"); //In the last almanac stands where the axe of doom is located. In the book I have opened, the location of the first almanac is written.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlmanachOffen_14_11"); //Your mission will be to solve the mystery of killing the six warriors who are also after the axe and securing the axe.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_AlmanachOffen_15_12"); //That's what I do with Links!
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlmanachOffen_14_13"); //(annoying) I know the task is difficult, but so we can snatch a powerful weapon from them.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_AlmanachOffen_15_14"); //(sighs) Then I'll leave quickly!
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlmanachOffen_14_15"); //All right, and be careful! You're sneaky! Here's the book with the first riddle!

	B_GiveInvItems	(self, hero, ItWr_AxtAlmanach_Pre, 1);

	GardeBeliars_1989_Drach.attribute[ATR_HITPOINTS] = GardeBeliars_1989_Drach.attribute[ATR_HITPOINTS_MAX];

	Log_CreateTopic	(TOPIC_MOD_BEL_RAETSEL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_RAETSEL, LOG_RUNNING);
	Log_CreateTopic	(TOPIC_MOD_BEL_AXT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_AXT, LOG_RUNNING);
	B_LogEntry_NMore	(TOPIC_MOD_BEL_RAETSEL, TOPIC_MOD_BEL_AXT, TOPIC_MOD_BEL_FIVEKNIGHTS, "Xardas opened the Almanac. Inside is a mystery that opens the way to the axe of doom. I should read the book and solve the mystery.", "The almanac said something about the axe of doom. This weapon seems to be very powerful. Xardas wants me to find her.", "Apparently, the six warriors are after the axe of doom. I must outdo them.");
};

INSTANCE Info_Mod_Xardas_NW_HabAxt (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_HabAxt_Condition;
	information	= Info_Mod_Xardas_NW_HabAxt_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm back!";
};

FUNC INT Info_Mod_Xardas_NW_HabAxt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Frowin_HatAxt))
	&& (Npc_HasItems(hero, ItMw_AxtDesUntergangs) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_HabAxt_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_HabAxt_15_00"); //I'm back!
	AI_Output(self, hero, "Info_Mod_Xardas_NW_HabAxt_14_01"); //And what happened?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_HabAxt_15_02"); //I did everything you said. The Dark Guard is destroyed, the mystery solved and the axe secured.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_HabAxt_14_03"); //Show me the axe!
	AI_Output(hero, self, "Info_Mod_Xardas_NW_HabAxt_15_04"); //Here.

	B_GiveInvItems	(hero, self, ItMw_AxtDesUntergangs, 1);

	AI_UnequipWeapons	(self);

	EquipWeapon	(self, ItMw_AxtDesUntergangs);

	AI_ReadyMeleeWeapon	(self);

	AI_PlayAni	(self, "T_1HSINSPECT");

	AI_Output(self, hero, "Info_Mod_Xardas_NW_HabAxt_14_05"); //What a power. I was thinking when you left, and I decided to keep the axe.

	AI_RemoveWeapon	(self);

	AI_UnequipWeapons	(self);

	B_GiveInvItems	(self, hero, ItMw_AxtDesUntergangs, 1);

	AI_EquipBestMeleeWeapon	(self);

	AI_Output(hero, self, "Info_Mod_Xardas_NW_HabAxt_15_06"); //Thanks, I'll take good care of her.

	B_LogEntry_More	(TOPIC_MOD_BEL_AXT, TOPIC_MOD_BEL_FIVEKNIGHTS, "I salvaged the axe of doom, and Xardas wants me to keep it.", "The six warriors are history. Another problem less.");
	B_SetTopicStatus	(TOPIC_MOD_BEL_RAETSEL, LOG_SUCCESS);
	B_SetTopicStatus	(TOPIC_MOD_BEL_AXT, LOG_SUCCESS);
	B_SetTopicStatus	(TOPIC_MOD_BEL_FIVEKNIGHTS, LOG_SUCCESS);

	B_GivePlayerXP	(1000);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Xardas_NW_Argibast (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Argibast_Condition;
	information	= Info_Mod_Xardas_NW_Argibast_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm back.";
};

FUNC INT Info_Mod_Xardas_NW_Argibast_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raven_ArgibastDead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Argibast_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Argibast_15_00"); //I'm back.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Argibast_14_01"); //And?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Argibast_15_02"); //The siege is over and one of the six guardsmen of Inno's has blessed the temporal!
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Argibast_14_03"); //Very good. Very good. What did the guardsman say?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Argibast_15_04"); //Not much. He spoke, as always, of his Master's unswerving power and something of a powerful weapon that the other guards seek.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Argibast_14_05"); //What kind of weapon is that?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Argibast_15_06"); //He called it the Sword Innos'.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Argibast_14_07"); //At Beliar's. It couldn't get any worse.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Argibast_15_08"); //What's that all about?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Argibast_14_09"); //A thousand years ago, at the time when the Beliars and Innos' Guards were created and then banished, two divine weapons were also created with them, threatening the balance of the world.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Argibast_15_10"); //I suppose you're talking about the axe of doom and the sword Innos'?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Argibast_14_11"); //Yes, I do, sir. Adanos sealed the two weapons to protect the world from chaos. You have already retrieved the axe, but the sword Innos' is probably also on Khorinis and the guard Innos' searches for it.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Argibast_15_12"); //What do you want me to do?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Argibast_14_13"); //You must capture the sword of Innos to protect it from the hands of evil. You must also stop the Innos' Guard to save Khorinis from another threat.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Argibast_15_14"); //Where do you want me to start looking?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Argibast_14_15"); //That's the riddle you have to solve. We don't know for sure. However, the activity of magical energy in the Valley of Water Magicians has increased dramatically, which is disturbing. Start your search there.

	B_GivePlayerXP	(250);

	Wld_SendTrigger	("EVT_PORTAL_EINGANG_TOR_01");

	Log_CreateTopic	(TOPIC_MOD_BEL_INNOSSCHWERT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_INNOSSCHWERT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_INNOSSCHWERT, "It seems that the Innos Guard is looking for the mighty Innos sword. I must find the sword in front of them. However, Xardas doesn't even know where to find it, but there are hints about Jharkendar.");

	Wld_InsertNpc	(Mod_4085_HoherUntoterMagier_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_4084_UntoterEliteNovize_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_4083_UntoterKrieger_NW,		"TAVERNE");

	Wld_InsertNpc	(Mod_4088_HoherUntoterMagier_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_4087_UntoterEliteNovize_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_4086_UntoterKrieger_NW,		"TAVERNE");

	Wld_InsertNpc	(Mod_4091_HoherUntoterMagier_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_4090_UntoterEliteNovize_NW,	"TAVERNE");
	Wld_InsertNpc	(Mod_4089_UntoterKrieger_NW,		"TAVERNE");

	B_StartOtherRoutine	(Mod_512_RDW_Cavalorn_NW, "START");

	B_StartOtherRoutine	(Mod_771_KDW_Riordian_NW, "VORTEMPEL");

	B_StartOtherRoutine	(Mod_1538_WKR_Wasserkrieger_NW, "GEFANGEN");
	B_StartOtherRoutine	(Mod_1537_WKR_Vanas_NW, "GEFANGEN");
	B_StartOtherRoutine	(Mod_1536_WKR_Roka_NW, "GEFANGEN");
	B_StartOtherRoutine	(Mod_1532_HTR_Ethan_NW, "GEFANGEN");

	B_KillNpc	(Mod_1539_WKR_Wasserkrieger_NW);
};

INSTANCE Info_Mod_Xardas_NW_Uriela (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Uriela_Condition;
	information	= Info_Mod_Xardas_NW_Uriela_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_Uriela_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Uriela_TeachingFinished))
	&& (Npc_KnowsInfo(hero, Info_Mod_Uriela_TeachMage))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Uriela_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Uriela_14_00"); //Two witches gifted in rune magic had requested to join the ranks of the Black Mages.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Uriela_14_01"); //I have allowed them to be granted because in the current situation we are dependent on any kind of support and the knowledge of witch magic can certainly enrich us in the fight against Xeres.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Uriela_14_02"); //But somehow I have a strong suspicion that you had your fingers in the game.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Uriela_15_03"); //Well...
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Uriela_14_04"); //I'm warning you. The art of working runes is not easily passed on to third parties.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Uriela_14_05"); //In dealing with magic, one should be a little more serious.
};

INSTANCE Info_Mod_Xardas_NW_Randolph (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Randolph_Condition;
	information	= Info_Mod_Xardas_NW_Randolph_Info;
	permanent	= 0;
	important	= 0;
	description	= "I need your advice.";
};

FUNC INT Info_Mod_Xardas_NW_Randolph_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HalbinfernalischerRandolph_GoodOne))
	&& (Mod_Randolph_Started == 11)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Randolph_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Randolph_15_00"); //I need your advice. Farmer Randolph doesn't just seem to be under demonic control, no, he seems to be one himself.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Randolph_15_01"); //He has gathered hordes of demons around him and threatens the city.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Randolph_14_02"); //Well, then you'll have to find a way to destroy him to deal with this threat.

	Info_ClearChoices	(Info_Mod_Xardas_NW_Randolph);

	Info_AddChoice	(Info_Mod_Xardas_NW_Randolph, "But can't you help him?", Info_Mod_Xardas_NW_Randolph_B);
	Info_AddChoice	(Info_Mod_Xardas_NW_Randolph, "Okay, I'll do that.", Info_Mod_Xardas_NW_Randolph_A);
};

FUNC VOID Info_Mod_Xardas_NW_Randolph_B()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Randolph_B_15_00"); //But can't you help him?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Randolph_B_14_01"); //Well, in the stadium of connectedness with the Demonic, any help will come too late.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Randolph_B_14_02"); //And even if a spark of his original being still exists in him, you would hardly be able to persuade him to take Pyrokar's potion.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Randolph_B_14_03"); //Consequently, you will have to destroy this being - even if there is still a remnant of humanity to him - because you do not have the means to selectively banish the demonic from him.

	B_LogEntry	(TOPIC_MOD_AKIL_RANDOLPH, "Xardas thinks I should destroy Randoplh, or what he has become. If there's no other way...");

	Info_ClearChoices	(Info_Mod_Xardas_NW_Randolph);
};

FUNC VOID Info_Mod_Xardas_NW_Randolph_A()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Randolph_A_15_00"); //Okay, I'll do that.

	B_LogEntry	(TOPIC_MOD_AKIL_RANDOLPH, "Xardas thinks I should destroy Randoplh, or what he has become. If there's no other way...");

	Info_ClearChoices	(Info_Mod_Xardas_NW_Randolph);
};

INSTANCE Info_Mod_Xardas_NW_RandolphGeheilt (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_RandolphGeheilt_Condition;
	information	= Info_Mod_Xardas_NW_RandolphGeheilt_Info;
	permanent	= 0;
	important	= 0;
	description	= "I was able to save Randolph.";
};

FUNC INT Info_Mod_Xardas_NW_RandolphGeheilt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Randolph))
	&& (Mod_Randolph_Started == 16)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_RandolphGeheilt_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_RandolphGeheilt_15_00"); //I was able to save Randolph.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_RandolphGeheilt_14_01"); //Hmm, so you used the magic of the paladins.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_RandolphGeheilt_15_02"); //What?! You knew about the possibility?! But why...?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_RandolphGeheilt_14_03"); //You must understand. The prospect of success was slim.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_RandolphGeheilt_14_04"); //I wanted to keep you from spending more time, effort and risk for a human life, putting the whole of Khorini's life in danger.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_RandolphGeheilt_14_05"); //If it had failed...
};

INSTANCE Info_Mod_Xardas_NW_Gidan1 (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Gidan1_Condition;
	information	= Info_Mod_Xardas_NW_Gidan1_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you put these halves of parchment together?";
};

FUNC INT Info_Mod_Xardas_NW_Gidan1_Condition()
{
	if (Npc_HasItems(hero, ItWr_SektisTeleport2) == 1)
	&& (Npc_HasItems(hero, ItWr_SektisTeleport1) == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Andre_Erfahrung))
	&& (Mod_PalaKapitel3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Gidan1_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Gidan1_15_00"); //Can you put these halves of parchment together?

	AI_PrintScreen	("Parchment halves given!", -1, YPOS_GoldGiven, FONT_ScreenSmall, 2);

	Npc_RemoveInvItems	(hero, ItWr_SektisTeleport2, 1);
	Npc_RemoveInvItems	(hero, ItWr_SektisTeleport1, 1);

	AI_Output(self, hero, "Info_Mod_Xardas_NW_Gidan1_14_01"); //That shouldn't be a problem. Come back later.

	B_LogEntry	(TOPIC_MOD_MILIZ_GIDAN, "Xardas will put the two halves of parchment together.");
};

INSTANCE Info_Mod_Xardas_NW_Gidan2 (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Gidan2_Condition;
	information	= Info_Mod_Xardas_NW_Gidan2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_Gidan2_Condition()
{
	if (Mod_PalaKapitel3 == 4)
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Gidan1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Gidan2_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Gidan2_14_00"); //Here's your part of the story.

	B_GiveInvItems	(self, hero, ItWr_SektisTeleport3, 1);

	AI_Output(self, hero, "Info_Mod_Xardas_NW_Gidan2_14_01"); //It seems, however, that she has a local dependency.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Gidan2_14_02"); //So it has to be spoken in a certain place for it to work.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Gidan2_15_03"); //I have a hunch where.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Gidan2_14_04"); //Then get going, I'm busy.

	Mod_PalaKapitel3 = 5;

	B_LogEntry	(TOPIC_MOD_MILIZ_GIDAN, "It is a role of spell, but it can only be used at a certain place. I should try the lighthouse.");
};

INSTANCE Info_Mod_Xardas_NW_Namib (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Namib_Condition;
	information	= Info_Mod_Xardas_NW_Namib_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have a letter here to deliver to you from Baal Namib.";
};

FUNC INT Info_Mod_Xardas_NW_Namib_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_DuengerVerteilt))
	&& (Npc_HasItems(hero, ItWr_NamibForBeliar) == 1)
	&& (Npc_HasItems(hero, ItMi_HerbPaket) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Namib_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Namib_15_00"); //I've got a letter I'm supposed to deliver to you from Baal Namib.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Namib_14_01"); //Give the letter to Karra in our fortress. He's in charge of that sort of thing.
};

INSTANCE Info_Mod_Xardas_NW_Drachen (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Drachen_Condition;
	information	= Info_Mod_Xardas_NW_Drachen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_Drachen_Condition()
{
	if (Mod_NL_Siegelbuch == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Drachen_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_00"); //Ahh, I'm glad I got to you in time. Because you're not supposed to open the book under any circumstances.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Drachen_15_01"); //Uh, Xardas....
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_02"); //As I found out in my research, there is no need at all.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_03"); //By creating a rift in the book's temporal structure....
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Drachen_15_04"); //(Energy) Xardas, the book is already open!
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_05"); //Ohh... now in that case, the chromanine log should have regained its message.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_06"); //And with the other consequences of opening the book - now - we have to come to some sort of arrangement.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Drachen_15_07"); //What the hell happened there? I felt like the sky was about to fall on my head.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_08"); //Well, I'll explain that.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_09"); //As I have found out in the meantime, Pondaros was a powerful magician who lived before eons, shortly after the time when Radano's deity began to work on Earth.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_10"); //He created this book, which is able to absorb magical energies and banished many creatures of magical origin.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Drachen_15_11"); //Magic creatures? What kind?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_12"); //Well, everything from the sediment of magical creatures, to goblins and magicians to powerful creatures like... Dragons.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Drachen_15_13"); //(disbelieving) Dragon?!
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_14"); //Yes, dragons, fire-breathing creatures of ancient power, whose presence could now endanger all human settlements and cities on Khorinis? and Xeres would therefore be of considerable benefit in the implementation of its objectives.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Drachen_15_15"); //Xeres... And the book in the hands of his flunky footman. What's all this about?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Drachen_15_16"); //Wouldn't the shaman have been able to break the seals much earlier and give these monsters their freedom?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_17"); //He would certainly have if it had been in his power.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_18"); //But without a doubt, Pondaros had provided the stone circles with protective mechanisms, which in particular would have thwarted the project for creatures of darkness - like this undead orc.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_19"); //This shaman, ruler of spirits, elements and animated nature and a henchman of darkness, would not have been allowed to break even the first of the three seals.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_20"); //Enough of the words. No matter what you may have unleashed from the book, continue to focus your attention on one goal: Xeres' destruction.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_21"); //Here's some gold for your equipment.

	B_GiveInvItems	(self, hero, ItMi_Gold, 400);

	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_22"); //Now you should get out of here before you run into evil creatures.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Drachen_14_23"); //I'm sure I can teleport you to Orlan's tavern.

	Log_CreateTopic	(TOPIC_MOD_NL_DRACHEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NL_DRACHEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "Oh, great. If Xardas would get used to appear only one minute earlier... The fact that dragons and other monsters escaped the book doesn't seem to touch him very much. Just keep chasing Xeres like nothing's wrong. Well, at least I got a big step closer to chromanin.");
	B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "Then I will follow Xarda's advice and get myself out of the acute danger zone before I stumble over one of these dragons.... Orlan's tavern, there I am. But what the fuck is that? l-- me-- the senses fade away....");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");

	Mdl_RemoveOverlayMDS	(hero, "HUMANS_REGEN.MDS");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Xardas_NW_Lich (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Lich_Condition;
	information	= Info_Mod_Xardas_NW_Lich_Info;
	permanent	= 0;
	important	= 0;
	description	= "An undead magician is on Khorinis.";
};

FUNC INT Info_Mod_Xardas_NW_Lich_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lich_Unbesiegbar))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Lich_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Lich_15_00"); //An undead magician is on Khorinis.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Lich_15_01"); //In the fight I couldn't have anything to do with him and almost left my life with him.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Lich_15_02"); //He spoke of the need to destroy it much, but little.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Lich_14_03"); //(impatiently) Well, I may assume that you are not talking about Xeres, but about one of the creatures from the book.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Lich_14_04"); //If you can't defeat him, get out of his way...
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Lich_14_05"); //But since I also know that you will not allow yourself to be deterred from further foolishness by my words: Go to our fortress.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Lich_14_06"); //There you will find a book in the library that should give you the answers you are looking for.
};

INSTANCE Info_Mod_Xardas_NW_Gormgniez (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Gormgniez_Condition;
	information	= Info_Mod_Xardas_NW_Gormgniez_Info;
	permanent	= 0;
	important	= 0;
	description	= "There's something that won't leave me alone...";
};

FUNC INT Info_Mod_Xardas_NW_Gormgniez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gormgniez_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Gormgniez_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Gormgniez_15_00"); //There's something that won't leave me alone... What do dragons, sleep and speech have in common?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Gormgniez_14_01"); //You deal with strange questions when you are supposed to conquer Xeres.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Gormgniez_15_02"); //Well, a little demon has told me such a secret....
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Gormgniez_14_03"); //Mystery of a demon, dragon, speak and sleep?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Gormgniez_14_04"); //Hmm, I'm beginning to understand and will answer your question.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Gormgniez_14_05"); //Like any living creature, dragons need sleep now and then.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Gormgniez_14_06"); //However, their sleep is especially hard and constant when they have been on a raid, exhausted by the efforts, satisfied with rich prey.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Gormgniez_15_07"); //Rich booty?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Gormgniez_14_08"); //Gold, silver and precious stones. Goods which, for example, the faithful transfer in masses to the representatives of their god Innos...
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Gormgniez_15_09"); //... that have accumulated in their residence in not inconsiderable quantities. I understand.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Gormgniez_14_10"); //(thoughtful) Hmm, and not far away, west of the monastery I also feel a strong magical presence.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Gormgniez_14_11"); //What would be, if someone would help the flow of information among the demons?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Gormgniez_14_12"); //(again to the hero) I hope I could answer all questions with it to your satisfaction.

	Log_CreateTopic	(TOPIC_MOD_NL_DRAGON, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NL_DRAGON, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NL_DRAGON, "I learned from Xardas that dragons sleep especially well after successful raids. The Innos monastery with its treasures would be predestined for such a raid, Xardas had indicated.");
	B_LogEntry	(TOPIC_MOD_NL_DRAGON, "The dragon talking in his sleep would certainly not miss this if he knew about it....");
};

INSTANCE Info_Mod_Xardas_NW_Moorhexe (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Moorhexe_Condition;
	information	= Info_Mod_Xardas_NW_Moorhexe_Info;
	permanent	= 0;
	important	= 0;
	description	= "It worked out, the dragon gave away a lot.";
};

FUNC INT Info_Mod_Xardas_NW_Moorhexe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dragon_KlosterErfolg))
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Lich))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Moorhexe_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Moorhexe_15_00"); //It worked out, the dragon gave away a lot.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe_14_01"); //Yes, I heard what happened in the monastery.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Moorhexe_15_02"); //Except I wasn't able to find out everything.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Moorhexe_15_03"); //Er sprach von "the land of the mother's grain" und von einem Moor und seiner Bewohnerin.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe_14_04"); //Hmm, country of the mother's grain... it must have been a paraphrase for an area in the north of Khorinis: Relendel.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe_14_05"); //And a bog... yes, actually, I've heard of someone cursed.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Moorhexe_15_06"); //What a curse, and where exactly is this moor?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe_14_07"); //For the best of intentions, I am not in a position to provide information on everything.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe_14_08"); //Ask someone who is very familiar with the region in the north, for example a ranger. The black troll is supposed to have a resident.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Moorhexe_15_09"); //Well, then the dragon spoke of a female inhabitant who is supposed to hide from the mighty.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe_14_10"); //(uninterested) Very mysterious, but the library of our fortress is extensive. You can find advice there.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe_14_11"); //I now have to support Andokai with some research, develop knowledge that is hidden in the books of this fortress.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe_14_12"); //He acquired some spell roles and runes of the transforming mages.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe_14_13"); //Let's try to find out if you can generate plague spells from it.

	if (!Npc_KnowsInfo(hero, Info_Mod_Lich_Hi))
	{
		B_RemoveNpc	(Mod_7290_PAL_Athos_NW);
		B_RemoveNpc	(Mod_7291_PAL_Aramis_NW);
		B_RemoveNpc	(Mod_7292_PAL_Porthos_NW);

		Wld_InsertNpc	(Lich_11008_NW, "NW_TROLLAREA_TROLLROCKCAVE_02");

		if (!Npc_KnowsInfo(hero, Info_Mod_Porthos_Hi))
		{
			Wld_SendTrigger	("LICHDUNGEON");
		};
	};

	B_SetTopicStatus	(TOPIC_MOD_NL_DRAGON, LOG_SUCCESS);

	Log_CreateTopic	(TOPIC_MOD_NL_MOORHEXE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NL_MOORHEXE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NL_MOORHEXE, "Xardas spoke of the area of Relendel in the north of Khorinis, where a moor was to be found. Probably a Ranger at the black troll could show me the way there.");
	B_LogEntry	(TOPIC_MOD_NL_MOORHEXE, "Xardas tries with Andokai to transform some of the spells of the transforming mages into plague spells. So he referred me to the Library of Black Magicians for my remaining questions.");
};

INSTANCE Info_Mod_Xardas_NW_Moorhexe2 (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Moorhexe2_Condition;
	information	= Info_Mod_Xardas_NW_Moorhexe2_Info;
	permanent	= 0;
	important	= 0;
	description	= "The dragon has mentioned something else...";
};

FUNC INT Info_Mod_Xardas_NW_Moorhexe2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Moorhexe))
	&& (Mod_Moorhexe == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Moorhexe2_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Moorhexe2_15_00"); //The dragon has mentioned something else...
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe2_14_01"); //Yes?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Moorhexe2_15_02"); //He said that whatever is in the moor hides from the powerful.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe2_14_03"); //Hm, that could complicate your undertaking.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe2_14_04"); //Maybe the solution to the mystery will only be revealed if you take a weak form.
	
	if (Npc_KnowsInfo(hero, Info_Mod_Andokai_Moorhexe)) {
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe2_14_05"); //I heard you were already with Andokai.
		if (Npc_KnowsInfo(hero, Info_Mod_Andokai_PyrmansStab)) {
			AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe2_14_06"); //He must have cast you a useful spell.
			B_LogEntry	(TOPIC_MOD_NL_MOORHEXE, "Maybe the secret of the moor won't reveal itself to me when I walk around in my form. Xardas recommended a weak figure. I should use the metamorphosis spell of Andokai.");
		} else {
			AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe2_14_07"); //He will certainly have something useful for you if you have brought him what he wants.
			B_LogEntry	(TOPIC_MOD_NL_MOORHEXE, "Maybe the secret of the moor won't reveal itself to me when I walk around in my form. Xardas recommended a weak figure. Andokai will have something for me once I've done his job.");
		};
	} else {
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Moorhexe2_14_08"); //Andokai will be able to help you with that.
		B_LogEntry	(TOPIC_MOD_NL_MOORHEXE, "Maybe the secret of the moor won't reveal itself to me when I walk around in my form. Xardas recommended a weak figure. Andokai should be able to help me.");
	};
};

INSTANCE Info_Mod_Xardas_NW_WasMussIchTun (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_WasMussIchTun_Condition;
	information	= Info_Mod_Xardas_NW_WasMussIchTun_Info;
	permanent	= 0;
	important	= 0;
	description	= "The way of Beliar? How do I hit that?";
};

FUNC INT Info_Mod_Xardas_NW_WasMussIchTun_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_WasFuerGilden))
	&& (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_WasMussIchTun_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_WasMussIchTun_15_00"); //The way of Beliar? How do I hit that?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasMussIchTun_14_01"); //I'm afraid I'll have to uncover a secret first.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasMussIchTun_14_02"); //You will remember the three camps in the valley of the river Minental, the Old Camp, the New Camp and the Swamp Camp.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasMussIchTun_14_03"); //The fact is, there was a fourth camp.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_WasMussIchTun_15_04"); //And where would that have been?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasMussIchTun_14_05"); //High up in the mountains, near the New Camp.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasMussIchTun_14_06"); //During the First Orc War, a fortress was built in this inhospitable area.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasMussIchTun_14_07"); //After the creation of the barrier, people settled there who had good reasons not to come into contact with the other camps - Beliar's followers.
};

INSTANCE Info_Mod_Xardas_NW_WasDuMitGruppe (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_WasDuMitGruppe_Condition;
	information	= Info_Mod_Xardas_NW_WasDuMitGruppe_Info;
	permanent	= 0;
	important	= 0;
	description	= "What do you have to do with the group?";
};

FUNC INT Info_Mod_Xardas_NW_WasDuMitGruppe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_WasMussIchTun))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_WasDuMitGruppe_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_WasDuMitGruppe_15_00"); //What do you have to do with the group?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasDuMitGruppe_14_01"); //It already existed before I turned away from the Fire Magicians, but I can't deny that I gained a lot of influence there.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasDuMitGruppe_14_02"); //You can imagine my surprise when I came across this grouping.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasDuMitGruppe_14_03"); //After the fall of the Barrier, it became better known and some famous mages and warriors of the colony joined it.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WasDuMitGruppe_14_04"); //You may well remember some of them, even if it won't be the other way around.
};

INSTANCE Info_Mod_Xardas_NW_WarumNovize (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_WarumNovize_Condition;
	information	= Info_Mod_Xardas_NW_WarumNovize_Info;
	permanent	= 0;
	important	= 0;
	description	= "Suppose I wanted to join this club....";
};

FUNC INT Info_Mod_Xardas_NW_WarumNovize_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_WasDuMitGruppe))
	&& (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_WarumNovize_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_WarumNovize_15_00"); //Suppose I wanted to join this club....
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WarumNovize_14_01"); //Turn to Andokai. He is the chief black mage of the fortress and is responsible for recruiting.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WarumNovize_14_02"); //If you tell him I trust you, he'll treat you well.

	B_LogEntry	(TOPIC_MOD_DAEMONENBESCHWOERER, "If I want to join the Beliaran followers, I should turn to Andokai, the supreme black mage of the old fortress.");
};

INSTANCE Info_Mod_Xardas_NW_WelcherVorteil (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_WelcherVorteil_Condition;
	information	= Info_Mod_Xardas_NW_WelcherVorteil_Info;
	permanent	= 0;
	important	= 0;
	description	= "What would I get out of being a Beliaran trailer?";
};

FUNC INT Info_Mod_Xardas_NW_WelcherVorteil_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_WasDuMitGruppe))
	&& (Mod_Gilde	==	0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_WelcherVorteil_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_WelcherVorteil_15_00"); //What would I get out of being a Beliaran trailer?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WelcherVorteil_14_01"); //(teaching) You are not turning your prayers to Beliar because you are certain about it, but because you are convinced of its teaching.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WelcherVorteil_14_02"); //Aside from that... Our warriors are also trained in the use of magic.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WelcherVorteil_14_03"); //The basic training consists of the first two circles of magic.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WelcherVorteil_14_04"); //Only then do you have to choose a specialisation. However, you can only learn the powerful combat spells as a mage.

	B_LogEntry	(TOPIC_MOD_DAEMONENBESCHWOERER, "Each novice learns the first two magic circles of the Beliaran pendants before he specializes in becoming a warrior or magician.");
};

INSTANCE Info_Mod_Xardas_NW_WoSindAndere (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_WoSindAndere_Condition;
	information	= Info_Mod_Xardas_NW_WoSindAndere_Info;
	permanent	= 0;
	important	= 0;
	description	= "How do I get to this mountain fortress?";
};

FUNC INT Info_Mod_Xardas_NW_WoSindAndere_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_WasMussIchTun))
	&& (Mod_Gilde	==	0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_WoSindAndere_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_WoSindAndere_15_00"); //How do I get to this mountain fortress?

	if (Npc_GetDistToWP(self, "NW_XARDAS_TOWER_IN1_22") < 500 || Npc_GetDistToWP(self, "WP_XARDAS_PREACH_02") < 500) {
		AI_Output(self, hero, "Info_Mod_Xardas_NW_WoSindAndere_14_01"); //The question is easy to answer. Look up here. There's my own shrine.
	} else {
		AI_Output(self, hero, "Info_Mod_Xardas_NW_WoSindAndere_14_02"); //The question is easy to answer. Look upstairs. There's my own shrine.
	};
	AI_Output(hero, self, "Info_Mod_Xardas_NW_WoSindAndere_15_03"); //What next? I didn't want to pray.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WoSindAndere_14_04"); //Forgive you once again for your insolent ignorance.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WoSindAndere_14_05"); //We use the Beliar Shrines as teleporters. You must activate each shrine to travel with it, but then you can switch between them as you like.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WoSindAndere_14_06"); //My shrine's only connected to the fortress so far. So you can't miss it.

	B_LogEntry	(TOPIC_MOD_DAEMONENBESCHWOERER, "I reach the fortress of the Beliaran trailers via the Beliar shrine in Xardas' tower, which also functions as a teleporter.");
};

INSTANCE Info_Mod_Xardas_NW_VonWemKannIchLernen (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_VonWemKannIchLernen_Condition;
	information	= Info_Mod_Xardas_NW_VonWemKannIchLernen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who can teach me what?";
};

FUNC INT Info_Mod_Xardas_NW_VonWemKannIchLernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_WasMussIchTun))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_VonWemKannIchLernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_VonWemKannIchLernen_15_00"); //Who can teach me what?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_VonWemKannIchLernen_14_01"); //I can teach you about magic.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_BELIARFESTUNG, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_BELIARFESTUNG, "Xardas can help me increase my mana.");
};

INSTANCE Info_Mod_Xardas_NW_GomezHier (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_GomezHier_Condition;
	information	= Info_Mod_Xardas_NW_GomezHier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why is Gomez still alive?";
};

FUNC INT Info_Mod_Xardas_NW_GomezHier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gomez_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_GomezHier_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_GomezHier_15_00"); //Why is Gomez still alive?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_GomezHier_14_01"); //He's one of our warriors.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_GomezHier_15_02"); //But I killed him and the others back in the old camp.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_GomezHier_14_03"); //In a way, yeah. But he was still a long way from final death.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_GomezHier_15_04"); //And why doesn't he remember me?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_GomezHier_14_05"); //I have cast a powerful oblivion spell on him and his henchmen.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_GomezHier_14_06"); //You've forgotten everything that happened in the Minental.
};

INSTANCE Info_Mod_Xardas_NW_WannNovize (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_WannNovize_Condition;
	information	= Info_Mod_Xardas_NW_WannNovize_Info;
	permanent	= 0;
	important	= 0;
	description	= "Andokai is convinced of me and would take me in.";
};

FUNC INT Info_Mod_Xardas_NW_wannNovize_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andokai_WarInBib))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_WannNovize_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_WannNovize_15_00"); //Andokai is convinced of me and would take me in.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_WannNovize_15_01"); //He says he still needs your consent.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WannNovize_14_02"); //You know I think a lot of you, and I don't have to put you to the test to find out.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_WannNovize_15_03"); //Thanks. But?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WannNovize_14_04"); //It would be unfair for other applicants to give you preferential treatment. That's why I'm gonna give you one more test.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_WannNovize_14_05"); //Because she's sophisticated, you can see that I trust you.
};

INSTANCE Info_Mod_Xardas_NW_LetzterTest (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_LetzterTest_Condition;
	information	= Info_Mod_Xardas_NW_LetzterTest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Well, what kind of test is this?";
};

FUNC INT Info_Mod_Xardas_NW_LetzterTest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_WannNovize))
	&& (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_LetzterTest_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_LetzterTest_15_00"); //Well, what kind of test is this?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_14_01"); //It is about a splinter group of believers who have gathered under the leadership of a certain Ryan.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_LetzterTest_15_02"); //Where? Where?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_14_03"); //In the Blessed Sacrament of Fire Magicians, the Fire Test Cave, located in the far north of Khorinis.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_14_04"); //Actually, this shouldn't bother us, but rather amuse us - Ryan and his group wouldn't exert a perishable influence.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_14_05"); //With his sadistic rituals, which he performs in the name of Beliars, he blasphemes against our God.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_14_06"); //I've heard that two of our novices have gone over to him.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_14_07"); //So it's time to stop Ryan. However, Ryan also noticed that he has gone too far and protects himself with powerful spells.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_14_08"); //As our spy told me, there is only one weapon that can do significant damage to him - and the priest of the sect owns it.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_14_09"); //It's the Three Gods Staff.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_LetzterTest_15_10"); //Oho!
	AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_14_11"); //A terrible blasphemy of the gods, isn't it? With this stick, the horny spinners get their asses beat and call Beliar!
	AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_14_12"); //So you're gonna have to get that stick and take Ryan out of it.

	B_LogEntry	(TOPIC_MOD_DAEMONENBESCHWOERER, "Xardas told me about a renegade magician named Ryan, who is holding dark rituals in the Fire Magician's Fire Test Cave. I'm supposed to stop him. To kill him, however, I need the so-called Three Gods Wand. According to Xardas, the priests of the group carry it with them.");

	Info_ClearChoices	(Info_Mod_Xardas_NW_LetzterTest);

	Info_AddChoice	(Info_Mod_Xardas_NW_LetzterTest, "I'll see what I can do.", Info_Mod_Xardas_NW_LetzterTest_B);
	Info_AddChoice	(Info_Mod_Xardas_NW_LetzterTest, "Can't I convince Ryan any other way than with the sword?", Info_Mod_Xardas_NW_LetzterTest_A);
};

FUNC VOID Info_Mod_Xardas_NW_LetzterTest_B()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_LetzterTest_B_15_00"); //I'll see what I can do.

	Wld_InsertNpc	(Mod_1942_Ryan_NW, "TAVERNE");
	Wld_InsertNpc	(Mod_1943_Waechter_01_NW, "TAVERNE");
	Wld_InsertNpc	(Mod_1944_Waechter_02_NW, "TAVERNE");
	Wld_InsertNpc	(Mod_1945_Waechter_03_NW, "TAVERNE");
	Wld_InsertNpc	(Mod_1946_Waechter_04_NW, "TAVERNE");
	Wld_InsertNpc	(Mod_1947_Waechter_05_NW, "TAVERNE");
	Wld_InsertNpc	(Mod_1948_Waechter_06_NW, "TAVERNE");
	Wld_InsertNpc	(Mod_1949_Waechter_07_NW, "TAVERNE");
	Wld_InsertNpc	(Mod_1952_Waechter_08_NW, "TAVERNE");
	Wld_InsertNpc	(Mod_1951_Priester_NW, "TAVERNE");

	Info_ClearChoices	(Info_Mod_Xardas_NW_LetzterTest);
};

FUNC VOID Info_Mod_Xardas_NW_LetzterTest_A()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_LetzterTest_A_15_00"); //Can't I convince Ryan any other way than with the sword?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_A_14_01"); //No. Ryan chose his end himself. He knew what he was getting into.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_A_14_02"); //As a Beliar follower, you must learn that death is only a part of nature.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_A_14_03"); //This is not the most horrible punishment we could come up with for Ryan.
};

INSTANCE Info_Mod_Xardas_NW_LetzterTest_Success (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_LetzterTest_Success_Condition;
	information	= Info_Mod_Xardas_NW_LetzterTest_Success_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ryan's dead and his sect is crushed.";
};

FUNC INT Info_Mod_Xardas_NW_LetzterTest_Success_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_LetzterTest))
	&& (Npc_IsDead(Mod_1942_Ryan_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_LetzterTest_Success_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_LetzterTest_Success_15_00"); //Ryan's dead and his sect is crushed.

	if (Npc_HasItems(hero, Ryans_Almanach) == 1)
	{
		AI_Output(hero, self, "Info_Mod_Xardas_NW_LetzterTest_Success_15_01"); //I found this there. It certainly contains some vicious practices.

		B_GiveInvItems	(hero, self, Ryans_Almanach, 1);

		AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_Success_14_02"); //A precious remnant of a false faith. You were right to bring it with you.

		B_GivePlayerXP	(400);
	}
	else
	{

		B_GivePlayerXP	(300);
	};

	AI_Output(self, hero, "Info_Mod_Xardas_NW_LetzterTest_Success_14_03"); //As I expected, you passed this test with flying colors. Nothing stands in the way of your recording as a Black Novice.

	B_LogEntry_More	(TOPIC_MOD_GILDENAUFNAHME, TOPIC_MOD_DAEMONENBESCHWOERER, "I can become a black novice now.", "I can become a black novice now.");

	B_GiveInvItems	(self, hero, ItMi_Gold, 200);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Xardas_NW_Rasend (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Rasend_Condition;
	information	= Info_Mod_Xardas_NW_Rasend_Info;
	permanent	= 0;
	important	= 0;
	description	= "A giant demon has raged on Khorinis.";
};

FUNC INT Info_Mod_Xardas_NW_Rasend_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Saturas_NW_Rasend))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Rasend_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend_15_00"); //A gigantic demon has raged on Khorinis and wreaked havoc among the paladins in the city, the monastery and the water magicians' excavation site.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend_15_01"); //What's the meaning of this? Why targeted the servants Innos' and Adanos'?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend_15_02"); //I didn't hear that he also visited the magicians and warriors of Beliars...
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_03"); //What, a powerful demonic being, you say? So then my perception didn't deceive me...
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend_15_04"); //What are you talking about?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_05"); //I felt the presence of this mighty demon in the environment and I can still perceive it.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_06"); //If I am not mistaken, it is a mighty servant of Beliars, called Shivar.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_07"); //And you're saying he was personally responsible for all this?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_08"); //No servant creatures or anything like that would have supported him?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend_15_09"); //Yeah, the way I report it.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_10"); //That's more than unusual.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_11"); //He is a prince among the demons and has a huge staff of lower servant creatures.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_12"); //The fact that he himself appears and spreads such evil raises many questions...
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_13"); //Let me think about it. I heard about strange events on the pasture plateau and the surrounding area.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_14"); //Soils were blessed and cursed and then monsters appeared...
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_15"); //I'm sure you can tell me more about it.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend_15_16"); //Yes, I actually had a direct influence on these events.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend_15_17"); //By order of the water magicians I cleaned the soils from the influences of the two deities.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend_15_18"); //And then a dark force seized the released forces and called the creatures on the pasture plateau.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_19"); //The magic of the two deities absorbed and thereby summoned the creatures?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_20"); //This is extremely interesting and could provide important information about the current events.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_21"); //I had read that the servants of the Xeres had the power to seize control over the magic of other deities and thus also over their magical creatures.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend_15_22"); //Are you saying that this horrible demon is now under the influence of Xeres?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend_15_23"); //Then it would really be bad for all of us...
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_24"); //I don't know, sir. Has Xeres' influence increased to such an extent that he can even gain control over Beliar's most devoted creatures?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_25"); //I don't dare to imagine. It would also still raise some contradictions and questions.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_26"); //Why did he come without servant creatures and why did he leave the followers of Beliar completely untouched?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend_15_27"); //The main thing is that I can find a way to put an end to his hustle and bustle.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend_15_28"); //If there's no other way, I'll probably have to advance against him with sword and magic.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_29"); //Conquer Shivar in battle? Trying to do that would be sheer madness.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_30"); //It is far more powerful than any opponent you've faced in direct combat.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_31"); //You probably wouldn't be able to get close enough to lead a single attack against him....
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend_15_32"); //There must be something I can do. Just stand back and watch him kill khorinis?!
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend_15_33"); //Is there really nothing that could help me with the clash with him?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_34"); //Well, he's a demon full of hubris and tolerates only his own kind.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_35"); //Even I, as a high dignitary of the demon magicians, could not be sure that he would not turn against me....
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_36"); //You would therefore have to absorb a part of demonic power into yourself. The servants of the Xeres are said to have been able to do so.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_37"); //So take a look around near the willow plateau to see if you can find any important clues.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend_14_38"); //When you find something, come back to me.

	B_LogEntry	(TOPIC_MOD_ADANOS_RASEND, "Xardas asked me to look for a means of awakening demonic forces in me near the willow plateau. The creators of the monsters on the plateau could have something like this.");

	Wld_InsertNpc	(Mod_7497_BlutkultMagier_NW, "TAVERNE");

	B_KillNpc	(Mod_7497_BlutkultMagier_NW);

	Mod_WM_BlutkultAttack = 1;
};

INSTANCE Info_Mod_Xardas_NW_Rasend02 (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Rasend02_Condition;
	information	= Info_Mod_Xardas_NW_Rasend02_Info;
	permanent	= 0;
	important	= 0;
	description	= "I was already in the' enjoyment' of such a remedy.";
};

FUNC INT Info_Mod_Xardas_NW_Rasend02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Rasend))
	&& (Mod_WM_HeroHatDaemonInSich == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Rasend02_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend02_15_00"); //I was already in the' enjoyment' of such a remedy, with which I became a partially demonic being myself for some time.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend02_15_01"); //The xeres' minions had it with them.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend02_14_02"); //Is that so? Yes, you speak true, I can still perceive a small but clear demonic spark in you. It seems to be lasting...
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend02_15_03"); //And how can I use this for myself now?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend02_14_04"); //Hmm, demons of such power as Shivar are always surrounded by a strong aura.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend02_14_05"); //If you get near it and focus firmly on the demonic in you, you could at least let the demonic come out in its full bloom for a while.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend02_15_06"); //Bloom of the Demonic?

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend02_15_07"); //(to himself) Such a paraphrase can only come to mind for a demon magician.

	AI_TurnToNpc	(hero, self);

	AI_Output(hero, self, "Info_Mod_Xardas_NW_Rasend02_15_08"); //(again to Xardas) To become a demon I don't feel particularly desirable, but if it is my only possibility....
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend02_14_09"); //It would definitely open up new possibilities for you.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend02_14_10"); //When you're ready, try to enter into dialogue with Shivar and learn what's going on.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Rasend02_14_11"); //Beliar, keep you safe.

	B_LogEntry	(TOPIC_MOD_ADANOS_RASEND, "All right, then. Since the demonic still lingers in me after the stew of the blood cult fritters, I should concentrate fully on it near the demon Shivar to become a full-fledged demon. Afterwards I could learn a lot about him...");
};

INSTANCE Info_Mod_Xardas_NW_Trent (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Trent_Condition;
	information	= Info_Mod_Xardas_NW_Trent_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found this in the abandoned mine. It enchanted a paladin so he tried to kill me.";
};

FUNC INT Info_Mod_Xardas_NW_Trent_Condition()
{
	if (Mod_KG_SchwarzesErz == 1)
	&& (Npc_HasItems(hero, ItMi_SchwarzesErz_Trent) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Trent_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Trent_15_00"); //I found this in the abandoned mine. It enchanted a paladin so he tried to kill me.

	B_GiveInvItems	(hero, self, ItMi_SchwarzesErz_Trent, 1);

	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trent_14_01"); //This is really interesting... this ore seems to be cursed.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trent_14_02"); //If I can find out the exact characteristics, it could be a powerful weapon against your enemies.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trent_14_03"); //Come back in a few days, then I'll know more.

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Xardas_NW_Trent_15_04"); //(to himself) Well, then I should probably go to Lord Andre...

	B_LogEntry	(TOPIC_MOD_KG_RITUAL, "Xardas will investigate the black ore. Meanwhile, I should see Lord André.");
};

INSTANCE Info_Mod_Xardas_NW_Trent2 (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Trent2_Condition;
	information	= Info_Mod_Xardas_NW_Trent2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Did you hear anything about the ore?";
};

FUNC INT Info_Mod_Xardas_NW_Trent2_Condition()
{
	if (Mod_KG_NachOrkZauber == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Trent2_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Trent2_15_00"); //Did you hear anything about the ore? I'm at a point where I could use a miracle weapon.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trent2_14_01"); //Unfortunately, it's not as powerful as I thought. It won't do us any good against Xeres.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trent2_14_02"); //However, you can attain immortality against certain beings.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Trent2_15_03"); //What if I already have a gun that can do the same? Couldn't the ore then dissolve the effect?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trent2_14_04"); //Yes... by itself, but what a coincidence.... Have you found another ore like that?
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Trent2_15_05"); //Yes and no. An immortal orc shaman told me something about a black lung with human blood.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trent2_14_06"); //Well, I guess that's what an orc would call it.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trent2_14_07"); //Well, even if we could use this in a different way, we have no other choice. An invincible shaman is too dangerous.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Trent2_14_08"); //Take this ring, I've had it made from the ore. That ought to make your gun hurt him.

	B_GiveInvItems	(self, hero, ItRi_SchwarzesErz, 1);

	AI_Output(hero, self, "Info_Mod_Xardas_NW_Trent2_15_09"); //Let's hope it works!

	B_LogEntry	(TOPIC_MOD_KG_RITUAL, "In order to be able to kill the shaman, I have to put on the ring that Xardas made from the black ore and then face him.");
};

INSTANCE Info_Mod_Xardas_NW_Aufnahme (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Aufnahme_Condition;
	information	= Info_Mod_Xardas_NW_Aufnahme_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to be a black novice.";
};

FUNC INT Info_Mod_Xardas_NW_Aufnahme_Condition()
{
	if (Mod_Gilde	==	0)
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_LetzterTest_Success))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Aufnahme_15_00"); //I want to be a black novice.
	
	if (hero.level >= 5)
	{
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Aufnahme_14_01"); //You know there's no going back? That your decision is final?
		
		if (Mod_HatPlayerNeutraleKlamotten())
		{
			if (Mod_Gottstatus > 4)
			{
				AI_Output(self, hero, "Info_Mod_Xardas_NW_Aufnahme_14_02"); //However, you should do a few things in favor of Beliar first.
			}
			else
			{
				Info_ClearChoices	(Info_Mod_Xardas_NW_Aufnahme);

				Info_AddChoice	(Info_Mod_Xardas_NW_Aufnahme, "Why don't you give me some time?", Info_Mod_Xardas_NW_Aufnahme_Nein);
				Info_AddChoice	(Info_Mod_Xardas_NW_Aufnahme, "Yeah.", Info_Mod_Xardas_NW_Aufnahme_Ja);
			};
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Xardas_NW_Aufnahme_14_03"); //You should get yourself a neutral armor first.
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Aufnahme_14_04"); //Gather some more experience and I'll be happy to welcome you.
	};
};

FUNC VOID Info_Mod_Xardas_NW_Aufnahme_Nein()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Aufnahme_Nein_15_00"); //Why don't you give me some time?

	Info_ClearChoices	(Info_Mod_Xardas_NW_Aufnahme);
};

FUNC VOID Info_Mod_Xardas_NW_Aufnahme_Ja()
{
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_53);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_55);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_60);
	
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Aufnahme_Ja_15_00"); //Yeah.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Aufnahme_Ja_14_01"); //Then I would like to welcome you here on behalf of Andokai!
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Aufnahme_Ja_14_02"); //He won't blame me if I give you your armor and the traditional weapon.

	CreateInvItems	(hero, ITAR_NOV_DMB_01, 1);
	CreateInvItems	(hero, ItMw_1h_SNov_Mace, 1);

	B_ShowGivenThings	("Black novice robe and baton received");

	AI_UnequipArmor	(hero);
	AI_EquipArmor	(hero, ItAr_Nov_DMB_01);

	AI_Output(self, hero, "Info_Mod_Xardas_NW_Aufnahme_Ja_14_03"); //It is better not to show up near these Inno worshippers in the city and in the Innos monastery.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Aufnahme_Ja_14_04"); //If you need a better weapon, you should go to Scar's.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Aufnahme_Ja_14_05"); //But to your rights and duties, really speak better with Andokai.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Aufnahme_Ja_14_06"); //I will now instruct you in magic if you wish.

	B_LogEntry_More	(TOPIC_MOD_GILDENAUFNAHME, TOPIC_MOD_DAEMONENBESCHWOERER, "I'm a black novice now.", "I'm a black novice now.");
	B_SetTopicStatus	(TOPIC_MOD_GILDENAUFNAHME, LOG_SUCCESS);
	B_SetTopicStatus	(TOPIC_MOD_DAEMONENBESCHWOERER, LOG_SUCCESS);

	B_SetTopicStatus	(TOPIC_MOD_FEUERMAGIER, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_WASSERMAGIER, LOG_FAILED);
	B_SetTopicStatus	(TOPIC_MOD_SÖLDNER, LOG_FAILED);

	Mod_Gilde = 12;

	Info_ClearChoices	(Info_Mod_Xardas_NW_Aufnahme);

	Monster_Max += 6;
	
	hero.guild = GIL_KDF;
	Npc_SetTrueGuild	(hero, GIL_KDF);

	BeliarAufnahme = Wld_GetDay();

	Snd_Play ("LEVELUP");

	B_GivePlayerXP	(400);

	B_Göttergefallen(3, 5);
};

INSTANCE Info_Mod_Xardas_NW_AxtDesUntergangs (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_AxtDesUntergangs_Condition;
	information	= Info_Mod_Xardas_NW_AxtDesUntergangs_Info;
	permanent	= 0;
	important	= 0;
	description	= "What exactly does the axe do?";
};

FUNC INT Info_Mod_Xardas_NW_AxtDesUntergangs_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_HabAxt))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_AxtDesUntergangs_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_AxtDesUntergangs_15_00"); //What exactly does the axe do? She doesn't look particularly strong....
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AxtDesUntergangs_14_01"); //At the moment, she is deprived of her strength. You'll have to use them often to recover their former strength.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AxtDesUntergangs_14_02"); //It withdraws a part of its power from every enemy killed and becomes stronger and stronger.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_AxtDesUntergangs_15_03"); //Sounds interesting.
};

INSTANCE Info_Mod_Xardas_NW_MilizVorTurm (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_MilizVorTurm_Condition;
	information	= Info_Mod_Xardas_NW_MilizVorTurm_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_MilizVorTurm_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_VermissteFertig))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_MilizVorTurm_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_MilizVorTurm_14_00"); //If you wonder about the creatures outside my tower... a small mob from the city was on its way to my tower.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_MilizVorTurm_14_01"); //My delegation has duly welcomed them.
};

INSTANCE Info_Mod_Xardas_NW_AlteMineQuest (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_AlteMineQuest_Condition;
	information	= Info_Mod_Xardas_NW_AlteMineQuest_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_NW_AlteMineQuest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Daemonisch3))
	&& (Wld_GetDay()-6 >= Mod_SP_Killed_Day)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_AlteMineQuest_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlteMineQuest_14_00"); //There have been some disturbing things happening in the old mine, as I just heard.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlteMineQuest_14_01"); //Murder and manslaughter without recognizable motives... That's all I know.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlteMineQuest_14_02"); //However, I think your skills and knowledge could be useful in the situation there.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_AlteMineQuest_15_03"); //All right, I'll drop by there in good time.

	Log_CreateTopic	(TOPIC_MOD_XARDAS_ALTEMINE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_XARDAS_ALTEMINE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_XARDAS_ALTEMINE, "Xardas asked me to stop by the old mine. Apparently there have been some unusual acts of violence.");

	Wld_InsertNpc	(Mod_7713_DMR_Daemonenritter_NW, "BIGFARM");
};

INSTANCE Info_Mod_Xardas_NW_AlteMineQuest2 (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_AlteMineQuest2_Condition;
	information	= Info_Mod_Xardas_NW_AlteMineQuest2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Xeres had his fingers in the pie again.";
};

FUNC INT Info_Mod_Xardas_NW_AlteMineQuest2_Condition()
{
	if (Mod_AMQ_Viper == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_AlteMineQuest2_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_AlteMineQuest2_15_00"); //Xeres had his fingers in the pie again.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_AlteMineQuest2_15_01"); //But I foiled his dark machinations in the Old Mine.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlteMineQuest2_14_02"); //Yeah, I just heard about the events.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlteMineQuest2_14_03"); //He wanted to make his way through the Old Mine in order to bring his armed forces to Khorinis.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlteMineQuest2_14_04"); //Very cunning... where no one expects it.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_AlteMineQuest2_15_05"); //Right... all eyes were on the pass.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlteMineQuest2_14_06"); //Well, it is pointless to mention that you have once again saved not only our community but all of Khorini from a threat.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlteMineQuest2_14_07"); //Moreover, the enemy's legacies in this story were not entirely worthless.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlteMineQuest2_14_08"); //I have instructed our blacksmith to make something beautiful for you.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_AlteMineQuest2_15_09"); //What do you mean?
	AI_Output(self, hero, "Info_Mod_Xardas_NW_AlteMineQuest2_14_10"); //Not important. If you go to our fortress, you will know it.

	B_SetTopicStatus	(TOPIC_MOD_XARDAS_ALTEMINE, LOG_SUCCESS);

	B_GivePlayerXP	(500);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Xardas_NW_Schreine (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Schreine_Condition;
	information	= Info_Mod_Xardas_NW_Schreine_Info;
	permanent	= 0;
	important	= 0;
	description	= "The teleport from the Belarusian shrine worked.";
};

FUNC INT Info_Mod_Xardas_NW_Schreine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andokai_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Schreine_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Schreine_15_00"); //The teleport from the Belarusian shrine worked.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Schreine_14_01"); //I expected nothing else.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Schreine_14_02"); //Since the system is quite young, not many Beliar shrines are networked with each other.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Schreine_14_03"); //Therefore, I ask you to look out for previously unconnected shrines on your travels.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Schreine_14_04"); //If you succeed in activating all the shrines, I will come up with a little reward for you.

	Log_CreateTopic	(TOPIC_MOD_BELIAR_SCHREINE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BELIAR_SCHREINE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BELIAR_SCHREINE, "Xardas told me to activate all the Beliar shrines I find on my way. Once I've connected all the available shrines, he wants to come up with a reward for me.");
};

INSTANCE Info_Mod_Xardas_NW_Schreine2 (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Schreine2_Condition;
	information	= Info_Mod_Xardas_NW_Schreine2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I think I connected all the Beliar shrines together.";
};

FUNC INT Info_Mod_Xardas_NW_Schreine2_Condition()
{
	if (Mod_Beliarschreine == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Schreine2_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Schreine2_15_00"); //I think I connected all the Beliar shrines together.
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Schreine2_14_01"); //That's what I call a respectable achievement. I am deeply indebted to you.
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Schreine2_15_02"); //You mentioned a reward...
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Schreine2_14_03"); //Right. (seeking) I had it here somewhere the other day...
	AI_Output(self, hero, "Info_Mod_Xardas_NW_Schreine2_14_04"); //Ah, that's right. Here he is, sir.

	B_GiveInvItems	(self, hero, ItPo_Perm_Mana, 1);

	AI_Output(self, hero, "Info_Mod_Xardas_NW_Schreine2_14_06"); //I've had that potion for ages. I hope it's still working.

	B_SetTopicStatus	(TOPIC_MOD_BELIAR_SCHREINE, LOG_SUCCESS);
};

var int Xardas_LastPetzCounter;
var int Xardas_LastPetzCrime;

INSTANCE Info_Mod_Xardas_PMSchulden (C_INFO)
{
	npc         	= Mod_513_DMB_Xardas_NW;
	nr          	= 1;
	condition   	= Info_Mod_Xardas_PMSchulden_Condition;
	information 	= Info_Mod_Xardas_PMSchulden_Info;
	permanent   	= 1;
	important 	= 1; 
};

FUNC INT Info_Mod_Xardas_PMSchulden_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (Xardas_Schulden > 0)
	&& (B_GetGreatestPetzCrime(self) <= Xardas_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Xardas_PMSchulden_Info()
{
	AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_00"); //Did you come to pay your fine?

	if (B_GetTotalPetzCounter(self) > Xardas_LastPetzCounter)
	{
		AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_01"); //I was wondering if you'd even dare come here!
		AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_02"); //Apparently, it's not the latest accusations!

		if (Xardas_Schulden < 1000)
		{
			AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_03"); //I warned you! The fine you have to pay now is higher!
			AI_Output (hero, self, "Info_Mod_Xardas_PMAdd_15_00"); //How much?
			
			var int diff; diff = (B_GetTotalPetzCounter(self) - Xardas_LastPetzCounter);
		
			if (diff > 0)
			{
				Xardas_Schulden = Xardas_Schulden + (diff * 50);
			};
		
			if (Xardas_Schulden > 1000)	{	Xardas_Schulden = 1000;	};
		
			B_Say_Gold (self, hero, Xardas_Schulden);
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_04"); //You let me down so badly!
		};
	}
	else if (B_GetGreatestPetzCrime(self) < Xardas_LastPetzCrime)
	{
		AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_05"); //Some new things have come up.
		
		if (Xardas_LastPetzCrime == CRIME_MURDER)
		{
			AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_06"); //Suddenly, there's no one left to accuse you of murder.
		};
		
		if (Xardas_LastPetzCrime == CRIME_THEFT)
		|| ( (Xardas_LastPetzCrime > CRIME_THEFT) && (B_GetGreatestPetzCrime(self) < CRIME_THEFT) )
		{
			AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_07"); //No one remembers seeing you at a theft.
		};
		
		if (Xardas_LastPetzCrime == CRIME_ATTACK)
		|| ( (Xardas_LastPetzCrime > CRIME_ATTACK) && (B_GetGreatestPetzCrime(self) < CRIME_ATTACK) )
		{
			AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_08"); //There's no more witnesses to the fact that you've ever been in a fight.
		};
		
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_09"); //Apparently all the charges against you have vanished.
		};
		
		AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_10"); //I don't know what happened, but I warn you: don't play games with me.
				
		// ------- Schulden erlassen oder trotzdem zahlen ------
		if (B_GetGreatestPetzCrime(self) == CRIME_NONE)
		{
			AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_11"); //Anyway, I've decided to waive your debt.
			AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_12"); //Make sure you don't get in trouble again.
	
			Xardas_Schulden			= 0;
			Xardas_LastPetzCounter 	= 0;
			Xardas_LastPetzCrime		= CRIME_NONE;
		}
		else
		{
			AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_13"); //One thing is clear: you still have to pay your penalty in full.
			B_Say_Gold (self, hero, Xardas_Schulden);
			AI_Output (self, hero, "Info_Mod_Xardas_PMSchulden_14_14"); //So, what is it?
		};
	};
	
	// ------ Choices NUR, wenn noch Crime vorliegt ------
	if (B_GetGreatestPetzCrime(self) != CRIME_NONE)
	{
		Info_ClearChoices  	(Info_Mod_Xardas_PMSchulden);
		Info_ClearChoices  	(Info_Mod_Xardas_PETZMASTER);
		Info_AddChoice		(Info_Mod_Xardas_PMSchulden,"I don't have enough gold!",Info_Mod_Xardas_PETZMASTER_PayLater);
		Info_AddChoice		(Info_Mod_Xardas_PMSchulden,"How much was it again?",Info_Mod_Xardas_PMSchulden_HowMuchAgain);
		if (Npc_HasItems(hero, itmi_gold) >= Xardas_Schulden)
		{
			Info_AddChoice 	(Info_Mod_Xardas_PMSchulden,"I want to pay the fine.",Info_Mod_Xardas_PETZMASTER_PayNow);
		};
	};
};

func void Info_Mod_Xardas_PMSchulden_HowMuchAgain()
{
	AI_Output (hero, self, "Info_Mod_Xardas_PMSchulden_HowMuchAgain_15_00"); //How much was it again?
	B_Say_Gold (self, hero, Xardas_Schulden);

	Info_ClearChoices  	(Info_Mod_Xardas_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Xardas_PETZMASTER);
	Info_AddChoice		(Info_Mod_Xardas_PMSchulden,"I don't have enough gold!",Info_Mod_Xardas_PETZMASTER_PayLater);
	Info_AddChoice		(Info_Mod_Xardas_PMSchulden,"How much was it again?",Info_Mod_Xardas_PMSchulden_HowMuchAgain);
	if (Npc_HasItems(hero, itmi_gold) >= Xardas_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Xardas_PMSchulden,"I want to pay the fine.",Info_Mod_Xardas_PETZMASTER_PayNow);
	};
};

INSTANCE Info_Mod_Xardas_PETZMASTER   (C_INFO)
{
	npc         	= Mod_513_DMB_Xardas_NW;
	nr          	= 1;
	condition   	= Info_Mod_Xardas_PETZMASTER_Condition;
	information 	= Info_Mod_Xardas_PETZMASTER_Info;
	permanent   	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_PETZMASTER_Condition()
{
	if (B_GetGreatestPetzCrime(self) > Xardas_LastPetzCrime)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Xardas_PETZMASTER_Info()
{
	Xardas_Schulden = 0; //weil Funktion nochmal durchlaufen wird, wenn Crime höher ist...	
	
	if (B_GetGreatestPetzCrime(self) == CRIME_MURDER) 
	{
		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_01"); //I'm glad you came to me before things got worse for you.
		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_02"); //Murder is a grave offence!

		Xardas_Schulden = (B_GetTotalPetzCounter(self) * 50); 		//Anzahl der Zeugen * 50

		Xardas_Schulden = Xardas_Schulden + 500;						//PLUS Mörder-Malus

		if ((PETZCOUNTER_City_Theft + PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_03"); //Not to mention the other things you've done.
		};

		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_06"); //I have no interest in putting you on the gallows.
		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_07"); //But it won't be easy to make people gracious again.
		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_08"); //You could show your repentance by paying a fine - of course the penalty must be appropriate.
	};
		
	if (B_GetGreatestPetzCrime(self) == CRIME_THEFT) 
	{
		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_09"); //Good of you to come! You're accused of stealing! There are witnesses!

		if ((PETZCOUNTER_City_Attack + PETZCOUNTER_City_Sheepkiller) > 0)
		{
			AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_10"); //I don't even want to talk about the other things I've heard.
		};

		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_11"); //I will not tolerate such behaviour here!
		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_12"); //You'll have to pay a fine to make up for your crime!
		
		Xardas_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	if (B_GetGreatestPetzCrime(self) == CRIME_ATTACK)
	{
		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_13"); //If you fight with the militia or the fire magicians, that's one thing...
		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_14"); //But if you attack our people, I'll have to hold you accountable.

		if (PETZCOUNTER_City_Sheepkiller > 0)
		{
			AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_15"); //And I don't think it had to be the case with the sheep.
		};

		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_16"); //If I let you get away with this, everybody's gonna do what they want.
		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_17"); //So you'll pay an appropriate fine - and the whole thing will be forgotten.
		
		Xardas_Schulden = (B_GetTotalPetzCounter(self) * 50); //Anzahl der Zeugen * 50
	};
	
	// ------ Schaf getötet (nahezu uninteressant - in der City gibt es keine Schafe) ------
	if (B_GetGreatestPetzCrime(self) == CRIME_SHEEPKILLER) 
	{
		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_18"); //I've heard that you've been messing with our sheep.
		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_19"); //You do realize I can't let this go through.
		AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_14_20"); //You'll have to pay compensation!
		
		Xardas_Schulden = 100;
	};
	
	AI_Output (hero, self, "Info_Mod_Xardas_PETZMASTER_15_21"); //How much?
	
	if (Xardas_Schulden > 1000)	{	Xardas_Schulden = 1000;	};
		
	B_Say_Gold (self, hero, Xardas_Schulden);
	
	Info_ClearChoices  	(Info_Mod_Xardas_PMSchulden);
	Info_ClearChoices  	(Info_Mod_Xardas_PETZMASTER);
	Info_AddChoice		(Info_Mod_Xardas_PETZMASTER,"I don't have enough gold!",Info_Mod_Xardas_PETZMASTER_PayLater);
	if (Npc_HasItems(hero, itmi_gold) >= Xardas_Schulden)
	{
		Info_AddChoice 	(Info_Mod_Xardas_PETZMASTER,"I want to pay the fine.",Info_Mod_Xardas_PETZMASTER_PayNow);
	};
};

func void Info_Mod_Xardas_PETZMASTER_PayNow()
{
	AI_Output (hero, self, "Info_Mod_Xardas_PETZMASTER_PayNow_15_00"); //I want to pay the fine!
	B_GiveInvItems (hero, self, itmi_gold, Xardas_Schulden);
	AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_PayNow_14_01"); //Good! I will see to it that each one of us learns about it - so your reputation would be reasonably restored.

	B_GrantAbsolution (LOC_SMCAMP);
	
	Xardas_Schulden			= 0;
	Xardas_LastPetzCounter 	= 0;
	Xardas_LastPetzCrime		= CRIME_NONE;
	
	Info_ClearChoices  	(Info_Mod_Xardas_PETZMASTER);
	Info_ClearChoices  	(Info_Mod_Xardas_PMSchulden);	//!!! Info-Choice wird noch von anderem Dialog angesteuert!
};

func void Info_Mod_Xardas_PETZMASTER_PayLater()
{
	AI_Output (hero, self, "Info_Mod_Xardas_PETZMASTER_PayLater_15_00"); //I don't have enough gold!
	AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_PayLater_14_01"); //Then see that you get the gold as soon as possible.
	AI_Output (self, hero, "Info_Mod_Xardas_PETZMASTER_PayLater_14_02"); //And I'm warning you, if you owe yourself anything, it's going to get worse for you.
	
	Xardas_LastPetzCounter 	= B_GetTotalPetzCounter(self);
	Xardas_LastPetzCrime		= B_GetGreatestPetzCrime(self);
	
	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Xardas_NW_Lernen_MANA (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Lernen_MANA_Condition;
	information	= Info_Mod_Xardas_NW_Lernen_MANA_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to increase my magical powers.";
};

FUNC INT Info_Mod_Xardas_NW_Lernen_MANA_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_VonWemKannIchLernen))
	&& (hero.attribute[ATR_MANA_MAX]	<=	300)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_Lernen_MANA_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_NW_Lernen_MANA_15_00"); //I want to increase my magical powers.

	Info_ClearChoices	(Info_Mod_Xardas_NW_Lernen_MANA);

	Info_AddChoice		(Info_Mod_Xardas_NW_Lernen_MANA, DIALOG_BACK, Info_Mod_Xardas_NW_Lernen_MANA_BACK);
	Info_AddChoice		(Info_Mod_Xardas_NW_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Xardas_NW_Lernen_MANA_5);
	Info_AddChoice		(Info_Mod_Xardas_NW_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Xardas_NW_Lernen_MANA_1);
};

FUNC VOID Info_Mod_Xardas_NW_Lernen_MANA_BACK()
{
	if (hero.attribute[ATR_MANA_MAX] >= 300)
	{
		AI_Output(self, hero, "Info_Mod_Xardas_NW_Lernen_MANA_BACK_14_01"); //Your magic skills are so good now, I can't teach you anything.
	};

	Info_ClearChoices	(Info_Mod_Xardas_NW_Lernen_MANA);
};

FUNC VOID Info_Mod_Xardas_NW_Lernen_MANA_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_MANA_MAX, 5, 300);

	Info_ClearChoices	(Info_Mod_Xardas_NW_Lernen_MANA);

	Info_AddChoice		(Info_Mod_Xardas_NW_Lernen_MANA, DIALOG_BACK, Info_Mod_Xardas_NW_Lernen_MANA_BACK);
	Info_AddChoice		(Info_Mod_Xardas_NW_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Xardas_NW_Lernen_MANA_5);
	Info_AddChoice		(Info_Mod_Xardas_NW_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Xardas_NW_Lernen_MANA_1);
};

FUNC VOID Info_Mod_Xardas_NW_Lernen_MANA_1()
{
	B_TeachAttributePoints (self, hero, ATR_MANA_MAX, 1, 300);

	Info_ClearChoices	(Info_Mod_Xardas_NW_Lernen_MANA);

	Info_AddChoice		(Info_Mod_Xardas_NW_Lernen_MANA, DIALOG_BACK, Info_Mod_Xardas_NW_Lernen_MANA_BACK);
	Info_AddChoice		(Info_Mod_Xardas_NW_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Xardas_NW_Lernen_MANA_5);
	Info_AddChoice		(Info_Mod_Xardas_NW_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Xardas_NW_Lernen_MANA_1);
};

INSTANCE Info_Mod_Xardas_NW_Lehrer (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Lehrer_Condition;
	information	= Info_Mod_Xardas_NW_Lehrer_Info;
	permanent	= 1;
	important	= 0;
	description	= "Can I study with you?";
};

FUNC INT Info_Mod_Xardas_NW_Lehrer_Condition()
{	
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Hallo))
	&& ((Mod_Gilde == 12)
	|| (Mod_Gilde == 13)
	|| (Mod_Gilde == 14)
	|| (Mod_Gilde == 15)
	|| (Mod_Gilde == 16))
	&& (Mod_IstLehrling == 1)
	{	
		return 1;
	};
};
FUNC VOID Info_Mod_Xardas_NW_Lehrer_Info()
{
	AI_Output (hero, self, "Info_Mod_Xardas_NW_Lehrer_15_00"); //Can I study with you?
	
	if (Mod_Gilde == 12)
	|| (Mod_Gilde == 13)
	|| (Mod_Gilde == 14)
	|| (Mod_Gilde == 15)
	|| (Mod_Gilde == 16)
	{
		AI_Output (self, hero, "Info_Mod_Xardas_NW_Lehrer_14_01"); //I'll let you in on the secrets of alchemy.
		
		if (Mod_XardasAlchemie == FALSE)
		{
			Mod_XardasAlchemie = TRUE;

			Log_CreateTopic	(TOPIC_MOD_LEHRER_BELIARFESTUNG, LOG_NOTE);
			B_LogEntry	(TOPIC_MOD_LEHRER_BELIARFESTUNG, "Xardas can teach me about alchemy.");
		};

		Info_ClearChoices 	(Info_Mod_Xardas_NW_Lehrer);
		Info_AddChoice 		(Info_Mod_Xardas_NW_Lehrer,DIALOG_BACK,Info_Mod_Xardas_NW_Lehrer_BACK);
	
		if ( PLAYER_TALENT_ALCHEMY[POTION_Health_01] == FALSE)
		&& (Mod_LehrlingBei != 1)
		{
			Info_AddChoice 		(Info_Mod_Xardas_NW_Lehrer,B_BuildLearnString ("Essence of Healing", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Health_01)),Info_Mod_Xardas_NW_Lehrer_HEALTH_01);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Health_02] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Health_01] == TRUE)
		{
			Info_AddChoice	  (Info_Mod_Xardas_NW_Lehrer, B_BuildLearnString ("Extract of Healing", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Health_02)), Info_Mod_Xardas_NW_Lehrer_Health_02);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Health_03] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Health_02] == TRUE)
		{
			Info_AddChoice	  (Info_Mod_Xardas_NW_Lehrer, B_BuildLearnString ("Elixir of Healing", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Health_03)), Info_Mod_Xardas_NW_Lehrer_Health_03);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Perm_Health] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Health_03] == TRUE)
		&& (Mod_LehrlingBei != 1)
		&& (Kapitel >= 4)
		{
			Info_AddChoice	  (Info_Mod_Xardas_NW_Lehrer, B_BuildLearnString ("Elixir of Life", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Perm_Health)), Info_Mod_Xardas_NW_Lehrer_Perm_Health);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Mana_01] == FALSE)
		&& (Mod_LehrlingBei != 1)
		{
			Info_AddChoice	  (Info_Mod_Xardas_NW_Lehrer, B_BuildLearnString ("Mana Essence", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Mana_01)), Info_Mod_Xardas_NW_Lehrer_Mana_01);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Mana_02] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Mana_01] == TRUE)
		{
			Info_AddChoice	  (Info_Mod_Xardas_NW_Lehrer, B_BuildLearnString ("Mana Extract", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Mana_02)), Info_Mod_Xardas_NW_Lehrer_Mana_02);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Mana_03] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Mana_02] == TRUE)
		{
			Info_AddChoice	  (Info_Mod_Xardas_NW_Lehrer, B_BuildLearnString ("Mana Elixir", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Mana_03)), Info_Mod_Xardas_NW_Lehrer_Mana_03);
		};
		
		if ( PLAYER_TALENT_ALCHEMY[POTION_Perm_Mana] == FALSE)
		&& ( PLAYER_TALENT_ALCHEMY[POTION_Mana_03] == TRUE)
		&& (Kapitel >= 4)
		{
			Info_AddChoice	  (Info_Mod_Xardas_NW_Lehrer, B_BuildLearnString ("Elixir of Spirit", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Perm_Mana)), Info_Mod_Xardas_NW_Lehrer_Perm_Mana);
		};                                                                                                                                                                                   
		if (PLAYER_TALENT_ALCHEMY[POTION_Perm_STR] == FALSE) 
		&& (Kapitel >= 4)
		{                                                                                                                                                                                     
			Info_AddChoice (Info_Mod_Xardas_NW_Lehrer, B_BuildLearnString ("Elixir of Strength", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Perm_STR)), Info_Mod_Xardas_NW_Lehrer_PermSTR);               
		};
		if (PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX] == FALSE)
		&& (Kapitel >= 4)
		{
			Info_AddChoice (Info_Mod_Xardas_NW_Lehrer,B_BuildLearnString ("Elixir of Dexterity", B_GetLearnCostTalent (hero, NPC_TALENT_ALCHEMY, POTION_Perm_DEX)), Info_Mod_Xardas_NW_Lehrer_Perm_DEX);
		};		
	};
};
FUNC VOID Info_Mod_Xardas_NW_Lehrer_BACK()
{
	Info_ClearChoices 	(Info_Mod_Xardas_NW_Lehrer);
};
FUNC VOID Info_Mod_Xardas_NW_Lehrer_HEALTH_01()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Health_01);
};
FUNC VOID Info_Mod_Xardas_NW_Lehrer_PermStr()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Perm_STR);
};
FUNC VOID Info_Mod_Xardas_NW_Lehrer_Perm_DEX()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Perm_DEX);
};
FUNC VOID Info_Mod_Xardas_NW_Lehrer_HEALTH_02()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Health_02);
};
FUNC VOID Info_Mod_Xardas_NW_Lehrer_Health_03()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Health_03);
};
FUNC VOID Info_Mod_Xardas_NW_Lehrer_Perm_Health()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Perm_Health);
};
FUNC VOID Info_Mod_Xardas_NW_Lehrer_MANA_01()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Mana_01);
};
FUNC VOID Info_Mod_Xardas_NW_Lehrer_MANA_02()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Mana_02);
};
FUNC VOID Info_Mod_Xardas_NW_Lehrer_MANA_03()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Mana_03);
};
FUNC VOID Info_Mod_Xardas_NW_Lehrer_Perm_Mana()
{
	B_TeachPlayerTalentAlchemy (self, hero, POTION_Perm_Mana);
};

INSTANCE Info_Mod_Xardas_NW_Pickpocket (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_Pickpocket_Condition;
	information	= Info_Mod_Xardas_NW_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_210;
};

FUNC INT Info_Mod_Xardas_NW_Pickpocket_Condition()
{
	C_Beklauen	(210, ItPo_MegaDrink, 1);
};

FUNC VOID Info_Mod_Xardas_NW_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Xardas_NW_Pickpocket);

	Info_AddChoice	(Info_Mod_Xardas_NW_Pickpocket, DIALOG_BACK, Info_Mod_Xardas_NW_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Xardas_NW_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Xardas_NW_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Xardas_NW_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Xardas_NW_Pickpocket);
};

FUNC VOID Info_Mod_Xardas_NW_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Xardas_NW_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Xardas_NW_Pickpocket);

		Info_AddChoice	(Info_Mod_Xardas_NW_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Xardas_NW_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Xardas_NW_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Xardas_NW_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Xardas_NW_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Xardas_NW_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Xardas_NW_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Xardas_NW_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Xardas_NW_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Xardas_NW_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Xardas_NW_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Xardas_NW_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Xardas_NW_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Xardas_NW_EXIT (C_INFO)
{
	npc		= Mod_513_DMB_Xardas_NW;
	nr		= 1;
	condition	= Info_Mod_Xardas_NW_EXIT_Condition;
	information	= Info_Mod_Xardas_NW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Xardas_NW_EXIT_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_WasFuerGilden))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_NW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
