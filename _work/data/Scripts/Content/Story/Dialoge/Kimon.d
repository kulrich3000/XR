INSTANCE Info_Mod_Kimon_Hi (C_INFO)
{
	npc		= Mod_1932_FH_Kimon_NW;
	nr		= 1;
	condition	= Info_Mod_Kimon_Hi_Condition;
	information	= Info_Mod_Kimon_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "You got a problem?";
};

FUNC INT Info_Mod_Kimon_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Kimon_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Kimon_Hi_15_00"); //You got a problem?
	AI_Output(self, hero, "Info_Mod_Kimon_Hi_34_01"); //None that you could help me with....
	AI_Output(hero, self, "Info_Mod_Kimon_Hi_15_02"); //Just tell me about it.
	AI_Output(self, hero, "Info_Mod_Kimon_Hi_34_03"); //All right, all right. I sold the fire magicians expensive grapes from Mount Archolos in Myrtana and was supposed to collect my reward of 2000 gold from the magician Serpentes.
	AI_Output(self, hero, "Info_Mod_Kimon_Hi_34_04"); //The son of a bitch only gave me 1,000 gold!
	AI_Output(hero, self, "Info_Mod_Kimon_Hi_15_05"); //Why don't you go to Lord Andre?
	AI_Output(self, hero, "Info_Mod_Kimon_Hi_34_06"); //(ironic) Sure, I report one of Innos' highest servants for fraud... That would cost me more gold than it'll bring me.

	Info_ClearChoices	(Info_Mod_Kimon_Hi);

	Info_AddChoice	(Info_Mod_Kimon_Hi, "Then I can't help you either.", Info_Mod_Kimon_Hi_Nein);
	Info_AddChoice	(Info_Mod_Kimon_Hi, "I'll see how I can handle this.", Info_Mod_Kimon_Hi_Ja);
};

FUNC VOID Info_Mod_Kimon_Hi_Nein()
{
	AI_Output(hero, self, "Info_Mod_Kimon_Hi_Nein_15_00"); //Then I can't help you either.
	AI_Output(self, hero, "Info_Mod_Kimon_Hi_Nein_34_01"); //All right, all right.

	Info_ClearChoices	(Info_Mod_Kimon_Hi);
};

FUNC VOID Info_Mod_Kimon_Hi_Ja()
{
	AI_Output(hero, self, "Info_Mod_Kimon_Hi_Ja_15_00"); //I'll see how I can handle this.
	AI_Output(self, hero, "Info_Mod_Kimon_Hi_Ja_34_01"); //Ah, thank you, even if I don't think that makes a lot of sense.

	Log_CreateTopic	(TOPIC_MOD_KIMONSTRAUBEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KIMONSTRAUBEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KIMONSTRAUBEN, "The merchant Kimon sold grapes from Myrtana in the monastery, but received too little gold. I agreed to settle things for him.");

	Mod_Kimons_Traubenquest = TRUE;

	Info_ClearChoices	(Info_Mod_Kimon_Hi);
};

INSTANCE Info_Mod_Kimon_Beleg (C_INFO)
{
	npc		= Mod_1932_FH_Kimon_NW;
	nr		= 1;
	condition	= Info_Mod_Kimon_Beleg_Condition;
	information	= Info_Mod_Kimon_Beleg_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you have proof of Serpentes' fraud?";
};

FUNC INT Info_Mod_Kimon_Beleg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pyrokar_Kimon))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kimon_Beleg_Info()
{
	AI_Output(hero, self, "Info_Mod_Kimon_Beleg_15_00"); //Do you have proof of Serpentes' fraud?
	AI_Output(self, hero, "Info_Mod_Kimon_Beleg_34_01"); //Certainly, here.

	B_GiveInvItems	(self, hero, ItWr_KimonsBeleg, 1);

	B_LogEntry	(TOPIC_MOD_KIMONSTRAUBEN, "Kimon gave me proof of Serpentes' guilt. I should take this one to Pyrokar now.");
};

