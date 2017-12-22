INSTANCE Info_Mod_JGTurmwache_Felle (C_INFO)
{
	npc		= Mod_7469_OUT_Turmwache_MT;
	nr		= 1;
	condition	= Info_Mod_JGTurmwache_Felle_Condition;
	information	= Info_Mod_JGTurmwache_Felle_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_JGTurmwache_Felle_Condition()
{
	if (Mod_JG_TurmwaechterFelle == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_JGTurmwache_Felle_Info()
{
	AI_Output(self, hero, "Info_Mod_JGTurmwache_Felle_32_00"); //Hey, you!
	AI_Output(hero, self, "Info_Mod_JGTurmwache_Felle_15_01"); //Yeah, what is it?
	AI_Output(self, hero, "Info_Mod_JGTurmwache_Felle_32_02"); //You get around a lot, don't you?
	AI_Output(hero, self, "Info_Mod_JGTurmwache_Felle_15_03"); //You can say that again.
	AI_Output(self, hero, "Info_Mod_JGTurmwache_Felle_32_04"); //I do, don't I?
	AI_Output(self, hero, "Info_Mod_JGTurmwache_Felle_32_05"); //It's like pike soup up here. I really need a warm coat.
	AI_Output(hero, self, "Info_Mod_JGTurmwache_Felle_15_06"); //Then get one from the dealer!
	AI_Output(self, hero, "Info_Mod_JGTurmwache_Felle_32_07"); //How?
	AI_Output(hero, self, "Info_Mod_JGTurmwache_Felle_15_08"); //The merchant has some.
	AI_Output(self, hero, "Info_Mod_JGTurmwache_Felle_32_09"); //It is. But after a few days, they'll be as stiff as a board.
	AI_Output(self, hero, "Info_Mod_JGTurmwache_Felle_32_10"); //Something warm and soft will do.
	AI_Output(hero, self, "Info_Mod_JGTurmwache_Felle_15_11"); //Good. Let's see what I can do.

	Log_CreateTopic	(TOPIC_MOD_JG_TURMFELLE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_TURMFELLE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_TURMFELLE, "A new coat for the tower guard. Let's see now.");
};

INSTANCE Info_Mod_JGTurmwache_Felle2 (C_INFO)
{
	npc		= Mod_7469_OUT_Turmwache_MT;
	nr		= 1;
	condition	= Info_Mod_JGTurmwache_Felle2_Condition;
	information	= Info_Mod_JGTurmwache_Felle2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have something here for you.";
};

FUNC INT Info_Mod_JGTurmwache_Felle2_Condition()
{
	if (Npc_HasItems(hero, ItMi_Kuschelfell) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_JGTurmwache_Felle2_Info()
{
	AI_Output(hero, self, "Info_Mod_JGTurmwache_Felle2_15_00"); //I have something here for you.
	AI_Output(self, hero, "Info_Mod_JGTurmwache_Felle2_32_01"); //Yeah, what is it?
	AI_Output(hero, self, "Info_Mod_JGTurmwache_Felle2_15_02"); //Well, it's fluffy soft and wonderfully warm...
	AI_Output(self, hero, "Info_Mod_JGTurmwache_Felle2_32_03"); //Don't tell me you found a fur for me.
	AI_Output(hero, self, "Info_Mod_JGTurmwache_Felle2_15_04"); //That's the way it is, here you have it.

	B_GiveInvItems	(hero, self, ItMi_Kuschelfell, 1);

	AI_Output(self, hero, "Info_Mod_JGTurmwache_Felle2_32_05"); //That's wonderfully soft. Thank you very much.
	AI_Output(self, hero, "Info_Mod_JGTurmwache_Felle2_32_06"); //Here, take this.

	B_GiveInvItems	(self, hero, ItMi_Gold, 250);

	B_GivePlayerXP	(150);

	B_SetTopicStatus	(TOPIC_MOD_JG_TURMFELLE, LOG_SUCCESS);
};

INSTANCE Info_Mod_JGTurmwache_Pickpocket (C_INFO)
{
	npc		= Mod_7469_OUT_Turmwache_MT;
	nr		= 1;
	condition	= Info_Mod_JGTurmwache_Pickpocket_Condition;
	information	= Info_Mod_JGTurmwache_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_JGTurmwache_Pickpocket_Condition()
{
	C_Beklauen	(87, ItMi_Gold, 28);
};

FUNC VOID Info_Mod_JGTurmwache_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_JGTurmwache_Pickpocket);

	Info_AddChoice	(Info_Mod_JGTurmwache_Pickpocket, DIALOG_BACK, Info_Mod_JGTurmwache_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_JGTurmwache_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_JGTurmwache_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_JGTurmwache_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_JGTurmwache_Pickpocket);
};

FUNC VOID Info_Mod_JGTurmwache_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_JGTurmwache_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_JGTurmwache_Pickpocket);

		Info_AddChoice	(Info_Mod_JGTurmwache_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_JGTurmwache_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_JGTurmwache_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_JGTurmwache_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_JGTurmwache_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_JGTurmwache_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_JGTurmwache_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_JGTurmwache_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_JGTurmwache_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_JGTurmwache_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_JGTurmwache_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_JGTurmwache_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_JGTurmwache_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_JGTurmwache_EXIT (C_INFO)
{
	npc		= Mod_7469_OUT_Turmwache_MT;
	nr		= 1;
	condition	= Info_Mod_JGTurmwache_EXIT_Condition;
	information	= Info_Mod_JGTurmwache_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_JGTurmwache_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_JGTurmwache_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
