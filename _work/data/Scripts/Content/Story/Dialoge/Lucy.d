INSTANCE Info_Mod_Lucy_Hi (C_INFO)
{
	npc		= Mod_593_NONE_Lucy_NW;
	nr		= 1;
	condition	= Info_Mod_Lucy_Hi_Condition;
	information	= Info_Mod_Lucy_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Lucy_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lucy_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Lucy_Hi_17_01"); //Jestem Lucy i pracuje tutaj.
};

INSTANCE Info_Mod_Lucy_Sumpfkraut (C_INFO)
{
	npc		= Mod_593_NONE_Lucy_NW;
	nr		= 1;
	condition	= Info_Mod_Lucy_Sumpfkraut_Condition;
	information	= Info_Mod_Lucy_Sumpfkraut_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy wiesz, gdzie moge dostac chwast bagienny?";
};

FUNC INT Info_Mod_Lucy_Sumpfkraut_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lucy_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Moe_Sumpfkraut))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lucy_Sumpfkraut_Info()
{
	AI_Output(hero, self, "Info_Mod_Lucy_Sumpfkraut_15_00"); //Czy wiesz, gdzie moge dostac chwast bagienny?
	AI_Output(self, hero, "Info_Mod_Lucy_Sumpfkraut_17_01"); //Za 50 zloto podam Ci gdzie je zdobyc.

	Info_ClearChoices	(Info_Mod_Lucy_Sumpfkraut);

	Info_AddChoice	(Info_Mod_Lucy_Sumpfkraut, "Zapomnij o tym.", Info_Mod_Lucy_Sumpfkraut_B);
	if (Npc_HasItems(hero, ItMi_Gold) >= 50)
	{
		Info_AddChoice	(Info_Mod_Lucy_Sumpfkraut, "Tutaj masz zloto (50 darowizny zlota)", Info_Mod_Lucy_Sumpfkraut_A);
	};
};

FUNC VOID Info_Mod_Lucy_Sumpfkraut_B()
{
	AI_Output(hero, self, "Info_Mod_Lucy_Sumpfkraut_B_15_00"); //Zapomnij o tym.
	AI_Output(self, hero, "Info_Mod_Lucy_Sumpfkraut_B_17_01"); //Nie przeszkadza mi to.

	Info_ClearChoices	(Info_Mod_Lucy_Sumpfkraut);
};

FUNC VOID Info_Mod_Lucy_Sumpfkraut_A()
{
	AI_Output(hero, self, "Info_Mod_Lucy_Sumpfkraut_A_15_00"); //Oto zloto.

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Lucy_Sumpfkraut_A_17_01"); //Borka sprzedaje bagno.

	Mod_Borka_Sumpfkraut = 1;

	Info_ClearChoices	(Info_Mod_Lucy_Sumpfkraut);
};

INSTANCE Info_Mod_Lucy_Pickpocket (C_INFO)
{
	npc		= Mod_593_NONE_Lucy_NW;
	nr		= 1;
	condition	= Info_Mod_Lucy_Pickpocket_Condition;
	information	= Info_Mod_Lucy_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Lucy_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 18);
};

FUNC VOID Info_Mod_Lucy_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Lucy_Pickpocket);

	Info_AddChoice	(Info_Mod_Lucy_Pickpocket, DIALOG_BACK, Info_Mod_Lucy_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Lucy_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Lucy_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Lucy_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Lucy_Pickpocket);
};

FUNC VOID Info_Mod_Lucy_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Lucy_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Lucy_Pickpocket);

		Info_AddChoice	(Info_Mod_Lucy_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Lucy_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Lucy_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Lucy_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Lucy_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Lucy_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Lucy_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Lucy_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Lucy_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Lucy_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Lucy_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Lucy_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Lucy_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Lucy_EXIT (C_INFO)
{
	npc		= Mod_593_NONE_Lucy_NW;
	nr		= 1;
	condition	= Info_Mod_Lucy_EXIT_Condition;
	information	= Info_Mod_Lucy_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lucy_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lucy_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
