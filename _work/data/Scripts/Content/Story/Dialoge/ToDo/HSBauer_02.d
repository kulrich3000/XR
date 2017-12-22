INSTANCE Info_Mod_HSBauer_02_Hi (C_INFO)
{
	npc		= Mod_7016_HS_Bauer_REL;
	nr		= 1;
	condition	= Info_Mod_HSBauer_02_Hi_Condition;
	information	= Info_Mod_HSBauer_02_Hi_Info;
	permanent	= 1;
	important	= 0;
	description	= "Jak to sie dzieje?";
};

FUNC INT Info_Mod_HSBauer_02_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HSBauer_02_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_HSBauer_02_Hi_15_00"); //Jak to sie dzieje?
	AI_Output(self, hero, "Info_Mod_HSBauer_02_Hi_05_01"); //Ja i moi przyjaciele z karlowatymi przyjaci�lkami gramy w pokera.
	AI_Output(hero, self, "Info_Mod_HSBauer_02_Hi_15_02"); //I.... Kto wygrywa?
	AI_Output(self, hero, "Info_Mod_HSBauer_02_Hi_05_03"); //Potezny kosmicki karzel. Jest on najlepszym blefem - jest najlepszy.
};

INSTANCE Info_Mod_HSBauer_02_Pickpocket (C_INFO)
{
	npc		= Mod_7016_HS_Bauer_REL;
	nr		= 1;
	condition	= Info_Mod_HSBauer_02_Pickpocket_Condition;
	information	= Info_Mod_HSBauer_02_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_HSBauer_02_Pickpocket_Condition()
{
	C_Beklauen	(20, ItMi_Gold, 11);
};

FUNC VOID Info_Mod_HSBauer_02_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HSBauer_02_Pickpocket);

	Info_AddChoice	(Info_Mod_HSBauer_02_Pickpocket, DIALOG_BACK, Info_Mod_HSBauer_02_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HSBauer_02_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HSBauer_02_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HSBauer_02_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HSBauer_02_Pickpocket);
};

FUNC VOID Info_Mod_HSBauer_02_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HSBauer_02_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HSBauer_02_Pickpocket);

		Info_AddChoice	(Info_Mod_HSBauer_02_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HSBauer_02_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HSBauer_02_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HSBauer_02_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HSBauer_02_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HSBauer_02_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HSBauer_02_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HSBauer_02_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HSBauer_02_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HSBauer_02_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HSBauer_02_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HSBauer_02_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HSBauer_02_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HSBauer_02_EXIT (C_INFO)
{
	npc		= Mod_7016_HS_Bauer_REL;
	nr		= 1;
	condition	= Info_Mod_HSBauer_02_EXIT_Condition;
	information	= Info_Mod_HSBauer_02_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HSBauer_02_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HSBauer_02_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
