INSTANCE Info_Mod_Turgor_Hi (C_INFO)
{
	npc		= Mod_7397_PSINOV_Turgor_REL;
	nr		= 1;
	condition	= Info_Mod_Turgor_Hi_Condition;
	information	= Info_Mod_Turgor_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you doing here?";
};

FUNC INT Info_Mod_Turgor_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Turgor_Hi_Info()
{
	B_Say	(hero, self, "$WASMACHSTDUHIER");

	AI_Output(self, hero, "Info_Mod_Turgor_Hi_27_01"); //I'd like to know that too!
	AI_Output(self, hero, "Info_Mod_Turgor_Hi_27_02"); //"Go to Relendel", haben sie gesagt, "there you have a free market for swampweed."
	AI_Output(self, hero, "Info_Mod_Turgor_Hi_27_03"); //Yeah, but they didn't tell me there was anything better than that!
	AI_Output(self, hero, "Info_Mod_Turgor_Hi_27_04"); //Something to make all the fucking weed unnecessary!

	Info_ClearChoices	(Info_Mod_Turgor_Hi);

	Info_AddChoice	(Info_Mod_Turgor_Hi, "(let them talk and walk away)", Info_Mod_Turgor_Hi_B);
	Info_AddChoice	(Info_Mod_Turgor_Hi, "Who are they?", Info_Mod_Turgor_Hi_A);
};

FUNC VOID Info_Mod_Turgor_Hi_B()
{
	AI_TurnAway	(hero, self);

	AI_Output(self, hero, "Info_Mod_Turgor_Hi_B_27_00"); //And only the people here.... Hey, what are you doing?!

	Info_ClearChoices	(Info_Mod_Turgor_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Turgor_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Turgor_Hi_A_15_00"); //Wer sind "she"?
	AI_Output(self, hero, "Info_Mod_Turgor_Hi_A_27_01"); //Where am I from, huh?
	AI_Output(self, hero, "Info_Mod_Turgor_Hi_A_27_02"); //The old sacks of Gurus probably wanted to get rid of me.
	AI_Output(self, hero, "Info_Mod_Turgor_Hi_A_27_03"); //Let them rot in their swamp!
	AI_Output(self, hero, "Info_Mod_Turgor_Hi_A_27_04"); //I'm not going to do them a favor and come back.
	AI_Output(self, hero, "Info_Mod_Turgor_Hi_A_27_05"); //But it's not much better here. The gurus are at least balanced!
	AI_Output(self, hero, "Info_Mod_Turgor_Hi_A_27_06"); //In Khorata everyone gets on each other's nerves, moaning, are dissatisfied....
	AI_Output(self, hero, "Info_Mod_Turgor_Hi_A_27_07"); //That's no way to deal with each other normally.
	AI_Output(hero, self, "Info_Mod_Turgor_Hi_A_15_08"); //Notice anything unusual?
	AI_Output(self, hero, "Info_Mod_Turgor_Hi_A_27_09"); //(Pause) Oh, shit. (healthy) Yeah, sorry.
	AI_Output(hero, self, "Info_Mod_Turgor_Hi_A_15_10"); //Können wir dann "deal normally with each other"?
	AI_Output(self, hero, "Info_Mod_Turgor_Hi_A_27_11"); //"Of course. Do you have questions or how?

	Info_ClearChoices	(Info_Mod_Turgor_Hi);
};

INSTANCE Info_Mod_Turgor_WieLaeufts (C_INFO)
{
	npc		= Mod_7397_PSINOV_Turgor_REL;
	nr		= 1;
	condition	= Info_Mod_Turgor_WieLaeufts_Condition;
	information	= Info_Mod_Turgor_WieLaeufts_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's up?";
};

FUNC INT Info_Mod_Turgor_WieLaeufts_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turgor_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Turgor_WieLaeufts_Info()
{
	AI_Output(hero, self, "Info_Mod_Turgor_WieLaeufts_15_00"); //How's it going?
	AI_Output(self, hero, "Info_Mod_Turgor_WieLaeufts_27_01"); //Haha, funny. The swampweed grows, but no one wants it. I can only smoke it myself.
};

INSTANCE Info_Mod_Turgor_Freudenspender (C_INFO)
{
	npc		= Mod_7397_PSINOV_Turgor_REL;
	nr		= 1;
	condition	= Info_Mod_Turgor_Freudenspender_Condition;
	information	= Info_Mod_Turgor_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "I'd be happy to see you here.";
};                       

FUNC INT Info_Mod_Turgor_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Turgor_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Turgor_Freudenspender_15_00"); //I'd be happy to see you here.
	AI_Output(self, hero, "Info_Mod_Turgor_Freudenspender_27_01"); //Shut up, you want to ruin me now?! What's happening to my herb?
	AI_Output(hero, self, "Info_Mod_Turgor_Freudenspender_15_02"); //Not then?
	AI_Output(self, hero, "Info_Mod_Turgor_Freudenspender_27_03"); //Shit, give me that. Much better than a fucking stalk.

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	Mod_Freudenspender	+= 1;
};

INSTANCE Info_Mod_Turgor_Pickpocket (C_INFO)
{
	npc		= Mod_7397_PSINOV_Turgor_REL;
	nr		= 1;
	condition	= Info_Mod_Turgor_Pickpocket_Condition;
	information	= Info_Mod_Turgor_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Turgor_Pickpocket_Condition()
{
	C_Beklauen	(76, ItMi_Gold, 29);
};

FUNC VOID Info_Mod_Turgor_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Turgor_Pickpocket);

	Info_AddChoice	(Info_Mod_Turgor_Pickpocket, DIALOG_BACK, Info_Mod_Turgor_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Turgor_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Turgor_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Turgor_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Turgor_Pickpocket);
};

FUNC VOID Info_Mod_Turgor_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Turgor_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Turgor_Pickpocket);

		Info_AddChoice	(Info_Mod_Turgor_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Turgor_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Turgor_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Turgor_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Turgor_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Turgor_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Turgor_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Turgor_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Turgor_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Turgor_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Turgor_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Turgor_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Turgor_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Turgor_EXIT (C_INFO)
{
	npc		= Mod_7397_PSINOV_Turgor_REL;
	nr		= 1;
	condition	= Info_Mod_Turgor_EXIT_Condition;
	information	= Info_Mod_Turgor_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Turgor_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Turgor_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