INSTANCE Info_Mod_Kimon_HierIstDeinGold (C_INFO)
{
	npc		= Mod_1932_FH_Kimon_NW;
	nr		= 1;
	condition	= Info_Mod_Kimon_HierIstDeinGold_Condition;
	information	= Info_Mod_Kimon_HierIstDeinGold_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's your gold.";
};

FUNC INT Info_Mod_Kimon_HierIstDeinGold_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Serpentes_Kimon))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	&& (Mod_Kimons_Traubenquest == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kimon_HierIstDeinGold_Info()
{
	AI_Output(hero, self, "Info_Mod_Kimon_HierIstDeinGold_15_00"); //Here's your gold.

	B_GiveInvItems	(hero, self, ItMi_Gold, 1000);

	AI_Output(self, hero, "Info_Mod_Kimon_HierIstDeinGold_34_01"); //Thank you very much. Now I can resume my round.
	AI_Output(hero, self, "Info_Mod_Kimon_HierIstDeinGold_15_02"); //Where are you rounding off?
	AI_Output(self, hero, "Info_Mod_Kimon_HierIstDeinGold_34_03"); //I usually travel between town and Relendel.
	AI_Output(self, hero, "Info_Mod_Kimon_HierIstDeinGold_34_04"); //Every now and then I made a detour to the valley of the river Minental. But this has become too dangerous for me.
	AI_Output(self, hero, "Info_Mod_Kimon_HierIstDeinGold_34_05"); //Too much cattle and highwaymen on the road.
	AI_Output(hero, self, "Info_Mod_Kimon_HierIstDeinGold_15_06"); //Uh-huh. What are you dealing with?
	AI_Output(self, hero, "Info_Mod_Kimon_HierIstDeinGold_34_07"); //Right now with nothing. I have to buy more. Rarities like these grapes sell best. However, they are not cheap to buy.
	AI_Output(self, hero, "Info_Mod_Kimon_HierIstDeinGold_34_08"); //But I have enough gold again.
	AI_Output(hero, self, "Info_Mod_Kimon_HierIstDeinGold_15_09"); //Good luck with that. Maybe we'll meet again sometime.
	AI_Output(self, hero, "Info_Mod_Kimon_HierIstDeinGold_34_10"); //Maybe. Thank you again.

	B_LogEntry	(TOPIC_MOD_KIMONSTRAUBEN, "I gave Kimon his gold. He'll go to the others now.");
	B_SetTopicStatus	(TOPIC_MOD_KIMONSTRAUBEN, LOG_SUCCESS);

	B_StartOtherRoutine	(self, "WEG");

	B_GivePlayerXP	(250);

	B_Göttergefallen (1, 1);

	Mod_Kimons_Traubenquest = 2;

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Kimon_Pickpocket (C_INFO)
{
	npc		= Mod_1932_FH_Kimon_NW;
	nr		= 1;
	condition	= Info_Mod_Kimon_Pickpocket_Condition;
	information	= Info_Mod_Kimon_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Kimon_Pickpocket_Condition()
{
	C_Beklauen	(98, ItMi_Gold, 41);
};

FUNC VOID Info_Mod_Kimon_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Kimon_Pickpocket);

	Info_AddChoice	(Info_Mod_Kimon_Pickpocket, DIALOG_BACK, Info_Mod_Kimon_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Kimon_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Kimon_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Kimon_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Kimon_Pickpocket);
};

FUNC VOID Info_Mod_Kimon_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Kimon_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Kimon_Pickpocket);

		Info_AddChoice	(Info_Mod_Kimon_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Kimon_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Kimon_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Kimon_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Kimon_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Kimon_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Kimon_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Kimon_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Kimon_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Kimon_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Kimon_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Kimon_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Kimon_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Kimon_EXIT (C_INFO)
{
	npc		= Mod_1932_FH_Kimon_NW;
	nr		= 1;
	condition	= Info_Mod_Kimon_EXIT_Condition;
	information	= Info_Mod_Kimon_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Kimon_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Kimon_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
