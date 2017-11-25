INSTANCE Info_Mod_HofstaatPassantin02_Fluffy (C_INFO)
{
	npc		= Mod_7337_HS_Passantin_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatPassantin02_Fluffy_Condition;
	information	= Info_Mod_HofstaatPassantin02_Fluffy_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatPassantin02_Fluffy_Condition()
{
	if (Mod_SL_PartFluffy == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatPassantin02_Fluffy_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatPassantin02_Fluffy_16_00"); //To jest calkowicie sluszne. Jesli ktos, kto nie potrafi nawet trenowac psa naprawde powinien uruchomic stan? Nie wiem.....

	Mod_SL_PartFluffy = 5;

	B_SetTopicStatus	(TOPIC_MOD_SL_FLUFFY, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HofstaatPassantin02_Lochgraeber (C_INFO)
{
	npc		= Mod_7337_HS_Passantin_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatPassantin02_Lochgraeber_Condition;
	information	= Info_Mod_HofstaatPassantin02_Lochgraeber_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatPassantin02_Lochgraeber_Condition()
{
	if (Mod_SL_PartLochgraeber == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatPassantin02_Lochgraeber_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatPassantin02_Lochgraeber_16_00"); //Czym jest to królestwo, które nie moze utrzymac sie w miedzynarodowym porównaniu grobów kopalnianych!

	Mod_SL_PartLochgraeber = 4;

	B_SetTopicStatus	(TOPIC_MOD_SL_LOCHGRAEBER, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HofstaatPassantin02_Geliebte (C_INFO)
{
	npc		= Mod_7337_HS_Passantin_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatPassantin02_Geliebte_Condition;
	information	= Info_Mod_HofstaatPassantin02_Geliebte_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatPassantin02_Geliebte_Condition()
{
	if (Mod_SL_PartGeliebte == 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatPassantin02_Geliebte_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatPassantin02_Geliebte_16_00"); //Czym jest to królestwo, które nie moze utrzymac sie w miedzynarodowym porównaniu grobów kopalnianych!

	Mod_SL_PartGeliebte = 8;

	B_SetTopicStatus	(TOPIC_MOD_SL_GELIEBTE, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HofstaatPassantin02_Blind (C_INFO)
{
	npc		= Mod_7337_HS_Passantin_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatPassantin02_Blind_Condition;
	information	= Info_Mod_HofstaatPassantin02_Blind_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatPassantin02_Blind_Condition()
{
	if (Mod_SL_PartBlind == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatPassantin02_Blind_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatPassantin02_Blind_16_00"); //Jakie królestwo bez eksportu! Nie mozesz tego zrobic!

	Mod_SL_PartBlind = 5;

	B_SetTopicStatus	(TOPIC_MOD_SL_BLIND, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HofstaatPassantin02_Brunnen (C_INFO)
{
	npc		= Mod_7337_HS_Passantin_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatPassantin02_Brunnen_Condition;
	information	= Info_Mod_HofstaatPassantin02_Brunnen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatPassantin02_Brunnen_Condition()
{
	if (Mod_SL_PartBrunnen == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatPassantin02_Brunnen_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatPassantin02_Brunnen_16_00"); //Wlasnie to zrozumiales! Jaki król zyje w ruinach?

	Mod_SL_PartBrunnen = 3;

	B_SetTopicStatus	(TOPIC_MOD_SL_BRUNNEN, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HofstaatPassantin02_Geschwaecht (C_INFO)
{
	npc		= Mod_7337_HS_Passantin_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatPassantin02_Geschwaecht_Condition;
	information	= Info_Mod_HofstaatPassantin02_Geschwaecht_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatPassantin02_Geschwaecht_Condition()
{
	if (Mod_SL_Schwaechen == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatPassantin02_Geschwaecht_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatPassantin02_Geschwaecht_16_00"); //Tak, masz racje, czuje, czuje sie tak.... oslabiony....... tak jak moja motywacja byla przeniknieta i wszystko bylo przesiakniete.

	Mod_SL_Schwaechen = 4;

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Oslabilem sad, podwazylem ich motywacje i tak dalej. Powinienem teraz wrócic do Baal Namib.");

	B_GivePlayerXP	(500);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HofstaatPassantin02_Pickpocket (C_INFO)
{
	npc		= Mod_7337_HS_Passantin_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatPassantin02_Pickpocket_Condition;
	information	= Info_Mod_HofstaatPassantin02_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_HofstaatPassantin02_Pickpocket_Condition()
{
	C_Beklauen	(47, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_HofstaatPassantin02_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HofstaatPassantin02_Pickpocket);

	Info_AddChoice	(Info_Mod_HofstaatPassantin02_Pickpocket, DIALOG_BACK, Info_Mod_HofstaatPassantin02_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HofstaatPassantin02_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HofstaatPassantin02_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HofstaatPassantin02_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HofstaatPassantin02_Pickpocket);
};

FUNC VOID Info_Mod_HofstaatPassantin02_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HofstaatPassantin02_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HofstaatPassantin02_Pickpocket);

		Info_AddChoice	(Info_Mod_HofstaatPassantin02_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HofstaatPassantin02_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HofstaatPassantin02_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HofstaatPassantin02_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HofstaatPassantin02_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HofstaatPassantin02_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HofstaatPassantin02_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HofstaatPassantin02_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HofstaatPassantin02_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HofstaatPassantin02_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HofstaatPassantin02_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HofstaatPassantin02_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HofstaatPassantin02_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HofstaatPassantin02_EXIT (C_INFO)
{
	npc		= Mod_7337_HS_Passantin_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatPassantin02_EXIT_Condition;
	information	= Info_Mod_HofstaatPassantin02_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatPassantin02_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatPassantin02_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
