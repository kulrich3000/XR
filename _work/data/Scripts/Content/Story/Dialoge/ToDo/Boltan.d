INSTANCE Info_Mod_Boltan_Hi (C_INFO)
{
	npc		= Mod_564_MIL_Boltan_NW;
	nr		= 1;
	condition	= Info_Mod_Boltan_Hi_Condition;
	information	= Info_Mod_Boltan_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's there to guard here?";
};

FUNC INT Info_Mod_Boltan_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Boltan_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Boltan_Hi_15_00"); //What's there to guard here?
	AI_Output(self, hero, "Info_Mod_Boltan_Hi_30_01"); //Mostly my lunch.
	AI_Output(hero, self, "Info_Mod_Boltan_Hi_15_02"); //Sounds like a relaxed job.
	AI_Output(self, hero, "Info_Mod_Boltan_Hi_30_03"); //Is the most popular job here. If you don't feel like training.
	AI_Output(hero, self, "Info_Mod_Boltan_Hi_15_04"); //Then you're a lucky guy.
	AI_Output(self, hero, "Info_Mod_Boltan_Hi_30_05"); //Yeah, man. Lucky bastard.
};

INSTANCE Info_Mod_Boltan_ZellenBelegt (C_INFO)
{
	npc		= Mod_564_MIL_Boltan_NW;
	nr		= 1;
	condition	= Info_Mod_Boltan_ZellenBelegt_Condition;
	information	= Info_Mod_Boltan_ZellenBelegt_Info;
	permanent	= 0;
	important	= 0;
	description	= "How often are the cells occupied?";
};

FUNC INT Info_Mod_Boltan_ZellenBelegt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Boltan_Hi)) {
		return 1;
	};
};

FUNC VOID Info_Mod_Boltan_ZellenBelegt_Info()
{
	AI_Output(hero, self, "Info_Mod_Boltan_ZellenBelegt_15_00"); //How often are the cells occupied?
	AI_Output(self, hero, "Info_Mod_Boltan_ZellenBelegt_30_01"); //Every now and then, someone comes by for a few days. Matteo was in there, shit his customers, Valentino was in there, beat up Coragon drunk.
	AI_Output(self, hero, "Info_Mod_Boltan_ZellenBelegt_30_02"); //But there hasn't been anything serious for a long time. Maybe this will change now.
	AI_Output(hero, self, "Info_Mod_Boltan_ZellenBelegt_15_03"); //Why would anything change?
	AI_Output(self, hero, "Info_Mod_Boltan_ZellenBelegt_30_04"); //I don't know, all the criminals are from the Mental. They're easy to lock up.
};

INSTANCE Info_Mod_Boltan_WasGeht (C_INFO)
{
	npc		= Mod_564_MIL_Boltan_NW;
	nr		= 1;
	condition	= Info_Mod_Boltan_WasGeht_Condition;
	information	= Info_Mod_Boltan_WasGeht_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you doing all the time?";
};

FUNC INT Info_Mod_Boltan_WasGeht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Boltan_Hi)) {
		return 1;
	};
};

FUNC VOID Info_Mod_Boltan_WasGeht_Info()
{
	AI_Output(hero, self, "Info_Mod_Boltan_WasGeht_15_00"); //What are you doing all the time?
	AI_Output(self, hero, "Info_Mod_Boltan_WasGeht_30_01"); //Well, I make up stories.
	AI_Output(hero, self, "Info_Mod_Boltan_WasGeht_15_02"); //Stories?
	AI_Output(self, hero, "Info_Mod_Boltan_WasGeht_30_03"); //Yeah, man, stories. If I were a hero, what I'd live to see. Knight Boltan in the fight against the fire dragon, Knight Boltan destroys the Beliar rabble....
	AI_Output(hero, self, "Info_Mod_Boltan_WasGeht_15_04"); //And you'll write that down?
	AI_Output(self, hero, "Info_Mod_Boltan_WasGeht_30_05"); //Nah, I can't write.
	AI_Output(hero, self, "Info_Mod_Boltan_WasGeht_15_06"); //Maybe it's better that way...
};

