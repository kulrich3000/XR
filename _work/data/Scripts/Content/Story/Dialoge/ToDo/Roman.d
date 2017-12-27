INSTANCE Info_Mod_Roman_Hi (C_INFO)
{
	npc		= Mod_7478_OUT_Roman_REL;
	nr		= 1;
	condition	= Info_Mod_Roman_Hi_Condition;
	information	= Info_Mod_Roman_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's up?";
};

FUNC INT Info_Mod_Roman_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Roman_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Roman_Hi_15_00"); //How's it going?
	AI_Output(self, hero, "Info_Mod_Roman_Hi_08_01"); //You don't know what's going on, do you? Stay away from me! (coughs)
};

INSTANCE Info_Mod_Roman_Endres (C_INFO)
{
	npc		= Mod_7478_OUT_Roman_REL;
	nr		= 1;
	condition	= Info_Mod_Roman_Endres_Condition;
	information	= Info_Mod_Roman_Endres_Info;
	permanent	= 0;
	important	= 0;
	description	= "What do you think of Endres?";
};

FUNC INT Info_Mod_Roman_Endres_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Roman_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Heiler_Endres))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Roman_Endres_Info()
{
	AI_Output(hero, self, "Info_Mod_Roman_Endres_15_00"); //What do you think of Endres?
	AI_Output(self, hero, "Info_Mod_Roman_Endres_08_01"); //His father was a mangy dog, I think.
	AI_Output(self, hero, "Info_Mod_Roman_Endres_08_02"); //And his mother a filthy.... (slight coughing fit)

	Info_ClearChoices	(Info_Mod_Roman_Endres);

	Info_AddChoice	(Info_Mod_Roman_Endres, "Endres is dead.", Info_Mod_Roman_Endres_B);
	Info_AddChoice	(Info_Mod_Roman_Endres, "Why don't you like Endres?", Info_Mod_Roman_Endres_A);
};

FUNC VOID Info_Mod_Roman_Endres_C()
{
	AI_Output(self, hero, "Info_Mod_Roman_Endres_C_08_00"); //Before you breathe again to keep asking me questions, I have to get back to work.
	AI_Output(self, hero, "Info_Mod_Roman_Endres_C_08_01"); //I don't have to have a pay cut for laziness.

	Info_ClearChoices	(Info_Mod_Roman_Endres);
};

FUNC VOID Info_Mod_Roman_Endres_B()
{
	AI_Output(hero, self, "Info_Mod_Roman_Endres_B_15_00"); //Endres ist tot.
	AI_Output(self, hero, "Info_Mod_Roman_Endres_B_08_01"); //Ja, ich weiß. Verdammt, aber das bringt uns nix. Uns wurde gesagt, das Schürfen geht weiter.	
	AI_Output(hero, self, "Info_Mod_Roman_Endres_B_15_02"); //Jemand übernimmt also die Leitung des Projekts?
	AI_Output(self, hero, "Info_Mod_Roman_Endres_B_08_03"); //Muss wohl. Hab' ich davon 'ne Ahnung? (hustet)

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "The miner Roman is not very good at Endres. And who is in charge of the project?");

	Mod_Roman_Endres_02 = 1;

	if (Mod_Roman_Endres_01 == 1)
	{
		Info_Mod_Roman_Endres_C();
	};
};

FUNC VOID Info_Mod_Roman_Endres_A()
{
	AI_Output(hero, self, "Info_Mod_Roman_Endres_A_15_00"); //Why don't you like Endres?
	AI_Output(self, hero, "Info_Mod_Roman_Endres_A_08_01"); //Let me explain that to you. The guy said we're working for a starvation wage to get his ore together for something.
	AI_Output(self, hero, "Info_Mod_Roman_Endres_A_08_02"); //And when we didn't want to do that, he just goes to Anselm and fights his cause! (coughs)
	AI_Output(self, hero, "Info_Mod_Roman_Endres_A_08_03"); //All unemployed and s... songic helpers he was able to find must now shorten their lives here.
	AI_Output(self, hero, "Info_Mod_Roman_Endres_A_08_04"); //Work hits the lungs, kid, I'm telling you.

	Mod_Roman_Endres_01 = 1;

	if (Mod_Roman_Endres_02 == 1)
	{
		Info_Mod_Roman_Endres_C();
	};
};

INSTANCE Info_Mod_Roman_Pickpocket (C_INFO)
{
	npc		= Mod_7478_OUT_Roman_REL;
	nr		= 1;
	condition	= Info_Mod_Roman_Pickpocket_Condition;
	information	= Info_Mod_Roman_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Roman_Pickpocket_Condition()
{
	C_Beklauen	(51, ItMi_Gold, 17);
};

FUNC VOID Info_Mod_Roman_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Roman_Pickpocket);

	Info_AddChoice	(Info_Mod_Roman_Pickpocket, DIALOG_BACK, Info_Mod_Roman_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Roman_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Roman_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Roman_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Roman_Pickpocket);
};

FUNC VOID Info_Mod_Roman_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Roman_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Roman_Pickpocket);

		Info_AddChoice	(Info_Mod_Roman_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Roman_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Roman_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Roman_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Roman_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Roman_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Roman_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Roman_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Roman_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Roman_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Roman_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Roman_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Roman_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Roman_EXIT (C_INFO)
{
	npc		= Mod_7478_OUT_Roman_REL;
	nr		= 1;
	condition	= Info_Mod_Roman_EXIT_Condition;
	information	= Info_Mod_Roman_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Roman_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Roman_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
