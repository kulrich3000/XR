// *************************************************************************
// 									Kapitel 1
// *************************************************************************


// *************************************************************************
// 									EXIT
// *************************************************************************

INSTANCE Info_grd_13_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_grd_13 (s.u.) jeweils gesetzt
	nr			= 999;
	condition	= Info_grd_13_EXIT_Condition;
	information	= Info_grd_13_EXIT_Info;
	permanent	= 1;
	description = DIALOG_ENDE;
};                       

FUNC INT Info_grd_13_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_grd_13_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************

INSTANCE Info_grd_13_EinerVonEuchWerden (C_INFO) // E1
{
	nr			= 1;
	condition	= Info_grd_13_EinerVonEuchWerden_Condition;
	information	= Info_grd_13_EinerVonEuchWerden_Info;
	permanent	= 1;
	description = "I want to be a guardsman.";
};                       

FUNC INT Info_grd_13_EinerVonEuchWerden_Condition()
{
	if	(Gardist_Dabei == FALSE)
	&& (Erzbaron_Dabei == FALSE)
	{
		return TRUE;
	};
};

FUNC VOID Info_grd_13_EinerVonEuchWerden_Info()
{
	AI_Output(hero,self,"Info_grd_13_EinerVonEuchWerden_15_00"); //I want to be a guardsman.
	AI_Output(self,hero,"Info_grd_13_EinerVonEuchWerden_13_01"); //You got a lot of work ahead of you, boy!
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************

INSTANCE Info_grd_13_WichtigePersonen(C_INFO)
{
	nr			= 1;
	condition	= Info_grd_13_WichtigePersonen_Condition;
	information	= Info_grd_13_WichtigePersonen_Info;
	permanent	= 1;
	description = "Who's in charge here?";
};                       

FUNC INT Info_grd_13_WichtigePersonen_Condition()
{
	return 1;
};

FUNC VOID Info_grd_13_WichtigePersonen_Info()
{
	AI_Output(hero,self,"Info_grd_13_WichtigePersonen_15_00"); //Who's in charge here?
	AI_Output(self,hero,"Info_grd_13_WichtigePersonen_13_01"); //I'm in charge here. And I say be careful what you say, boy!
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************

INSTANCE Info_grd_13_DasLager(C_INFO)
{
	nr			= 1;
	condition	= Info_grd_13_DasLager_Condition;
	information	= Info_grd_13_DasLager_Info;
	permanent	= 1;
	description = "How can I get into the castle?";
};                       

FUNC INT Info_grd_13_DasLager_Condition()
{
	if (Schatten_Dabei == FALSE) 
	&& (Gardist_Dabei == FALSE)
	&& (Erzbaron_Dabei == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_grd_13_DasLager_Info()
{
	AI_Output(hero,self,"Info_grd_13_DasLager_15_00"); //How do I get to the castle?
	AI_Output(self,hero,"Info_grd_13_DasLager_13_01"); //It's not that easy. You have to use your legs.
	AI_Output(self,hero,"Info_grd_13_DasLager_13_02"); //But then comes the more difficult part: Walk through the gate.
	AI_Output(hero,self,"Info_grd_13_DasLager_15_03"); //Very funny.
};

INSTANCE Info_Mod_GRD_13_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_GRD_13_Pickpocket_Condition;
	information	= Info_Mod_GRD_13_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_GRD_13_Pickpocket_Condition()
{
	C_Beklauen	(120 + r_max(30), ItMi_Gold, 60 + r_max(10));
};

FUNC VOID Info_Mod_GRD_13_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_GRD_13_Pickpocket);

	Info_AddChoice	(Info_Mod_GRD_13_Pickpocket, DIALOG_BACK, Info_Mod_GRD_13_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_GRD_13_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_GRD_13_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_GRD_13_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_GRD_13_Pickpocket);
};

FUNC VOID Info_Mod_GRD_13_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_GRD_13_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_GRD_13_Pickpocket);

		Info_AddChoice	(Info_Mod_GRD_13_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_GRD_13_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_GRD_13_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_GRD_13_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_GRD_13_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_GRD_13_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_GRD_13_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_GRD_13_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_GRD_13_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_GRD_13_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_GRD_13_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_GRD_13_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_GRD_13_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_grd_13(var c_NPC slf)
{
	Info_grd_13_EXIT.npc				= Hlp_GetInstanceID(slf);
	Info_grd_13_EinerVonEuchWerden.npc	= Hlp_GetInstanceID(slf);
	Info_grd_13_WichtigePersonen.npc	= Hlp_GetInstanceID(slf);
	Info_grd_13_DasLager.npc			= Hlp_GetInstanceID(slf);
	Info_Mod_GRD_13_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