INSTANCE Info_Mod_Boltan_Daemonisch (C_INFO)
{
	npc		= Mod_564_MIL_Boltan_NW;
	nr		= 1;
	condition	= Info_Mod_Boltan_Daemonisch_Condition;
	information	= Info_Mod_Boltan_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Boltan_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tengron_Daemonisch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Boltan_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Boltan_Daemonisch_30_00"); //Hey, it's forbidden to speak to the prisoner...
	AI_Output(hero, self, "Info_Mod_Boltan_Daemonisch_15_01"); //What? But...
	AI_Output(self, hero, "Info_Mod_Boltan_Daemonisch_30_02"); //Arranged some paladins. Well, that concludes the conversation.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Pretty creepy what Tengron tells me. He found the paladins and guards lifeless in the valley and suddenly saw himself surrounded by dozens of black shadows scattered under his paladin light. Unfortunately, a decree of some paladins prevented me from learning more....");

	B_GivePlayerXP	(250);
};

INSTANCE Info_Mod_Boltan_Hilfe (C_INFO)
{
	npc		= Mod_564_MIL_Boltan_NW;
	nr		= 1;
	condition	= Info_Mod_Boltan_Hilfe_Condition;
	information	= Info_Mod_Boltan_Hilfe_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Boltan_Hilfe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Meldor))
	&& (Wld_GetDay() > Mod_Andre_WaitForKnast)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Boltan_Hilfe_Info()
{
	AI_Output(self, hero, "Info_Mod_Boltan_Hilfe_30_00"); //So you're gonna relieve me? Watch out, those bastards are sneaky.
	AI_Output(hero, self, "Info_Mod_Boltan_Hilfe_15_01"); //I'll keep that in mind.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "PAUSE");
};

