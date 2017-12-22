INSTANCE Info_Mod_Ruprecht_Hi (C_INFO)
{
	npc		= Mod_7418_OUT_Ruprecht_REL;
	nr		= 1;
	condition	= Info_Mod_Ruprecht_Hi_Condition;
	information	= Info_Mod_Ruprecht_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Ruprecht_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ruprecht_Hi_Info()
{
	B_Say	(hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Ruprecht_Hi_13_00"); //My name is Ruprecht. I draw from my savings through the countries and get to know foreign cultures. The pub culture, especially.
};

INSTANCE Info_Mod_Ruprecht_FrueherGemacht (C_INFO)
{
	npc		= Mod_7418_OUT_Ruprecht_REL;
	nr		= 1;
	condition	= Info_Mod_Ruprecht_FrueherGemacht_Condition;
	information	= Info_Mod_Ruprecht_FrueherGemacht_Info;
	permanent	= 0;
	important	= 0;
	description	= "What did you do before?";
};

FUNC INT Info_Mod_Ruprecht_FrueherGemacht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ruprecht_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ruprecht_FrueherGemacht_Info()
{
	AI_Output(hero, self, "Info_Mod_Ruprecht_FrueherGemacht_15_00"); //What did you do before?
	AI_Output(self, hero, "Info_Mod_Ruprecht_FrueherGemacht_13_01"); //I was at war for a long time.
};

INSTANCE Info_Mod_Ruprecht_Truhe (C_INFO)
{
	npc		= Mod_7418_OUT_Ruprecht_REL;
	nr		= 1;
	condition	= Info_Mod_Ruprecht_Truhe_Condition;
	information	= Info_Mod_Ruprecht_Truhe_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ruprecht_Truhe_Condition()
{
	if (Mod_LeonhardRuprecht == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ruprecht_Truhe_Info()
{
	AI_Output(self, hero, "Info_Mod_Ruprecht_Truhe_13_00"); //Hold on a second. What were you just up there?
	AI_Output(hero, self, "Info_Mod_Ruprecht_Truhe_15_01"); //Nothing special.
	AI_Output(self, hero, "Info_Mod_Ruprecht_Truhe_13_02"); //Well, let me see it.

	if (Npc_HasItems(hero, ItRi_Ruprecht) == 1)
	{
		AI_Output(self, hero, "Info_Mod_Ruprecht_Truhe_13_03"); //So, you were gonna steal my ring.

		B_GiveInvItems	(hero, self, ItRi_Ruprecht, 1);

		if (Kapitel < 3)
		{
			AI_Output(self, hero, "Info_Mod_Ruprecht_Truhe_13_04"); //Let's see what Anselm will say when I tell him.
		};

		Mod_LeonhardRuprecht = 3;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Ruprecht_Truhe_13_05"); //I'm sorry I was so unfriendly, but you wouldn't be the first one to come after my possessions.
	};
};

INSTANCE Info_Mod_Ruprecht_Freudenspender (C_INFO)
{
	npc		= Mod_7418_OUT_Ruprecht_REL;
	nr		= 1;
	condition	= Info_Mod_Ruprecht_Freudenspender_Condition;
	information	= Info_Mod_Ruprecht_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "I've got delights here....";
};                       

FUNC INT Info_Mod_Ruprecht_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Ruprecht_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Ruprecht_Freudenspender_15_00"); //I've got delights here....
	AI_Output(self, hero, "Info_Mod_Ruprecht_Freudenspender_13_01"); //Thanks, but I don't want anything.
};

INSTANCE Info_Mod_Ruprecht_Pickpocket (C_INFO)
{
	npc		= Mod_7418_OUT_Ruprecht_REL;
	nr		= 1;
	condition	= Info_Mod_Ruprecht_Pickpocket_Condition;
	information	= Info_Mod_Ruprecht_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Ruprecht_Pickpocket_Condition()
{
	C_Beklauen	(103, ItMi_Gold, 36);
};

FUNC VOID Info_Mod_Ruprecht_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ruprecht_Pickpocket);

	Info_AddChoice	(Info_Mod_Ruprecht_Pickpocket, DIALOG_BACK, Info_Mod_Ruprecht_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ruprecht_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ruprecht_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ruprecht_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ruprecht_Pickpocket);
};

FUNC VOID Info_Mod_Ruprecht_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ruprecht_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ruprecht_Pickpocket);

		Info_AddChoice	(Info_Mod_Ruprecht_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ruprecht_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ruprecht_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ruprecht_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ruprecht_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ruprecht_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ruprecht_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ruprecht_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ruprecht_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ruprecht_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ruprecht_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ruprecht_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ruprecht_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ruprecht_EXIT (C_INFO)
{
	npc		= Mod_7418_OUT_Ruprecht_REL;
	nr		= 1;
	condition	= Info_Mod_Ruprecht_EXIT_Condition;
	information	= Info_Mod_Ruprecht_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ruprecht_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ruprecht_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
