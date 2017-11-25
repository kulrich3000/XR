// *************************************************************************
// 									Kapitel 1
// *************************************************************************


// *************************************************************************
// 									EXIT
// *************************************************************************

INSTANCE Info_PsiNov_2_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_PsiNov_2 (s.u.) jeweils gesetzt
	nr			= 999;
	condition	= Info_PsiNov_2_EXIT_Condition;
	information	= Info_PsiNov_2_EXIT_Info;
	permanent	= 1;
	description = "ENDE";
};                       

FUNC INT Info_PsiNov_2_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_PsiNov_2_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************

INSTANCE Info_PsiNov_2_EinerVonEuchWerden (C_INFO) // E1
{
	nr			= 4;
	condition	= Info_PsiNov_2_EinerVonEuchWerden_Condition;
	information	= Info_PsiNov_2_EinerVonEuchWerden_Info;
	permanent	= 1;
	description = "Chce dolaczyc do Ciebie.";
};                       

FUNC INT Info_PsiNov_2_EinerVonEuchWerden_Condition()
{
	if (SumpfNovize_Dabei == FALSE)
	&& (Templer_Dabei == FALSE)
	&& (HoherTempler_Dabei == FALSE)
	&& (Guru_Dabei == FALSE)
	&& (HoherGuru_Dabei == FALSE)
	{
		return TRUE;
	};
};

FUNC VOID Info_PsiNov_2_EinerVonEuchWerden_Info()
{
	AI_Output(hero,self,"Info_PsiNov_2_EinerVonEuchWerden_15_00"); //Chce dolaczyc do Ciebie.
	AI_Output(self,hero,"Info_PsiNov_2_EinerVonEuchWerden_02_01"); //Postanowiles dolaczyc do nas? Przed toba lezy droga radosci i szczescia.
	AI_Output(self,hero,"Info_PsiNov_2_EinerVonEuchWerden_02_02"); //Wybierajac sie do Cor Cadar, decyduje, do którego zadania najlepiej pasuje.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************

INSTANCE Info_PsiNov_2_WichtigePersonen(C_INFO)
{
	nr			= 3;
	condition	= Info_PsiNov_2_WichtigePersonen_Condition;
	information	= Info_PsiNov_2_WichtigePersonen_Info;
	permanent	= 1;
	description = "Kim sa Twoi liderzy?";
};                       

FUNC INT Info_PsiNov_2_WichtigePersonen_Condition()
{
	return 1;
};

FUNC VOID Info_PsiNov_2_WichtigePersonen_Info()
{
	AI_Output(hero,self,"Info_PsiNov_2_WichtigePersonen_15_00"); //Kim sa Twoi liderzy?
	AI_Output(self,hero,"Info_PsiNov_2_WichtigePersonen_02_01"); //Cor Cadar i Cor Angar sa naszymi duchowymi ojcami.
	AI_Output(self,hero,"Info_PsiNov_2_WichtigePersonen_02_02"); //Zapewniaja nam one bezpieczenstwo i plynnosc produkcji ziól.
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************

INSTANCE Info_PsiNov_2_DasLager(C_INFO)
{
	nr			= 2;
	condition	= Info_PsiNov_2_DasLager_Condition;
	information	= Info_PsiNov_2_DasLager_Info;
	permanent	= 1;
	description = "Co jest wazne, aby wiedziec o tym miejscu?";
};                       

FUNC INT Info_PsiNov_2_DasLager_Condition()
{
	return 1;
};

FUNC VOID Info_PsiNov_2_DasLager_Info()
{
	AI_Output(hero,self,"Info_PsiNov_2_DasLager_15_00"); //Co jest wazne, aby wiedziec o tym miejscu?
	AI_Output(self,hero,"Info_PsiNov_2_DasLager_02_01"); //To miejsce wiary, brat. Nie mamy wiele, ale lubimy dzielic sie tym, co mamy z tymi, którzy chca sluchac naszych nauk.
	AI_Output(self,hero,"Info_PsiNov_2_DasLager_02_02"); //Znajdz jeden z guru i wzbogac swoja dusze.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************

INSTANCE Info_PsiNov_2_DieLage(C_INFO) // E1
{
	nr			= 1;
	condition	= Info_PsiNov_2_DieLage_Condition;
	information	= Info_PsiNov_2_DieLage_Info;
	permanent	= 1;
	description = "Jak wyglada?";
};                       

FUNC INT Info_PsiNov_2_DieLage_Condition()
{
	return 1;
};

FUNC VOID Info_PsiNov_2_DieLage_Info()
{
	AI_Output(hero,self,"Info_PsiNov_2_DieLage_15_00"); //Jak wyglada?
	AI_Output(self,hero,"Info_PsiNov_2_DieLage_02_01"); //Nie mam duzo czasu - musze zajac sie swoimi zadaniami.
};

INSTANCE Info_Mod_PsiNov_2_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_PsiNov_2_Pickpocket_Condition;
	information	= Info_Mod_PsiNov_2_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_PsiNov_2_Pickpocket_Condition()
{
	C_Beklauen	(30 + r_max(30), ItMi_Gold, 15 + r_max(5));
};

FUNC VOID Info_Mod_PsiNov_2_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_PsiNov_2_Pickpocket);

	Info_AddChoice	(Info_Mod_PsiNov_2_Pickpocket, DIALOG_BACK, Info_Mod_PsiNov_2_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_PsiNov_2_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_PsiNov_2_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_PsiNov_2_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_PsiNov_2_Pickpocket);
};

FUNC VOID Info_Mod_PsiNov_2_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_PsiNov_2_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_PsiNov_2_Pickpocket);

		Info_AddChoice	(Info_Mod_PsiNov_2_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_PsiNov_2_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_PsiNov_2_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_PsiNov_2_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_PsiNov_2_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_PsiNov_2_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_PsiNov_2_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_PsiNov_2_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_PsiNov_2_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_PsiNov_2_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_PsiNov_2_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_PsiNov_2_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_PsiNov_2_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};
	
// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_PsiNov_2(var c_NPC slf)
{
	Info_PsiNov_2_EXIT.npc					= Hlp_GetInstanceID(slf);
	Info_PsiNov_2_EinerVonEuchWerden.npc	= Hlp_GetInstanceID(slf);
	Info_PsiNov_2_WichtigePersonen.npc		= Hlp_GetInstanceID(slf);
	Info_PsiNov_2_DasLager.npc				= Hlp_GetInstanceID(slf);
	Info_PsiNov_2_DieLage.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_PsiNov_2_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
