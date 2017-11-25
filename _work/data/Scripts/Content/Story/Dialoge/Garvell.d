INSTANCE Info_Mod_Garvell_Hi (C_INFO)
{
	npc		= Mod_577_NONE_Garvell_NW;
	nr		= 1;
	condition	= Info_Mod_Garvell_Hi_Condition;
	information	= Info_Mod_Garvell_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Garvell_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Garvell_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Garvell_Hi_04_01"); //I'm Garvell.
	AI_Output(hero, self, "Info_Mod_Garvell_Hi_15_02"); //And what are you doing here?
	AI_Output(self, hero, "Info_Mod_Garvell_Hi_04_03"); //I'll build a ship so I can get to the mainland as soon as the war with the orcs is over.
};

INSTANCE Info_Mod_Garvell_Irdorath (C_INFO)
{
	npc		= Mod_577_NONE_Garvell_NW;
	nr		= 1;
	condition	= Info_Mod_Garvell_Irdorath_Condition;
	information	= Info_Mod_Garvell_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "I see you know your trade.";
};

FUNC INT Info_Mod_Garvell_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_Irdorath2))
	&& (Mod_JackHW == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garvell_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Garvell_Irdorath_15_00"); //I see you know your trade.
	AI_Output(hero, self, "Info_Mod_Garvell_Irdorath_15_01"); //What do you think about taking a cruise on the Paladin's ship...?
	AI_Output(self, hero, "Info_Mod_Garvell_Irdorath_04_02"); //What?! Why would I do that?
	AI_Output(self, hero, "Info_Mod_Garvell_Irdorath_04_03"); //I have more than enough to do here on my own ship....

	Info_ClearChoices	(Info_Mod_Garvell_Irdorath);

	Info_AddChoice	(Info_Mod_Garvell_Irdorath, "I'm sure you could learn a lot from the Paladin's ship.", Info_Mod_Garvell_Irdorath_B);
	Info_AddChoice	(Info_Mod_Garvell_Irdorath, "Khorinis is in great danger and if we make the voyage to this island (... )", Info_Mod_Garvell_Irdorath_A);
};

FUNC VOID Info_Mod_Garvell_Irdorath_B()
{
	AI_Output(hero, self, "Info_Mod_Garvell_Irdorath_B_15_00"); //I'm sure you could learn a lot from the Paladin's ship.
	AI_Output(hero, self, "Info_Mod_Garvell_Irdorath_B_15_01"); //That would be an opportunity...
	AI_Output(self, hero, "Info_Mod_Garvell_Irdorath_B_04_02"); //What are you talking about? Do you think maybe I've never seen a ship from the inside before?
	AI_Output(self, hero, "Info_Mod_Garvell_Irdorath_B_04_03"); //With such an offer you might impress a boy.... so really...
	AI_Output(self, hero, "Info_Mod_Garvell_Irdorath_B_04_04"); //And now don't bother me no more at work.

	Info_ClearChoices	(Info_Mod_Garvell_Irdorath);

	B_LogEntry	(TOPIC_MOD_HQ_JACK, "Well, it's not going to work with boat builder Garvell.");
};

FUNC VOID Info_Mod_Garvell_Irdorath_A()
{
	AI_Output(hero, self, "Info_Mod_Garvell_Irdorath_A_15_00"); //Khorinis is in great danger, and if we go on the voyage to this island, we could avert the threat of disaster.
	AI_Output(self, hero, "Info_Mod_Garvell_Irdorath_A_04_01"); //What, threatening disaster?
	AI_Output(self, hero, "Info_Mod_Garvell_Irdorath_A_04_02"); //Then I should hurry even more with the building of my ship to get ready in time....

	Info_ClearChoices	(Info_Mod_Garvell_Irdorath);

	B_LogEntry	(TOPIC_MOD_HQ_JACK, "Well, it's not going to work with boat builder Garvell.");
};

INSTANCE Info_Mod_Garvell_Paddel (C_INFO)
{
	npc		= Mod_577_NONE_Garvell_NW;
	nr		= 1;
	condition	= Info_Mod_Garvell_Paddel_Condition;
	information	= Info_Mod_Garvell_Paddel_Info;
	permanent	= 0;
	important	= 0;
	description	= "You sell paddles?";
};

