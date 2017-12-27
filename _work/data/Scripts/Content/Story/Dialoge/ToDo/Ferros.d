INSTANCE Info_Mod_Ferros_Hi (C_INFO)
{
	npc		= Mod_7523_JG_Ferros_JL;
	nr		= 1;
	condition	= Info_Mod_Ferros_Hi_Condition;
	information	= Info_Mod_Ferros_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "A blacksmith in the camp? Is that what you need?";
};

FUNC INT Info_Mod_Ferros_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ferros_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Ferros_Hi_15_00"); //A blacksmith in the camp? Is that what you need?
	AI_Output(self, hero, "Info_Mod_Ferros_Hi_06_01"); //Actually, I don't. I sometimes straighten a sword or sharpen one.
	AI_Output(self, hero, "Info_Mod_Ferros_Hi_06_02"); //Sometimes I make things out of metal or I repair them.
	AI_Output(hero, self, "Info_Mod_Ferros_Hi_15_03"); //And that's all?
	AI_Output(self, hero, "Info_Mod_Ferros_Hi_06_04"); //Well, sometimes someone comes along and says:"Ferros, I have nothing to do, let's train.
	AI_Output(self, hero, "Info_Mod_Ferros_Hi_06_05"); //Then I'll show him how to get stronger.

	if (Mod_Schwierigkeit != 4)
	{
		AI_Output(hero, self, "Info_Mod_Ferros_Hi_15_06"); //Could you show me how to get stronger?
		AI_Output(self, hero, "Info_Mod_Ferros_Hi_06_07"); //Of course I can.

		Log_CreateTopic	(TOPIC_MOD_LEHRER_WALDIS, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_WALDIS, "At Ferros I can improve my strength.");
	};
};

INSTANCE Info_Mod_Ferros_Lernen (C_INFO)
{
	npc		= Mod_7523_JG_Ferros_JL;
	nr		= 1;
	condition	= Info_Mod_Ferros_Lernen_Condition;
	information	= Info_Mod_Ferros_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to become stronger!";
};

FUNC INT Info_Mod_Ferros_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferros_Hi))
	&& (hero.attribute[ATR_STRENGTH] < 150)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferros_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Ferros_Lernen_15_00"); //I want to be stronger!

	Info_ClearChoices	(Info_Mod_Ferros_Lernen);

	Info_AddChoice	(Info_Mod_Ferros_Lernen, DIALOG_BACK, Info_Mod_Ferros_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Ferros_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Ferros_Lernen_5);
	Info_AddChoice	(Info_Mod_Ferros_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Ferros_Lernen_1);
};

FUNC VOID Info_Mod_Ferros_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Ferros_Lernen);
};

FUNC VOID Info_Mod_Ferros_Lernen_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_STRENGTH, 5, 150);
	
	Info_ClearChoices	(Info_Mod_Ferros_Lernen);

	Info_AddChoice	(Info_Mod_Ferros_Lernen, DIALOG_BACK, Info_Mod_Ferros_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Ferros_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Ferros_Lernen_5);
	Info_AddChoice	(Info_Mod_Ferros_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Ferros_Lernen_1);
};

FUNC VOID Info_Mod_Ferros_Lernen_1()
{
	B_TeachAttributePoints (self, hero, ATR_STRENGTH, 1, 150);
	
	Info_ClearChoices	(Info_Mod_Ferros_Lernen);

	Info_AddChoice	(Info_Mod_Ferros_Lernen, DIALOG_BACK, Info_Mod_Ferros_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Ferros_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Ferros_Lernen_5);
	Info_AddChoice	(Info_Mod_Ferros_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Ferros_Lernen_1);
};

INSTANCE Info_Mod_Ferros_Pickpocket (C_INFO)
{
	npc		= Mod_7523_JG_Ferros_JL;
	nr		= 1;
	condition	= Info_Mod_Ferros_Pickpocket_Condition;
	information	= Info_Mod_Ferros_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Ferros_Pickpocket_Condition()
{
	C_Beklauen	(90, ItMiSwordRaw, 3);
};

FUNC VOID Info_Mod_Ferros_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ferros_Pickpocket);

	Info_AddChoice	(Info_Mod_Ferros_Pickpocket, DIALOG_BACK, Info_Mod_Ferros_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ferros_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ferros_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ferros_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ferros_Pickpocket);
};

FUNC VOID Info_Mod_Ferros_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ferros_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ferros_Pickpocket);

		Info_AddChoice	(Info_Mod_Ferros_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ferros_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ferros_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ferros_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ferros_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ferros_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ferros_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ferros_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ferros_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ferros_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ferros_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ferros_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ferros_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ferros_EXIT (C_INFO)
{
	npc		= Mod_7523_JG_Ferros_JL;
	nr		= 1;
	condition	= Info_Mod_Ferros_EXIT_Condition;
	information	= Info_Mod_Ferros_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ferros_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ferros_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
