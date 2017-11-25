INSTANCE Info_Mod_Mortis_Hi (C_INFO)
{
	npc		= Mod_742_MIL_Mortis_NW;
	nr		= 1;
	condition	= Info_Mod_Mortis_Hi_Condition;
	information	= Info_Mod_Mortis_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Mortis_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Mortis_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Mortis_Hi_13_01"); //Jestem Mortisem, czlonkiem milicji i kowalstwa.
};

INSTANCE Info_Mod_Mortis_Join (C_INFO)
{
	npc		= Mod_742_MIL_Mortis_NW;
	nr		= 1;
	condition	= Info_Mod_Mortis_Join_Condition;
	information	= Info_Mod_Mortis_Join_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce dolaczyc do milicji.";
};

FUNC INT Info_Mod_Mortis_Join_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mortis_Hi))
	&& (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mortis_Join_Info()
{
	AI_Output(hero, self, "Info_Mod_Mortis_Join_15_00"); //Chce dolaczyc do milicji.
	AI_Output(self, hero, "Info_Mod_Mortis_Join_13_01"); //Nastepnie idz do Pana Andre' a.
};

INSTANCE Info_Mod_Mortis_Andre (C_INFO)
{
	npc		= Mod_742_MIL_Mortis_NW;
	nr		= 1;
	condition	= Info_Mod_Mortis_Andre_Condition;
	information	= Info_Mod_Mortis_Andre_Info;
	permanent	= 0;
	important	= 0;
	description	= "Pan Andre poslal mnie.";
};

FUNC INT Info_Mod_Mortis_Andre_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mortis_Join))
	&& (Mod_MilizTurnier == 9)
	&& (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mortis_Andre_Info()
{
	AI_Output(hero, self, "Info_Mod_Mortis_Andre_15_00"); //Pan Andre poslal mnie.
	AI_Output(self, hero, "Info_Mod_Mortis_Andre_13_01"); //Chcesz dolaczyc do milicji?
	AI_Output(hero, self, "Info_Mod_Mortis_Andre_15_02"); //Tak.
	AI_Output(self, hero, "Info_Mod_Mortis_Andre_13_03"); //I teraz powinienem dac ci prace?
	AI_Output(hero, self, "Info_Mod_Mortis_Andre_15_04"); //Tak.
	AI_Output(self, hero, "Info_Mod_Mortis_Andre_13_05"); //No cóz. Idz do Olawia, Pablo i Bilgot i zapytaj ich, jak to jest. Jesli byles z kazdym, to przyjdz do mnie i powiedz mi, co mówili.

	Log_CreateTopic	(TOPIC_MOD_MORTIS_KONTROLLE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MORTIS_KONTROLLE, LOG_RUNNING);

	B_LogEntry_More	(TOPIC_MOD_MILIZ, TOPIC_MOD_MORTIS_KONTROLLE, "Mialem patrolowac trzy bojówki w miescie na hipoteze.", "Mam jechac do Olowa, Pablo i Bilgot i pytac ich, jak to jest.");
};

INSTANCE Info_Mod_Mortis_OK (C_INFO)
{
	npc		= Mod_742_MIL_Mortis_NW;
	nr		= 1;
	condition	= Info_Mod_Mortis_OK_Condition;
	information	= Info_Mod_Mortis_OK_Info;
	permanent	= 0;
	important	= 0;
	description	= "Odwiedzilem wszystkie milicje.";
};

FUNC INT Info_Mod_Mortis_OK_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Olav_Mortis))
	&& (Npc_KnowsInfo(hero, Info_Mod_Pablo_Infos))
	&& (Mod_BilgotOK	==	1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mortis_OK_Info()
{
	AI_Output(hero, self, "Info_Mod_Mortis_OK_15_00"); //Odwiedzilem wszystkie milicje.
	AI_Output(self, hero, "Info_Mod_Mortis_OK_13_01"); //A co?
	AI_Output(hero, self, "Info_Mod_Mortis_OK_15_02"); //Wszystko jest w porzadku.
	AI_Output(self, hero, "Info_Mod_Mortis_OK_13_03"); //Bardzo dobrze, teraz mozesz powiedziec Panu Andreowi i mu, ze wykonywales moja prace.

	B_LogEntry_More	(TOPIC_MOD_MILIZ, TOPIC_MOD_MORTIS_KONTROLLE, "Mortis jest zadowolony ze mnie i poslal mnie do Pana Andre' a.", "Powiedzialem, ze wszystko jest w porzadku.");

	B_GivePlayerXP	(150);

	B_SetTopicStatus	(TOPIC_MOD_MORTIS_KONTROLLE, LOG_SUCCESS);

	B_Göttergefallen(1, 1);
};

INSTANCE Info_Mod_Mortis_Lehrer (C_INFO)
{
	npc		= Mod_742_MIL_Mortis_NW;
	nr		= 1;
	condition	= Info_Mod_Mortis_Lehrer_Condition;
	information	= Info_Mod_Mortis_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie szkolic?";
};

FUNC INT Info_Mod_Mortis_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mortis_Hi))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mortis_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Mortis_Lehrer_15_00"); //Czy mozesz mnie szkolic?
	
	if (Mod_Gilde == 2)
	{
		AI_Output(self, hero, "Info_Mod_Mortis_Lehrer_13_01"); //Jestes juz rycerzem. Juz nie moge cie uczyc. Musisz znalezc nowego nauczyciela.
	}
	else if (Mod_Gilde == 1)
	{
		AI_Output(self, hero, "Info_Mod_Mortis_Lehrer_13_02"); //Poniewaz jestes oficerem milicji, bede cie szkolil.

		B_LogEntry	(TOPIC_MOD_LEHRER_STADT, "Mortis wytrenuje mnie w sile, gdy bede rycerzem.");
	}
	else if (Mod_Gilde == 3)
	{
		AI_Output(self, hero, "Info_Mod_Mortis_Lehrer_13_03"); //Jestes juz paladyna. Juz nie moge cie uczyc. Musisz znalezc nowego nauczyciela.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Mortis_Lehrer_13_04"); //Szkole tylko zolnierzy milicji.
	};
};

