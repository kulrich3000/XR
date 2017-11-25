INSTANCE Info_Mod_Norek_Hi (C_INFO)
{
	npc		= Mod_7148_ASS_Norek_NW;
	nr		= 1;
	condition	= Info_Mod_Norek_Hi_Condition;
	information	= Info_Mod_Norek_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have the cup.";
};

FUNC INT Info_Mod_Norek_Hi_Condition()
{
	if (Npc_HasItems(hero, ItMi_Bloodcup_Richter) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Norek_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Norek_Hi_15_00"); //I have the cup.
	AI_Output(self, hero, "Info_Mod_Norek_Hi_13_01"); //Give it to Na' im.
};

INSTANCE Info_Mod_Norek_Blutkelch (C_INFO)
{
	npc		= Mod_7148_ASS_Norek_NW;
	nr		= 1;
	condition	= Info_Mod_Norek_Blutkelch_Condition;
	information	= Info_Mod_Norek_Blutkelch_Info;
	permanent	= 0;
	important	= 0;
	description	= "When I get your part of this strange message, I want to try to decipher it.";
};

FUNC INT Info_Mod_Norek_Blutkelch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kais_Blutkelch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Norek_Blutkelch_Info()
{
	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch_15_00"); //When I get your part of this strange message, I want to try to decipher it.
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch_13_01"); //No one's ever done that before. Give me a report if you find anything.

	B_GiveInvItems	(self, hero, ItWr_BlutkelchZettel3, 1);

	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch_15_02"); //I'm doing it. Where do you actually get these leaves from?
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch_13_03"); //Amir brought it to us. Probably from the city.
	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch_15_04"); //And how did she get Amir?
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch_13_05"); //He couldn't really say that. He arrived badly injured, handed over the leaves to Shakir and died shortly afterwards.
	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch_15_06"); //Hmm. Maybe alcohol poisoning. He always looms around the temple square in front of the tavern. It doesn't matter, I guess.

	if (Npc_HasItems(hero, ItWr_BlutkelchZettel1) == 1)
	&& (Npc_HasItems(hero, ItWr_BlutkelchZettel2) == 1)
	&& (Npc_HasItems(hero, ItWr_BlutkelchZettel3) == 1)
	{
		Log_CreateTopic	(TOPIC_MOD_ASS_LASTBLUTKELCH, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_ASS_LASTBLUTKELCH, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_ASS_LASTBLUTKELCH, "Received a piece of ancient parchment from Kais, Mahamad and Norek to decipher the message. Amir took them to the camp. Let's see....");
	};
};

INSTANCE Info_Mod_Norek_Blutkelch2 (C_INFO)
{
	npc		= Mod_7148_ASS_Norek_NW;
	nr		= 1;
	condition	= Info_Mod_Norek_Blutkelch2_Condition;
	information	= Info_Mod_Norek_Blutkelch2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Norek_Blutkelch2_Condition()
{
	if (Npc_HasItems(hero, ItMi_Bloodcup_Canyon) == 1)
	&& (Mod_ASS_Blutkelch3 == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Norek_Blutkelch2_Info()
{
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch2_13_00"); //Here you are at last. I've been waiting for you.
	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch2_15_01"); //Sorry, it wasn't easy to find and get the cup.
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch2_13_02"); //You already have the cup?
	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch2_15_03"); //Of course it is. Here. Straight out of his sealed stash.

	B_GiveInvItems	(hero, self, ItMi_Bloodcup_Canyon, 1);

	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch2_13_04"); //(impressed) Son of a gun! Some of us have already failed to find the cups. And you bring us the third one. (Loud) Respect, magician!
	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch2_15_05"); //Magician?
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch2_13_06"); //Certainly. I appoint you as an Assassin Mage for your performance and help to our fellowship. Congratulations.
	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch2_15_07"); //I feel honoured, but I only did what anyone else would have done.
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch2_13_08"); //By no means! You probably set the course for the future of all of us.
	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch2_15_09"); //I absolutely don't understand that now.
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch2_13_10"); //So listen: We are already several moons on this island. You know our past?
	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch2_15_11"); //Yeah. Zahit told me about it.
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch2_13_12"); //Very well. There are increasing voices in the camp that it was not a good idea to come to this island. We're just too cramped here, with little room for development.
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch2_13_13"); //Many people miss the sun and the vastness of our southern homeland. In short; They want to go back. Most magicians and many of Mustafa's people.
	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch2_15_14"); //Which is not easy.
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch2_13_15"); //Exactly. The magic that brought us here has remained on the mainland.
	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch2_15_16"); //The Paladins have a big ship...
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch2_13_17"); //Joker! They'll massacre us when they see us. No, no, no.
	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch2_15_18"); //And what about the pirates? They also own a three-master.
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch2_13_19"); //That would be more like it. You know the pirates?
	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch2_15_20"); //Sure. I've already spoken to the people.
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch2_13_21"); //Hmm. I'll talk to the councils about it. Oh, yeah. Our poisoner wants something from you.
	AI_Output(hero, self, "Info_Mod_Norek_Blutkelch2_15_22"); //Kamal?
	AI_Output(self, hero, "Info_Mod_Norek_Blutkelch2_13_23"); //Yeah. Come back to me afterwards.

	B_GivePlayerXP	(1000);

	B_SetTopicStatus	(TOPIC_MOD_ASS_LASTBLUTKELCH, LOG_SUCCESS);

	Log_CreateTopic	(TOPIC_MOD_ASS_HEIMWEH, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_HEIMWEH, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_HEIMWEH, "Norek told me that large parts of the Assassins are dissatisfied with the given circumstances and circumstances. They would love to return to their homeland.");
};

INSTANCE Info_Mod_Norek_Heimweh (C_INFO)
{
	npc		= Mod_7148_ASS_Norek_NW;
	nr		= 1;
	condition	= Info_Mod_Norek_Heimweh_Condition;
	information	= Info_Mod_Norek_Heimweh_Info;
	permanent	= 0;
	important	= 0;
	description	= "The Council has consulted?";
};

FUNC INT Info_Mod_Norek_Heimweh_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kamal_Heimweh))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Norek_Heimweh_Info()
{
	AI_Output(hero, self, "Info_Mod_Norek_Heimweh_15_00"); //The Council has consulted?
	AI_Output(self, hero, "Info_Mod_Norek_Heimweh_13_01"); //And found that a crossing with the pirates could only be an emergency solution.
	AI_Output(hero, self, "Info_Mod_Norek_Heimweh_15_02"); //So that settles it?
	AI_Output(self, hero, "Info_Mod_Norek_Heimweh_13_03"); //No. It wouldn't hurt if you talked to the captain. For all cases...
	AI_Output(hero, self, "Info_Mod_Norek_Heimweh_15_04"); //I'll be on my way, then.
	AI_Output(self, hero, "Info_Mod_Norek_Heimweh_13_05"); //Do that. You can also mention that the price for the crossing is no problem.
	AI_Output(hero, self, "Info_Mod_Norek_Heimweh_15_06"); //The captain will be happy to hear that. See you around.
	AI_Output(self, hero, "Info_Mod_Norek_Heimweh_13_07"); //Goodbye. Goodbye.

	Log_CreateTopic	(TOPIC_MOD_ASS_TODESANGST, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_TODESANGST, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_TODESANGST, "I'm supposed to check with the pirates to see if they're ready for a passage on the mainland.");
};

INSTANCE Info_Mod_Norek_Todesangst (C_INFO)
{
	npc		= Mod_7148_ASS_Norek_NW;
	nr		= 1;
	condition	= Info_Mod_Norek_Todesangst_Condition;
	information	= Info_Mod_Norek_Todesangst_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've been to the pirates, and I've got some bad news.";
};

FUNC INT Info_Mod_Norek_Todesangst_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_Todesangst))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Norek_Todesangst_Info()
{
	AI_Output(hero, self, "Info_Mod_Norek_Todesangst_15_00"); //I've been to the pirates, and I've got some bad news.
	AI_Output(self, hero, "Info_Mod_Norek_Todesangst_13_01"); //Reports.
	AI_Output(hero, self, "Info_Mod_Norek_Todesangst_15_02"); //Greg, captain of the pirates, has gone mad. He's not leaking for all the gold on the island.
	AI_Output(self, hero, "Info_Mod_Norek_Todesangst_13_03"); //Why is that?
	AI_Output(hero, self, "Info_Mod_Norek_Todesangst_15_04"); //He fears for his life. A charlatan told him he was about to die.
	AI_Output(hero, self, "Info_Mod_Norek_Todesangst_15_05"); //Now he doesn't dare to leave his hut. For the time being, anyway.
	AI_Output(self, hero, "Info_Mod_Norek_Todesangst_13_06"); //Anyway, whatever. He would have been just an emergency solution anyway. Something else: Kamal says he saw a lump of green ore in your bag.
	AI_Output(hero, self, "Info_Mod_Norek_Todesangst_15_07"); //That's the truth. I needed that ore to get the calyx. He was standing in a chamber on a stone coffin. And the entrance was closed by a green barrier. I came in with the lumps.
	AI_Output(self, hero, "Info_Mod_Norek_Todesangst_13_08"); //Fantastic! Assassin gold. Green magic in concentrated form. Our magic! Do you have any more of that ore?
	AI_Output(hero, self, "Info_Mod_Norek_Todesangst_15_09"); //No. I needed the other one to unlock it. And the boulders disappeared along with the barrier.
	AI_Output(self, hero, "Info_Mod_Norek_Todesangst_13_10"); //I'm not surprised. Say, where did you get the ore from?
	AI_Output(hero, self, "Info_Mod_Norek_Todesangst_15_11"); //In Jharkendar there is a desert area with mines. There were green veins of ore in there.
	AI_Output(self, hero, "Info_Mod_Norek_Todesangst_13_12"); //Hmm. I see a solution to our problem. Gotta talk to the council and the magicians.
	AI_Output(self, hero, "Info_Mod_Norek_Todesangst_13_13"); //You could look around the area now, see if there are any more of these green veins.
	AI_Output(hero, self, "Info_Mod_Norek_Todesangst_15_14"); //I'm doing it. See you later.

	B_GivePlayerXP	(300);

	Log_CreateTopic	(TOPIC_MOD_ASS_ASSASSINENGOLD, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_ASSASSINENGOLD, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_ASSASSINENGOLD, "The Council seems to see an opportunity to return home with the green ore. They want me to investigate where there are more green veins of ore.");
};

