INSTANCE Info_Mod_HofstaatHofnarr_Hi (C_INFO)
{
	npc		= Mod_7328_HS_Hofnarr_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatHofnarr_Hi_Condition;
	information	= Info_Mod_HofstaatHofnarr_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatHofnarr_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatArsch_OrakelTermin))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatHofnarr_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatHofnarr_Hi_27_00"); //Greetings, my dear sweat. That asshole told me about your coming.
	AI_Output(hero, self, "Info_Mod_HofstaatHofnarr_Hi_15_01"); //You're the Oracle? I thought you were the jester of the court.
	AI_Output(self, hero, "Info_Mod_HofstaatHofnarr_Hi_27_02"); //So am I.
	AI_Output(hero, self, "Info_Mod_HofstaatHofnarr_Hi_15_03"); //You're the jester and the oracle?
	AI_Output(self, hero, "Info_Mod_HofstaatHofnarr_Hi_27_04"); //The one-eyed man is king among the blind, but the wise man is a fool among the madmen.
	AI_Output(hero, self, "Info_Mod_HofstaatHofnarr_Hi_15_05"); //What do you mean?
	AI_Output(self, hero, "Info_Mod_HofstaatHofnarr_Hi_27_06"); //That each coin has two sides and you can't expect just because the head is up to find the number below.
	AI_Output(hero, self, "Info_Mod_HofstaatHofnarr_Hi_15_07"); //Is that your oracle saying yet?
	AI_Output(self, hero, "Info_Mod_HofstaatHofnarr_Hi_27_08"); //Of course not, first you have to ask your question.
	AI_Output(hero, self, "Info_Mod_HofstaatHofnarr_Hi_15_09"); //Sure... My question. I'm looking for something to make the King happy again.
	AI_Output(self, hero, "Info_Mod_HofstaatHofnarr_Hi_27_10"); //And here's your answer.

	B_GiveInvItems	(self, hero, ItMi_Orakelpille, 1);

	AI_Output(hero, self, "Info_Mod_HofstaatHofnarr_Hi_15_11"); //A candy?
	AI_Output(self, hero, "Info_Mod_HofstaatHofnarr_Hi_27_12"); //Let's call it an oracle pill. Now, if you'll excuse me.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "The Oracle gave me an oracle pill. I should swallow it and see how it helps me with my problem.");
};

INSTANCE Info_Mod_HofstaatHofnarr_KingSorge (C_INFO)
{
	npc		= Mod_7328_HS_Hofnarr_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatHofnarr_KingSorge_Condition;
	information	= Info_Mod_HofstaatHofnarr_KingSorge_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatHofnarr_KingSorge_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatKoenig_Meer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatHofnarr_KingSorge_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatHofnarr_KingSorge_27_00"); //I see you've had no luck with the King.
	AI_Output(hero, self, "Info_Mod_HofstaatHofnarr_KingSorge_15_01"); //You think the swamp wasn't the answer?
	AI_Output(self, hero, "Info_Mod_HofstaatHofnarr_KingSorge_27_02"); //I may be a fool, but I take my task as an oracle very seriously.
	AI_Output(self, hero, "Info_Mod_HofstaatHofnarr_KingSorge_27_03"); //If you have seen the swamp, it is also the answer. The problem is that you just saw him, the king only heard about it.
	AI_Output(self, hero, "Info_Mod_HofstaatHofnarr_KingSorge_27_04"); //I'll give you a clue that doesn't require you to swallow oracle pills. Go to the King's chambers, where you will find the answer.

	AI_StopProcessInfos	(self);

	Wld_InsertItem	(ItWr_DMBildNotiz, "FP_ITEM_KOENIG_DMNACHRICHT");

	B_StartOtherRoutine	(self, "START");

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "The problem seems to be that the king hasn't seen the swamp. The solution is in the king's chamber, says the jester.");
};

INSTANCE Info_Mod_HofstaatHofnarr_Transportsystem (C_INFO)
{
	npc		= Mod_7328_HS_Hofnarr_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatHofnarr_Transportsystem_Condition;
	information	= Info_Mod_HofstaatHofnarr_Transportsystem_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm looking for a pleasant way to the swamps.";
};

FUNC INT Info_Mod_HofstaatHofnarr_Transportsystem_Condition()
{
	if (Mod_SL_Meer == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatHofnarr_Transportsystem_Info()
{
	AI_Output(hero, self, "Info_Mod_HofstaatHofnarr_Transportsystem_15_00"); //I'm looking for a pleasant way to the swamps.
	AI_Output(self, hero, "Info_Mod_HofstaatHofnarr_Transportsystem_27_01"); //I'm just a simple fool, no one to help you, my dear sweat.
};

INSTANCE Info_Mod_HofstaatHofnarr_Pickpocket (C_INFO)
{
	npc		= Mod_7328_HS_Hofnarr_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatHofnarr_Pickpocket_Condition;
	information	= Info_Mod_HofstaatHofnarr_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_HofstaatHofnarr_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Freudenspender, 1);
};

FUNC VOID Info_Mod_HofstaatHofnarr_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HofstaatHofnarr_Pickpocket);

	Info_AddChoice	(Info_Mod_HofstaatHofnarr_Pickpocket, DIALOG_BACK, Info_Mod_HofstaatHofnarr_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HofstaatHofnarr_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HofstaatHofnarr_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HofstaatHofnarr_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HofstaatHofnarr_Pickpocket);
};

FUNC VOID Info_Mod_HofstaatHofnarr_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HofstaatHofnarr_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HofstaatHofnarr_Pickpocket);

		Info_AddChoice	(Info_Mod_HofstaatHofnarr_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HofstaatHofnarr_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HofstaatHofnarr_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HofstaatHofnarr_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HofstaatHofnarr_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HofstaatHofnarr_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HofstaatHofnarr_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HofstaatHofnarr_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HofstaatHofnarr_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HofstaatHofnarr_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HofstaatHofnarr_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HofstaatHofnarr_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HofstaatHofnarr_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HofstaatHofnarr_EXIT (C_INFO)
{
	npc		= Mod_7328_HS_Hofnarr_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatHofnarr_EXIT_Condition;
	information	= Info_Mod_HofstaatHofnarr_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatHofnarr_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatHofnarr_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