FUNC INT Info_Mod_Garvell_Paddel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garvell_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Farim_Paddel))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garvell_Paddel_Info()
{
	AI_Output(hero, self, "Info_Mod_Garvell_Paddel_15_00"); //You sell paddles?
	AI_Output(self, hero, "Info_Mod_Garvell_Paddel_04_01"); //True enough. Best quality. Cedarwood from the mainland. Extra large exclusive sheet. And especially easy to do so.
	AI_Output(hero, self, "Info_Mod_Garvell_Paddel_15_02"); //All right, all right. Give me two paddles.
	AI_Output(self, hero, "Info_Mod_Garvell_Paddel_04_03"); //Here. 200 gold apiece.

	B_GiveInvItems	(self, hero, ItMi_Paddel, 2);

	AI_Output(hero, self, "Info_Mod_Garvell_Paddel_15_04"); //What? I can make them out of gold plates. With silver chandelier as handle. Here, 100.

	B_GiveInvItems	(hero, self, ItMi_Gold, 100);

	AI_Output(self, hero, "Info_Mod_Garvell_Paddel_04_05"); //Are you out of your mind? This is first-class merchandise. But I don't want to argue. 300 for both of them.
	AI_Output(hero, self, "Info_Mod_Garvell_Paddel_15_06"); //Farim says he'll get it from you for 100 gold, too...
	AI_Output(self, hero, "Info_Mod_Garvell_Paddel_04_07"); //That was rejects, too. I'm sure they'll be over soon.
	AI_Output(hero, self, "Info_Mod_Garvell_Paddel_15_08"); //That is indeed true. Here's another 100 gold. That's all I got.

	B_GiveInvItems	(hero, self, ItMi_Gold, 100);

	AI_Output(hero, self, "Info_Mod_Garvell_Paddel_15_09"); //Otherwise you can spoon soup with those things.
	AI_Output(self, hero, "Info_Mod_Garvell_Paddel_04_10"); //You're ruining me. Here are the paddles. And don't come back.
	AI_Output(hero, self, "Info_Mod_Garvell_Paddel_15_11"); //Don't be afraid.

	B_LogEntry	(TOPIC_MOD_SKIP_PADDEL, "I have two paddles. Cost me 200 pieces of gold.");

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Garvell_Fenia (C_INFO)
{
	npc		= Mod_577_NONE_Garvell_NW;
	nr		= 1;
	condition	= Info_Mod_Garvell_Fenia_Condition;
	information	= Info_Mod_Garvell_Fenia_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Garvell_Fenia_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garvell_Hi))
	&& (hero.attribute[ATR_MANA_MAX] >= 200)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garvell_Fenia_Info()
{
	AI_Output(self, hero, "Info_Mod_Garvell_Fenia_04_00"); //Hey, you. You can handle magic, right?

	Info_ClearChoices	(Info_Mod_Garvell_Fenia);

	Info_AddChoice	(Info_Mod_Garvell_Fenia, "You've got the wrong idea.", Info_Mod_Garvell_Fenia_B);
	Info_AddChoice	(Info_Mod_Garvell_Fenia, "Of course you do.", Info_Mod_Garvell_Fenia_A);
};

FUNC VOID Info_Mod_Garvell_Fenia_B()
{
	AI_Output(hero, self, "Info_Mod_Garvell_Fenia_B_15_00"); //You've got the wrong idea.
	AI_Output(self, hero, "Info_Mod_Garvell_Fenia_B_04_01"); //All right, have a nice day.

	Info_ClearChoices	(Info_Mod_Garvell_Fenia);
};

FUNC VOID Info_Mod_Garvell_Fenia_A()
{
	AI_Output(hero, self, "Info_Mod_Garvell_Fenia_A_15_00"); //Of course you do.
	AI_Output(self, hero, "Info_Mod_Garvell_Fenia_A_04_01"); //In that case, I have a little request for you.
	AI_Output(self, hero, "Info_Mod_Garvell_Fenia_A_04_02"); //I've got this telekinesis part here.... acquired.
	AI_Output(self, hero, "Info_Mod_Garvell_Fenia_A_04_03"); //Could you take Fenia in an unobserved moment with her (hustelt) brassiere?
	AI_Output(self, hero, "Info_Mod_Garvell_Fenia_A_04_04"); //She won't notice anything either....

	Info_ClearChoices	(Info_Mod_Garvell_Fenia);

	Info_AddChoice	(Info_Mod_Garvell_Fenia, "Um... no.", Info_Mod_Garvell_Fenia_D);
	Info_AddChoice	(Info_Mod_Garvell_Fenia, "This is gonna be fun!", Info_Mod_Garvell_Fenia_C);
};

FUNC VOID Info_Mod_Garvell_Fenia_D()
{
	AI_Output(hero, self, "Info_Mod_Garvell_Fenia_D_15_00"); //Um... no.
	AI_Output(self, hero, "Info_Mod_Garvell_Fenia_D_04_01"); //Oh, what a shame. Then I'll have to find another victim.

	B_GivePlayerXP	(50);

	Info_ClearChoices	(Info_Mod_Garvell_Fenia);
};

