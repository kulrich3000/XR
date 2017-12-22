INSTANCE Info_Mod_Masut_Hi (C_INFO)
{
	npc		= Mod_7119_ASS_Masut_NW;
	nr		= 1;
	condition	= Info_Mod_Masut_Hi_Condition;
	information	= Info_Mod_Masut_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello! I've proved my worth with the crooks (... )";
};

FUNC INT Info_Mod_Masut_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Shakir_GaunerWerden2))
	&& (Assassinen_Dabei == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Masut_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Masut_Hi_15_00"); //Hello! I've proven myself to the crooks, and I'd like to be promoted to warrior now.
	AI_Output(self, hero, "Info_Mod_Masut_Hi_13_01"); //We've heard of you. You've done amazing things in a short time.
	AI_Output(self, hero, "Info_Mod_Masut_Hi_13_02"); //But even with us you still have to prove yourself.
	AI_Output(hero, self, "Info_Mod_Masut_Hi_15_03"); //What do you want me to do?
	AI_Output(self, hero, "Info_Mod_Masut_Hi_13_04"); //There's nothing on at the moment. Come back later. You must have other things to do.
	AI_Output(hero, self, "Info_Mod_Masut_Hi_15_05"); //Certainly. See you around.

	B_LogEntry	(TOPIC_MOD_ASS_VERTRAUEN, "Masut doesn't have anything for me right now. I'm supposed to come back later.");
	B_SetTopicStatus	(TOPIC_MOD_ASS_VERTRAUEN, LOG_SUCCESS);
};

