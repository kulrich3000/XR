INSTANCE Info_Mod_Aiman_Hi (C_INFO)
{
	npc		= Mod_7152_ASS_Aiman_NW;
	nr		= 1;
	condition	= Info_Mod_Aiman_Hi_Condition;
	information	= Info_Mod_Aiman_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Aiman_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mirza_Amulett))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aiman_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Aiman_Hi_05_00"); //Oh, there you are.
	AI_Output(hero, self, "Info_Mod_Aiman_Hi_15_01"); //I'll do what I can. What's happening?
	AI_Output(self, hero, "Info_Mod_Aiman_Hi_05_02"); //Have you ever heard of the blood cups?
	AI_Output(hero, self, "Info_Mod_Aiman_Hi_15_03"); //I already got one for Amir once. From the money lender in Khorinis. He's dead.
	AI_Output(self, hero, "Info_Mod_Aiman_Hi_05_04"); //Of course, otherwise the goblet wouldn't have any value. The owner must die for the goblets to take effect.
	AI_Output(hero, self, "Info_Mod_Aiman_Hi_15_05"); //How many goblets are there?
	AI_Output(self, hero, "Info_Mod_Aiman_Hi_05_06"); //It's three. According to our information, one of them is owned by the judges in Khorinis. This is exactly what the great Council wants.
	AI_Output(hero, self, "Info_Mod_Aiman_Hi_15_07"); //Then I shall assassinate the judge and teach the cup.
	AI_Output(self, hero, "Info_Mod_Aiman_Hi_05_08"); //Smart guy. If you succeed, you'll have a place with the candidates,
	AI_Output(hero, self, "Info_Mod_Aiman_Hi_15_09"); //Then I want to have a look...

	AI_TurnAway	(hero, self);

	if (Mod_ASS_Krieger == 1)
	{
		AI_Output(hero, self, "Info_Mod_Aiman_Hi_15_10"); //Get a suitable poison first. Ask the mages in the back.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Aiman_Hi_15_11"); //Get a suitable poison first. Maybe Kamal can help.
	};

	AI_TurnToNpc	(hero, self);

	Log_CreateTopic	(TOPIC_MOD_ASS_BLUTKELCH, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_BLUTKELCH, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_BLUTKELCH, "I'm supposed to take second place in the council. Get me a blood cup. Judge in Khorinis probably has him. He must die, but it shouldn't cause a stir. Poison would be the right remedy for an assassin. There was an alchemist here somewhere....");
};

INSTANCE Info_Mod_Aiman_Pickpocket (C_INFO)
{
	npc		= Mod_7152_ASS_Aiman_NW;
	nr		= 1;
	condition	= Info_Mod_Aiman_Pickpocket_Condition;
	information	= Info_Mod_Aiman_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Aiman_Pickpocket_Condition()
{
	C_Beklauen	(164, ItMi_Gold, 107);
};

FUNC VOID Info_Mod_Aiman_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Aiman_Pickpocket);

	Info_AddChoice	(Info_Mod_Aiman_Pickpocket, DIALOG_BACK, Info_Mod_Aiman_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Aiman_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Aiman_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Aiman_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Aiman_Pickpocket);
};

FUNC VOID Info_Mod_Aiman_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Aiman_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Aiman_Pickpocket);

		Info_AddChoice	(Info_Mod_Aiman_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Aiman_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Aiman_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Aiman_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Aiman_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Aiman_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Aiman_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Aiman_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Aiman_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Aiman_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Aiman_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Aiman_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Aiman_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Aiman_EXIT (C_INFO)
{
	npc		= Mod_7152_ASS_Aiman_NW;
	nr		= 1;
	condition	= Info_Mod_Aiman_EXIT_Condition;
	information	= Info_Mod_Aiman_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Aiman_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Aiman_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
