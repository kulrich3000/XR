INSTANCE Info_Mod_Dever_Trador (C_INFO)
{
	npc		= Mod_7354_VMG_Dever_TUG;
	nr		= 1;
	condition	= Info_Mod_Dever_Trador_Condition;
	information	= Info_Mod_Dever_Trador_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dever_Trador_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Genn_Giftpflanzen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dever_Trador_Info()
{
	AI_Output(self, hero, "Info_Mod_Dever_Trador_11_00"); //Welcome back, sir.
	AI_Output(hero, self, "Info_Mod_Dever_Trador_15_01"); //Can you tell me which mages are missing right now?
	AI_Output(self, hero, "Info_Mod_Dever_Trador_11_02"); //Nobody is missing, but I haven't seen a few of them in a few days.
	AI_Output(self, hero, "Info_Mod_Dever_Trador_11_03"); //Asko has made his way to the ruins.
	AI_Output(self, hero, "Info_Mod_Dever_Trador_11_04"); //Fore was babbling a little bit about rare plants and went down the slope.
	AI_Output(self, hero, "Info_Mod_Dever_Trador_11_05"); //I think Dean wanted to examine the stone circle.
	AI_Output(hero, self, "Info_Mod_Dever_Trador_15_06"); //I'll go see them three times.
	AI_Output(self, hero, "Info_Mod_Dever_Trador_11_07"); //That's nice of you. If you meet Dean, ask him if he knows the answer to my question.
	AI_Output(self, hero, "Info_Mod_Dever_Trador_11_08"); //He's been sitting on it for a long time.

	Log_CreateTopic	(TOPIC_MOD_DEVER_DEAN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DEVER_DEAN, LOG_RUNNING);

	if (Npc_KnowsInfo(hero, Info_Mod_Per_Trador))
	{
		B_LogEntry	(TOPIC_MOD_DEVER_DEAN, "I'm supposed to ask Dean if he knows the answer to Dever's question.");
	}
	else
	{
		B_LogEntry_More	(TOPIC_MOD_FAICE_GIFT, TOPIC_MOD_DEVER_DEAN, "Since a few days have not appeared any more: Asko, who is near the ruins; Fore, he's down on the slope; and Dean, he's at the stone circle.", "I'm supposed to ask Dean if he knows the answer to Dever's question.");
	};
};

INSTANCE Info_Mod_Dever_Dean (C_INFO)
{
	npc		= Mod_7354_VMG_Dever_TUG;
	nr		= 1;
	condition	= Info_Mod_Dever_Dean_Condition;
	information	= Info_Mod_Dever_Dean_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dever_Dean_Condition()
{
	if (Mod_Turendil_Faice_Day == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dever_Dean_Info()
{
	AI_Output(self, hero, "Info_Mod_Dever_Dean_11_00"); //There you are again. What did you find out?
	AI_Output(hero, self, "Info_Mod_Dever_Dean_15_01"); //Dean was killed by a golem sent here by a con man named Trador.
	AI_Output(self, hero, "Info_Mod_Dever_Dean_11_02"); //Oh, no! How did this happen? I haven't seen a Golem.
	AI_Output(self, hero, "Info_Mod_Dever_Dean_11_03"); //You should tell Genn about this.

	if (!Npc_KnowsInfo(hero, Info_Mod_Per_Dean))
	{
		B_LogEntry	(TOPIC_MOD_FAICE_GIFT, "I reported Dean's death. Now I should go back to Genn and inform him of the events.");
	};
};

INSTANCE Info_Mod_Dever_Frage (C_INFO)
{
	npc		= Mod_7354_VMG_Dever_TUG;
	nr		= 1;
	condition	= Info_Mod_Dever_Frage_Condition;
	information	= Info_Mod_Dever_Frage_Info;
	permanent	= 0;
	important	= 0;
	description	= "Unfortunately, I couldn't ask Dean for the answer.";
};

FUNC INT Info_Mod_Dever_Frage_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dever_Trador))
	&& (Mod_Turendil_Faice_Day == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dever_Frage_Info()
{
	AI_Output(hero, self, "Info_Mod_Dever_Frage_15_00"); //Unfortunately, I couldn't ask Dean for the answer.
	AI_Output(self, hero, "Info_Mod_Dever_Frage_11_01"); //Understandable. But the answer is out there somewhere...

	B_GivePlayerXP	(250);

	B_LogEntry	(TOPIC_MOD_DEVER_DEAN, "I told Dever I had a hard time asking Dean the answer.");
	B_SetTopicStatus	(TOPIC_MOD_DEVER_DEAN, LOG_SUCCESS);
};

var int Mod_Knows_DeverTeacher;

INSTANCE Info_Mod_Dever_Lernen (C_INFO)
{
	npc		= Mod_7354_VMG_Dever_TUG;
	nr		= 1;
	condition	= Info_Mod_Dever_Lernen_Condition;
	information	= Info_Mod_Dever_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to become stronger!";
};

FUNC INT Info_Mod_Dever_Lernen_Condition()
{
	if (hero.attribute[ATR_STRENGTH] < 200)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dever_Lernen_Info()
{
	if (Mod_Knows_DeverTeacher == FALSE)
	{
		Mod_Knows_DeverTeacher = TRUE;

		Log_CreateTopic	(TOPIC_MOD_LEHRER_VM, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_VM, "Dever can help me get stronger.");
	};

	AI_Output(hero, self, "Info_Mod_Dever_Lernen_15_00"); //I want to be stronger!

	Info_ClearChoices	(Info_Mod_Dever_Lernen);

	Info_AddChoice	(Info_Mod_Dever_Lernen, DIALOG_BACK, Info_Mod_Dever_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Dever_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Dever_Lernen_5);
	Info_AddChoice	(Info_Mod_Dever_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Dever_Lernen_1);
};

FUNC VOID Info_Mod_Dever_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Dever_Lernen);
};

FUNC VOID Info_Mod_Dever_Lernen_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_STRENGTH, 5, 200);
	
	Info_ClearChoices	(Info_Mod_Dever_Lernen);

	Info_AddChoice	(Info_Mod_Dever_Lernen, DIALOG_BACK, Info_Mod_Dever_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Dever_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Dever_Lernen_5);
	Info_AddChoice	(Info_Mod_Dever_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Dever_Lernen_1);
};

