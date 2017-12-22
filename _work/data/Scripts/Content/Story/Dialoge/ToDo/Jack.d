INSTANCE Info_Mod_Jack_Irdorath (C_INFO)
{
	npc		= Mod_586_NONE_Jack_NW;
	nr		= 1;
	condition	= Info_Mod_Jack_Irdorath_Condition;
	information	= Info_Mod_Jack_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "I hear you were once a sailor, a proud captain....";
};

FUNC INT Info_Mod_Jack_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jack_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath_15_00"); //I hear you were once a sailor, a proud captain....
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath_14_01"); //Is that so? How did you find out about this?...
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath_14_02"); //Yes, it's true, even though it's been many years. At that time I was captain of the Colossus.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath_14_03"); //Yes, I have survived many adventures with my crew.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath_14_04"); //Whether pirates or storms, scurvy or sea monsters, we have defied everything?
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath_15_05"); //Okay, we can go into that in more detail some other time.
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath_15_06"); //It seems to me, in any case, that you like to think back in time.
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath_15_07"); //What would you say if you were once again given the opportunity to command a large ship?
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath_14_08"); //I would consider it a beautiful dream.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath_14_09"); //For who would want to entrust an old sea bear like me once again with a ship?
};

INSTANCE Info_Mod_Jack_Irdorath2 (C_INFO)
{
	npc		= Mod_586_NONE_Jack_NW;
	nr		= 1;
	condition	= Info_Mod_Jack_Irdorath2_Condition;
	information	= Info_Mod_Jack_Irdorath2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I could offer you a position as captain on the Paladin's ship.";
};

FUNC INT Info_Mod_Jack_Irdorath2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jack_Irdorath2_Info()
{
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath2_15_00"); //I could offer you a position as captain on the Paladin's ship.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath2_14_01"); //Oh, what are you doing? Why are you trying to fool an old sailor...?
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath2_15_02"); //No, I'm completely serious.
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath2_15_03"); //Maybe you heard about the disturbing events in town and elsewhere on Khorinis?
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath2_15_04"); //I'm on a mission from the magicians to banish the author.
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath2_15_05"); //For this purpose I have to transfer with ship, crew and of course captain to an island.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath2_14_06"); //What do you say you're really serious...
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath2_14_07"); //(more contemplative) Hmm, yes, right, I heard rumors about a man and what happened... Is that who you are?
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath2_14_08"); //And I also saw you talking to the water magician's messenger, Diego....
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath2_14_09"); //(interrupts and returns to hero) Uh, yeah, so you were talking about an island...?
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath2_15_10"); //Yes, a few days' sea voyage away. We have to put a creature there that was involved in the machinations.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath2_14_11"); //So it doesn't become quite harmless....
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath2_15_12"); //But it's important. So will you be my captain?
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath2_14_13"); //Yes, of course, of course... Hmm, but certain conditions have to be fulfilled.
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath2_15_14"); //Yeah, what do you think?
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath2_14_15"); //If the journey is delayed, there should be problems, it would not be bad if someone who knows a craft is on board.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath2_14_16"); //Of course, a boat builder would be the best... or whatever else you find in people who understand wood and iron.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath2_14_17"); //And then, when I think back to one of my last journeys, I would wish for an alchemist with knowledge of plants and potions.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath2_14_18"); //When the scurvy breaks loose, such a gold value....
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath2_14_19"); //Yeah, that's all I can think of right now.
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath2_15_20"); //Well, then I'll go and look...
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath2_14_21"); //And I'll take a look at the proud ship.

	Mod_Kapitan = 1;
	Mod_JackDabei = 1;

	Mod_CrewCount += 1;

	Log_CreateTopic	(TOPIC_MOD_HQ_JACK, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_HQ_JACK, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_HQ_JACK, "Jack would be on fire to become my captain. But he still has two conditions before he can start. I'm supposed to find someone who is technically experienced - a boat builder would be the best, but what else does it. And then he wants an alchemist on board who also understands botany well.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Jack_Irdorath3 (C_INFO)
{
	npc		= Mod_586_NONE_Jack_NW;
	nr		= 1;
	condition	= Info_Mod_Jack_Irdorath3_Condition;
	information	= Info_Mod_Jack_Irdorath3_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found a craftsman.";
};

FUNC INT Info_Mod_Jack_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_Irdorath2))
	&& (Mod_JackHW == 1)
	&& (Mod_JackDabei == 1)
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jack_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath3_15_00"); //I found a craftsman.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath3_14_01"); //Very good, who is it?
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath3_15_02"); //The blacksmith Bennet.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath3_14_03"); //A blacksmith...?! Hmm, as I would have really preferred someone who also has an idea of wood...
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath3_15_04"); //Well...
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath3_14_05"); //Hmm... (short silence) but I don't want our trip to fail because of that.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath3_14_06"); //Okay, the blacksmith, then.

	Mod_JackHW = 2;

	B_LogEntry	(TOPIC_MOD_HQ_JACK, "Okay, Jack just let the blacksmith get away with it.");

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Jack_Irdorath4 (C_INFO)
{
	npc		= Mod_586_NONE_Jack_NW;
	nr		= 1;
	condition	= Info_Mod_Jack_Irdorath4_Condition;
	information	= Info_Mod_Jack_Irdorath4_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have found someone who understands herbs and potions very well.";
};

