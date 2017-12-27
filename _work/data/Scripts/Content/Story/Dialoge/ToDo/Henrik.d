INSTANCE Info_Mod_Henrik_Hi (C_INFO)
{
	npc		= Mod_7383_OUT_Henrik_REL;
	nr		= 1;
	condition	= Info_Mod_Henrik_Hi_Condition;
	information	= Info_Mod_Henrik_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "How's work?";
};

FUNC INT Info_Mod_Henrik_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Henrik_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Henrik_Hi_15_00"); //How's work going?
	AI_Output(self, hero, "Info_Mod_Henrik_Hi_07_01"); //Not good. We already have so few little fish in our lake.... and fewer and fewer and fewer!
	AI_Output(hero, self, "Info_Mod_Henrik_Hi_15_02"); //Why is that?
	AI_Output(self, hero, "Info_Mod_Henrik_Hi_07_03"); //There are hordes of Molerats in the forest opposite.
	AI_Output(self, hero, "Info_Mod_Henrik_Hi_07_04"); //Vincent, our hunter, doesn't seem to be too successful lately, and so it's getting more and more.
	AI_Output(self, hero, "Info_Mod_Henrik_Hi_07_05"); //The Molerats like to swim for cooling and drag a lot of dirt into the water.
	AI_Output(self, hero, "Info_Mod_Henrik_Hi_07_06"); //No wonder the little fishes die. I'd do the same for them. Must be the giver of joy....
	AI_Output(hero, self, "Info_Mod_Henrik_Hi_15_07"); //What do you mean?
	AI_Output(self, hero, "Info_Mod_Henrik_Hi_07_08"); //That Vincent no longer hunts successfully. He's always high. So... are you taking over the Molerats thing?

	Info_ClearChoices	(Info_Mod_Henrik_Hi);

	Info_AddChoice	(Info_Mod_Henrik_Hi, "You have to let nature run its course sometimes.", Info_Mod_Henrik_Hi_B);
	Info_AddChoice	(Info_Mod_Henrik_Hi, "No problem.", Info_Mod_Henrik_Hi_A);
};


FUNC VOID Info_Mod_Henrik_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Henrik_Hi_B_15_00"); //You have to let nature run its course sometimes.

	Info_ClearChoices	(Info_Mod_Henrik_Hi);
};

FUNC VOID Info_Mod_Henrik_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Henrik_Hi_A_15_00"); //No problem.
	AI_Output(self, hero, "Info_Mod_Henrik_Hi_A_07_01"); //Nice!
	AI_Output(self, hero, "Info_Mod_Henrik_Hi_A_07_02"); //By the way, this stuff doesn't work on me...
	AI_Output(hero, self, "Info_Mod_Henrik_Hi_A_15_03"); //What?
	AI_Output(self, hero, "Info_Mod_Henrik_Hi_A_07_04"); //Pleasure giver! Okay?
	AI_Output(hero, self, "Info_Mod_Henrik_Hi_A_15_05"); //All clear!

	Log_CreateTopic	(TOPIC_MOD_KHORATA_SCHWEINE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_SCHWEINE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_SCHWEINE, "The fisherman Henrik complains about the fact that the molerats on the forest side of the big lake dirty it while bathing and thus the fish die. So I'm supposed to decimate the molerats.");

	Mod_Henrik_Schweine = 1;

	Info_ClearChoices	(Info_Mod_Henrik_Hi);
};

INSTANCE Info_Mod_Henrik_MoleratsTot (C_INFO)
{
	npc		= Mod_7383_OUT_Henrik_REL;
	nr		= 1;
	condition	= Info_Mod_Henrik_MoleratsTot_Condition;
	information	= Info_Mod_Henrik_MoleratsTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "I shot the Molerats.";
};

FUNC INT Info_Mod_Henrik_MoleratsTot_Condition()
{
	if (Mod_Henrik_Schweine == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Henrik_MoleratsTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Henrik_MoleratsTot_15_00"); //I shot the Molerats.
	AI_Output(self, hero, "Info_Mod_Henrik_MoleratsTot_07_01"); //Thank you very much! Here's a bottle of grog as a reward. I don't need it anymore.

	B_GiveInvItems	(self, hero, ItFo_Addon_Grog, 1);

	AI_Output(self, hero, "Info_Mod_Henrik_MoleratsTot_07_02"); //Bye, now!

	AI_StopProcessInfos	(self);

	B_SetTopicStatus	(TOPIC_MOD_KHORATA_SCHWEINE, LOG_SUCCESS);

	B_GivePlayerXP	(100);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;
};

INSTANCE Info_Mod_Henrik_Freudenspender (C_INFO)
{
	npc		= Mod_7383_OUT_Henrik_REL;
	nr		= 1;
	condition	= Info_Mod_Henrik_Freudenspender_Condition;
	information	= Info_Mod_Henrik_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Pleasure-giver against loneliness?";
};                       

FUNC INT Info_Mod_Henrik_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Henrik_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Henrik_Freudenspender_15_00"); //Pleasure-giver against loneliness?
	AI_Output(self, hero, "Info_Mod_Henrik_Freudenspender_07_01"); //Yes, yes, very good.

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	AI_Output(self, hero, "Info_Mod_Henrik_Freudenspender_07_02"); //You're a good biter, huh?
	AI_Output(hero, self, "Info_Mod_Henrik_Freudenspender_15_03"); //Who?
	AI_Output(self, hero, "Info_Mod_Henrik_Freudenspender_07_04"); //Stupid little fish. Okay?
	AI_Output(hero, self, "Info_Mod_Henrik_Freudenspender_15_05"); //Sure.

	Mod_Freudenspender	+= 1;
};

INSTANCE Info_Mod_Henrik_Pickpocket (C_INFO)
{
	npc		= Mod_7383_OUT_Henrik_REL;
	nr		= 1;
	condition	= Info_Mod_Henrik_Pickpocket_Condition;
	information	= Info_Mod_Henrik_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Henrik_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Freudenspender, 2);
};

FUNC VOID Info_Mod_Henrik_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Henrik_Pickpocket);

	Info_AddChoice	(Info_Mod_Henrik_Pickpocket, DIALOG_BACK, Info_Mod_Henrik_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Henrik_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Henrik_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Henrik_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Henrik_Pickpocket);
};

FUNC VOID Info_Mod_Henrik_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Henrik_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Henrik_Pickpocket);

		Info_AddChoice	(Info_Mod_Henrik_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Henrik_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Henrik_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Henrik_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Henrik_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Henrik_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Henrik_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Henrik_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Henrik_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Henrik_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Henrik_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Henrik_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Henrik_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Henrik_EXIT (C_INFO)
{
	npc		= Mod_7383_OUT_Henrik_REL;
	nr		= 1;
	condition	= Info_Mod_Henrik_EXIT_Condition;
	information	= Info_Mod_Henrik_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Henrik_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Henrik_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
