INSTANCE Info_Mod_Carl_Hi (C_INFO)
{
	npc		= Mod_549_NONE_Carl_NW;
	nr		= 1;
	condition	= Info_Mod_Carl_Hi_Condition;
	information	= Info_Mod_Carl_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Carl_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Carl_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Carl_Hi_05_00"); //I'm Carl, the blacksmith.
};

INSTANCE Info_Mod_Carl_Flugblaetter (C_INFO)
{
	npc		= Mod_549_NONE_Carl_NW;
	nr		= 1;
	condition	= Info_Mod_Carl_Flugblaetter_Condition;
	information	= Info_Mod_Carl_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've got a flyer for you.";
};

FUNC INT Info_Mod_Carl_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Carl_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Carl_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Carl_Flugblaetter_05_01"); //Oh, thank you. Thank you. Let's see....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Carl_Flugblaetter_05_02"); //Ah yes. Maybe I'll stop by Matteo's.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Carl_Lehrer (C_INFO)
{
	npc		= Mod_549_NONE_Carl_NW;
	nr		= 1;
	condition	= Info_Mod_Carl_Lehrer_Condition;
	information	= Info_Mod_Carl_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me something?";
};

FUNC INT Info_Mod_Carl_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Carl_Hi))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Carl_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Carl_Lehrer_05_00"); //I can only show you how to get stronger, I can't teach you how to forge.
	AI_Output(self, hero, "Info_Mod_Carl_Lehrer_05_01"); //If you want to learn that, you have to go to Harad's.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_STADT, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_STADT, "Carl can help me get stronger.");
};

INSTANCE Info_Mod_Carl_Lernen (C_INFO)
{
	npc		= Mod_549_NONE_Carl_NW;
	nr		= 1;
	condition	= Info_Mod_Carl_Lernen_Condition;
	information	= Info_Mod_Carl_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to become stronger!";
};

FUNC INT Info_Mod_Carl_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Carl_Lehrer))
	&& (hero.attribute[ATR_STRENGTH] < 60)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Carl_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Carl_Lernen_15_00"); //I want to be stronger!

	Info_ClearChoices	(Info_Mod_Carl_Lernen);

	Info_AddChoice	(Info_Mod_Carl_Lernen, DIALOG_BACK, Info_Mod_Carl_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Carl_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Carl_Lernen_5);
	Info_AddChoice	(Info_Mod_Carl_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Carl_Lernen_1);
};

FUNC VOID Info_Mod_Carl_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Carl_Lernen);
};

FUNC VOID Info_Mod_Carl_Lernen_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_STRENGTH, 5, 60);
	
	Info_ClearChoices	(Info_Mod_Carl_Lernen);

	Info_AddChoice	(Info_Mod_Carl_Lernen, DIALOG_BACK, Info_Mod_Carl_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Carl_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Carl_Lernen_5);
	Info_AddChoice	(Info_Mod_Carl_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Carl_Lernen_1);
};

FUNC VOID Info_Mod_Carl_Lernen_1()
{
	B_TeachAttributePoints (self, hero, ATR_STRENGTH, 1, 60);
	
	Info_ClearChoices	(Info_Mod_Carl_Lernen);

	Info_AddChoice	(Info_Mod_Carl_Lernen, DIALOG_BACK, Info_Mod_Carl_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Carl_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Carl_Lernen_5);
	Info_AddChoice	(Info_Mod_Carl_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Carl_Lernen_1);
};

INSTANCE Info_Mod_Carl_Pickpocket (C_INFO)
{
	npc		= Mod_549_NONE_Carl_NW;
	nr		= 1;
	condition	= Info_Mod_Carl_Pickpocket_Condition;
	information	= Info_Mod_Carl_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Carl_Pickpocket_Condition()
{
	C_Beklauen	(15, ItMiSwordRaw, 2);
};

FUNC VOID Info_Mod_Carl_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Carl_Pickpocket);

	Info_AddChoice	(Info_Mod_Carl_Pickpocket, DIALOG_BACK, Info_Mod_Carl_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Carl_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Carl_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Carl_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Carl_Pickpocket);
};

FUNC VOID Info_Mod_Carl_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Carl_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Carl_Pickpocket);

		Info_AddChoice	(Info_Mod_Carl_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Carl_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Carl_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Carl_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Carl_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Carl_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Carl_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Carl_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Carl_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Carl_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Carl_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Carl_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Carl_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Carl_EXIT (C_INFO)
{
	npc		= Mod_549_NONE_Carl_NW;
	nr		= 1;
	condition	= Info_Mod_Carl_EXIT_Condition;
	information	= Info_Mod_Carl_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Carl_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Carl_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
