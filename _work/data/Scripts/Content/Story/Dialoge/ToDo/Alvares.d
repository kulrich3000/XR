INSTANCE Info_Mod_Alvares_Hi (C_INFO)
{
	npc		= Mod_200_NONE_Alvares_NW;
	nr		= 1;
	condition	= Info_Mod_Alvares_Hi_Condition;
	information	= Info_Mod_Alvares_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Alvares_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Alvares_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Alvares_Hi_11_01"); //I'm Alvares.
};

INSTANCE Info_Mod_Alvares_Knast (C_INFO)
{
	npc		= Mod_200_NONE_Alvares_NW;
	nr		= 1;
	condition	= Info_Mod_Alvares_Knast_Condition;
	information	= Info_Mod_Alvares_Knast_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why are you in prison?";
};

FUNC INT Info_Mod_Alvares_Knast_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alvares_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alvares_Knast_Info()
{
	AI_Output(hero, self, "Info_Mod_Alvares_Knast_15_00"); //Why are you in prison?
	AI_Output(self, hero, "Info_Mod_Alvares_Knast_11_01"); //I was dealing with a militia. That's when they locked me in here.
};

INSTANCE Info_Mod_Alvares_Soeldner (C_INFO)
{
	npc		= Mod_200_NONE_Alvares_NW;
	nr		= 1;
	condition	= Info_Mod_Alvares_Soeldner_Condition;
	information	= Info_Mod_Alvares_Soeldner_Info;
	permanent	= 0;
	important	= 0;
	description	= "You want to join the mercenaries?";
};

FUNC INT Info_Mod_Alvares_Soeldner_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alvares_Knast))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alvares_Soeldner_Info()
{
	AI_Output(hero, self, "Info_Mod_Alvares_Soeldner_15_00"); //You want to join the mercenaries?
	AI_Output(self, hero, "Info_Mod_Alvares_Soeldner_11_01"); //I've played with the idea before, but when I'm in jail here I can hardly join them.
	AI_Output(hero, self, "Info_Mod_Alvares_Soeldner_15_02"); //I could set you free.
	AI_Output(self, hero, "Info_Mod_Alvares_Soeldner_11_03"); //That would be very good.

	B_LogEntry	(TOPIC_MOD_TORLOF_NEUERANW�RTER, "Alvares would join the mercenaries if I got him out of jail.");
};

INSTANCE Info_Mod_Alvares_Frei (C_INFO)
{
	npc		= Mod_200_NONE_Alvares_NW;
	nr		= 1;
	condition	= Info_Mod_Alvares_Frei_Condition;
	information	= Info_Mod_Alvares_Frei_Info;
	permanent	= 0;
	important	= 0;
	description	= "You're free now.";
};

FUNC INT Info_Mod_Alvares_Frei_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_AlvaresGeld))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alvares_Frei_Info()
{
	AI_Output(hero, self, "Info_Mod_Alvares_Frei_15_00"); //You're free now.
	AI_Output(self, hero, "Info_Mod_Alvares_Frei_11_01"); //Then I can go to the mercenaries now?
	AI_Output(hero, self, "Info_Mod_Alvares_Frei_15_02"); //Yeah, I'll take you there.

	B_StartOtherRoutine	(self, "FOLLOWTOHOF");

	B_LogEntry	(TOPIC_MOD_TORLOF_NEUERANW�RTER, "I'll escort Alvares to the yard now.");
};

INSTANCE Info_Mod_Alvares_Hof (C_INFO)
{
	npc		= Mod_200_NONE_Alvares_NW;
	nr		= 1;
	condition	= Info_Mod_Alvares_Hof_Condition;
	information	= Info_Mod_Alvares_Hof_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alvares_Hof_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alvares_Frei))
	&& (Npc_GetDistToWP(self, "NW_BIGFARM_PATH_03") < 2000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alvares_Hof_Info()
{
	AI_Output(self, hero, "Info_Mod_Alvares_Hof_11_00"); //Ah, so these are the mercenaries?
	AI_Output(hero, self, "Info_Mod_Alvares_Hof_15_01"); //Yes, they are.
	AI_Output(self, hero, "Info_Mod_Alvares_Hof_11_02"); //Thanks for bringing me here.

	B_LogEntry	(TOPIC_MOD_TORLOF_NEUERANW�RTER, "I've taken Alvares to the yard now. Now all I have to do is talk to Torlof.");

	Npc_ExchangeRoutine	(self, "ATHOF");

	B_G�ttergefallen(2, 1);
};

INSTANCE Info_Mod_Alvares_Pickpocket (C_INFO)
{
	npc		= Mod_200_NONE_Alvares_NW;
	nr		= 1;
	condition	= Info_Mod_Alvares_Pickpocket_Condition;
	information	= Info_Mod_Alvares_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Alvares_Pickpocket_Condition()
{
	C_Beklauen	(41, ItMi_Gold, 19);
};

FUNC VOID Info_Mod_Alvares_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Alvares_Pickpocket);

	Info_AddChoice	(Info_Mod_Alvares_Pickpocket, DIALOG_BACK, Info_Mod_Alvares_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Alvares_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Alvares_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Alvares_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Alvares_Pickpocket);
};

FUNC VOID Info_Mod_Alvares_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Alvares_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Alvares_Pickpocket);

		Info_AddChoice	(Info_Mod_Alvares_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Alvares_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Alvares_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Alvares_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Alvares_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Alvares_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Alvares_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Alvares_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Alvares_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Alvares_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Alvares_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Alvares_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Alvares_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Alvares_EXIT (C_INFO)
{
	npc		= Mod_200_NONE_Alvares_NW;
	nr		= 1;
	condition	= Info_Mod_Alvares_EXIT_Condition;
	information	= Info_Mod_Alvares_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Alvares_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Alvares_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
