INSTANCE Info_Mod_Hilda_Hi (C_INFO)
{
	npc		= Mod_909_BAU_Hilda_NW;
	nr		= 1;
	condition	= Info_Mod_Hilda_Hi_Condition;
	information	= Info_Mod_Hilda_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello, beautiful woman.";
};

FUNC INT Info_Mod_Hilda_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hilda_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Hilda_Hi_15_00"); //Hello, beautiful woman.
	AI_Output(self, hero, "Info_Mod_Hilda_Hi_26_01"); //What do you want?
	AI_Output(hero, self, "Info_Mod_Hilda_Hi_15_02"); //Why so hostile?
	AI_Output(self, hero, "Info_Mod_Hilda_Hi_26_03"); //(dissolved) Oh, lately so many strangers pass by here that you don't even know what you're doing.
	AI_Output(self, hero, "Info_Mod_Hilda_Hi_26_04"); //And not all encounters were of a pleasant nature.
};

INSTANCE Info_Mod_Hilda_Argez (C_INFO)
{
	npc		= Mod_909_BAU_Hilda_NW;
	nr		= 1;
	condition	= Info_Mod_Hilda_Argez_Condition;
	information	= Info_Mod_Hilda_Argez_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who's been here?";
};

FUNC INT Info_Mod_Hilda_Argez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hilda_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hilda_Argez_Info()
{
	AI_Output(hero, self, "Info_Mod_Hilda_Argez_15_00"); //Who's been here?
	AI_Output(self, hero, "Info_Mod_Hilda_Argez_26_01"); //All of them, from the robber to the paladin, and you don't know who the good guys are now and who the bad guys are!
	AI_Output(self, hero, "Info_Mod_Hilda_Argez_26_02"); //A band of robbers has been robbing the area for weeks and stole some of our sheep overnight.
	AI_Output(self, hero, "Info_Mod_Hilda_Argez_26_03"); //Of course, we called the militia, a troop joined us and listened to our problems - and nothing happened afterwards, the robber camp was not found or the attack was too dangerous.
	AI_Output(self, hero, "Info_Mod_Hilda_Argez_26_04"); //The highlight was that after the visit of the militiamen more things were missing than the robbers stole from us.
	AI_Output(self, hero, "Info_Mod_Hilda_Argez_26_05"); //They're all dirty bastards, none of them with any value.
	AI_Output(self, hero, "Info_Mod_Hilda_Argez_26_06"); //And since the fall of the barrier, former convicts have been passing by again and again, but keep quiet because Lobart has a big heart.
	AI_Output(self, hero, "Info_Mod_Hilda_Argez_26_07"); //Then it became too much for him only with the tattooed. He really scared the shit out of him.
	AI_Output(self, hero, "Info_Mod_Hilda_Argez_26_08"); //He only asked for work, but in such a funny way, as if he was going crazy at the next moment.

	if (!Npc_KnowsInfo(hero, Info_Mod_Argez_NW_InCity))
	{
		AI_Output(self, hero, "Info_Mod_Hilda_Argez_26_09"); //I gave him a soup to go, but since he was probably not allowed into the city, he is still standing on the way in front of the fields.
		AI_Output(self, hero, "Info_Mod_Hilda_Argez_26_10"); //If you get him out of there, I'm sure we could sleep better.

		Log_CreateTopic	(TOPIC_MOD_HILDA_ARGEZ, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_HILDA_ARGEZ, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_HILDA_ARGEZ, "On the way to the city gate a strange stranger, whom Hilda the farmer's wife fears, is said to be there. She'd really like him to get out of there.");

		Mod_Hilda_Argez = 1;
	};
};

INSTANCE Info_Mod_Hilda_Argez2 (C_INFO)
{
	npc		= Mod_909_BAU_Hilda_NW;
	nr		= 1;
	condition	= Info_Mod_Hilda_Argez2_Condition;
	information	= Info_Mod_Hilda_Argez2_Info;
	permanent	= 0;
	important	= 0;
	description	= "The stranger is now in town.";
};

FUNC INT Info_Mod_Hilda_Argez2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_NW_InCity))
	&& (Mod_Hilda_Argez == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hilda_Argez2_Info()
{
	AI_Output(hero, self, "Info_Mod_Hilda_Argez2_15_00"); //The stranger is now in town.
	AI_Output(self, hero, "Info_Mod_Hilda_Argez2_26_01"); //I'm getting a load off my chest. Here, have some warm soup.

	B_GiveInvItems	(self, hero, ItFo_Fleischeintopf, 1);

	B_GivePlayerXP	(50);

	CurrentNQ += 1;

		B_LogEntry	(TOPIC_MOD_HILDA_ARGEZ, "I told Hilda that Argez is now in town. She should be reassured now.");
	B_SetTopicStatus	(TOPIC_MOD_HILDA_ARGEZ, LOG_SUCCESS);
};

INSTANCE Info_Mod_Hilda_Pickpocket (C_INFO)
{
	npc		= Mod_909_BAU_Hilda_NW;
	nr		= 1;
	condition	= Info_Mod_Hilda_Pickpocket_Condition;
	information	= Info_Mod_Hilda_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Hilda_Pickpocket_Condition()
{
	C_Beklauen	(45, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Hilda_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Hilda_Pickpocket);

	Info_AddChoice	(Info_Mod_Hilda_Pickpocket, DIALOG_BACK, Info_Mod_Hilda_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Hilda_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Hilda_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Hilda_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Hilda_Pickpocket);
};

FUNC VOID Info_Mod_Hilda_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Hilda_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Hilda_Pickpocket);

		Info_AddChoice	(Info_Mod_Hilda_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Hilda_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Hilda_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Hilda_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Hilda_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Hilda_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Hilda_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Hilda_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Hilda_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Hilda_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Hilda_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Hilda_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Hilda_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Hilda_EXIT (C_INFO)
{
	npc		= Mod_909_BAU_Hilda_NW;
	nr		= 1;
	condition	= Info_Mod_Hilda_EXIT_Condition;
	information	= Info_Mod_Hilda_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hilda_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hilda_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
