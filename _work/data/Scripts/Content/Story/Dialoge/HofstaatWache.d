INSTANCE Info_Mod_HofstaatWache_Hi (C_INFO)
{
	npc		= Mod_7014_HS_Wache_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatWache_Hi_Condition;
	information	= Info_Mod_HofstaatWache_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatWache_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatWache_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatWache_Hi_07_00"); //Hey! What are you doing here?

	Info_ClearChoices	(Info_Mod_HofstaatWache_Hi);

	Info_AddChoice	(Info_Mod_HofstaatWache_Hi, "What was that all about?", Info_Mod_HofstaatWache_Hi_C);
	Info_AddChoice	(Info_Mod_HofstaatWache_Hi, "I want to go in there!", Info_Mod_HofstaatWache_Hi_B);
	Info_AddChoice	(Info_Mod_HofstaatWache_Hi, "l-- I have no idea.", Info_Mod_HofstaatWache_Hi_A);
};

FUNC VOID Info_Mod_HofstaatWache_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_HofstaatWache_Hi_C_15_00"); //What was that all about?
	AI_Output(self, hero, "Info_Mod_HofstaatWache_Hi_C_07_01"); //This? Fluffy's lunch.

	Info_ClearChoices	(Info_Mod_HofstaatWache_Hi);
};

FUNC VOID Info_Mod_HofstaatWache_Hi_C()
{
	AI_Output(self, hero, "Info_Mod_HofstaatWache_Hi_D_07_00"); //By the way, you're royal rabble now!
	AI_Output(hero, self, "Info_Mod_HofstaatWache_Hi_D_15_01"); //Mob?
	AI_Output(self, hero, "Info_Mod_HofstaatWache_Hi_D_07_02"); //ROYAL PEASANT! Now get out of here.
};

FUNC VOID Info_Mod_HofstaatWache_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_HofstaatWache_Hi_B_15_00"); //I want to go in there!
	AI_Output(self, hero, "Info_Mod_HofstaatWache_Hi_B_07_01"); //You'll need a passport.
	AI_Output(hero, self, "Info_Mod_HofstaatWache_Hi_B_15_02"); //Where do I get a passport from?

	if (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		AI_Output(self, hero, "Info_Mod_HofstaatWache_Hi_B_07_03"); //That's 100 pieces of gold.

		B_GiveInvItems	(hero, self, ItMi_Gold, 100);
	};

	AI_Output(self, hero, "Info_Mod_HofstaatWache_Hi_B_07_04"); //Here.

	B_GiveInvItems	(self, hero, ItWr_Passierschein_HS, 1);

	Info_Mod_HofstaatWache_Hi_D();
};

FUNC VOID Info_Mod_HofstaatWache_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_HofstaatWache_Hi_A_15_00"); //l-- I have no idea.
	AI_Output(self, hero, "Info_Mod_HofstaatWache_Hi_A_07_01"); //Then you're one of us. You may pass.

	Info_Mod_HofstaatWache_Hi_D();
};

INSTANCE Info_Mod_HofstaatWache_Pickpocket (C_INFO)
{
	npc		= Mod_7014_HS_Wache_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatWache_Pickpocket_Condition;
	information	= Info_Mod_HofstaatWache_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_HofstaatWache_Pickpocket_Condition()
{
	C_Beklauen	(95, ItMi_Freudenspender, 3);
};

FUNC VOID Info_Mod_HofstaatWache_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HofstaatWache_Pickpocket);

	Info_AddChoice	(Info_Mod_HofstaatWache_Pickpocket, DIALOG_BACK, Info_Mod_HofstaatWache_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HofstaatWache_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HofstaatWache_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HofstaatWache_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HofstaatWache_Pickpocket);
};

FUNC VOID Info_Mod_HofstaatWache_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HofstaatWache_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HofstaatWache_Pickpocket);

		Info_AddChoice	(Info_Mod_HofstaatWache_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HofstaatWache_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HofstaatWache_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HofstaatWache_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HofstaatWache_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HofstaatWache_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HofstaatWache_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HofstaatWache_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HofstaatWache_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HofstaatWache_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HofstaatWache_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HofstaatWache_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HofstaatWache_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HofstaatWache_EXIT (C_INFO)
{
	npc		= Mod_7014_HS_Wache_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatWache_EXIT_Condition;
	information	= Info_Mod_HofstaatWache_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatWache_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatWache_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