FUNC VOID Info_Mod_Dever_Lernen_1()
{
	B_TeachAttributePoints (self, hero, ATR_STRENGTH, 1, 200);
	
	Info_ClearChoices	(Info_Mod_Dever_Lernen);

	Info_AddChoice	(Info_Mod_Dever_Lernen, DIALOG_BACK, Info_Mod_Dever_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Dever_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Dever_Lernen_5);
	Info_AddChoice	(Info_Mod_Dever_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Dever_Lernen_1);
};

INSTANCE Info_Mod_Dever_Pickpocket (C_INFO)
{
	npc		= Mod_7354_VMG_Dever_TUG;
	nr		= 1;
	condition	= Info_Mod_Dever_Pickpocket_Condition;
	information	= Info_Mod_Dever_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Dever_Pickpocket_Condition()
{
	C_Beklauen	(79, ItPo_Perm_Dex, 1);
};

FUNC VOID Info_Mod_Dever_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Dever_Pickpocket);

	Info_AddChoice	(Info_Mod_Dever_Pickpocket, DIALOG_BACK, Info_Mod_Dever_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Dever_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Dever_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Dever_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Dever_Pickpocket);
};

FUNC VOID Info_Mod_Dever_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Dever_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Dever_Pickpocket);

		Info_AddChoice	(Info_Mod_Dever_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Dever_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Dever_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Dever_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Dever_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Dever_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Dever_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Dever_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Dever_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Dever_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Dever_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Dever_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Dever_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Dever_EXIT (C_INFO)
{
	npc		= Mod_7354_VMG_Dever_TUG;
	nr		= 1;
	condition	= Info_Mod_Dever_EXIT_Condition;
	information	= Info_Mod_Dever_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Dever_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dever_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