FUNC INT Info_Mod_Jack_Irdorath4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_Irdorath2))
	&& (Mod_JackAL == 1)
	&& (Mod_JackDabei == 1)
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jack_Irdorath4_Info()
{
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath4_15_00"); //I have found someone who understands herbs and potions very well.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath4_14_01"); //Yeah, who is it? Alchemist Constantino?
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath4_15_02"); //Uh, no.... it's Sagitta, the herbal... Uh, the herbal alchemist.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath4_14_03"); //What, the herb witch who's supposed to hang around the big farm somewhere in the woods?
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath4_14_04"); //Are you sure you're not making a mistake?
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath4_14_05"); //Maybe she'll bring bad luck or it's the intention to bewitch innocent sailors for a change?
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath4_15_06"); //Ahem, innocent sailors...
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath4_15_07"); //(To Jack again) No, I really believe that we have the best and most reliable expert on board with her when it comes to plants and herbs, as you have requested.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath4_14_08"); //Well, we'll see... I'll keep my talisman on for the entire voyage.
	AI_Output(self, hero, "Info_Mod_Jack_Irdorath4_14_09"); //Not that I wake up one morning as a deep-sea bass...

	Mod_JackAL = 2;

	B_LogEntry	(TOPIC_MOD_HQ_JACK, "With a little force I was able to' convince' Jack of Sagitta.");

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Jack_Irdorath5 (C_INFO)
{
	npc		= Mod_586_NONE_Jack_NW;
	nr		= 1;
	condition	= Info_Mod_Jack_Irdorath5_Condition;
	information	= Info_Mod_Jack_Irdorath5_Info;
	permanent	= 1;
	important	= 0;
	description	= "Well, now the necessary preparations have been made.";
};

FUNC INT Info_Mod_Jack_Irdorath5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_Irdorath2))
	&& (Mod_JackHW == 2)
	&& (Mod_JackDabei == 1)
	&& (Mod_JackAL == 2)
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jack_Irdorath5_Info()
{
	AI_Output(hero, self, "Info_Mod_Jack_Irdorath5_15_00"); //Well, now the necessary preparations have been made.

	if (Mod_CrewCount >= 5)
	&& (Mod_CrewCount <= 15)
	&& ((Mod_MyxirDabei > 0)
	|| (Mod_NamibDabei > 0)
	|| (Mod_MiltenDabei > 0)
	|| (Mod_VatrasDabei > 0))
	{
		AI_Output(self, hero, "Info_Mod_Jack_Irdorath5_14_01"); //Yeah, that's right. Just let me know. When to start.

		Mod_JackHW = 3;
		Mod_JackAL = 3;

		B_SetTopicStatus	(TOPIC_MOD_HQ_JACK, LOG_SUCCESS);
	}
	else if ((Mod_MyxirDabei == 0)
	&& (Mod_NamibDabei == 0)
	&& (Mod_MiltenDabei == 0)
	&& (Mod_VatrasDabei == 0))
	{
		AI_Output(self, hero, "Info_Mod_Jack_Irdorath5_14_02"); //Not quite... Since you are on a mission of the magicians, I would have liked to have at least one of them on board.
		AI_Output(self, hero, "Info_Mod_Jack_Irdorath5_14_03"); //Surely it wouldn't be bad to have an experienced one of this kind with you.
	}
	else if (Mod_CrewCount < 5)
	{
		AI_Output(self, hero, "Info_Mod_Jack_Irdorath5_14_04"); //Well, you're funny to me... When you talked about crew, I thought you already hired one.
		AI_Output(self, hero, "Info_Mod_Jack_Irdorath5_14_05"); //Without other people, it's hard for us to put out to sea.
		AI_Output(self, hero, "Info_Mod_Jack_Irdorath5_14_06"); //Apart from the blacksmith and the herb witch, I want at least three more people on board.
		AI_Output(self, hero, "Info_Mod_Jack_Irdorath5_14_07"); //Otherwise we can't run a ship.
	}
	else if (Mod_CedricDabei == 1)
	{
		AI_Output(self, hero, "Info_Mod_Jack_Irdorath5_14_08"); //Cedric's in, uh, trouble. Maybe you should check with him first.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Jack_Irdorath5_14_09"); //Yeah, tell me, do you want to take a whole company on the Esmeralda?!
		AI_Output(self, hero, "Info_Mod_Jack_Irdorath5_14_10"); //The ship may be big, but it's not infinite.
		AI_Output(self, hero, "Info_Mod_Jack_Irdorath5_14_11"); //You're gonna have to send some back home.
		AI_Output(self, hero, "Info_Mod_Jack_Irdorath5_14_12"); //There's not enough room on the ship for more than 15 people.
	};
};

