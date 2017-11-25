INSTANCE Info_Mod_Elvrich_Hi (C_INFo)
{
	npc		= Mod_573_NONE_Elvrich_NW;
	nr		= 1;
	condition	= Info_Mod_Elvrich_Hi_Condition;
	information	= Info_Mod_Elvrich_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "You're an apprentice?";
};

FUNC INT Info_Mod_Elvrich_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Elvrich_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Elvrich_Hi_15_00"); //You're an apprentice?
	AI_Output(self, hero, "Info_Mod_Elvrich_Hi_24_01"); //Not for long. Meanwhile I'm better than Thorben. Which is not difficult, though...
	AI_Output(hero, self, "Info_Mod_Elvrich_Hi_15_02"); //What about Thorben?
	AI_Output(self, hero, "Info_Mod_Elvrich_Hi_24_03"); //Why don't you take a look at him when he's in the pub at night?
	AI_Output(self, hero, "Info_Mod_Elvrich_Hi_24_04"); //He drinks so much every day that he doesn't get sober again the next morning.
	AI_Output(hero, self, "Info_Mod_Elvrich_Hi_15_05"); //Any particular reason for that?
	AI_Output(self, hero, "Info_Mod_Elvrich_Hi_24_06"); //He didn't always have a good life, I think.
	AI_Output(self, hero, "Info_Mod_Elvrich_Hi_24_07"); //But there's nothing more than hints that you can't get out of him.
};

INSTANCE Info_Mod_Elvrich_WieGehts (C_INFo)
{
	npc		= Mod_573_NONE_Elvrich_NW;
	nr		= 1;
	condition	= Info_Mod_Elvrich_WieGehts_Condition;
	information	= Info_Mod_Elvrich_WieGehts_Info;
	permanent	= 0;
	important	= 0;
	description	= "How are you doing?";
};

FUNC INT Info_Mod_Elvrich_WieGehts_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Elvrich_WieGehts_Info()
{
	AI_Output(hero, self, "Info_Mod_Elvrich_WieGehts_15_00"); //How are you doing?
	AI_Output(self, hero, "Info_Mod_Elvrich_WieGehts_24_01"); //Can't complain, just in a fresh relationship.
	AI_Output(self, hero, "Info_Mod_Elvrich_WieGehts_24_02"); //Man, I never thought there was such beauty on ordinary mortals like me.
	AI_Output(self, hero, "Info_Mod_Elvrich_WieGehts_24_03"); //The work here is of course quite strenuous, because I have to work for two people. Thorben can hardly get anything right.
};

INSTANCE Info_Mod_Elvrich_Liste (C_INFO)
{
	npc		= Mod_573_NONE_Elvrich_NW;
	nr		= 1;
	condition	= Info_Mod_Elvrich_Liste_Condition;
	information	= Info_Mod_Elvrich_Liste_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you doing today?";
};

FUNC INT Info_Mod_Elvrich_Liste_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vatras_ErsteInfos))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elvrich_Liste_Info()
{
	AI_Output(hero, self, "Info_Mod_Elvrich_Liste_15_00"); //What are you doing today?
	AI_Output(self, hero, "Info_Mod_Elvrich_Liste_24_01"); //I'm going to work a little bit more and then I'm gonna meet my girlfriend tonight.
	AI_Output(hero, self, "Info_Mod_Elvrich_Liste_15_02"); //Where do you meet?
	AI_Output(self, hero, "Info_Mod_Elvrich_Liste_24_03"); //She wrote me a letter saying that we will meet tonight in the harbour district in a quiet place near the sheep.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "KURGAN");

	B_LogEntry	(TOPIC_MOD_VERMISSTE, "Elvrich happens to meet his girlfriend tonight in the harbour district near the sheep.");

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Elvrich_Pickpocket (C_INFO)
{
	npc		= Mod_573_NONE_Elvrich_NW;
	nr		= 1;
	condition	= Info_Mod_Elvrich_Pickpocket_Condition;
	information	= Info_Mod_Elvrich_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Elvrich_Pickpocket_Condition()
{
	C_Beklauen	(40, ItMi_Saw, 1);
};

FUNC VOID Info_Mod_Elvrich_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Elvrich_Pickpocket);

	Info_AddChoice	(Info_Mod_Elvrich_Pickpocket, DIALOG_BACK, Info_Mod_Elvrich_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Elvrich_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Elvrich_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Elvrich_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Elvrich_Pickpocket);
};

FUNC VOID Info_Mod_Elvrich_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Elvrich_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Elvrich_Pickpocket);

		Info_AddChoice	(Info_Mod_Elvrich_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Elvrich_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Elvrich_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Elvrich_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Elvrich_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Elvrich_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Elvrich_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Elvrich_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Elvrich_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Elvrich_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Elvrich_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Elvrich_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Elvrich_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Elvrich_EXIT (C_INFO)
{
	npc		= Mod_573_NONE_Elvrich_NW;
	nr		= 1;
	condition	= Info_Mod_Elvrich_EXIT_Condition;
	information	= Info_Mod_Elvrich_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Elvrich_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Elvrich_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
