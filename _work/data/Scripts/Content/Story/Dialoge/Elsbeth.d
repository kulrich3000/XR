INSTANCE Info_Mod_Elsbeth_Hi (C_INFO)
{
	npc		= Mod_7524_JG_Elsbeth_JL;
	nr		= 1;
	condition	= Info_Mod_Elsbeth_Hi_Condition;
	information	= Info_Mod_Elsbeth_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "A woman in this wilderness! How come?";
};

FUNC INT Info_Mod_Elsbeth_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Elsbeth_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Elsbeth_Hi_15_00"); //A woman in this wilderness! How come?
	AI_Output(self, hero, "Info_Mod_Elsbeth_Hi_17_01"); //I'm from the Old Camp. I didn't want it the way the Baron wanted it.
	AI_Output(hero, self, "Info_Mod_Elsbeth_Hi_15_02"); //And then he kicked you out.
	AI_Output(self, hero, "Info_Mod_Elsbeth_Hi_17_03"); //Kind of. Landed with the bums out by the gate.
	AI_Output(self, hero, "Info_Mod_Elsbeth_Hi_17_04"); //At some point this Baldur came along and took me here.
	AI_Output(hero, self, "Info_Mod_Elsbeth_Hi_15_05"); //Are you happy about it?
	AI_Output(self, hero, "Info_Mod_Elsbeth_Hi_17_06"); //You bet. This is where they repeat you as a woman, even though they're rough guys.
	AI_Output(hero, self, "Info_Mod_Elsbeth_Hi_15_07"); //That's good news. See you around.
};

INSTANCE Info_Mod_Elsbeth_Ambi (C_INFO)
{
	npc		= Mod_7524_JG_Elsbeth_JL;
	nr		= 1;
	condition	= Info_Mod_Elsbeth_Ambi_Condition;
	information	= Info_Mod_Elsbeth_Ambi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elsbeth_Ambi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elsbeth_Hi))
	&& (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elsbeth_Ambi_Info()
{
	AI_Output(self, hero, "Info_Mod_Elsbeth_Ambi_17_00"); //I see you're always on the move.
	AI_Output(hero, self, "Info_Mod_Elsbeth_Ambi_15_01"); //I'm pretty new here and I still have to prove myself. And I've gotten used to the running.
	AI_Output(self, hero, "Info_Mod_Elsbeth_Ambi_17_02"); //And yet you're always friendly, it seems to me.
	AI_Output(hero, self, "Info_Mod_Elsbeth_Ambi_15_03"); //Well, well. I can do it differently.
	AI_Output(self, hero, "Info_Mod_Elsbeth_Ambi_17_04"); //Anyway, I find you sympathetic. You may call me Beth.
	AI_Output(hero, self, "Info_Mod_Elsbeth_Ambi_15_05"); //Nice to meet you, Beth. Maybe I can do you a favor?
	AI_Output(self, hero, "Info_Mod_Elsbeth_Ambi_17_06"); //You can do that. I'm running out of wood for the stove.
	AI_Output(self, hero, "Info_Mod_Elsbeth_Ambi_17_07"); //I could use some new branches. A dozen should do it.
	AI_Output(hero, self, "Info_Mod_Elsbeth_Ambi_15_08"); //I'll bring you some. See you later.

	Log_CreateTopic	(TOPIC_MOD_ELSBETH_HOLZ, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ELSBETH_HOLZ, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ELSBETH_HOLZ, "Elsbeth needs branches for her kitchen stove. I'm supposed to get 12 pieces.");
};

INSTANCE Info_Mod_Elsbeth_Holz (C_INFO)
{
	npc		= Mod_7524_JG_Elsbeth_JL;
	nr		= 1;
	condition	= Info_Mod_Elsbeth_Holz_Condition;
	information	= Info_Mod_Elsbeth_Holz_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got your wood here.";
};

FUNC INT Info_Mod_Elsbeth_Holz_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elsbeth_Ambi))
	&& (Npc_HasItems(hero, ItMi_Ast) >= 12)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elsbeth_Holz_Info()
{
	AI_Output(hero, self, "Info_Mod_Elsbeth_Holz_15_00"); //I got your wood here.

	B_GiveInvItems	(hero, self, ItMi_Ast, 12);

	AI_Output(self, hero, "Info_Mod_Elsbeth_Holz_17_01"); //That's sweet. Thank you very much.
	AI_Output(hero, self, "Info_Mod_Elsbeth_Holz_15_02"); //You're welcome, but I have to leave now.
	AI_Output(self, hero, "Info_Mod_Elsbeth_Holz_17_03"); //Then I wish you success in your tasks.
	AI_Output(hero, self, "Info_Mod_Elsbeth_Holz_15_04"); //I can always use that. Thanks.

	B_SetTopicStatus	(TOPIC_MOD_ELSBETH_HOLZ, LOG_SUCCESS);

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Elsbeth_Pickpocket (C_INFO)
{
	npc		= Mod_7524_JG_Elsbeth_JL;
	nr		= 1;
	condition	= Info_Mod_Elsbeth_Pickpocket_Condition;
	information	= Info_Mod_Elsbeth_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Elsbeth_Pickpocket_Condition()
{
	C_Beklauen	(56, ItMi_Gold, 18);
};

FUNC VOID Info_Mod_Elsbeth_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Elsbeth_Pickpocket);

	Info_AddChoice	(Info_Mod_Elsbeth_Pickpocket, DIALOG_BACK, Info_Mod_Elsbeth_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Elsbeth_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Elsbeth_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Elsbeth_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Elsbeth_Pickpocket);
};

FUNC VOID Info_Mod_Elsbeth_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Elsbeth_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Elsbeth_Pickpocket);

		Info_AddChoice	(Info_Mod_Elsbeth_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Elsbeth_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Elsbeth_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Elsbeth_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Elsbeth_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Elsbeth_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Elsbeth_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Elsbeth_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Elsbeth_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Elsbeth_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Elsbeth_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Elsbeth_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Elsbeth_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Elsbeth_EXIT (C_INFO)
{
	npc		= Mod_7524_JG_Elsbeth_JL;
	nr		= 1;
	condition	= Info_Mod_Elsbeth_EXIT_Condition;
	information	= Info_Mod_Elsbeth_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Elsbeth_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Elsbeth_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