INSTANCE Info_Mod_Jack_Irdorath6 (C_INFO)
{
	npc		= Mod_586_NONE_Jack_NW;
	nr		= 1;
	condition	= Info_Mod_Jack_Irdorath6_Condition;
	information	= Info_Mod_Jack_Irdorath6_Info;
	permanent	= 0;
	important	= 0;
	description	= "Let's go to the island.";
};

FUNC INT Info_Mod_Jack_Irdorath6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_Irdorath2))
	&& (Mod_JackHW == 3)
	&& (Mod_JackAL == 3)
	&& (Mod_JackDabei == 1)
	&& (Mod_CedricDabei == 0)
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jack_Irdorath6_Info()
{
	var int Mod_JackWomanizer;

	AI_Output(hero, self, "Info_Mod_Jack_Irdorath6_15_00"); //Let's go to the island.

	if (Mod_SagittaDabei == 1)
	{
		Mod_JackWomanizer += 1;
	};
	if (Mod_VelayaDabei == 1)
	{
		Mod_JackWomanizer += 1;
	};
	if (Mod_UrielaDabei == 1)
	{
		Mod_JackWomanizer += 1;
	};
	if (Mod_CassiaDabei == 1)
	{
		Mod_JackWomanizer += 1;
	};

	if (Mod_JackWomanizer >= 3)
	{
		AI_Output(self, hero, "Info_Mod_Jack_Irdorath6_14_01"); //Man, I've been a sailor for years, but so many women on board on a battle expedition... nobody will believe me when I tell you that.

		if (Mod_JackWomanizer == 3)
		{
			B_GivePlayerXP	(1000);
		}
		else
		{
			B_GivePlayerXP	(1500);
		};
	};

	AI_Output(self, hero, "Info_Mod_Jack_Irdorath6_14_02"); //Well, then... Pull anchor in, set sail. That I may relive this...

	Mod_JackHW = 4;

	B_GivePlayerXP	(1000);

	B_SetTopicStatus	(TOPIC_MOD_HQ_CREW, LOG_SUCCESS);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Jack_Masut (C_INFO)
{
	npc		= Mod_586_NONE_Jack_NW;
	nr		= 1;
	condition	= Info_Mod_Jack_Masut_Condition;
	information	= Info_Mod_Jack_Masut_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello. One here is too much.";
};

FUNC INT Info_Mod_Jack_Masut_Condition()
{
	if (Mod_ASS_Krieger == 1)
	&& (Mod_ASS_Jack == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jack_Masut_Info()
{
	AI_Output(hero, self, "Info_Mod_Jack_Masut_15_00"); //Hello. One here is too much.
	AI_Output(self, hero, "Info_Mod_Jack_Masut_14_01"); //Then go back out there. I didn't call you.
	AI_Output(hero, self, "Info_Mod_Jack_Masut_15_02"); //You misunderstand. You're too much.
	AI_Output(self, hero, "Info_Mod_Jack_Masut_14_03"); //This can't be happening. I've lived up here forever.
	AI_Output(hero, self, "Info_Mod_Jack_Masut_15_04"); //But this tower is needed. Without you.
	AI_Output(self, hero, "Info_Mod_Jack_Masut_14_05"); //Over my dead body.

	Info_ClearChoices	(Info_Mod_Jack_Masut);

	Info_AddChoice	(Info_Mod_Jack_Masut, "Just stay calm. You're actually a nice, old guy. Wouldn't want to kill you.", Info_Mod_Jack_Masut_B);
	Info_AddChoice	(Info_Mod_Jack_Masut, "You can have that. I'm supposed to kill you anyway.", Info_Mod_Jack_Masut_A);
};

FUNC VOID Info_Mod_Jack_Masut_B()
{
	AI_Output(hero, self, "Info_Mod_Jack_Masut_B_15_00"); //Just stay calm. You're actually a nice, old guy. Wouldn't want to kill you.
	AI_Output(self, hero, "Info_Mod_Jack_Masut_B_14_01"); //I'm crying. Which would you prefer?
	AI_Output(hero, self, "Info_Mod_Jack_Masut_B_15_02"); //You'd clear the field and disappear.
	AI_Output(self, hero, "Info_Mod_Jack_Masut_B_14_03"); //Sounds reasonable to me. I'm not the youngest anymore....
	AI_Output(hero, self, "Info_Mod_Jack_Masut_B_15_04"); //So you're disappearing and going underground? But correctly. We have scouts in Khorinis.
	AI_Output(self, hero, "Info_Mod_Jack_Masut_B_14_05"); //I promise. I'm out of here.
	AI_Output(hero, self, "Info_Mod_Jack_Masut_B_15_06"); //Then give me your sword. I need proof of your death.
	AI_Output(self, hero, "Info_Mod_Jack_Masut_B_14_07"); //Here.

	B_GiveInvItems	(self, hero, ItMw_Degen_Jack, 1);

	AI_Output(hero, self, "Info_Mod_Jack_Masut_B_15_08"); //That's got to be the case. And leave your stuff here. Just take the essentials with you.
	AI_Output(self, hero, "Info_Mod_Jack_Masut_B_14_09"); //I see.

	B_GivePlayerXP	(1000);

	Mod_ASS_Jack = 1;

	B_LogEntry	(TOPIC_MOD_ASS_JACK, "Jack's going underground. As proof of his death, he gave me his sword. Let's go to Masut.");

	Info_ClearChoices	(Info_Mod_Jack_Masut);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ASSIS");
};

FUNC VOID Info_Mod_Jack_Masut_A()
{
	AI_Output(hero, self, "Info_Mod_Jack_Masut_A_15_00"); //You can have that. I'm supposed to kill you anyway.
	AI_Output(self, hero, "Info_Mod_Jack_Masut_A_14_01"); //Well, come on, big mouth.

	Mod_ASS_Jack = 2;

	Info_ClearChoices	(Info_Mod_Jack_Masut);

	self.flags = 0;

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Jack_Fanatiker (C_INFO)
{
	npc		= Mod_586_NONE_Jack_NW;
	nr		= 1;
	condition	= Info_Mod_Jack_Fanatiker_Condition;
	information	= Info_Mod_Jack_Fanatiker_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you doing here?";
};

FUNC INT Info_Mod_Jack_Fanatiker_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Auftrag))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andre_Erfahrung_Fanatiker))
	{
		return 1;
	};
};

