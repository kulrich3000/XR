INSTANCE Info_Mod_HofstaatPassantin01_Fluffy (C_INFO)
{
	npc		= Mod_7336_HS_Passantin_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatPassantin01_Fluffy_Condition;
	information	= Info_Mod_HofstaatPassantin01_Fluffy_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatPassantin01_Fluffy_Condition()
{
	if (Mod_SL_PartFluffy == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatPassantin01_Fluffy_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatPassantin01_Fluffy_26_00"); //Well, the king has his dog under control...

	Mod_SL_PartFluffy = 4;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HofstaatPassantin01_Lochgraeber (C_INFO)
{
	npc		= Mod_7336_HS_Passantin_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatPassantin01_Lochgraeber_Condition;
	information	= Info_Mod_HofstaatPassantin01_Lochgraeber_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatPassantin01_Lochgraeber_Condition()
{
	if (Mod_SL_PartLochgraeber == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatPassantin01_Lochgraeber_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatPassantin01_Lochgraeber_26_00"); //Did you hear that? Some kind of greenbill dug a hole a hundred times deeper than that of our grave in just one night!

	Mod_SL_PartLochgraeber = 3;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HofstaatPassantin01_Geliebte (C_INFO)
{
	npc		= Mod_7336_HS_Passantin_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatPassantin01_Geliebte_Condition;
	information	= Info_Mod_HofstaatPassantin01_Geliebte_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatPassantin01_Geliebte_Condition()
{
	if (Mod_SL_PartGeliebte == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatPassantin01_Geliebte_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatPassantin01_Geliebte_26_00"); //Did you hear that? Apparently, some young bung has managed to seduce the royal mistress!

	Mod_SL_PartGeliebte = 7;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HofstaatPassantin01_Blind (C_INFO)
{
	npc		= Mod_7336_HS_Passantin_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatPassantin01_Blind_Condition;
	information	= Info_Mod_HofstaatPassantin01_Blind_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatPassantin01_Blind_Condition()
{
	if (Mod_SL_PartBlind == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatPassantin01_Blind_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatPassantin01_Blind_26_00"); //Have you heard?! In Khorata we can't sell any more delights! They think it's blind!

	Mod_SL_PartBlind = 4;

	B_RemoveNpc	(Mod_7351_OUT_Ranck_REL);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HofstaatPassantin01_Brunnen (C_INFO)
{
	npc		= Mod_7336_HS_Passantin_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatPassantin01_Brunnen_Condition;
	information	= Info_Mod_HofstaatPassantin01_Brunnen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatPassantin01_Brunnen_Condition()
{
	if (Mod_SL_PartBrunnen == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatPassantin01_Brunnen_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatPassantin01_Brunnen_26_00"); //Did you take a closer look at the castle? It's kind of shabby and not at all pompous.

	Mod_SL_PartBrunnen = 2;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HofstaatPassantin01_Geschwaecht (C_INFO)
{
	npc		= Mod_7336_HS_Passantin_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatPassantin01_Geschwaecht_Condition;
	information	= Info_Mod_HofstaatPassantin01_Geschwaecht_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatPassantin01_Geschwaecht_Condition()
{
	if (Mod_SL_Schwaechen == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatPassantin01_Geschwaecht_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatPassantin01_Geschwaecht_26_00"); //So... there's been a lot of things going wrong lately!

	Mod_SL_Schwaechen = 3;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HofstaatPassantin01_Pickpocket (C_INFO)
{
	npc		= Mod_7336_HS_Passantin_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatPassantin01_Pickpocket_Condition;
	information	= Info_Mod_HofstaatPassantin01_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_HofstaatPassantin01_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Freudenspender, 2);
};

FUNC VOID Info_Mod_HofstaatPassantin01_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HofstaatPassantin01_Pickpocket);

	Info_AddChoice	(Info_Mod_HofstaatPassantin01_Pickpocket, DIALOG_BACK, Info_Mod_HofstaatPassantin01_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HofstaatPassantin01_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HofstaatPassantin01_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HofstaatPassantin01_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HofstaatPassantin01_Pickpocket);
};

FUNC VOID Info_Mod_HofstaatPassantin01_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HofstaatPassantin01_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HofstaatPassantin01_Pickpocket);

		Info_AddChoice	(Info_Mod_HofstaatPassantin01_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HofstaatPassantin01_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HofstaatPassantin01_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HofstaatPassantin01_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HofstaatPassantin01_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HofstaatPassantin01_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HofstaatPassantin01_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HofstaatPassantin01_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HofstaatPassantin01_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HofstaatPassantin01_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HofstaatPassantin01_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HofstaatPassantin01_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HofstaatPassantin01_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HofstaatPassantin01_EXIT (C_INFO)
{
	npc		= Mod_7336_HS_Passantin_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatPassantin01_EXIT_Condition;
	information	= Info_Mod_HofstaatPassantin01_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatPassantin01_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatPassantin01_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