INSTANCE Info_Mod_Masut_Later (C_INFO)
{
	npc		= Mod_7119_ASS_Masut_NW;
	nr		= 1;
	condition	= Info_Mod_Masut_Later_Condition;
	information	= Info_Mod_Masut_Later_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Masut_Later_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Masut_Hi))
	&& (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Masut_Later_Info()
{
	AI_Output(self, hero, "Info_Mod_Masut_Later_13_00"); //Hold it. Advanced only!
	AI_Output(hero, self, "Info_Mod_Masut_Later_15_01"); //I'm advanced. You sent me away the other day because you had nothing to do for me.
	AI_Output(self, hero, "Info_Mod_Masut_Later_13_02"); //Oh, yeah. Well, I've got something, but first I have to explain to you what's going on here.
	AI_Output(hero, self, "Info_Mod_Masut_Later_15_03"); //I'm listening.
	AI_Output(self, hero, "Info_Mod_Masut_Later_13_04"); //You must now decide which way you want to go.
	AI_Output(self, hero, "Info_Mod_Masut_Later_13_05"); //If you want to be a warrior, you've come to the right place.
	AI_Output(self, hero, "Info_Mod_Masut_Later_13_06"); //But if you want to become a magician, contact Aadel. You'll find him further back.

	Info_ClearChoices	(Info_Mod_Masut_Later);

	Info_AddChoice	(Info_Mod_Masut_Later, "I want to be a magician.", Info_Mod_Masut_Later_B);
	Info_AddChoice	(Info_Mod_Masut_Later, "I want to join the warriors.", Info_Mod_Masut_Later_A);
};

FUNC VOID Info_Mod_Masut_Later_B()
{
	AI_Output(hero, self, "Info_Mod_Masut_Later_B_15_00"); //I want to be a magician.
	AI_Output(self, hero, "Info_Mod_Masut_Later_B_13_01"); //Suit yourself. Go to Aadel, he'll commit you.

	Mod_ASS_Magier = 1;

	Log_CreateTopic	(TOPIC_MOD_ASS_MAGIER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MoD_ASS_MAGIER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_MAGIER, "If I want to become a magician, I must go to Aadel. He's further back in the cave.");

	Info_ClearChoices	(Info_Mod_Masut_Later);
};

FUNC VOID Info_Mod_Masut_Later_A()
{
	AI_Output(hero, self, "Info_Mod_Masut_Later_A_15_00"); //I want to join the warriors.
	AI_Output(self, hero, "Info_Mod_Masut_Later_A_13_01"); //That's what I like to hear, we always need good people. I hope you don't disappoint me...
	AI_Output(hero, self, "Info_Mod_Masut_Later_A_15_02"); //I'll do my best. What's happening?
	AI_Output(self, hero, "Info_Mod_Masut_Later_A_13_03"); //I'm sure you want to move on, and you need voices.
	AI_Output(hero, self, "Info_Mod_Masut_Later_A_15_04"); //That's why I'm asking what's on.
	AI_Output(self, hero, "Info_Mod_Masut_Later_A_13_05"); //That's what I want to tell you. Up in the lighthouse, this Jack lives.
	AI_Output(hero, self, "Info_Mod_Masut_Later_A_15_06"); //Yeah...?
	AI_Output(self, hero, "Info_Mod_Masut_Later_A_13_07"); //I want you to get rid of him. We want to occupy the tower so we can look out for the city.
	AI_Output(self, hero, "Info_Mod_Masut_Later_A_13_08"); //We don't get enough in here. And we only have Amir out. He doesn't see everything.
	AI_Output(hero, self, "Info_Mod_Masut_Later_A_15_09"); //That won't be a problem. I can handle his sword.
	AI_Output(self, hero, "Info_Mod_Masut_Later_A_13_10"); //Then hurry up.
	AI_Output(hero, self, "Info_Mod_Masut_Later_A_15_11"); //It's on its way.

	Mod_ASS_Krieger = 1;

	Log_CreateTopic	(TOPIC_MOD_ASS_KRIEGER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MoD_ASS_KRIEGER, LOG_RUNNING);

	Log_CreateTopic	(TOPIC_MOD_ASS_JACK, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MoD_ASS_JACK, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_JACK, "First, I'm supposed to kill Jack in the lighthouse. Hm... poor guy. It's actually quite harmless.");

	Info_ClearChoices	(Info_Mod_Masut_Later);
};

INSTANCE Info_Mod_Masut_Jack (C_INFO)
{
	npc		= Mod_7119_ASS_Masut_NW;
	nr		= 1;
	condition	= Info_Mod_Masut_Jack_Condition;
	information	= Info_Mod_Masut_Jack_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mission accomplished. This Jack is history.";
};

FUNC INT Info_Mod_Masut_Jack_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Masut_Later))
	&& (Mod_ASS_Jack > 0)
	&& (Npc_HasItems(hero, ItMw_Degen_Jack) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Masut_Jack_Info()
{
	AI_Output(hero, self, "Info_Mod_Masut_Jack_15_00"); //Mission accomplished. This Jack is history.
	AI_Output(self, hero, "Info_Mod_Masut_Jack_13_01"); //That was quick.
	AI_Output(hero, self, "Info_Mod_Masut_Jack_15_02"); //An old man. It wasn't difficult. Here, his sword as proof.

	B_GiveInvItems	(hero, self, ItMw_Degen_Jack, 1);

	AI_Output(hero, self, "Info_Mod_Masut_Jack_15_03"); //I threw him over the cliff myself.
	AI_Output(self, hero, "Info_Mod_Masut_Jack_13_04"); //Clean work. You can be useful.
	AI_Output(hero, self, "Info_Mod_Masut_Jack_15_05"); //That's what I mean. So I get your vote?
	AI_Output(self, hero, "Info_Mod_Masut_Jack_13_06"); //Of course it is. And Malik probably has something for you, too. He's always complaining.
	AI_Output(hero, self, "Info_Mod_Masut_Jack_15_07"); //Uh-huh. Where can I find him?
	AI_Output(self, hero, "Info_Mod_Masut_Jack_13_08"); //Further ahead. He stands around with the candidates.

	B_SetTopicStatus	(TOPIC_MoD_ASS_JACK, LOG_SUCCESS);

	B_LogEntry	(TOPIC_MOD_ASS_KRIEGER, "It seems like Malik could use some help. He is said to be at the forefront of the candidates.");
};

INSTANCE Info_Mod_Masut_GotoAzhar (C_INFO)
{
	npc		= Mod_7119_ASS_Masut_NW;
	nr		= 1;
	condition	= Info_Mod_Masut_GotoAzhar_Condition;
	information	= Info_Mod_Masut_GotoAzhar_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Masut_GotoAzhar_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Azhar_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Azhar_Later))
	&& (Mod_ASS_Krieger == 1)
	&& (Kapitel >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Masut_GotoAzhar_Info()
{
	AI_Output(self, hero, "Info_Mod_Masut_GotoAzhar_13_00"); //Where have you been? Azhar's waiting for you.
	AI_Output(hero, self, "Info_Mod_Masut_GotoAzhar_15_01"); //What do you want? That guy sent me away last time.
	AI_Output(self, hero, "Info_Mod_Masut_GotoAzhar_13_02"); //But now he needs you.
	AI_Output(hero, self, "Info_Mod_Masut_GotoAzhar_15_03"); //I'll have a look.
};

INSTANCE Info_Mod_Masut_Zeremoniendolch (C_INFO)
{
	npc		= Mod_7119_ASS_Masut_NW;
	nr		= 1;
	condition	= Info_Mod_Masut_Zeremoniendolch_Condition;
	information	= Info_Mod_Masut_Zeremoniendolch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Masut_Zeremoniendolch_Condition()
{
	if (Npc_HasItems(hero, ItMw_Avaquar) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Masut_Zeremoniendolch_Info()
{
	AI_Output(self, hero, "Info_Mod_Masut_Zeremoniendolch_13_00"); //Where are you hanging out again? Immediately to Mustafa!
	AI_Output(hero, self, "Info_Mod_Masut_Zeremoniendolch_15_01"); //Then don't stop me.
	AI_Output(self, hero, "Info_Mod_Masut_Zeremoniendolch_13_02"); //Don't get your mouth so wide open, candidate!
};

INSTANCE Info_Mod_Masut_Blutkelch (C_INFO)
{
	npc		= Mod_7119_ASS_Masut_NW;
	nr		= 1;
	condition	= Info_Mod_Masut_Blutkelch_Condition;
	information	= Info_Mod_Masut_Blutkelch_Info;
	permanent	= 0;
	important	= 0;
	description	= "So much for the candidate. Mustafa says you've noticed something.";
};

FUNC INT Info_Mod_Masut_Blutkelch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mustafa_Zeremoniendolch2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Masut_Blutkelch_Info()
{
	AI_Output(hero, self, "Info_Mod_Masut_Blutkelch_15_00"); //So much for the candidate. Mustafa says you've noticed something.
	AI_Output(self, hero, "Info_Mod_Masut_Blutkelch_13_01"); //How did you get to be a warrior so quickly?
	AI_Output(hero, self, "Info_Mod_Masut_Blutkelch_15_02"); //To the point. What do you know?
	AI_Output(self, hero, "Info_Mod_Masut_Blutkelch_13_03"); //There's been a lot of mages sneaking through here at night lately.
	AI_Output(hero, self, "Info_Mod_Masut_Blutkelch_15_04"); //Who do you mean, exactly?
	AI_Output(self, hero, "Info_Mod_Masut_Blutkelch_13_05"); //I can't say so. With our armor, if someone doesn't want to be recognized, that's easy.
	AI_Output(hero, self, "Info_Mod_Masut_Blutkelch_15_06"); //So you don't have a name?
	AI_Output(self, hero, "Info_Mod_Masut_Blutkelch_13_07"); //No, I'm afraid not.
	AI_Output(hero, self, "Info_Mod_Masut_Blutkelch_15_08"); //Hmm... Let's have a look. Maybe Shakir noticed something.

	B_LogEntry	(TOPIC_MOD_ASS_LASTBLUTKELCH, "Masut saw magicians sneaking around, but he doesn't know a name. I should ask Shakir.");
};

INSTANCE Info_Mod_Masut_Pickpocket (C_INFO)
{
	npc		= Mod_7119_ASS_Masut_NW;
	nr		= 1;
	condition	= Info_Mod_Masut_Pickpocket_Condition;
	information	= Info_Mod_Masut_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Masut_Pickpocket_Condition()
{
	C_Beklauen	(97, ItMi_Gold, 39);
};

FUNC VOID Info_Mod_Masut_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Masut_Pickpocket);

	Info_AddChoice	(Info_Mod_Masut_Pickpocket, DIALOG_BACK, Info_Mod_Masut_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Masut_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Masut_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Masut_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Masut_Pickpocket);
};

FUNC VOID Info_Mod_Masut_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Masut_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Masut_Pickpocket);

		Info_AddChoice	(Info_Mod_Masut_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Masut_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Masut_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Masut_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Masut_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Masut_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Masut_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Masut_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Masut_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Masut_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Masut_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Masut_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Masut_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Masut_EXIT (C_INFO)
{
	npc		= Mod_7119_ASS_Masut_NW;
	nr		= 1;
	condition	= Info_Mod_Masut_EXIT_Condition;
	information	= Info_Mod_Masut_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Masut_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Masut_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
