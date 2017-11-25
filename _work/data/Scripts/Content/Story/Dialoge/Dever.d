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
	AI_Output(self, hero, "Info_Mod_Dever_Trador_11_00"); //Witam powitaj, panie posle.
	AI_Output(hero, self, "Info_Mod_Dever_Trador_15_01"); //Czy mozesz mi powiedziec, których magów teraz brakuje?
	AI_Output(self, hero, "Info_Mod_Dever_Trador_11_02"); //Nikt nie jest nieobecny, ale w ciagu kilku dni nie widzialem ich kilku.
	AI_Output(self, hero, "Info_Mod_Dever_Trador_11_03"); //Asko udal sie na ruiny.
	AI_Output(self, hero, "Info_Mod_Dever_Trador_11_04"); //Fore belkotal troche o rzadkich roslinach i zszedl na zbocze.
	AI_Output(self, hero, "Info_Mod_Dever_Trador_11_05"); //Mysle, ze dziekan chcial zbadac krag kamienny.
	AI_Output(hero, self, "Info_Mod_Dever_Trador_15_06"); //Pójde do nich trzy razy.
	AI_Output(self, hero, "Info_Mod_Dever_Trador_11_07"); //To milo. Jesli spotkasz dziekana, zapytaj go, czy zna odpowiedz na moje pytanie.
	AI_Output(self, hero, "Info_Mod_Dever_Trador_11_08"); //Przez dlugi czas na nim siedzial.

	Log_CreateTopic	(TOPIC_MOD_DEVER_DEAN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DEVER_DEAN, LOG_RUNNING);

	if (Npc_KnowsInfo(hero, Info_Mod_Per_Trador))
	{
		B_LogEntry	(TOPIC_MOD_DEVER_DEAN, "Zadaje dziekanowi pytanie, czy zna odpowiedz na jego pytanie.");
	}
	else
	{
		B_LogEntry_More	(TOPIC_MOD_FAICE_GIFT, TOPIC_MOD_DEVER_DEAN, "Od kilku dni juz sie nie pojawil: Asko, które znajduje sie w poblizu ruin; Fore, jest na stoku; Jest na kamiennym kole dziekana.", "Zadaje dziekanowi pytanie, czy zna odpowiedz na jego pytanie.");
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
	AI_Output(self, hero, "Info_Mod_Dever_Dean_11_00"); //Tam znów pan jest. Co sie dowiedziales/as?
	AI_Output(hero, self, "Info_Mod_Dever_Dean_15_01"); //Dziekan zostal zabity przez golem wyslany tutaj przez konduktanta o nazwisku Trador.
	AI_Output(self, hero, "Info_Mod_Dever_Dean_11_02"); //Och, nie! Jak do tego doszlo? Nie widzialem Golema.
	AI_Output(self, hero, "Info_Mod_Dever_Dean_11_03"); //Miales powiedziec Gennowi o tym.

	if (!Npc_KnowsInfo(hero, Info_Mod_Per_Dean))
	{
		B_LogEntry	(TOPIC_MOD_FAICE_GIFT, "Zglosilem smierc dziekana. Teraz powinienem wrócic do Genna i poinformowac go o wydarzeniach.");
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
	description	= "Niestety, nie moglem poprosic dziekana o odpowiedz.";
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
	AI_Output(hero, self, "Info_Mod_Dever_Frage_15_00"); //Niestety, nie moglem poprosic dziekana o odpowiedz.
	AI_Output(self, hero, "Info_Mod_Dever_Frage_11_01"); //Zrozumiale. Ale odpowiedz jest tam gdzies....

	B_GivePlayerXP	(250);

	B_LogEntry	(TOPIC_MOD_DEVER_DEAN, "Powiedzialem Deverowi, ze ciezko mi bylo poprosic dziekana o odpowiedz.");
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
	description	= "Chce byc silniejszy!";
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
		B_LogEntry	(TOPIC_MOD_LEHRER_VM, "Ktos moze mi pomóc wzmocnic sie.");
	};

	AI_Output(hero, self, "Info_Mod_Dever_Lernen_15_00"); //Chce byc silniejszy!

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
