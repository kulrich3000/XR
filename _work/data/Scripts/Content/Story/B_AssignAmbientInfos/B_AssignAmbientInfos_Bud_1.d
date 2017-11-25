// *************************************************************************
// 									Kapitel 1
// *************************************************************************


// *************************************************************************
// 									EXIT
// *************************************************************************

INSTANCE Info_Bud_1_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_Bud_1 (s.u.) jeweils gesetzt
	nr			= 999;
	condition	= Info_Bud_1_EXIT_Condition;
	information	= Info_Bud_1_EXIT_Info;
	permanent	= 1;
	description = "END";
};                       

FUNC INT Info_Bud_1_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Bud_1_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************

INSTANCE Info_Bud_1_EinerVonEuchWerden (C_INFO) // E1
{
	nr			= 4;
	condition	= Info_Bud_1_EinerVonEuchWerden_Condition;
	information	= Info_Bud_1_EinerVonEuchWerden_Info;
	permanent	= 1;
	description = "How will I be accepted in this camp?";
};                       

FUNC INT Info_Bud_1_EinerVonEuchWerden_Condition()
{
	if (Schatten_Dabei == FALSE)
	&& (Gardist_Dabei == FALSE)
	&& (Erzbaron_Dabei == FALSE)
	{
		return TRUE;
	};
};

FUNC VOID Info_Bud_1_EinerVonEuchWerden_Info()
{
	AI_Output(hero,self,"Info_Bud_1_EinerVonEuchWerden_15_00"); //How will I be accepted in this camp?
	AI_Output(self,hero,"Info_Bud_1_EinerVonEuchWerden_01_01"); //It used to be easier. All you had to do was get yourself a pickaxe and go to the old mine. But it's been over since the collapse. You'd better talk to Thorus.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************

INSTANCE Info_Bud_1_WichtigePersonen(C_INFO)
{
	nr			= 3;
	condition	= Info_Bud_1_WichtigePersonen_Condition;
	information	= Info_Bud_1_WichtigePersonen_Info;
	permanent	= 1;
	description = "Who's in charge here?";
};                       

FUNC INT Info_Bud_1_WichtigePersonen_Condition()
{
	return 1;
};

FUNC VOID Info_Bud_1_WichtigePersonen_Info()
{
	AI_Output(hero,self,"Info_Bud_1_WichtigePersonen_15_00"); //Who's in charge here?
	AI_Output(self,hero,"Info_Bud_1_WichtigePersonen_01_01"); //The ore barons. You are in control of the warehouse. The higher you stand, the more you get.
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************

INSTANCE Info_Bud_1_DasLager(C_INFO)
{
	nr			= 2;
	condition	= Info_Bud_1_DasLager_Condition;
	information	= Info_Bud_1_DasLager_Info;
	permanent	= 1;
	description = "Is there anything more interesting than huts?";
};                       

FUNC INT Info_Bud_1_DasLager_Condition()
{
	return 1;
};

FUNC VOID Info_Bud_1_DasLager_Info()
{
	AI_Output(hero,self,"Info_Bud_1_DasLager_15_00"); //Is there anything more interesting than huts?
	AI_Output(self,hero,"Info_Bud_1_DasLager_01_01"); //In the evening you can watch the guards polishing each other's faces in the arena.
	AI_Output(self,hero,"Info_Bud_1_DasLager_01_02"); //That's worth the entrance ticket.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************

INSTANCE Info_Bud_1_DieLage(C_INFO) // E1
{
	nr			= 1;
	condition	= Info_Bud_1_DieLage_Condition;
	information	= Info_Bud_1_DieLage_Info;
	permanent	= 1;
	description = "How's it looking?";
};                       

FUNC INT Info_Bud_1_DieLage_Condition()
{
	return 1;
};

FUNC VOID Info_Bud_1_DieLage_Info()
{
	AI_Output(hero,self,"Info_Bud_1_DieLage_15_00"); //How's it looking?
	AI_Output(self,hero,"Info_Bud_1_DieLage_01_01"); //All I want is peace and quiet. So don't get on my nerves.
};

INSTANCE Info_Mod_BUD_1_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_BUD_1_Pickpocket_Condition;
	information	= Info_Mod_BUD_1_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_BUD_1_Pickpocket_Condition()
{
	C_Beklauen	(8 + r_max(12), ItMi_Gold, 10 + r_max(5));
};

FUNC VOID Info_Mod_BUD_1_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_BUD_1_Pickpocket);

	Info_AddChoice	(Info_Mod_BUD_1_Pickpocket, DIALOG_BACK, Info_Mod_BUD_1_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_BUD_1_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_BUD_1_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_BUD_1_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_BUD_1_Pickpocket);
};

FUNC VOID Info_Mod_BUD_1_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_BUD_1_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_BUD_1_Pickpocket);

		Info_AddChoice	(Info_Mod_BUD_1_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_BUD_1_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_BUD_1_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_BUD_1_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_BUD_1_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_BUD_1_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_BUD_1_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_BUD_1_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_BUD_1_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_BUD_1_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_BUD_1_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_BUD_1_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_BUD_1_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};
	
// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_Bud_1(var c_NPC slf)
{
	Info_Bud_1_EXIT.npc					= Hlp_GetInstanceID(slf);
	Info_Bud_1_EinerVonEuchWerden.npc	= Hlp_GetInstanceID(slf);
	Info_Bud_1_WichtigePersonen.npc		= Hlp_GetInstanceID(slf);
	Info_Bud_1_DasLager.npc				= Hlp_GetInstanceID(slf);
	Info_Bud_1_DieLage.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_BUD_1_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