INSTANCE Info_Mod_Norek_Assassinengold (C_INFO)
{
	npc		= Mod_7148_ASS_Norek_NW;
	nr		= 1;
	condition	= Info_Mod_Norek_Assassinengold_Condition;
	information	= Info_Mod_Norek_Assassinengold_Info;
	permanent	= 0;
	important	= 0;
	description	= "What a fuss about me. What's happening?";
};

FUNC INT Info_Mod_Norek_Assassinengold_Condition()
{
	if (Mod_ASS_Assassinengold == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Norek_Assassinengold_Info()
{
	AI_Output(hero, self, "Info_Mod_Norek_Assassinengold_15_00"); //What a fuss about me. What's happening?
	AI_Output(self, hero, "Info_Mod_Norek_Assassinengold_13_01"); //Later. Have you found any magic ore?
	AI_Output(hero, self, "Info_Mod_Norek_Assassinengold_15_02"); //Yeah. I went back to the desert in Jharkendar.
	AI_Output(self, hero, "Info_Mod_Norek_Assassinengold_13_03"); //And how much...?
	AI_Output(hero, self, "Info_Mod_Norek_Assassinengold_15_04"); //Thirty-three boulders I could chop again.
	AI_Output(self, hero, "Info_Mod_Norek_Assassinengold_13_05"); //33. A magic number. This looks good.
	AI_Output(hero, self, "Info_Mod_Norek_Assassinengold_15_06"); //And what happened here?
	AI_Output(self, hero, "Info_Mod_Norek_Assassinengold_13_07"); //Well, the council has deliberated and then asked the members who wants to go back home again.
	AI_Output(self, hero, "Info_Mod_Norek_Assassinengold_13_08"); //We magicians want everyone, Mustafa and his warriors the most.
	AI_Output(self, hero, "Info_Mod_Norek_Assassinengold_13_09"); //Of the crooks in front, only Shakir wants to accompany us.
	AI_Output(self, hero, "Info_Mod_Norek_Assassinengold_13_10"); //The other crooks will try to join the thieves in town.
	AI_Output(hero, self, "Info_Mod_Norek_Assassinengold_15_11"); //It's well planned. But if it doesn't work?
	AI_Output(self, hero, "Info_Mod_Norek_Assassinengold_13_12"); //I must consult with the Council. You wait here.

	B_GivePlayerXP	(750);

	B_SetTopicStatus	(TOPIC_MOD_ASS_ASSASSINENGOLD, LOG_SUCCESS);

	AI_GotoWP	(self, "WP_ASSASSINE_54");

	AI_GotoWP	(self, self.wp);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Norek_Assassinengold2 (C_INFO)
{
	npc		= Mod_7148_ASS_Norek_NW;
	nr		= 1;
	condition	= Info_Mod_Norek_Assassinengold2_Condition;
	information	= Info_Mod_Norek_Assassinengold2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Norek_Assassinengold2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Norek_Assassinengold))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Norek_Assassinengold2_Info()
{
	AI_Output(self, hero, "Info_Mod_Norek_Assassinengold2_13_00"); //We're agreed. 33 Ore is enough.
	AI_Output(self, hero, "Info_Mod_Norek_Assassinengold2_13_01"); //But what we still need is a somehow mystical vessel that bundles the magic and thus strengthens it.
	AI_Output(hero, self, "Info_Mod_Norek_Assassinengold2_15_02"); //With the calyx, there were only two stone shells...
	AI_Output(self, hero, "Info_Mod_Norek_Assassinengold2_13_03"); //However, we do not want to remove any barriers, but rather make a long journey. You've been around a lot. You ever run into anything like that?
	AI_Output(hero, self, "Info_Mod_Norek_Assassinengold2_15_04"); //Hmm. I once heard that fire magicians used to put up sacrificial bowls when the statues of the Inno were not yet there. Maybe....
	AI_Output(self, hero, "Info_Mod_Norek_Assassinengold2_13_05"); //That sounds good to me. Get us a bowl like this. Whatever it takes!

	Log_CreateTopic	(TOPIC_MOD_ASS_COMEBACK, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_COMEBACK, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_COMEBACK, "I'm supposed to get a sacrificial bowl for the ore. In the monastery of fire magicians I should find it....");
};

INSTANCE Info_Mod_Norek_Comeback (C_INFO)
{
	npc		= Mod_7148_ASS_Norek_NW;
	nr		= 1;
	condition	= Info_Mod_Norek_Comeback_Condition;
	information	= Info_Mod_Norek_Comeback_Info;
	permanent	= 0;
	important	= 0;
	description	= "Got a sacrificial bowl. It's by the city gate on the meadow.";
};

FUNC INT Info_Mod_Norek_Comeback_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorax_Comeback))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Norek_Comeback_Info()
{
	AI_Output(hero, self, "Info_Mod_Norek_Comeback_15_00"); //Got a sacrificial bowl. It's by the city gate on the meadow.
	AI_Output(hero, self, "Info_Mod_Norek_Comeback_15_01"); //You'd better get her out of there at night. But it takes two men to carry it.
	AI_Output(self, hero, "Info_Mod_Norek_Comeback_13_02"); //No problem. I can't wait to see. Now go to Na' im. He wants to see you.

	B_SetTopicStatus	(TOPIC_MOD_ASS_HEIMWEH, LOG_SUCCESS);
	B_SetTopicStatus	(TOPIC_MOD_ASS_COMEBACK, LOG_SUCCESS);
};

INSTANCE Info_Mod_Norek_Pickpocket (C_INFO)
{
	npc		= Mod_7148_ASS_Norek_NW;
	nr		= 1;
	condition	= Info_Mod_Norek_Pickpocket_Condition;
	information	= Info_Mod_Norek_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Norek_Pickpocket_Condition()
{
	C_Beklauen	(118, ItMi_Gold, 41);
};

FUNC VOID Info_Mod_Norek_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Norek_Pickpocket);

	Info_AddChoice	(Info_Mod_Norek_Pickpocket, DIALOG_BACK, Info_Mod_Norek_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Norek_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Norek_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Norek_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Norek_Pickpocket);
};

FUNC VOID Info_Mod_Norek_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Norek_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Norek_Pickpocket);

		Info_AddChoice	(Info_Mod_Norek_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Norek_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Norek_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Norek_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Norek_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Norek_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Norek_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Norek_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Norek_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Norek_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Norek_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Norek_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Norek_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Norek_EXIT (C_INFO)
{
	npc		= Mod_7148_ASS_Norek_NW;
	nr		= 1;
	condition	= Info_Mod_Norek_EXIT_Condition;
	information	= Info_Mod_Norek_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Norek_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Norek_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