FUnc VOID Info_Mod_Jack_Fanatiker_Info()
{
	AI_Output(hero, self, "Info_Mod_Jack_Fanatiker_15_00"); //What are you doing here?
	AI_Output(self, hero, "Info_Mod_Jack_Fanatiker_14_01"); //I escaped. Recently some weird guys have marched into my lighthouse.
	AI_Output(self, hero, "Info_Mod_Jack_Fanatiker_14_02"); //Told me about a sleeper.
	AI_Output(hero, self, "Info_Mod_Jack_Fanatiker_15_03"); //What else do you know?
	AI_Output(self, hero, "Info_Mod_Jack_Fanatiker_14_04"); //Some of them were then sent somewhere in the forest outside the city near Lobart.
	AI_Output(self, hero, "Info_Mod_Jack_Fanatiker_14_05"); //But then I'd rather get out of here.
	AI_Output(self, hero, "Info_Mod_Jack_Fanatiker_14_06"); //Better not go to the lighthouse.

	B_LogEntry	(TOPIC_MOD_MILIZ_SEKTENSPINNER, "Jack said the sleeper's trailers moved to khorinis. Some are at his lighthouse, a smaller group was sighted in the forest in front of Khorinis near Lobart. I'd rather not touch the lighthouse for the time being.");
};

INSTANCE Info_Mod_Jack_Pickpocket (C_INFO)
{
	npc		= Mod_586_NONE_Jack_NW;
	nr		= 1;
	condition	= Info_Mod_Jack_Pickpocket_Condition;
	information	= Info_Mod_Jack_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Jack_Pickpocket_Condition()
{
	C_Beklauen	(112, ItMi_Sextant, 1);
};

FUNC VOID Info_Mod_Jack_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Jack_Pickpocket);

	Info_AddChoice	(Info_Mod_Jack_Pickpocket, DIALOG_BACK, Info_Mod_Jack_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Jack_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Jack_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Jack_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Jack_Pickpocket);
};

FUNC VOID Info_Mod_Jack_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Jack_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Jack_Pickpocket);

		Info_AddChoice	(Info_Mod_Jack_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Jack_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Jack_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Jack_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Jack_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Jack_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Jack_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Jack_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Jack_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Jack_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Jack_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Jack_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Jack_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Jack_EXIT (C_INFO)
{
	npc		= Mod_586_NONE_Jack_NW;
	nr		= 1;
	condition	= Info_Mod_Jack_EXIT_Condition;
	information	= Info_Mod_Jack_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Jack_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jack_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
