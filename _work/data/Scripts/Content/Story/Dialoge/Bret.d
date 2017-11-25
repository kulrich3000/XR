INSTANCE Info_Mod_Bret_Hi (C_INFO)
{
	npc		= Mod_7414_JG_Bret_NW;
	nr		= 1;
	condition	= Info_Mod_Bret_Hi_Condition;
	information	= Info_Mod_Bret_Hi_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Bret_Hi_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (Jäger_Dabei == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bret_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Bret_Hi_08_00"); //If you want something from us, go to Dragomir.
};

INSTANCE Info_Mod_Bret_PreJaeger (C_INFO)
{
	npc		= Mod_7414_JG_Bret_NW;
	nr		= 1;
	condition	= Info_Mod_Bret_PreJaeger_Condition;
	information	= Info_Mod_Bret_PreJaeger_Info;
	permanent	= 0;
	important	= 0;
	description	= "All right, I will. But I want to know something about you, too.";
};

FUNC INT Info_Mod_Bret_PreJaeger_Condition()
{
	if (Jäger_Dabei == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bret_PreJaeger_Info()
{
	AI_Output(hero, self, "Info_Mod_Bret_PreJaeger_15_00"); //All right, I will. But I want to know something about you, too.
	AI_Output(self, hero, "Info_Mod_Bret_PreJaeger_08_01"); //And what's that?
	AI_Output(hero, self, "Info_Mod_Bret_PreJaeger_15_02"); //How did you get here?
	AI_Output(self, hero, "Info_Mod_Bret_PreJaeger_08_03"); //Stupid question. Walked from town.
	AI_Output(hero, self, "Info_Mod_Bret_PreJaeger_15_04"); //That's not what I mean. Why are you in this camp?
	AI_Output(self, hero, "Info_Mod_Bret_PreJaeger_08_05"); //When I was old enough, Master Bosper taught me.
	AI_Output(self, hero, "Info_Mod_Bret_PreJaeger_08_06"); //Just like my brother and my father.
	AI_Output(hero, self, "Info_Mod_Bret_PreJaeger_15_07"); //Then you were born here?
	AI_Output(self, hero, "Info_Mod_Bret_PreJaeger_08_08"); //Yeah, like most hunters on the island.
	AI_Output(self, hero, "Info_Mod_Bret_PreJaeger_08_09"); //And after my apprenticeship, I joined Dragomir's troop here. It wasn't that long ago.
	AI_Output(self, hero, "Info_Mod_Bret_PreJaeger_08_10"); //Do you want to join the hunters?
	AI_Output(hero, self, "Info_Mod_Bret_PreJaeger_15_11"); //I haven't decided yet. Let's see now.
};

INSTANCE Info_Mod_Bret_Ambient (C_INFO)
{
	npc		= Mod_7414_JG_Bret_NW;
	nr		= 1;
	condition	= Info_Mod_Bret_Ambient_Condition;
	information	= Info_Mod_Bret_Ambient_Info;
	permanent	= 0;
	important	= 0;
	description	= "Now I've been accepted by the hunters.";
};

FUNC INT Info_Mod_Bret_Ambient_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (Jäger_Dabei == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bret_Ambient_Info()
{
	AI_Output(hero, self, "Info_Mod_Bret_Ambient_15_00"); //Now I've been accepted by the hunters.
	AI_Output(self, hero, "Info_Mod_Bret_Ambient_08_01"); //(unmotivated) I can see it. Welcome, welcome.
	AI_Output(hero, self, "Info_Mod_Bret_Ambient_15_02"); //Any tips you want to give me on my way?
	AI_Output(self, hero, "Info_Mod_Bret_Ambient_08_03"); //Go to Dragomir, he'll have a mission for you.
	AI_Output(hero, self, "Info_Mod_Bret_Ambient_15_04"); //Oh, yeah.
};

INSTANCE Info_Mod_Bret_Pickpocket (C_INFO)
{
	npc		= Mod_7414_JG_Bret_NW;
	nr		= 1;
	condition	= Info_Mod_Bret_Pickpocket_Condition;
	information	= Info_Mod_Bret_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Bret_Pickpocket_Condition()
{
	C_Beklauen	(60, ItAt_Claw, 2);
};

FUNC VOID Info_Mod_Bret_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bret_Pickpocket);

	Info_AddChoice	(Info_Mod_Bret_Pickpocket, DIALOG_BACK, Info_Mod_Bret_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bret_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bret_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bret_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bret_Pickpocket);
};

FUNC VOID Info_Mod_Bret_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bret_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bret_Pickpocket);

		Info_AddChoice	(Info_Mod_Bret_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bret_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bret_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bret_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bret_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bret_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bret_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bret_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bret_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bret_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bret_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bret_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bret_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bret_EXIT (C_INFO)
{
	npc		= Mod_7414_JG_Bret_NW;
	nr		= 1;
	condition	= Info_Mod_Bret_EXIT_Condition;
	information	= Info_Mod_Bret_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bret_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bret_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
