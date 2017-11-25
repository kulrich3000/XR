INSTANCE Info_Mod_Gravo_Hi (C_INFO)
{
	npc		= Mod_1430_BUD_Gravo_MT;
	nr		= 1;
	condition	= Info_Mod_Gravo_Hi_Condition;
	information	= Info_Mod_Gravo_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "And you're looking for...";
};

FUNC INT Info_Mod_Gravo_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gravo_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Gravo_Hi_15_00"); //And you're looking for...
	AI_Output(self, hero, "Info_Mod_Gravo_Hi_25_01"); //I can't tell you that. That means I'd love to, but then you'd probably try to drive me out of here.
	AI_Output(self, hero, "Info_Mod_Gravo_Hi_25_02"); //Was that already too much to tell?
	AI_Output(hero, self, "Info_Mod_Gravo_Hi_15_03"); //Not at all.

	Info_ClearChoices	(Info_Mod_Gravo_Hi);

	Info_AddChoice	(Info_Mod_Gravo_Hi, "Good luck with that.", Info_Mod_Gravo_Hi_D);
	Info_AddChoice	(Info_Mod_Gravo_Hi, "You can't put up with not digging anymore?", Info_Mod_Gravo_Hi_C);
	Info_AddChoice	(Info_Mod_Gravo_Hi, "You' re-- on a treasure hunt?", Info_Mod_Gravo_Hi_B);
	Info_AddChoice	(Info_Mod_Gravo_Hi, "You must have lost something.", Info_Mod_Gravo_Hi_A);
};

FUNC VOID Info_Mod_Gravo_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Gravo_Hi_D_15_00"); //Good luck with that.

	Info_ClearChoices	(Info_Mod_Gravo_Hi);
};

FUNC VOID Info_Mod_Gravo_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Gravo_Hi_C_15_00"); //You can't put up with not digging anymore?
	AI_Output(self, hero, "Info_Mod_Gravo_Hi_C_25_01"); //(crazy) Most of all I'd like to smash the bulb with the pickaxe only to some guys.
	AI_Output(self, hero, "Info_Mod_Gravo_Hi_C_25_02"); //Ah... You don't say that, do you?
};

FUNC VOID Info_Mod_Gravo_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Gravo_Hi_B_15_00"); //You' re-- on a treasure hunt?
	AI_Output(self, hero, "Info_Mod_Gravo_Hi_B_25_01"); //Shh! Did Kyle tell you about this, too?
	AI_Output(hero, self, "Info_Mod_Gravo_Hi_B_15_02"); //Sure.
	AI_Output(self, hero, "Info_Mod_Gravo_Hi_B_25_03"); //He promised me it would be our secret.
	AI_Output(self, hero, "Info_Mod_Gravo_Hi_B_25_04"); //Well, if you know about it, you're after Garaz and Pacho's treasure now.
	AI_Output(hero, self, "Info_Mod_Gravo_Hi_B_15_05"); //Um... yes.
	AI_Output(self, hero, "Info_Mod_Gravo_Hi_B_25_06"); //We'd be like competitors.
	AI_Output(self, hero, "Info_Mod_Gravo_Hi_B_25_07"); //Hmm... shouldn't I kill you right now?
	AI_Output(self, hero, "Info_Mod_Gravo_Hi_B_25_08"); //No, wait, always talk first, they said. You don't want me to forget my good education.

	Info_ClearChoices	(Info_Mod_Gravo_Hi);

	Mod_Gravo_Schatz = 1;

	Log_CreateTopic	(TOPIC_MOD_GRAVO_SCHATZ, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_GRAVO_SCHATZ, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_GRAVO_SCHATZ, "The crazy Gravo hacks constantly in the old camp at a place next to the pond to raise the treasure of two ex-buddlers. Kyle's supposed to have put him up to it. Since Gravo doesn't make room on her own, I'll have to find another way to get him out of there.");
};

FUNC VOID Info_Mod_Gravo_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Gravo_Hi_A_15_00"); //You must have lost something.
	AI_Output(self, hero, "Info_Mod_Gravo_Hi_A_25_01"); //Yes! Exactly! I feel that all the time! I must have lost something.
	AI_Output(self, hero, "Info_Mod_Gravo_Hi_A_25_02"); //I just can't figure out what it was...
};

