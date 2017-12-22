INSTANCE Info_Mod_Ingmar_Hi (C_INFO)
{
	npc		= Mod_585_RIT_Ingmar_NW;
	nr		= 1;
	condition	= Info_Mod_Ingmar_Hi_Condition;
	information	= Info_Mod_Ingmar_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Ingmar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ingmar_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Ingmar_Hi_06_01"); //Jestem rycerzem Ingmarem. Jestem obronca tego miasta. Poza tym upewnie sie, ze inni rycerze sa wystarczajaco silni.
};

INSTANCE Info_Mod_Ingmar_Innosklinge (C_INFO)
{
	npc		= Mod_585_RIT_Ingmar_NW;
	nr		= 1;
	condition	= Info_Mod_Ingmar_Innosklinge_Condition;
	information	= Info_Mod_Ingmar_Innosklinge_Info;
	permanent	= 0;
	important	= 0;
	description	= "Powitania. Slyszalem, jak entuzjastycznie podchodziliscie do wierszy (..... )";
};

FUNC INT Info_Mod_Ingmar_Innosklinge_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_AndreVermaechtnis5))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ingmar_Innosklinge_Info()
{
	AI_Output(hero, self, "Info_Mod_Ingmar_Innosklinge_15_00"); //Powitania. Slyszalem, jak entuzjastycznie podchodziliscie do wierszy i tekstów o walce o sluszna sprawe Inno.
	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_01"); //Tak, to prawda.
	AI_Output(hero, self, "Info_Mod_Ingmar_Innosklinge_15_02"); //Czy "Dominique Ruf" oznacza dla Ciebie cos?
	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_03"); //Oczywiscie. Kto nie zna legendarnego Paladina Dominique' a i epickich pism swiadczacych o jego heroicznych czynach?
	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_04"); //Poczekaj chwile, wybiore go z tekstu.

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_05"); //Uklad kostny Ongara.... bez

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_06"); //Parzivalowa ofiara krwi.... ani ahh, tak, tu, tutaj.....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_07"); //Dominique's Call
	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_08"); //Bedziemy zac jego chwale.
	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_09"); //Innosy stoja obok mnie i moich braci
	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_10"); //Zbiory beda ubój jak owce na mojej drodze.
	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_11"); //On jest ogniem w moim sercu.
	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_12"); //Mój ostrze jest dedykowane tylko dla niego.
	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_13"); //tego dnia rozbrzmiewac bedzie jego imie
	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_14"); //Kazdy, kto stoi na mojej drodze
	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_15"); //umrze moja reka
	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_16"); //dla mnie, jestem wojownikiem Innosem
	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_17"); //wykonawca testamentu
	AI_Output(hero, self, "Info_Mod_Ingmar_Innosklinge_15_18"); //Dzieki to zapisalem.

	CreateInvItems	(hero, ItWr_DominiquesRuf, 1);

	AI_Output(self, hero, "Info_Mod_Ingmar_Innosklinge_06_19"); //Wyraznie. Zawsze jestem zadowolony, gdy ktos ceni sobie liryczne pisma pretendentów Inno.

	B_GivePlayerXP	(200);

	B_LogEntry	(TOPIC_MOD_MILIZ_INNOSKLINGE, "Mam teksty. Mam nadzieje, ze Harad bedzie w stanie wytlumaczyc reszte.");
};

INSTANCE Info_Mod_Ingmar_Lehrer (C_INFO)
{
	npc		= Mod_585_RIT_Ingmar_NW;
	nr		= 1;
	condition	= Info_Mod_Ingmar_Lehrer_Condition;
	information	= Info_Mod_Ingmar_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz tez mnie szkolic?";
};

