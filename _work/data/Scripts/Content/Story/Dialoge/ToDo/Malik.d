INSTANCE Info_Mod_Malik_Aufgabe (C_INFO)
{
	npc		= Mod_7123_ASS_Malik_NW;
	nr		= 1;
	condition	= Info_Mod_Malik_Aufgabe_Condition;
	information	= Info_Mod_Malik_Aufgabe_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Malik_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Masut_Jack))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Malik_Aufgabe_Info()
{
	AI_Output(self, hero, "Info_Mod_Malik_Aufgabe_13_00"); //Aha, the new guy! To vote catching, I hear.
	AI_Output(hero, self, "Info_Mod_Malik_Aufgabe_15_01"); //You say it. How much is yours?
	AI_Output(self, hero, "Info_Mod_Malik_Aufgabe_13_02"); //A courtesy. Just a little kindness.
	AI_Output(hero, self, "Info_Mod_Malik_Aufgabe_15_03"); //And what's that?
	AI_Output(self, hero, "Info_Mod_Malik_Aufgabe_13_04"); //You get old. You don't sleep well on the hard beds. I need something soft under my head.
	AI_Output(hero, self, "Info_Mod_Malik_Aufgabe_15_05"); //How about a coat from the sheep?
	AI_Output(self, hero, "Info_Mod_Malik_Aufgabe_13_06"); //No, no, no. It's gonna be hard and stinking. It's supposed to be something warm, soft and clean.
	AI_Output(hero, self, "Info_Mod_Malik_Aufgabe_15_07"); //I'll check the dealers.
	AI_Output(self, hero, "Info_Mod_Malik_Aufgabe_13_08"); //Best of all, Khorata. They're supposed to be so advanced, they say.
	AI_Output(hero, self, "Info_Mod_Malik_Aufgabe_15_09"); //Good idea. See you later.

	Log_CreateTopic	(TOPIC_MOD_ASS_KISSEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_KISSEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_KISSEN, "Something soft for the head! What there is. I think I'll ask Matteo first of all, he's probably the best dealer in town. Otherwise, I'll have to look around Khorata.");
};

INSTANCE Info_Mod_Malik_Kissen (C_INFO)
{
	npc		= Mod_7123_ASS_Malik_NW;
	nr		= 1;
	condition	= Info_Mod_Malik_Kissen_Condition;
	information	= Info_Mod_Malik_Kissen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's your soft one for the head.";
};

FUNC INT Info_Mod_Malik_Kissen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Malik_Aufgabe))
	&& (Npc_HasItems(hero, ItMi_Kissen) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Malik_Kissen_Info()
{
	AI_Output(hero, self, "Info_Mod_Malik_Kissen_15_00"); //Here's your soft one for the head.

	B_GiveInvItems	(hero, self, ItMi_Kissen, 1);

	AI_Output(self, hero, "Info_Mod_Malik_Kissen_13_01"); //What the hell is that? Purple square.
	AI_Output(hero, self, "Info_Mod_Malik_Kissen_15_02"); //Lie down and do it under your head.

	AI_GotoWP	(self, "WP_ASSASSINE_31");

	AI_UseMob	(self, "BEDHIGH", 1);
	AI_UseMob	(self, "BEDHIGH", -1);

	AI_GotoNpc	(self, hero);

	AI_Output(hero, self, "Info_Mod_Malik_Kissen_15_03"); //And? Satisfied?
	AI_Output(self, hero, "Info_Mod_Malik_Kissen_13_04"); //With all the spirits. Wonderfully soft and smells good. I'm more than satisfied.
	AI_Output(hero, self, "Info_Mod_Malik_Kissen_15_05"); //Then I have your voice?
	AI_Output(self, hero, "Info_Mod_Malik_Kissen_13_06"); //But yes, yes. I'd even give you two if I could. But now let me sleep.
	AI_Output(self, hero, "Info_Mod_Malik_Kissen_13_07"); //Oh, one more thing. Sinbad's looking for you.

	B_LogEntry	(TOPIC_MOD_ASS_KRIEGER, "Malik was very satisfied. I'm sure of his voice. Let's go to Sinbad.");
	B_SetTopicStatus	(TOPIC_MOD_ASS_KISSEN, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SLEEP");
};

INSTANCE Info_Mod_Malik_Pickpocket (C_INFO)
{
	npc		= Mod_7123_ASS_Malik_NW;
	nr		= 1;
	condition	= Info_Mod_Malik_Pickpocket_Condition;
	information	= Info_Mod_Malik_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Malik_Pickpocket_Condition()
{
	C_Beklauen	(117, ItMi_Gold, 40);
};

FUNC VOID Info_Mod_Malik_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Malik_Pickpocket);

	Info_AddChoice	(Info_Mod_Malik_Pickpocket, DIALOG_BACK, Info_Mod_Malik_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Malik_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Malik_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Malik_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Malik_Pickpocket);
};

FUNC VOID Info_Mod_Malik_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Malik_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Malik_Pickpocket);

		Info_AddChoice	(Info_Mod_Malik_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Malik_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Malik_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Malik_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Malik_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Malik_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Malik_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Malik_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Malik_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Malik_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Malik_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Malik_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Malik_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Malik_EXIT (C_INFO)
{
	npc		= Mod_7123_ASS_Malik_NW;
	nr		= 1;
	condition	= Info_Mod_Malik_EXIT_Condition;
	information	= Info_Mod_Malik_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Malik_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Malik_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
