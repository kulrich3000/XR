INSTANCE Info_Mod_Azhar_Hi (C_INFO)
{
	npc		= Mod_7138_ASS_Azhar_NW;
	nr		= 1;
	condition	= Info_Mod_Azhar_Hi_Condition;
	information	= Info_Mod_Azhar_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello! Well, he sent me. You must have a problem.";
};

FUNC INT Info_Mod_Azhar_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Naim_Hi))
	&& (Mod_ASS_Krieger == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Azhar_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Azhar_Hi_15_00"); //Hello! Well, he sent me. You must have a problem.
	AI_Output(self, hero, "Info_Mod_Azhar_Hi_04_01"); //What they say. It's nothing. Not at the moment, anyway. Later, maybe.
	AI_Output(hero, self, "Info_Mod_Azhar_Hi_15_02"); //I see. See you around.
};

INSTANCE Info_Mod_Azhar_Later (C_INFO)
{
	npc		= Mod_7138_ASS_Azhar_NW;
	nr		= 1;
	condition	= Info_Mod_Azhar_Later_Condition;
	information	= Info_Mod_Azhar_Later_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Azhar_Later_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Azhar_Hi))
	&& (Mod_ASS_Krieger == 1)
	&& (Kapitel >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Azhar_Later_Info()
{
	AI_Output(self, hero, "Info_Mod_Azhar_Later_04_00"); //With Beliar! Where are you sneaking around?
	AI_Output(hero, self, "Info_Mod_Azhar_Later_15_01"); //There are other things you have to do. Where's the fire?
	AI_Output(self, hero, "Info_Mod_Azhar_Later_04_02"); //Doing something else? I expect a contender for warriorship to be fully prepared.
	AI_Output(self, hero, "Info_Mod_Azhar_Later_04_03"); //I wonder how you made it this far.
	AI_Output(hero, self, "Info_Mod_Azhar_Later_15_04"); //Full standby, of course. So, what's going on?
	AI_Output(self, hero, "Info_Mod_Azhar_Later_04_05"); //There is a rumor that one of the legendary ceremonial daggers of the ancients can be found on the island.
	AI_Output(hero, self, "Info_Mod_Azhar_Later_15_06"); //A ceremonial dagger? Never heard of it. What the...?
	AI_Output(self, hero, "Info_Mod_Azhar_Later_04_07"); //Shut up! Find that thing and bring it to me, or your career with us warriors will be over!
	AI_Output(hero, self, "Info_Mod_Azhar_Later_15_08"); //Don't get excited. At least I need to know where this rumor comes from.
	AI_Output(self, hero, "Info_Mod_Azhar_Later_04_09"); //Amir heard something like that in town. Now get out of here!

	Log_CreateTopic	(TOPIC_MOD_ASS_ZEREMONIENDOLCH, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_ZEREMONIENDOLCH, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_ZEREMONIENDOLCH, "What an uncomfortable man, that Azhar. I'm supposed to get him a ceremonial dagger, a weapon of the ancients, which is supposed to be found somewhere on Khorinis. Amir brought the rumor to the camp, maybe the details. Should be at the temple site....");
};

INSTANCE Info_Mod_Azhar_Blutkelch (C_INFO)
{
	npc		= Mod_7138_ASS_Azhar_NW;
	nr		= 1;
	condition	= Info_Mod_Azhar_Blutkelch_Condition;
	information	= Info_Mod_Azhar_Blutkelch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Beliar, brother!";
};

FUNC INT Info_Mod_Azhar_Blutkelch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Erol_Blutkelch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Azhar_Blutkelch_Info()
{
	AI_Output(hero, self, "Info_Mod_Azhar_Blutkelch_15_00"); //Beliar, brother!
	AI_Output(self, hero, "Info_Mod_Azhar_Blutkelch_04_01"); //Brother? I'm still your supervisor. Have you got the cup?
	AI_Output(hero, self, "Info_Mod_Azhar_Blutkelch_15_02"); //No. But has another assassin perhaps already procured the thing?
	AI_Output(self, hero, "Info_Mod_Azhar_Blutkelch_04_03"); //Not that I know of. Nobody gave it to me anyway.
	AI_Output(self, hero, "Info_Mod_Azhar_Blutkelch_04_04"); //Perhaps Mustafa already has the cup. He gave the order.
	AI_Output(hero, self, "Info_Mod_Azhar_Blutkelch_15_05"); //Which you passed on to me immediately.
	AI_Output(self, hero, "Info_Mod_Azhar_Blutkelch_04_06"); //Don't get rude, lad! You said you wanted my voice.
	AI_Output(self, hero, "Info_Mod_Azhar_Blutkelch_04_07"); //Of course, you won't get it when the chalice is already in storage.
	AI_Output(hero, self, "Info_Mod_Azhar_Blutkelch_15_08"); //But I've been walking all over the island for days.
	AI_Output(self, hero, "Info_Mod_Azhar_Blutkelch_04_09"); //Too bad for you. Now talk to the boss.
	AI_Output(hero, self, "Info_Mod_Azhar_Blutkelch_15_10"); //You mean the Council Mustafa?
	AI_Output(self, hero, "Info_Mod_Azhar_Blutkelch_04_11"); //Who else? Who else? Come on, hurry up.

	B_LogEntry	(TOPIC_MOD_ASS_LASTBLUTKELCH, "I shall inquire with Mustafa whether the cup has already been brought to him.");
};

INSTANCE Info_Mod_Azhar_Pickpocket (C_INFO)
{
	npc		= Mod_7138_ASS_Azhar_NW;
	nr		= 1;
	condition	= Info_Mod_Azhar_Pickpocket_Condition;
	information	= Info_Mod_Azhar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Azhar_Pickpocket_Condition()
{
	C_Beklauen	(178, ItMi_Gold, 109);
};

FUNC VOID Info_Mod_Azhar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Azhar_Pickpocket);

	Info_AddChoice	(Info_Mod_Azhar_Pickpocket, DIALOG_BACK, Info_Mod_Azhar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Azhar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Azhar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Azhar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Azhar_Pickpocket);
};

FUNC VOID Info_Mod_Azhar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Azhar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Azhar_Pickpocket);

		Info_AddChoice	(Info_Mod_Azhar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Azhar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Azhar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Azhar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Azhar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Azhar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Azhar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Azhar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Azhar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Azhar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Azhar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Azhar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Azhar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Azhar_EXIT (C_INFO)
{
	npc		= Mod_7138_ASS_Azhar_NW;
	nr		= 1;
	condition	= Info_Mod_Azhar_EXIT_Condition;
	information	= Info_Mod_Azhar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Azhar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Azhar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
