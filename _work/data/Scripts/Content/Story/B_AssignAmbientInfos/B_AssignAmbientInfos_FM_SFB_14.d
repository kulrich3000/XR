// *************************************************************************
// 									Kapitel 1
// *************************************************************************


// *************************************************************************
// 									Vor Gespräch
// *************************************************************************

INSTANCE Info_FM_SFB_14_Pre(C_INFO)
{
	nr			= 1;
	condition	= Info_FM_SFB_14_Pre_Condition;
	information	= Info_FM_SFB_14_Pre_Info;
	permanent	= 0;
	important 	= 1;
};                       

FUNC INT Info_FM_SFB_14_Pre_Condition()
{
	return 1;
};

FUNC VOID Info_FM_SFB_14_Pre_Info()
{	
	AI_Output(self,hero,"Info_FM_SFB_14_EinerVonEuchWerden_14_00"); //Co Pan tutaj robi? Nie mam ochoty wpadac w klopoty.
};

// *************************************************************************
// 									EXIT
// *************************************************************************

INSTANCE Info_FM_SFB_14_EXIT(C_INFO)
{
	
	nr			= 999;
	condition	= Info_FM_SFB_14_EXIT_Condition;
	information	= Info_FM_SFB_14_EXIT_Info;
	permanent	= 1;
	description = "ENDE";
};                       

FUNC INT Info_FM_SFB_14_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_FM_SFB_14_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************

INSTANCE Info_FM_SFB_14_EinerVonEuchWerden (C_INFO) 
{
	nr			= 4;
	condition	= Info_FM_SFB_14_EinerVonEuchWerden_Condition;
	information	= Info_FM_SFB_14_EinerVonEuchWerden_Info;
	permanent	= 1;
	description = "Co musze zrobic, aby dolaczyc do Ciebie?";
};                       

FUNC INT Info_FM_SFB_14_EinerVonEuchWerden_Condition()
{
	return TRUE;
};

FUNC VOID Info_FM_SFB_14_EinerVonEuchWerden_Info()
{
	AI_Output(hero,self,"Info_FM_SFB_14_EinerVonEuchWerden_15_00"); //Co musze zrobic, aby dolaczyc do Ciebie?
	AI_Output(self,hero,"Info_FM_SFB_14_EinerVonEuchWerden_14_01"); //Nie moge Ci tam pomóc. Jestem tu troche glupawy.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************

INSTANCE Info_FM_SFB_14_WichtigePersonen(C_INFO)
{
	nr			= 3;
	condition	= Info_FM_SFB_14_WichtigePersonen_Condition;
	information	= Info_FM_SFB_14_WichtigePersonen_Info;
	permanent	= 1;
	description = "Kto ma cos do powiedzenia?";
};                       

FUNC INT Info_FM_SFB_14_WichtigePersonen_Condition()
{
	return 1;
};

FUNC VOID Info_FM_SFB_14_WichtigePersonen_Info()
{
	AI_Output(hero,self,"Info_FM_SFB_14_WichtigePersonen_15_00"); //Kto ma cos do powiedzenia?
	AI_Output(self,hero,"Info_FM_SFB_14_WichtigePersonen_14_01"); //Nikt tu nie prowadzi kopalni.
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************

INSTANCE Info_FM_SFB_14_DasLager(C_INFO)
{
	nr			= 2;
	condition	= Info_FM_SFB_14_DasLager_Condition;
	information	= Info_FM_SFB_14_DasLager_Info;
	permanent	= 1;
	description = "Chce wiedziec wiecej o tej kopalni.";
};                       

FUNC INT Info_FM_SFB_14_DasLager_Condition()
{
	return 1;
};

FUNC VOID Info_FM_SFB_14_DasLager_Info()
{
	AI_Output(hero,self,"Info_FM_SFB_14_DasLager_15_00"); //Chce wiedziec wiecej o tej kopalni.
	AI_Output(self,hero,"Info_FM_SFB_14_DasLager_14_01"); //Nie wiem, czy moge w tym pomóc, porozmawiac z najemnikami.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************

INSTANCE Info_FM_SFB_14_DieLage(C_INFO) 
{
	nr			= 1;
	condition	= Info_FM_SFB_14_DieLage_Condition;
	information	= Info_FM_SFB_14_DieLage_Info;
	permanent	= 1;
	description = "Jak tu wyglada zycie?";
};                       

FUNC INT Info_FM_SFB_14_DieLage_Condition()
{
	return 1;
};

FUNC VOID Info_FM_SFB_14_DieLage_Info()
{
	AI_Output(hero,self,"Info_FM_SFB_14_DieLage_15_00"); //Jak tu wyglada zycie?
	AI_Output(self,hero,"Info_FM_SFB_14_DieLage_14_01"); //Nie chce narzekac. Wszyscy mamy swój udzial.
	AI_Output(self,hero,"Info_FM_SFB_14_DieLage_14_02"); //Ale przynajmniej jest tu lepiej niz w starym obozie.
	AI_Output(self,hero,"Info_FM_SFB_14_DieLage_14_03"); //Czy jestes z starego obozu?
	AI_Output(self,hero,"Info_FM_SFB_14_DieLage_14_04"); //Jesli jestes z dawnego obozu, nie chce klopotów!
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_FM_SFB_14_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_FM_SFB_14_Pickpocket_Condition;
	information	= Info_Mod_FM_SFB_14_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_FM_SFB_14_Pickpocket_Condition()
{
	C_Beklauen	(8 + r_max(12), ItMi_Gold, 10 + r_max(5));
};

FUNC VOID Info_Mod_FM_SFB_14_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_FM_SFB_14_Pickpocket);

	Info_AddChoice	(Info_Mod_FM_SFB_14_Pickpocket, DIALOG_BACK, Info_Mod_FM_SFB_14_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_FM_SFB_14_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_FM_SFB_14_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_FM_SFB_14_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_FM_SFB_14_Pickpocket);
};

FUNC VOID Info_Mod_FM_SFB_14_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_FM_SFB_14_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_FM_SFB_14_Pickpocket);

		Info_AddChoice	(Info_Mod_FM_SFB_14_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_FM_SFB_14_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_FM_SFB_14_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_FM_SFB_14_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_FM_SFB_14_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_FM_SFB_14_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_FM_SFB_14_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_FM_SFB_14_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_FM_SFB_14_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_FM_SFB_14_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_FM_SFB_14_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_FM_SFB_14_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_FM_SFB_14_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};	
	
// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_FM_SFB_14(var c_NPC slf)
{

	Info_FM_SFB_14_Pre.npc					= Hlp_GetInstanceID(slf);
	
	Info_FM_SFB_14_EXIT.npc					= Hlp_GetInstanceID(slf);
	Info_FM_SFB_14_EinerVonEuchWerden.npc	= Hlp_GetInstanceID(slf);
	Info_FM_SFB_14_WichtigePersonen.npc		= Hlp_GetInstanceID(slf);
	Info_FM_SFB_14_DasLager.npc				= Hlp_GetInstanceID(slf);
	Info_FM_SFB_14_DieLage.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_FM_SFB_14_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
