INSTANCE Info_Mod_HSBauer_03_Hi (C_INFO)
{
	npc		= Mod_7017_HS_Bauer_REL;
	nr		= 1;
	condition	= Info_Mod_HSBauer_03_Hi_Condition;
	information	= Info_Mod_HSBauer_03_Hi_Info;
	permanent	= 1;
	important	= 0;
	description	= "How's it coming?";
};

FUNC INT Info_Mod_HSBauer_03_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HSBauer_03_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_HSBauer_03_Hi_15_00"); //How's it coming?
	AI_Output(self, hero, "Info_Mod_HSBauer_03_Hi_05_01"); //I' M NOT CRAZY!
	AI_Output(hero, self, "Info_Mod_HSBauer_03_Hi_15_02"); //I never said that either...
	AI_Output(self, hero, "Info_Mod_HSBauer_03_Hi_05_03"); //Then.... are you my friend?

	Info_ClearChoices	(Info_Mod_HSBauer_03_Hi);

	Info_AddChoice	(Info_Mod_HSBauer_03_Hi, "I' M NOT CRAZY!", Info_Mod_HSBauer_03_Hi_C);
	Info_AddChoice	(Info_Mod_HSBauer_03_Hi, "No.", Info_Mod_HSBauer_03_Hi_B);
	Info_AddChoice	(Info_Mod_HSBauer_03_Hi, "Yes.", Info_Mod_HSBauer_03_Hi_A);
};

FUNC VOID Info_Mod_HSBauer_03_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_HSBauer_03_Hi_C_15_00"); //I' M NOT CRAZY!
	AI_Output(self, hero, "Info_Mod_HSBauer_03_Hi_C_05_01"); //I don't understand that now...

	Info_ClearChoices	(Info_Mod_HSBauer_03_Hi);
};

FUNC VOID Info_Mod_HSBauer_03_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_HSBauer_03_Hi_B_15_00"); //No.
	AI_Output(self, hero, "Info_Mod_HSBauer_03_Hi_B_05_01"); //EISBEIN!

	Info_ClearChoices	(Info_Mod_HSBauer_03_Hi);
};

FUNC VOID Info_Mod_HSBauer_03_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_HSBauer_03_Hi_A_15_00"); //Yeah.
	AI_Output(self, hero, "Info_Mod_HSBauer_03_Hi_A_05_01"); //SAUERKRAUT!

	Info_ClearChoices	(Info_Mod_HSBauer_03_Hi);
};

INSTANCE Info_Mod_HSBauer_03_Pickpocket (C_INFO)
{
	npc		= Mod_7017_HS_Bauer_REL;
	nr		= 1;
	condition	= Info_Mod_HSBauer_03_Pickpocket_Condition;
	information	= Info_Mod_HSBauer_03_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_HSBauer_03_Pickpocket_Condition()
{
	C_Beklauen	(25, ItMi_Gold, 14);
};

FUNC VOID Info_Mod_HSBauer_03_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HSBauer_03_Pickpocket);

	Info_AddChoice	(Info_Mod_HSBauer_03_Pickpocket, DIALOG_BACK, Info_Mod_HSBauer_03_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HSBauer_03_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HSBauer_03_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HSBauer_03_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HSBauer_03_Pickpocket);
};

FUNC VOID Info_Mod_HSBauer_03_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HSBauer_03_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HSBauer_03_Pickpocket);

		Info_AddChoice	(Info_Mod_HSBauer_03_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HSBauer_03_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HSBauer_03_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HSBauer_03_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HSBauer_03_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HSBauer_03_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HSBauer_03_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HSBauer_03_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HSBauer_03_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HSBauer_03_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HSBauer_03_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HSBauer_03_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HSBauer_03_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HSBauer_03_EXIT (C_INFO)
{
	npc		= Mod_7017_HS_Bauer_REL;
	nr		= 1;
	condition	= Info_Mod_HSBauer_03_EXIT_Condition;
	information	= Info_Mod_HSBauer_03_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HSBauer_03_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HSBauer_03_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
