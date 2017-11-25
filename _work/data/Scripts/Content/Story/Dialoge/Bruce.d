INSTANCE Info_Mod_Bruce_KesselProblem (C_INFO)
{
	npc		= Mod_1289_SLD_Bruce_MT;
	nr		= 1;
	condition	= Info_Mod_Bruce_KesselProblem_Condition;
	information	= Info_Mod_Bruce_KesselProblem_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bruce_KesselProblem_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_KesselProblem))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bruce_KesselProblem_Info()
{
	AI_Output(self, hero, "Info_Mod_Bruce_KesselProblem_06_00"); //(to himself, leaking) Huhä, I did a fantastic job.
	AI_Output(hero, self, "Info_Mod_Bruce_KesselProblem_15_01"); //(clears throat)
	AI_Output(self, hero, "Info_Mod_Bruce_KesselProblem_06_02"); //(surprised) Hmm, huh...? Hey, what kind of guy are you?
	AI_Output(hero, self, "Info_Mod_Bruce_KesselProblem_15_03"); //I'm just looking around.
	AI_Output(self, hero, "Info_Mod_Bruce_KesselProblem_06_04"); //Yeah, do it for me. But don't make any trouble. If you don't, I'll blow your head off.
	AI_Output(self, hero, "Info_Mod_Bruce_KesselProblem_06_05"); //Like.... just like that shadow runner I took out in the mountains recently. You see? Real shadow runner's fur.
	AI_Output(self, hero, "Info_Mod_Bruce_KesselProblem_06_06"); //The beast... uh, has eaten a scout, huh? But I was just too smart.
	AI_Output(self, hero, "Info_Mod_Bruce_KesselProblem_06_07"); //So everyone got what they deserved. (laughs dirty)

	B_LogEntry	(TOPIC_MOD_NL_TALKESSELPROB, "I found mercenary Bruce at the entrance to the basin. He seems to be quite drunk and boasted complacently with the fur of the shadow runner who is said to have eaten the prospector. He seemed very amused.");
};

INSTANCE Info_Mod_Bruce_KesselProblem2 (C_INFO)
{
	npc		= Mod_1289_SLD_Bruce_MT;
	nr		= 1;
	condition	= Info_Mod_Bruce_KesselProblem2_Condition;
	information	= Info_Mod_Bruce_KesselProblem2_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Bruce_KesselProblem2_Condition()
{
	if (Wld_IsTime(20,00,24,00))
	&& (Mod_NL_TalkesselProblem >= 1)
	&& (Npc_IsInState(self, ZS_Talk))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Fester_KesselProblem))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bruce_KesselProblem2_Info()
{
	AI_Output(self, hero, "Info_Mod_Bruce_KesselProblem2_06_00"); //Hey, just fuck off.
};

INSTANCE Info_Mod_Bruce_KesselProblem3 (C_INFO)
{
	npc		= Mod_1289_SLD_Bruce_MT;
	nr		= 1;
	condition	= Info_Mod_Bruce_KesselProblem3_Condition;
	information	= Info_Mod_Bruce_KesselProblem3_Info;
	permanent	= 0;
	important	= 0;
	description	= "You've got some things I think you're not supposed to have in your possession.";
};

FUNC INT Info_Mod_Bruce_KesselProblem3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fester_KesselProblem))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bruce_KesselProblem3_Info()
{
	AI_Output(hero, self, "Info_Mod_Bruce_KesselProblem3_15_00"); //You've got some things I think you're not supposed to have in your possession.
	AI_Output(self, hero, "Info_Mod_Bruce_KesselProblem3_06_01"); //What do you mean?
	AI_Output(hero, self, "Info_Mod_Bruce_KesselProblem3_15_02"); //Well, I mean, for example, the swampweed and the...
	AI_Output(self, hero, "Info_Mod_Bruce_KesselProblem3_06_03"); //You just messed with the wrong guy.

	CreateInvItems	(self, ItWr_KesselProblem, 1);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Bruce_Pickpocket (C_INFO)
{
	npc		= Mod_1289_SLD_Bruce_MT;
	nr		= 1;
	condition	= Info_Mod_Bruce_Pickpocket_Condition;
	information	= Info_Mod_Bruce_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Bruce_Pickpocket_Condition()
{
	C_Beklauen	(95, ItMi_Gold, 37);
};

FUNC VOID Info_Mod_Bruce_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bruce_Pickpocket);

	Info_AddChoice	(Info_Mod_Bruce_Pickpocket, DIALOG_BACK, Info_Mod_Bruce_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bruce_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bruce_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bruce_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bruce_Pickpocket);
};

FUNC VOID Info_Mod_Bruce_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bruce_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bruce_Pickpocket);

		Info_AddChoice	(Info_Mod_Bruce_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bruce_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bruce_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bruce_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bruce_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bruce_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bruce_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bruce_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bruce_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bruce_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bruce_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bruce_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bruce_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bruce_EXIT (C_INFO)
{
	npc		= Mod_1289_SLD_Bruce_MT;
	nr		= 1;
	condition	= Info_Mod_Bruce_EXIT_Condition;
	information	= Info_Mod_Bruce_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bruce_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bruce_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