INSTANCE Info_Mod_Mortis_Lernen (C_INFO)
{
	npc		= Mod_742_MIL_Mortis_NW;
	nr		= 1;
	condition	= Info_Mod_Mortis_Lernen_Condition;
	information	= Info_Mod_Mortis_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Pokaz mi, jak byc silniejszym.";
};

FUNC INT Info_Mod_Mortis_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mortis_Lehrer))
	&& (Mod_Gilde == 1)
	&& (hero.attribute[ATR_STRENGTH] < 100)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mortis_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Mortis_Lernen_15_00"); //Pokaz mi, jak byc silniejszym.

	Info_ClearChoices	(Info_Mod_Mortis_Lernen);

	Info_AddChoice	(Info_Mod_Mortis_Lernen, DIALOG_BACK, Info_Mod_Mortis_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Mortis_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Mortis_Lernen_5);
	Info_AddChoice	(Info_Mod_Mortis_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Mortis_Lernen_1);
};

FUNC VOID Info_Mod_Mortis_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Mortis_Lernen);
};

FUNC VOID Info_Mod_Mortis_Lernen_5()
{
	B_TeachAttributePoints_New	(self, hero, ATR_STRENGTH, 5, 100);
	
	Info_ClearChoices	(Info_Mod_Mortis_Lernen);

	Info_AddChoice	(Info_Mod_Mortis_Lernen, DIALOG_BACK, Info_Mod_Mortis_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Mortis_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Mortis_Lernen_5);
	Info_AddChoice	(Info_Mod_Mortis_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Mortis_Lernen_1);
};

FUNC VOID Info_Mod_Mortis_Lernen_1()
{
	B_TeachAttributePoints	(self, hero, ATR_STRENGTH, 1, 100);

	Info_ClearChoices	(Info_Mod_Mortis_Lernen);

	Info_AddChoice	(Info_Mod_Mortis_Lernen, DIALOG_BACK, Info_Mod_Mortis_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Mortis_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Mortis_Lernen_5);
	Info_AddChoice	(Info_Mod_Mortis_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Mortis_Lernen_1);
};

INSTANCE Info_Mod_Mortis_Pickpocket (C_INFO)
{
	npc		= Mod_742_MIL_Mortis_NW;
	nr		= 1;
	condition	= Info_Mod_Mortis_Pickpocket_Condition;
	information	= Info_Mod_Mortis_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Mortis_Pickpocket_Condition()
{
	C_Beklauen	(48, ItMi_Gold, 18);
};

FUNC VOID Info_Mod_Mortis_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Mortis_Pickpocket);

	Info_AddChoice	(Info_Mod_Mortis_Pickpocket, DIALOG_BACK, Info_Mod_Mortis_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Mortis_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Mortis_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Mortis_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Mortis_Pickpocket);
};

FUNC VOID Info_Mod_Mortis_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Mortis_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Mortis_Pickpocket);

		Info_AddChoice	(Info_Mod_Mortis_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Mortis_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Mortis_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Mortis_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Mortis_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Mortis_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Mortis_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Mortis_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Mortis_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Mortis_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Mortis_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Mortis_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Mortis_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Mortis_EXIT (C_INFO)
{
	npc		= Mod_742_MIL_Mortis_NW;
	nr		= 1;
	condition	= Info_Mod_Mortis_EXIT_Condition;
	information	= Info_Mod_Mortis_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Mortis_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Mortis_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