FUNC INT Info_Mod_Ingmar_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ingmar_Hi))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ingmar_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Ingmar_Lehrer_15_00"); //Czy mozesz tez mnie szkolic?
	
	if (Mod_Gilde == 1)
	{
		AI_Output(self, hero, "Info_Mod_Ingmar_Lehrer_06_01"); //Kiedy staniesz sie rycerzem, bede cie szkolil, nie wczesniej.

		B_LogEntry	(TOPIC_MOD_LEHRER_STADT, "Ingmar wytrenuje mnie w sile, jak tylko zostaniem rycerzem.");
	}
	else if (Mod_Gilde == 2)
	{
		AI_Output(self, hero, "Info_Mod_Ingmar_Lehrer_06_02"); //Poniewaz jestes rycerzem, bede cie trenowal.

		B_LogEntry	(TOPIC_MOD_LEHRER_STADT, "Ingmar bedzie mnie trenowal w sile tak dlugo, jak dlugo bede rycerzem.");
	}
	else if (Mod_Gilde == 3)
	{
		AI_Output(self, hero, "Info_Mod_Ingmar_Lehrer_06_03"); //Jestes juz paladyna. Juz nie moge cie uczyc. Musisz znalezc nowego nauczyciela.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Ingmar_Lehrer_06_04"); //Szkole tylko rycerzy.
	};
};

INSTANCE Info_Mod_Ingmar_Lernen (C_INFO)
{
	npc		= Mod_585_RIT_Ingmar_NW;
	nr		= 1;
	condition	= Info_Mod_Ingmar_Lernen_Condition;
	information	= Info_Mod_Ingmar_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Pokaz mi, jak sie poteguje.";
};

FUNC INT Info_Mod_Ingmar_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ingmar_Lehrer))
	&& (Mod_Gilde == 2)
	&& (hero.attribute[ATR_STRENGTH] < 180)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ingmar_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Ingmar_Lernen_15_00"); //Pokaz mi, jak sie poteguje.

	Info_ClearChoices	(Info_Mod_Ingmar_Lernen);

	Info_AddChoice	(Info_Mod_Ingmar_Lernen, DIALOG_BACK, Info_Mod_Ingmar_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Ingmar_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Ingmar_Lernen_5);
	Info_AddChoice	(Info_Mod_Ingmar_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Ingmar_Lernen_1);
};

FUNC VOID Info_Mod_Ingmar_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Ingmar_Lernen);
};

FUNC VOID Info_Mod_Ingmar_Lernen_5()
{
	B_TeachAttributePoints_New	(self, hero, ATR_STRENGTH, 5, 180);
	
	Info_ClearChoices	(Info_Mod_Ingmar_Lernen);

	Info_AddChoice	(Info_Mod_Ingmar_Lernen, DIALOG_BACK, Info_Mod_Ingmar_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Ingmar_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Ingmar_Lernen_5);
	Info_AddChoice	(Info_Mod_Ingmar_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Ingmar_Lernen_1);
};

FUNC VOID Info_Mod_Ingmar_Lernen_1()
{
	B_TeachAttributePoints	(self, hero, ATR_STRENGTH, 1, 180);

	Info_ClearChoices	(Info_Mod_Ingmar_Lernen);

	Info_AddChoice	(Info_Mod_Ingmar_Lernen, DIALOG_BACK, Info_Mod_Ingmar_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Ingmar_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Ingmar_Lernen_5);
	Info_AddChoice	(Info_Mod_Ingmar_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Ingmar_Lernen_1);
};

INSTANCE Info_Mod_Ingmar_Pickpocket (C_INFO)
{
	npc		= Mod_585_RIT_Ingmar_NW;
	nr		= 1;
	condition	= Info_Mod_Ingmar_Pickpocket_Condition;
	information	= Info_Mod_Ingmar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Ingmar_Pickpocket_Condition()
{
	C_Beklauen	(140, ItMi_Gold, 62);
};

FUNC VOID Info_Mod_Ingmar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ingmar_Pickpocket);

	Info_AddChoice	(Info_Mod_Ingmar_Pickpocket, DIALOG_BACK, Info_Mod_Ingmar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ingmar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ingmar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ingmar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ingmar_Pickpocket);
};

FUNC VOID Info_Mod_Ingmar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ingmar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ingmar_Pickpocket);

		Info_AddChoice	(Info_Mod_Ingmar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ingmar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ingmar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ingmar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ingmar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ingmar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ingmar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ingmar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ingmar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ingmar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ingmar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ingmar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ingmar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ingmar_EXIT (C_INFO)
{
	npc		= Mod_585_RIT_Ingmar_NW;
	nr		= 1;
	condition	= Info_Mod_Ingmar_EXIT_Condition;
	information	= Info_Mod_Ingmar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ingmar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ingmar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
