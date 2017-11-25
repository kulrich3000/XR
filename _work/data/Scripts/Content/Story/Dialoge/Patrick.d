INSTANCE Info_Mod_Patrick_Hi (C_INFO)
{
	npc		= Mod_792_SLD_Patrick_MT;
	nr		= 1;
	condition	= Info_Mod_Patrick_Hi_Condition;
	information	= Info_Mod_Patrick_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello, how are you?";
};

FUNC INT Info_Mod_Patrick_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Patrick_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Patrick_Hi_15_00"); //Hello, how are you?
	AI_Output(self, hero, "Info_Mod_Patrick_Hi_07_01"); //Well, it's not that easy to turn the boys into real fighters.
};

INSTANCE Info_Mod_Patrick_Training (C_INFO)
{
	npc		= Mod_792_SLD_Patrick_MT;
	nr		= 1;
	condition	= Info_Mod_Patrick_Training_Condition;
	information	= Info_Mod_Patrick_Training_Info;
	permanent	= 0;
	important	= 0;
	description	= "Is there anything I can do to help?";
};

FUNC INT Info_Mod_Patrick_Training_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Patrick_Hi))
	&& (hero.guild == GIL_MIL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Patrick_Training_Info()
{
	AI_Output(hero, self, "Info_Mod_Patrick_Training_15_00"); //Is there anything I can do to help?
	AI_Output(self, hero, "Info_Mod_Patrick_Training_07_01"); //Yes, you could, indeed. Some of the boys have been avoiding practice for quite a long time.
	AI_Output(self, hero, "Info_Mod_Patrick_Training_07_02"); //There's Shrike, Rath and Blade. Tell them to move their lame bones to me sometime.

	Log_CreateTopic	(TOPIC_MOD_SLD_PATRICK, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SLD_PATRICK, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SLD_PATRICK, "Patrick told me to get Shrike, Rath and Blade to work out.");
};

INSTANCE Info_Mod_Patrick_SindAlleDa (C_INFO)
{
	npc		= Mod_792_SLD_Patrick_MT;
	nr		= 1;
	condition	= Info_Mod_Patrick_SindAlleDa_Condition;
	information	= Info_Mod_Patrick_SindAlleDa_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Patrick_SindAlleDa_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Patrick_Training))
	&& (Mod_SLD_Rath == 3)
	&& (Mod_SLD_Shrike == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Blade_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Patrick_SindAlleDa_Info()
{
	AI_Output(self, hero, "Info_Mod_Patrick_SindAlleDa_07_00"); //Excellent, Rath and Blade you have already moved to appear for training. All we need now is Shrike.
	AI_Output(hero, self, "Info_Mod_Patrick_SindAlleDa_15_01"); //What, but I sent him....
	AI_Output(self, hero, "Info_Mod_Patrick_SindAlleDa_07_02"); //Well, well, it usually takes a little longer with him, because he often takes a detour to the pub. Well, go and give him legs.

	B_LogEntry	(TOPIC_MOD_SLD_PATRICK, "Great, now I can get Shrike out of the pub to practice.");
};

INSTANCE Info_Mod_Patrick_ShrikeNichtInKneipe (C_INFO)
{
	npc		= Mod_792_SLD_Patrick_MT;
	nr		= 1;
	condition	= Info_Mod_Patrick_ShrikeNichtInKneipe_Condition;
	information	= Info_Mod_Patrick_ShrikeNichtInKneipe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Shrike wasn't in the pub.";
};

FUNC INT Info_Mod_Patrick_ShrikeNichtInKneipe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Patrick_SindAlleDa))
	&& (Mod_SLD_Shrike == 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Patrick_ShrikeDa))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Patrick_ShrikeNichtInKneipe_Info()
{
	AI_Output(hero, self, "Info_Mod_Patrick_ShrikeNichtInKneipe_15_00"); //Shrike wasn't in the pub.
	AI_Output(self, hero, "Info_Mod_Patrick_ShrikeNichtInKneipe_07_01"); //Hmm, well. Um, then I'd stop by the warehouse if I were you.

	B_LogEntry	(TOPIC_MOD_SLD_PATRICK, "Patrick said that Shrike could be outside the camp.");
};

INSTANCE Info_Mod_Patrick_ShrikeDa (C_INFO)
{
	npc		= Mod_792_SLD_Patrick_MT;
	nr		= 1;
	condition	= Info_Mod_Patrick_ShrikeDa_Condition;
	information	= Info_Mod_Patrick_ShrikeDa_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Patrick_ShrikeDa_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Shrike_NoSmokingNow))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Patrick_ShrikeDa_Info()
{
	AI_Output(self, hero, "Info_Mod_Patrick_ShrikeDa_07_00"); //Hey, you actually managed to get Shrike to practice, too. I'm impressed.
	AI_Output(self, hero, "Info_Mod_Patrick_ShrikeDa_07_01"); //Here's some gold and ore. Lee only gets to hear the best of me.

	B_ShowGivenThings	("300 gold and 4 ore preserved");

	CreateInvItems	(hero, ItMi_Gold, 300);
	CreateInvItems	(hero, ItMi_Nugget, 4);

	B_GivePlayerXP	(400);

	B_SetTopicStatus	(TOPIC_MOD_SLD_PATRICK, LOG_SUCCESS);

	B_StartOtherRoutine	(Mod_1292_SLD_Shrike_MT, "TRAINING");
};

INSTANCE Info_Mod_Patrick_Pickpocket (C_INFO)
{
	npc		= Mod_792_SLD_Patrick_MT;
	nr		= 1;
	condition	= Info_Mod_Patrick_Pickpocket_Condition;
	information	= Info_Mod_Patrick_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Patrick_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_Patrick_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Patrick_Pickpocket);

	Info_AddChoice	(Info_Mod_Patrick_Pickpocket, DIALOG_BACK, Info_Mod_Patrick_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Patrick_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Patrick_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Patrick_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Patrick_Pickpocket);
};

FUNC VOID Info_Mod_Patrick_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Patrick_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Patrick_Pickpocket);

		Info_AddChoice	(Info_Mod_Patrick_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Patrick_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Patrick_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Patrick_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Patrick_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Patrick_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Patrick_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Patrick_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Patrick_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Patrick_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Patrick_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Patrick_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Patrick_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Patrick_EXIT (C_INFO)
{
	npc		= Mod_792_SLD_Patrick_MT;
	nr		= 1;
	condition	= Info_Mod_Patrick_EXIT_Condition;
	information	= Info_Mod_Patrick_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Patrick_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Patrick_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
