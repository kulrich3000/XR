INSTANCE Info_Mod_Ferd_Hi (C_INFO)
{
	npc		= Mod_7520_JG_Ferd_JL;
	nr		= 1;
	condition	= Info_Mod_Ferd_Hi_Condition;
	information	= Info_Mod_Ferd_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "You're one of the hunters who set up a camp here with meat (.... )";
};

FUNC INT Info_Mod_Ferd_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ferd_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Ferd_Hi_15_00"); //You're one of the hunters who feed the camp here with meat and skins?
	AI_Output(self, hero, "Info_Mod_Ferd_Hi_06_01"); //Jo, but I can't hunt right now.
	AI_Output(hero, self, "Info_Mod_Ferd_Hi_15_02"); //Why?
	AI_Output(self, hero, "Info_Mod_Ferd_Hi_06_03"); //Lately I've been caught by a wild boar with her fangs. Now I have a deep wound on my leg.
	AI_Output(hero, self, "Info_Mod_Ferd_Hi_15_04"); //But you survive?
	AI_Output(self, hero, "Info_Mod_Ferd_Hi_06_05"); //Sure. Wulfgar takes care of me.
	AI_Output(hero, self, "Info_Mod_Ferd_Hi_15_06"); //Get well soon.
};

INSTANCE Info_Mod_Ferd_Pickpocket (C_INFO)
{
	npc		= Mod_7520_JG_Ferd_JL;
	nr		= 1;
	condition	= Info_Mod_Ferd_Pickpocket_Condition;
	information	= Info_Mod_Ferd_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Ferd_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 18);
};

FUNC VOID Info_Mod_Ferd_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ferd_Pickpocket);

	Info_AddChoice	(Info_Mod_Ferd_Pickpocket, DIALOG_BACK, Info_Mod_Ferd_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ferd_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ferd_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ferd_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ferd_Pickpocket);
};

FUNC VOID Info_Mod_Ferd_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ferd_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ferd_Pickpocket);

		Info_AddChoice	(Info_Mod_Ferd_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ferd_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ferd_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ferd_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ferd_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ferd_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ferd_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ferd_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ferd_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ferd_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ferd_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ferd_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ferd_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ferd_EXIT (C_INFO)
{
	npc		= Mod_7520_JG_Ferd_JL;
	nr		= 1;
	condition	= Info_Mod_Ferd_EXIT_Condition;
	information	= Info_Mod_Ferd_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ferd_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ferd_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
