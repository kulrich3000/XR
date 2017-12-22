INSTANCE Info_Mod_Ivan_Hi (C_INFO)
{
	npc		= Mod_7514_OUT_Ivan_REL;
	nr		= 1;
	condition	= Info_Mod_Ivan_Hi_Condition;
	information	= Info_Mod_Ivan_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak to sie dzieje?";
};

FUNC INT Info_Mod_Ivan_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ivan_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Ivan_Hi_15_00"); //Jak to sie dzieje?
	AI_Output(self, hero, "Info_Mod_Ivan_Hi_09_01"); //Nie wiem o tym. Jaka jest pogoda?
};

INSTANCE Info_Mod_Ivan_Hasenfuss (C_INFO)
{
	npc		= Mod_7514_OUT_Ivan_REL;
	nr		= 1;
	condition	= Info_Mod_Ivan_Hasenfuss_Condition;
	information	= Info_Mod_Ivan_Hasenfuss_Info;
	permanent	= 0;
	important	= 0;
	description	= "Przyjezdzacie ze mna na polowanie na padlinozerce.";
};

FUNC INT Info_Mod_Ivan_Hasenfuss_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ivan_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Dalton_Hi))
	&& (Mod_REL_Hasenfuss == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ivan_Hasenfuss_Info()
{
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss_15_00"); //Przyjezdzacie ze mna na polowanie na padlinozerce.
	AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss_09_01"); //Czy nie masz zamiaru? Te krwiozercze istoty rozerwalyby nas od siebie.
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss_15_02"); //Nie powiedzialem, ze masz wybór.
	AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss_09_03"); //Ale nie mozesz tego zapytac! Mówie Tatusiowi!
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss_15_04"); //Kiedy ostatni raz zostales pobity tak miekko jak pieluszka?
	AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss_09_05"); //Naprawde ssisz. Nie sadze, ze chcialbym isc z Toba.

	Mod_REL_Hasenfuss = 2;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");

	self.aivar[AIV_Partymember] = TRUE;
};

INSTANCE Info_Mod_Ivan_Hasenfuss2 (C_INFO)
{
	npc		= Mod_7514_OUT_Ivan_REL;
	nr		= 1;
	condition	= Info_Mod_Ivan_Hasenfuss2_Condition;
	information	= Info_Mod_Ivan_Hasenfuss2_Info;
	permanent	= 1;
	important	= 0;
	description	= "Zbierzmy kwiaty!";
};

FUNC INT Info_Mod_Ivan_Hasenfuss2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ivan_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Dalton_Hi))
	&& (Mod_REL_Hasenfuss == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ivan_Hasenfuss2_Info()
{
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss2_15_00"); //Zbierzmy kwiaty!
	AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss2_09_01"); //Och, tak! Czy znasz dobra lake kwiatowa?

	Info_ClearChoices	(Info_Mod_Ivan_Hasenfuss2);

	Info_AddChoice	(Info_Mod_Ivan_Hasenfuss2, "Wróce, kiedy ja znajde.", Info_Mod_Ivan_Hasenfuss2_B);
	Info_AddChoice	(Info_Mod_Ivan_Hasenfuss2, "Z pewnoscia, przyjdzcie ze mna.", Info_Mod_Ivan_Hasenfuss2_A);
};

FUNC VOID Info_Mod_Ivan_Hasenfuss2_B()
{
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss2_B_15_00"); //Wróce, kiedy ja znajde.

	Info_ClearChoices	(Info_Mod_Ivan_Hasenfuss2);
};

FUNC VOID Info_Mod_Ivan_Hasenfuss2_A()
{
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss2_A_15_00"); //Z pewnoscia, przyjdzcie ze mna.
	AI_Output(self, hero, "DEFAULT"); //

	Info_ClearChoices	(Info_Mod_Ivan_Hasenfuss2);

	Mod_REL_Hasenfuss = 3;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");

	self.aivar[AIV_Partymember] = TRUE;
};

INSTANCE Info_Mod_Ivan_Hasenfuss3 (C_INFO)
{
	npc		= Mod_7514_OUT_Ivan_REL;
	nr		= 1;
	condition	= Info_Mod_Ivan_Hasenfuss3_Condition;
	information	= Info_Mod_Ivan_Hasenfuss3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ivan_Hasenfuss3_Condition()
{
	if (Npc_GetDistToWP(hero, "REL_SURFACE_126") < 2500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ivan_Hasenfuss3_Info()
{
	if (Mod_REL_Hasenfuss == 3)
	{
		AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss3_09_00"); //Chcesz zbierac kwiaty tutaj? Jest pelen paskudnych potworów.
		AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss3_09_01"); //Idzmy gdzie indziej.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss3_09_02"); //Naprawde nie mam odwagi. Czy nie mozesz samodzielnie polowac?
		AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss3_09_03"); //A albo jestes zbyt przerazony?
	};

	Info_ClearChoices	(Info_Mod_Ivan_Hasenfuss3);

	Info_AddChoice	(Info_Mod_Ivan_Hasenfuss3, "Bedziemy polowac razem, wiec to jasne.", Info_Mod_Ivan_Hasenfuss3_B);
	Info_AddChoice	(Info_Mod_Ivan_Hasenfuss3, "Zabic padlinozerców. Obserwuje.", Info_Mod_Ivan_Hasenfuss3_A);
};

FUNC VOID Info_Mod_Ivan_Hasenfuss3_B()
{
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss3_B_15_00"); //Bedziemy polowac razem, wiec to jasne.
	AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss3_B_09_01"); //Nie wiem nic o polowaniu.
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss3_B_15_02"); //Dlatego jestem po waszej stronie.
	AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss3_B_09_03"); //Um.... Wystarczy tylko obserwowac i uczyc sie, czyz nie?

	Info_ClearChoices	(Info_Mod_Ivan_Hasenfuss3);

	Info_AddChoice	(Info_Mod_Ivan_Hasenfuss3, "Nie ma szans.", Info_Mod_Ivan_Hasenfuss3_D);
	Info_AddChoice	(Info_Mod_Ivan_Hasenfuss3, "Wszystkie sluszne, wszystkie sluszne.", Info_Mod_Ivan_Hasenfuss3_C);
};

FUNC VOID Info_Mod_Ivan_Hasenfuss3_A()
{
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss3_A_15_00"); //Zabic padlinozerców. Obserwuje.
	AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss3_A_09_01"); //Czy nie myslisz?

	B_LogEntry	(TOPIC_MOD_KHORATA_HASENFUSS, "Ivan jest uparty. Powinienem znalezc sposób na zachecenie go do polowania.");

	Info_ClearChoices	(Info_Mod_Ivan_Hasenfuss3);

	Mod_REL_Hasenfuss = 6;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLUCHT");

	self.aivar[AIV_Partymember] = FALSE;
};

FUNC VOID Info_Mod_Ivan_Hasenfuss3_D()
{
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss3_D_15_00"); //Nie ma szans.
	AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss3_D_09_01"); //Dobrze, spróbujmy. Powiedz mi kiedy pójsc.
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss3_D_15_02"); //Zróbmy to.

	Info_ClearChoices	(Info_Mod_Ivan_Hasenfuss3);

	Mod_REL_Hasenfuss = 4;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");
};

FUNC VOID Info_Mod_Ivan_Hasenfuss3_C()
{
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss3_C_15_00"); //Wszystkie sluszne, wszystkie sluszne.

	Info_ClearChoices	(Info_Mod_Ivan_Hasenfuss3);

	Mod_REL_Hasenfuss = 5;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "WAIT");
};

INSTANCE Info_Mod_Ivan_Hasenfuss4 (C_INFO)
{
	npc		= Mod_7514_OUT_Ivan_REL;
	nr		= 1;
	condition	= Info_Mod_Ivan_Hasenfuss4_Condition;
	information	= Info_Mod_Ivan_Hasenfuss4_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Ivan_Hasenfuss4_Condition()
{
	if (Mod_REL_Hasenfuss == 6)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ivan_Hasenfuss4_Info()
{
	AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss4_09_00"); //Wyjsc stad!

	Info_ClearChoices	(Info_Mod_Ivan_Hasenfuss4);

	Info_AddChoice	(Info_Mod_Ivan_Hasenfuss4, "Jesli przyjedziesz ze mna, daje ci troche roslin.", Info_Mod_Ivan_Hasenfuss4_B);
	Info_AddChoice	(Info_Mod_Ivan_Hasenfuss4, "Nie spodoba Ci sie twój ojciec.", Info_Mod_Ivan_Hasenfuss4_A);
};

FUNC VOID Info_Mod_Ivan_Hasenfuss4_B()
{
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss4_B_15_00"); //Jesli przyjedziesz ze mna, daje ci troche roslin.
	AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss4_B_09_01"); //Masz piec roslin leczniczych?

	Info_ClearChoices	(Info_Mod_Ivan_Hasenfuss4);

	Info_AddChoice	(Info_Mod_Ivan_Hasenfuss4, "Przynosze Ci to pózniej.", Info_Mod_Ivan_Hasenfuss4_D);

	if (Npc_HasItems(hero, ItPl_Health_Herb_01) >= 5)
	{
		Info_AddChoice	(Info_Mod_Ivan_Hasenfuss4, "Tutaj je masz.", Info_Mod_Ivan_Hasenfuss4_C);
	};
};

FUNC VOID Info_Mod_Ivan_Hasenfuss4_A()
{
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss4_A_15_00"); //Nie spodoba Ci sie twój ojciec.
	AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss4_A_09_01"); //Mój ojciec znów za tym stoi. Juz tego nie slysze!
	AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss4_A_09_02"); //Ale to byl ostatni raz, kiedy mnie zdradzil!
	AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss4_A_09_03"); //Sa przeciez inne miejsca, w których moge mieszkac.

	Info_ClearChoices	(Info_Mod_Ivan_Hasenfuss4);

	Mod_REL_Hasenfuss = 7;

	B_SetTopicStatus	(TOPIC_MOD_KHORATA_HASENFUSS, LOG_FAILED);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ERHARD");
};

FUNC VOID Info_Mod_Ivan_Hasenfuss4_D()
{
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss4_D_15_00"); //Przynosze Ci to pózniej.

	Info_ClearChoices	(Info_Mod_Ivan_Hasenfuss4);
};

FUNC VOID Info_Mod_Ivan_Hasenfuss4_C()
{
	AI_Output(hero, self, "Info_Mod_Ivan_Hasenfuss4_C_15_00"); //Tutaj je masz.

	B_GiveInvItems	(hero, self, ItPl_Health_Herb_01, 5);

	Info_ClearChoices	(Info_Mod_Ivan_Hasenfuss4);

	Info_Mod_Ivan_Hasenfuss3_B();
};

INSTANCE Info_Mod_Ivan_Hasenfuss5 (C_INFO)
{
	npc		= Mod_7514_OUT_Ivan_REL;
	nr		= 1;
	condition	= Info_Mod_Ivan_Hasenfuss5_Condition;
	information	= Info_Mod_Ivan_Hasenfuss5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ivan_Hasenfuss5_Condition()
{
	if (Mod_REL_Hasenfuss == 8)
	|| (Mod_REL_Hasenfuss == 9)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ivan_Hasenfuss5_Info()
{
	if (Mod_REL_Hasenfuss == 8)
	{
		AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss5_09_00"); //Czy widziales, w jaki sposób im to dalem? To byla zabawa!
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Ivan_Hasenfuss5_09_01"); //I co teraz jest tak wspaniale?
	};

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	self.aivar[AIV_Partymember] = FALSE;
};

INSTANCE Info_Mod_Ivan_Freudenspender (C_INFO)
{
	npc		= Mod_7514_OUT_Ivan_REL;
	nr		= 1;
	condition	= Info_Mod_Ivan_Freudenspender_Condition;
	information	= Info_Mod_Ivan_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Chcesz dac radosc lub jestes jeszcze za mlody?";
};                       

FUNC INT Info_Mod_Ivan_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Ivan_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Ivan_Freudenspender_15_00"); //Chcesz dac radosc lub jestes jeszcze za mlody?
	AI_Output(self, hero, "Info_Mod_Ivan_Freudenspender_09_01"); //Nie, zabiore rzeczy.... regularnie.

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	Mod_Freudenspender	+= 1;

	B_StartOtherRoutine	(self, "BEKIFFT");
};

INSTANCE Info_Mod_Ivan_Pickpocket (C_INFO)
{
	npc		= Mod_7514_OUT_Ivan_REL;
	nr		= 1;
	condition	= Info_Mod_Ivan_Pickpocket_Condition;
	information	= Info_Mod_Ivan_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Ivan_Pickpocket_Condition()
{
	C_Beklauen	(45, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Ivan_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ivan_Pickpocket);

	Info_AddChoice	(Info_Mod_Ivan_Pickpocket, DIALOG_BACK, Info_Mod_Ivan_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ivan_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ivan_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ivan_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ivan_Pickpocket);
};

FUNC VOID Info_Mod_Ivan_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ivan_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ivan_Pickpocket);

		Info_AddChoice	(Info_Mod_Ivan_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ivan_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ivan_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ivan_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ivan_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ivan_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ivan_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ivan_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ivan_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ivan_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ivan_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ivan_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ivan_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ivan_EXIT (C_INFO)
{
	npc		= Mod_7514_OUT_Ivan_REL;
	nr		= 1;
	condition	= Info_Mod_Ivan_EXIT_Condition;
	information	= Info_Mod_Ivan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ivan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ivan_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