INSTANCE Info_Mod_Gravo_WasFuerSchatz (C_INFO)
{
	npc		= Mod_1430_BUD_Gravo_MT;
	nr		= 1;
	condition	= Info_Mod_Gravo_WasFuerSchatz_Condition;
	information	= Info_Mod_Gravo_WasFuerSchatz_Info;
	permanent	= 0;
	important	= 0;
	description	= "What was that treasure again?";
};

FUNC INT Info_Mod_Gravo_WasFuerSchatz_Condition()
{
	if (Mod_Gravo_Schatz == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gravo_WasFuerSchatz_Info()
{
	AI_Output(hero, self, "Info_Mod_Gravo_WasFuerSchatz_15_00"); //What was that treasure again?
	AI_Output(self, hero, "Info_Mod_Gravo_WasFuerSchatz_25_01"); //So Kyle didn't tell you that, did she?
	AI_Output(self, hero, "Info_Mod_Gravo_WasFuerSchatz_25_02"); //That Garaz and Pacho are said to have buried all their wealth here before they turned their backs on the Minental to found a band?
	AI_Output(self, hero, "Info_Mod_Gravo_WasFuerSchatz_25_03"); //Then I'm certainly not gonna tell you!
	AI_Output(hero, self, "Info_Mod_Gravo_WasFuerSchatz_15_04"); //A band?
	AI_Output(self, hero, "Info_Mod_Gravo_WasFuerSchatz_25_05"); //That's always been her big dream, they said.
	AI_Output(self, hero, "Info_Mod_Gravo_WasFuerSchatz_25_06"); //They already had a stage name, a combination of their names. Gazpacho or something.
	AI_Output(self, hero, "Info_Mod_Gravo_WasFuerSchatz_25_07"); //When Snaf heard that, he couldn't get himself in. Don't ask me why.
};

INSTANCE Info_Mod_Gravo_IchHacken (C_INFO)
{
	npc		= Mod_1430_BUD_Gravo_MT;
	nr		= 1;
	condition	= Info_Mod_Gravo_IchHacken_Condition;
	information	= Info_Mod_Gravo_IchHacken_Info;
	permanent	= 0;
	important	= 0;
	description	= "Will you let me chop for a second?";
};

FUNC INT Info_Mod_Gravo_IchHacken_Condition()
{
	if (Mod_Gravo_Schatz == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gravo_IchHacken_Info()
{
	AI_Output(hero, self, "Info_Mod_Gravo_IchHacken_15_00"); //Will you let me chop for a second?
	AI_Output(self, hero, "Info_Mod_Gravo_IchHacken_25_01"); //Nothing there! This is my territory.
	AI_Output(self, hero, "Info_Mod_Gravo_IchHacken_25_02"); //As soon as I have lifted the treasure and am over all the mountains and let me dribble rum in my mouth from a southern beauty, you can try it again!
};

INSTANCE Info_Mod_Gravo_Schatz (C_INFO)
{
	npc		= Mod_1430_BUD_Gravo_MT;
	nr		= 1;
	condition	= Info_Mod_Gravo_Schatz_Condition;
	information	= Info_Mod_Gravo_Schatz_Info;
	permanent	= 0;
	important	= 0;
	description	= "There's no treasure.";
};

FUNC INT Info_Mod_Gravo_Schatz_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kyle_SchatzImSchlammsee))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gravo_Schatz_Info()
{
	AI_Output(hero, self, "Info_Mod_Gravo_Schatz_15_00"); //There's no treasure.
	AI_Output(self, hero, "Info_Mod_Gravo_Schatz_25_01"); //Bad try. You can't get me out of here that easy.
	AI_Output(hero, self, "Info_Mod_Gravo_Schatz_15_02"); //There's really no treasure.
	AI_Output(hero, self, "Info_Mod_Gravo_Schatz_15_03"); //Kyle lied so you wouldn't walk around his cabin all the time.
	AI_Output(self, hero, "Info_Mod_Gravo_Schatz_25_04"); //(disappointed) Really? And I thought his piss pot in the door was just a coincidence.
	AI_Output(self, hero, "Info_Mod_Gravo_Schatz_25_05"); //(in Rage) I'd love to take his wet shit and give it to him...
	AI_Output(self, hero, "Info_Mod_Gravo_Schatz_25_06"); //(relaxed).... to the rubbish pit.
	AI_Output(self, hero, "Info_Mod_Gravo_Schatz_25_07"); //Anyway, I'll find my treasure somewhere else. There must be one somewhere.

	B_GivePlayerXP	(100);

	B_SetTopicStatus	(TOPIC_MOD_GRAVO_SCHATZ, LOG_SUCCESS);

	CurrentNQ += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Gravo_Lagermusik (C_INFO)
{
	npc		= Mod_1430_BUD_Gravo_MT;
	nr		= 1;
	condition	= Info_Mod_Gravo_Lagermusik_Condition;
	information	= Info_Mod_Gravo_Lagermusik_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gravo_Lagermusik_Condition()
{
	if (Mod_Gravo_Schatz == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gravo_Lagermusik_Info()
{
	AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik_25_00"); //Well, well, well, somebody didn't take advantage of my absence, did they?
	AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik_25_01"); //You thought you could just shake me off so easily?
	AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik_25_02"); //Kyle was just messing with you, ahahahaha.
	AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik_25_03"); //I was supposed to find you for that betrayal - hey, what did you find there?!
	AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik_25_04"); //Wait a minute - these are the old instruments of Garaz and Pacho! That they couldn't take away! So that's her treasure!

	AI_PlayAni	(self, "T_PLUNDER");

	AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik_25_05"); //I can finally start my own group! Give the boys a little music to heat them up.
	AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik_25_06"); //Um, you're gonna help me find members, aren't you? Because most of them don't talk to me.
	AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik_25_07"); //Maybe you could convince some of the Buddlers. They have nothing to do anyway.

	B_StartOtherRoutine	(self, "START");

	Info_ClearChoices	(Info_Mod_Gravo_Lagermusik);

	Info_AddChoice	(Info_Mod_Gravo_Lagermusik, "I'm sure you can handle it on your own.", Info_Mod_Gravo_Lagermusik_B);
	Info_AddChoice	(Info_Mod_Gravo_Lagermusik, "I can ask around.", Info_Mod_Gravo_Lagermusik_A);
};

FUNC VOID Info_Mod_Gravo_Lagermusik_B()
{
	AI_Output(hero, self, "Info_Mod_Gravo_Lagermusik_B_15_00"); //I'm sure you can handle it on your own.
	AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik_B_25_01"); //Yeah, sure, sure. I don't need your help.

	Info_ClearChoices	(Info_Mod_Gravo_Lagermusik);
};

FUNC VOID Info_Mod_Gravo_Lagermusik_A()
{
	AI_Output(hero, self, "Info_Mod_Gravo_Lagermusik_A_15_00"); //I can ask around.

	Info_ClearChoices	(Info_Mod_Gravo_Lagermusik);

	Mod_Gravo_Schatz = 3;

	Log_CreateTopic	(TOPIC_MOD_GRAVO_MUSIK, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_GRAVO_MUSIK, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_GRAVO_MUSIK, "There was the treasure trove of Garaz and Pacho - a few old musical instruments. Gravo immediately had the idea of creating his own camp group. I'm supposed to ask among the Buddhists whether anyone is interested in becoming a member of them.");
};

INSTANCE Info_Mod_Gravo_Lagermusik2 (C_INFO)
{
	npc		= Mod_1430_BUD_Gravo_MT;
	nr		= 1;
	condition	= Info_Mod_Gravo_Lagermusik2_Condition;
	information	= Info_Mod_Gravo_Lagermusik2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gravo_Lagermusik2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Graham_Lagermusik))
	&& (Npc_KnowsInfo(hero, Info_Mod_Mud_Lagermusik))
	&& (Npc_KnowsInfo(hero, Info_Mod_Guy_Lagermusik))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gravo_Lagermusik2_Info()
{
	AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik2_25_00"); //Sieh an, mit deiner Hilfe haben wir es wirklich geschafft!

	if (Npc_KnowsInfo(hero, Info_Mod_Seraphia_Lagermusik))
	{
		AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik2_25_01"); //Wir haben schon unsere Aufgaben besprochen, Graham wird die Gitarre spielen, Mud die Trommel, Guy die Rassel, Seraphia tanzen, und ich werde singen.

		B_GivePlayerXP	(100);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik2_25_02"); //Wir haben schon unsere Aufgaben besprochen, Graham wird die Gitarre spielen, Mud die Trommel,  Guy die Rassel, und ich werde singen.

		B_GivePlayerXP	(50);
	};

	AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik2_25_03"); // Jetzt brauchen wir nur noch einen guten Namen. Uns fällt da nichts ein...

	Info_ClearChoices	(Info_Mod_Gravo_Lagermusik2);

	Info_AddChoice	(Info_Mod_Gravo_Lagermusik2, "I'd like' Incredibly Rich Potato Soup'.", Info_Mod_Gravo_Lagermusik2_C);
	Info_AddChoice	(Info_Mod_Gravo_Lagermusik2, "What do you think of 'The Hellfungi'?", Info_Mod_Gravo_Lagermusik2_B);
	Info_AddChoice	(Info_Mod_Gravo_Lagermusik2, "How about The Three G's?", Info_Mod_Gravo_Lagermusik2_A);
};

FUNC VOID Info_Mod_Gravo_Lagermusik2_D()
{
	AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik2_D_25_00"); //I don't care about him. The name doesn't matter anyway.
	AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik2_D_25_01"); //We rehearse one day now and then perform on stage for the first time tomorrow evening at 7 pm.
	AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik2_D_25_02"); //Until then I have to come up with a lyrics...

	Info_ClearChoices	(Info_Mod_Gravo_Lagermusik2);

	CurrentNQ += 1;

	B_SetTopicStatus	(TOPIC_MOD_GRAVO_MUSIK, LOG_SUCCESS);

	Mod_Gravo_Schatz = 4;

	Mod_Gravo_Auftritt_Tag = Wld_GetDay();
};

FUNC VOID Info_Mod_Gravo_Lagermusik2_C()
{
	AI_Output(hero, self, "Info_Mod_Gravo_Lagermusik2_C_15_00"); //Mir würde "Incredibly rich potato soup" gut gefallen.

	Info_Mod_Gravo_Lagermusik2_D();
};

FUNC VOID Info_Mod_Gravo_Lagermusik2_B()
{
	AI_Output(hero, self, "Info_Mod_Gravo_Lagermusik2_B_15_00"); //Was haltet ihr von "The Hell Mushrooms"?

	Info_Mod_Gravo_Lagermusik2_D();
};

FUNC VOID Info_Mod_Gravo_Lagermusik2_A()
{
	AI_Output(hero, self, "Info_Mod_Gravo_Lagermusik2_A_15_00"); //Wie wär's mit "The Three G' s"?

	Info_Mod_Gravo_Lagermusik2_D();
};

INSTANCE Info_Mod_Gravo_KGBuddler (C_INFO)
{
	npc		= Mod_1430_BUD_Gravo_MT;
	nr		= 1;
	condition	= Info_Mod_Gravo_KGBuddler_Condition;
	information	= Info_Mod_Gravo_KGBuddler_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you want to work as a Buddler?";
};

FUNC INT Info_Mod_Gravo_KGBuddler_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melcador_Buddler2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Costa_Buddler))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gravo_KGBuddler_Info()
{
	AI_Output(hero, self, "Info_Mod_Gravo_KGBuddler_15_00"); //Do you want to work as a Buddler?
	AI_Output(self, hero, "Info_Mod_Gravo_KGBuddler_25_01"); //I have already avoided it when the barrier was still there, I will certainly not start now....
};

INSTANCE Info_Mod_Gravo_Pickpocket (C_INFO)
{
	npc		= Mod_1430_BUD_Gravo_MT;
	nr		= 1;
	condition	= Info_Mod_Gravo_Pickpocket_Condition;
	information	= Info_Mod_Gravo_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Gravo_Pickpocket_Condition()
{
	C_Beklauen	(51, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Gravo_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Gravo_Pickpocket);

	Info_AddChoice	(Info_Mod_Gravo_Pickpocket, DIALOG_BACK, Info_Mod_Gravo_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Gravo_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Gravo_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Gravo_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Gravo_Pickpocket);
};

FUNC VOID Info_Mod_Gravo_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Gravo_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Gravo_Pickpocket);

		Info_AddChoice	(Info_Mod_Gravo_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Gravo_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Gravo_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Gravo_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Gravo_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Gravo_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Gravo_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Gravo_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Gravo_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Gravo_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Gravo_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Gravo_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Gravo_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Gravo_EXIT (C_INFO)
{
	npc		= Mod_1430_BUD_Gravo_MT;
	nr		= 1;
	condition	= Info_Mod_Gravo_EXIT_Condition;
	information	= Info_Mod_Gravo_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gravo_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gravo_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