FUNC VOID Info_Mod_Garvell_Fenia_C()
{
	AI_Output(hero, self, "Info_Mod_Garvell_Fenia_C_15_00"); //This is gonna be fun!
	AI_Output(self, hero, "Info_Mod_Garvell_Fenia_C_04_01"); //Here's your part of the story. Good luck!

	B_GiveInvItems	(self, hero, ItSc_Telekinese, 1);

	Log_CreateTopic	(TOPIC_MOD_GARVELL_FENIA, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_GARVELL_FENIA, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_GARVELL_FENIA, "Ich soll Fenia, der Händlerin, im Auftrag von Garvell den Büstenhalter mit Hilfe eines Telekinese-Spruches stehlen. Wie infantil!");

	Mod_Garvell_Fenia = 1;

	Info_ClearChoices	(Info_Mod_Garvell_Fenia);
};

INSTANCE Info_Mod_Garvell_Fenia2 (C_INFO)
{
	npc		= Mod_577_NONE_Garvell_NW;
	nr		= 1;
	condition	= Info_Mod_Garvell_Fenia2_Condition;
	information	= Info_Mod_Garvell_Fenia2_Info;
	permanent	= 0;
	important	= 0;
	description	= "So, what was that all about?!";
};

FUNC INT Info_Mod_Garvell_Fenia2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fenia_BH))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garvell_Fenia2_Info()
{
	AI_Output(hero, self, "Info_Mod_Garvell_Fenia2_15_00"); //So, what was that all about?!
	AI_Output(self, hero, "Info_Mod_Garvell_Fenia2_04_01"); //(laughs extensively) Wonderful, wonderful!
	AI_Output(hero, self, "Info_Mod_Garvell_Fenia2_15_02"); //So you just fucked with me?
	AI_Output(self, hero, "Info_Mod_Garvell_Fenia2_04_03"); //That's how it is. It's a blast, I tell you. (laughs)
	AI_Output(hero, self, "Info_Mod_Garvell_Fenia2_15_04"); //Well, I've got the part of speech. Let's see what you got.
	AI_Output(self, hero, "Info_Mod_Garvell_Fenia2_04_05"); //Wha...?

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Garvell_Fenia3 (C_INFO)
{
	npc		= Mod_577_NONE_Garvell_NW;
	nr		= 1;
	condition	= Info_Mod_Garvell_Fenia3_Condition;
	information	= Info_Mod_Garvell_Fenia3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Garvell_Fenia3_Condition()
{
	if (Mod_Garvell_Fenia == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garvell_Fenia3_Info()
{
	AI_Output(self, hero, "Info_Mod_Garvell_Fenia3_04_00"); //Give me back my gold!
	AI_Output(hero, self, "Info_Mod_Garvell_Fenia3_15_01"); //That's the payment for my workload. No offense, but I have to leave now.

	B_SetTopicStatus	(TOPIC_MOD_GARVELL_FENIA, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Garvell_Flugblaetter (C_INFO)
{
	npc		= Mod_577_NONE_Garvell_NW;
	nr		= 1;
	condition	= Info_Mod_Garvell_Flugblaetter_Condition;
	information	= Info_Mod_Garvell_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've got a flyer for you.";
};

FUNC INT Info_Mod_Garvell_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&&(!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Garvell_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garvell_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Garvell_Flugblaetter_04_01"); //Oh, thank you. Thank you. Let's see....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Garvell_Flugblaetter_04_02"); //Ah yes. Maybe I'll stop by Matteo's.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Garvell_Pickpocket (C_INFO)
{
	npc		= Mod_577_NONE_Garvell_NW;
	nr		= 1;
	condition	= Info_Mod_Garvell_Pickpocket_Condition;
	information	= Info_Mod_Garvell_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Garvell_Pickpocket_Condition()
{
	C_Beklauen	(38, ItMi_Gold, 17);
};

FUNC VOID Info_Mod_Garvell_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Garvell_Pickpocket);

	Info_AddChoice	(Info_Mod_Garvell_Pickpocket, DIALOG_BACK, Info_Mod_Garvell_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Garvell_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Garvell_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Garvell_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Garvell_Pickpocket);
};

FUNC VOID Info_Mod_Garvell_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Garvell_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Garvell_Pickpocket);

		Info_AddChoice	(Info_Mod_Garvell_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Garvell_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Garvell_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Garvell_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Garvell_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Garvell_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Garvell_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Garvell_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Garvell_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Garvell_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Garvell_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Garvell_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Garvell_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Garvell_EXIT (C_INFO)
{
	npc		= Mod_577_NONE_Garvell_NW;
	nr		= 1;
	condition	= Info_Mod_Garvell_EXIT_Condition;
	information	= Info_Mod_Garvell_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Garvell_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Garvell_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
