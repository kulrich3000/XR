INSTANCE Info_Mod_Vanja_Hi (C_INFO)
{
	npc		= Mod_522_NONE_Vanja_NW;
	nr		= 1;
	condition	= Info_Mod_Vanja_Hi_Condition;
	information	= Info_Mod_Vanja_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Vanja_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Vanja_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Vanja_Hi_17_01"); //I'm Vanja.
};

INSTANCE Info_Mod_Vanja_Hilfe (C_INFO)
{
	npc		= Mod_522_NONE_Vanja_NW;
	nr		= 1;
	condition	= Info_Mod_Vanja_Hilfe_Condition;
	information	= Info_Mod_Vanja_Hilfe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Something on your mind?";
};

FUNC INT Info_Mod_Vanja_Hilfe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vanja_Hi))
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vanja_Hilfe_Info()
{
	AI_Output(hero, self, "Info_Mod_Vanja_Hilfe_15_00"); //Something on your mind?
	AI_Output(self, hero, "Info_Mod_Vanja_Hilfe_17_01"); //Ah... Bromor is pretty rough right now, if you know what I mean.
	AI_Output(self, hero, "Info_Mod_Vanja_Hilfe_17_02"); //He beats me because I don't make as much money as Nadja.
	AI_Output(self, hero, "Info_Mod_Vanja_Hilfe_17_03"); //If only someone could give him a good rubdown, so that he could feel it on his own skin, how it is....

	Log_CreateTopic	(TOPIC_MOD_VANJA_BROMOR, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_VANJA_BROMOR, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_VANJA_BROMOR, "Bromor abuses Vanja. She thinks he'd be better off if he got a beating himself...");
};

INSTANCE Info_Mod_Vanja_BromorKO (C_INFO)
{
	npc		= Mod_522_NONE_Vanja_NW;
	nr		= 1;
	condition	= Info_Mod_Vanja_BromorKO_Condition;
	information	= Info_Mod_Vanja_BromorKO_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bromor won't hit you again.";
};

FUNC INT Info_Mod_Vanja_BromorKO_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bromor_Umgehauen))
	&& (Mod_Vanja_BromorKO == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vanja_BromorKO_Info()
{
	AI_Output(hero, self, "Info_Mod_Vanja_BromorKO_15_00"); //Bromor won't hit you again.
	AI_Output(self, hero, "Info_Mod_Vanja_BromorKO_17_01"); //Thank you so much, you're my savior.
	AI_Output(self, hero, "Info_Mod_Vanja_BromorKO_17_02"); //Here's some gold as a reward.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	B_GivePlayerXP	(100);

	B_SetTopicStatus	(TOPIC_MOD_VANJA_BROMOR, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Vanja_Pickpocket (C_INFO)
{
	npc		= Mod_522_NONE_Vanja_NW;
	nr		= 1;
	condition	= Info_Mod_Vanja_Pickpocket_Condition;
	information	= Info_Mod_Vanja_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Vanja_Pickpocket_Condition()
{
	C_Beklauen	(36, ItMi_Gold, 18);
};

FUNC VOID Info_Mod_Vanja_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Vanja_Pickpocket);

	Info_AddChoice	(Info_Mod_Vanja_Pickpocket, DIALOG_BACK, Info_Mod_Vanja_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Vanja_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Vanja_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Vanja_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Vanja_Pickpocket);
};

FUNC VOID Info_Mod_Vanja_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Vanja_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Vanja_Pickpocket);

		Info_AddChoice	(Info_Mod_Vanja_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Vanja_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Vanja_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Vanja_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Vanja_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Vanja_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Vanja_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Vanja_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Vanja_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Vanja_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Vanja_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Vanja_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Vanja_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Vanja_EXIT (C_INFO)
{
	npc		= Mod_522_NONE_Vanja_NW;
	nr		= 1;
	condition	= Info_Mod_Vanja_EXIT_Condition;
	information	= Info_Mod_Vanja_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Vanja_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Vanja_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