INSTANCE Info_Mod_Boltan_TomKraut (C_INFO)
{
	npc		= Mod_564_MIL_Boltan_NW;
	nr		= 1;
	condition	= Info_Mod_Boltan_TomKraut_Condition;
	information	= Info_Mod_Boltan_TomKraut_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Boltan_TomKraut_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tom_Krautquest2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Boltan_TomKraut_Info()
{
	AI_Output(self, hero, "Info_Mod_Boltan_TomKraut_30_00"); //(interrupts) Hey, you. Lord Andre has ordered us not to speak to the prisoner for the time being.
	AI_Output(hero, self, "Info_Mod_Boltan_TomKraut_15_01"); //But...
	AI_Output(self, hero, "Info_Mod_Boltan_TomKraut_30_02"); //No but.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_TOM_KRAUT, "The herb is probably in the evidence chest behind Andre. Stealing it won't do any good, though. The gatekeepers at the East Gate, including Mika, can testify how they took it from him. Tom mentioned another herb, which should look very similar to swampweed, before Boltan forbade us to continue the conversation....");
};

INSTANCE Info_Mod_Boltan_HaradLehrling (C_INFO)
{
	npc		= Mod_564_MIL_Boltan_NW;
	nr		= 1;
	condition	= Info_Mod_Boltan_HaradLehrling_Condition;
	information	= Info_Mod_Boltan_HaradLehrling_Info;
	permanent	= 0;
	important	= 0;
	description	= "One of the prisoners is dead!";
};

FUNC INT Info_Mod_Boltan_HaradLehrling_Condition()
{
	if (Mod_HaradLehrling_Kap4 == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Boltan_HaradLehrling_Info()
{
	AI_Output(hero, self, "Info_Mod_Boltan_HaradLehrling_15_00"); //One of the prisoners is dead!
	AI_Output(self, hero, "Info_Mod_Boltan_HaradLehrling_30_01"); //Yeah, that's right. Well observed.
	AI_Output(hero, self, "Info_Mod_Boltan_HaradLehrling_15_02"); //Don't you want to get him out?
	AI_Output(self, hero, "Info_Mod_Boltan_HaradLehrling_30_03"); //As long as he doesn't stink or we need the space, he can stay in his cell.
	AI_Output(self, hero, "Info_Mod_Boltan_HaradLehrling_30_04"); //As long as I don't have to touch him.
};

INSTANCE Info_Mod_Boltan_HaradLehrling2 (C_INFO)
{
	npc		= Mod_564_MIL_Boltan_NW;
	nr		= 1;
	condition	= Info_Mod_Boltan_HaradLehrling2_Condition;
	information	= Info_Mod_Boltan_HaradLehrling2_Info;
	permanent	= 0;
	important	= 0;
	description	= "How did Harad die?";
};

FUNC INT Info_Mod_Boltan_HaradLehrling2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Boltan_HaradLehrling))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Boltan_HaradLehrling2_Info()
{
	AI_Output(hero, self, "Info_Mod_Boltan_HaradLehrling2_15_00"); //How did Harad die?
	AI_Output(self, hero, "Info_Mod_Boltan_HaradLehrling2_30_01"); //He had a dagger with him. He's already broken another rule.
	AI_Output(self, hero, "Info_Mod_Boltan_HaradLehrling2_30_02"); //It is forbidden to take pointed objects into the cell.
	AI_Output(self, hero, "Info_Mod_Boltan_HaradLehrling2_30_03"); //Well, he would have ended up in Beliar's kingdom anyway.
};

INSTANCE Info_Mod_Boltan_HaradLehrling3 (C_INFO)
{
	npc		= Mod_564_MIL_Boltan_NW;
	nr		= 1;
	condition	= Info_Mod_Boltan_HaradLehrling3_Condition;
	information	= Info_Mod_Boltan_HaradLehrling3_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm supposed to get Harad out of jail!";
};

FUNC INT Info_Mod_Boltan_HaradLehrling3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest8))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andre_HaradLehrling))
	&& (Mod_HaradLehrling_Kap4 == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Boltan_HaradLehrling3_Info()
{
	AI_Output(hero, self, "Info_Mod_Boltan_HaradLehrling3_15_00"); //I'm supposed to get Harad out of jail!
	AI_Output(self, hero, "Info_Mod_Boltan_HaradLehrling3_30_01"); //Yes? Who gave you permission? Tengron? Lord Andre?
	AI_Output(hero, self, "Info_Mod_Boltan_HaradLehrling3_15_02"); //No one so far...

	if (Mod_HaradLehrling_Boltan == 0)
	{
		Mod_HaradLehrling_Boltan = 1;

		B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_FOUR, "I need permission from Lord Andre or Tengron to get Harad out of jail.");
	};
};

INSTANCE Info_Mod_Boltan_Pickpocket (C_INFO)
{
	npc		= Mod_564_MIL_Boltan_NW;
	nr		= 1;
	condition	= Info_Mod_Boltan_Pickpocket_Condition;
	information	= Info_Mod_Boltan_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Boltan_Pickpocket_Condition()
{
	C_Beklauen	(80, ItMi_Gold, 25);
};

FUNC VOID Info_Mod_Boltan_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Boltan_Pickpocket);

	Info_AddChoice	(Info_Mod_Boltan_Pickpocket, DIALOG_BACK, Info_Mod_Boltan_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Boltan_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Boltan_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Boltan_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Boltan_Pickpocket);
};

FUNC VOID Info_Mod_Boltan_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Boltan_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Boltan_Pickpocket);

		Info_AddChoice	(Info_Mod_Boltan_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Boltan_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Boltan_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Boltan_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Boltan_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Boltan_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Boltan_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Boltan_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Boltan_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Boltan_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Boltan_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Boltan_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Boltan_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Boltan_EXIT (C_INFO)
{
	npc		= Mod_564_MIL_Boltan_NW;
	nr		= 1;
	condition	= Info_Mod_Boltan_EXIT_Condition;
	information	= Info_Mod_Boltan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Boltan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Boltan_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
