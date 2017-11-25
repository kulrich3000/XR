INSTANCE Info_Mod_Josef_Infos (C_INFO)
{
	npc		= Mod_550_NONE_Josef_NW;
	nr		= 1;
	condition	= Info_Mod_Josef_Infos_Condition;
	information	= Info_Mod_Josef_Infos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you Josef?";
};

FUNC INT Info_Mod_Josef_Infos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lester_Fanatiker))
	&& (Npc_HasItems(hero, ItMi_Joint) >= 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andre_Erfahrung_Fanatiker))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Josef_Infos_Info()
{
	AI_Output(hero, self, "Info_Mod_Josef_Infos_15_00"); //Are you Josef?
	AI_Output(self, hero, "Info_Mod_Josef_Infos_13_01"); //Yes, I am him. What do you want from me?
	AI_Output(hero, self, "Info_Mod_Josef_Infos_15_02"); //I'm looking for some misguided gurus.
	AI_Output(self, hero, "Info_Mod_Josef_Infos_13_03"); //Leave me alone with the fuckin' man, I ain't got nothin' to do with that cult no more.
	AI_Output(hero, self, "Info_Mod_Josef_Infos_15_04"); //Would a little swamp herb loosen your tongue?
	AI_Output(self, hero, "Info_Mod_Josef_Infos_13_05"); //Fucking hell.... Give it to me.

	B_GiveInvItems	(hero, self, ItMi_Joint, 1);

	B_UseItem	(self, ItMi_Joint);

	AI_Output(self, hero, "Info_Mod_Josef_Infos_13_06"); //What do you want to know
	AI_Output(hero, self, "Info_Mod_Josef_Infos_15_07"); //Where can I find the rest of the sect?
	AI_Output(self, hero, "Info_Mod_Josef_Infos_13_08"); //I moved to Khorinis with them, but they split up.
	AI_Output(self, hero, "Info_Mod_Josef_Infos_13_09"); //Some of them are in a cave outside of Khorinis, near the harbour district. The others are on the hill, directly in front of Khorinis, there at the lighthouse.
	AI_Output(self, hero, "Info_Mod_Josef_Infos_13_10"); //Don't ask me what they want, they have barricaded themselves there, to which we will hardly come.
	AI_Output(self, hero, "Info_Mod_Josef_Infos_13_11"); //You better leave them alone anyway, until you know exactly what they're up to. Now get out of here!

	B_LogEntry	(TOPIC_MOD_MILIZ_SEKTENSPINNER, "Josef told me there are two groups. One is in a cave outside of Khorinis near the harbour quarter, the other near the lighthouse. I'd rather not touch the lighthouse for the time being.");
};

INSTANCE Info_Mod_Josef_Crawlersekret (C_INFO)
{
	npc		= Mod_550_NONE_Josef_NW;
	nr		= 1;
	condition	= Info_Mod_Josef_Crawlersekret_Condition;
	information	= Info_Mod_Josef_Crawlersekret_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you know a place...";
};

FUNC INT Info_Mod_Josef_Crawlersekret_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Constantino_Lehrling))
	&& (Mod_MinecrawlerEi >= 0)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Constantino_Stimme))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Josef_Crawlersekret_Info()
{
	AI_Output(hero, self, "Info_Mod_Josef_Crawlersekret_15_00"); //Do you know a place where I can get a strong minecrawler secretary?
	AI_Output(self, hero, "Info_Mod_Josef_Crawlersekret_13_01"); //If I'm not mistaken, Fortuno sold some of this stuff. You should stop by his place.
};

INSTANCE Info_Mod_Josef_Pickpocket (C_INFO)
{
	npc		= Mod_550_NONE_Josef_NW;
	nr		= 1;
	condition	= Info_Mod_Josef_Pickpocket_Condition;
	information	= Info_Mod_Josef_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Josef_Pickpocket_Condition()
{
	C_Beklauen	(40, ItMi_SumpfTabak, 2);
};

FUNC VOID Info_Mod_Josef_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Josef_Pickpocket);

	Info_AddChoice	(Info_Mod_Josef_Pickpocket, DIALOG_BACK, Info_Mod_Josef_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Josef_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Josef_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Josef_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Josef_Pickpocket);
};

FUNC VOID Info_Mod_Josef_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Josef_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Josef_Pickpocket);

		Info_AddChoice	(Info_Mod_Josef_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Josef_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Josef_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Josef_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Josef_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Josef_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Josef_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Josef_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Josef_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Josef_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Josef_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Josef_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Josef_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Josef_EXIT (C_INFO)
{
	npc		= Mod_550_NONE_Josef_NW;
	nr		= 1;
	condition	= Info_Mod_Josef_EXIT_Condition;
	information	= Info_Mod_Josef_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Josef_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Josef_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
