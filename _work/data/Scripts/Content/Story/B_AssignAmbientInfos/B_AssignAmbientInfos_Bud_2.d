// *************************************************************************
// 									Kapitel 1
// *************************************************************************


// *************************************************************************
// 									EXIT
// *************************************************************************

INSTANCE Info_Bud_2_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_Bud_2 (s.u.) jeweils gesetzt
	nr			= 999;
	condition	= Info_Bud_2_EXIT_Condition;
	information	= Info_Bud_2_EXIT_Info;
	permanent	= 1;
	description = "END";
};                       

FUNC INT Info_Bud_2_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Bud_2_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************

INSTANCE Info_Bud_2_EinerVonEuchWerden (C_INFO) // E1
{
	nr			= 4;
	condition	= Info_Bud_2_EinerVonEuchWerden_Condition;
	information	= Info_Bud_2_EinerVonEuchWerden_Info;
	permanent	= 1;
	description = "I want to join you.";
};                       

FUNC INT Info_Bud_2_EinerVonEuchWerden_Condition()
{
	if (Schatten_Dabei == FALSE)
	&& (Gardist_Dabei == FALSE)
	&& (Erzbaron_Dabei == FALSE)
	{
		return TRUE;
	};
};

FUNC VOID Info_Bud_2_EinerVonEuchWerden_Info()
{
	AI_Output(hero,self,"Info_Bud_2_EinerVonEuchWerden_15_00"); //I want to join you guys.
	AI_Output(self,hero,"Info_Bud_2_EinerVonEuchWerden_02_01"); //Someone like you can soon live in the castle.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************

INSTANCE Info_Bud_2_WichtigePersonen(C_INFO)
{
	nr			= 3;
	condition	= Info_Bud_2_WichtigePersonen_Condition;
	information	= Info_Bud_2_WichtigePersonen_Info;
	permanent	= 1;
	description = "Who's in charge here?";
};                       

FUNC INT Info_Bud_2_WichtigePersonen_Condition()
{
	return 1;
};

FUNC VOID Info_Bud_2_WichtigePersonen_Info()
{
	AI_Output(hero,self,"Info_Bud_2_WichtigePersonen_15_00"); //Who's in charge here?
	AI_Output(self,hero,"Info_Bud_2_WichtigePersonen_02_01"); //Here in the outer ring, Fletcher and Bloodwyn collect the protection money. Half belongs to everyone.
	AI_Output(self,hero,"Info_Bud_2_WichtigePersonen_02_02"); //If you're good with them, nothing can happen to you.
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************

INSTANCE Info_Bud_2_DasLager(C_INFO)
{
	nr			= 2;
	condition	= Info_Bud_2_DasLager_Condition;
	information	= Info_Bud_2_DasLager_Info;
	permanent	= 1;
	description = "I want to know more about this camp.";
};                       

FUNC INT Info_Bud_2_DasLager_Condition()
{
	return 1;
};

FUNC VOID Info_Bud_2_DasLager_Info()
{
	AI_Output(hero,self,"Info_Bud_2_DasLager_15_00"); //I want to know more about this camp.
	AI_Output(self,hero,"Info_Bud_2_DasLager_02_01"); //Then you should talk to the shadows, they can tell you what you want to know. But be careful. You can't trust most of them.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************

INSTANCE Info_Bud_2_DieLage(C_INFO) // E1
{
	nr			= 1;
	condition	= Info_Bud_2_DieLage_Condition;
	information	= Info_Bud_2_DieLage_Info;
	permanent	= 1;
	description = "What's life like here?";
};                       

FUNC INT Info_Bud_2_DieLage_Condition()
{
	if (Schatten_Dabei == FALSE)
	&& (Gardist_Dabei == FALSE)
	&& (Erzbaron_Dabei == FALSE)
	{
		return TRUE;
	};
};

FUNC VOID Info_Bud_2_DieLage_Info()
{
	AI_Output(hero,self,"Info_Bud_2_DieLage_15_00"); //How's life here?
	AI_Output(self,hero,"Info_Bud_2_DieLage_02_01"); //If the Er Barons send you, tell them I don't want any trouble. I'm not gonna tell anybody anything.
	AI_Output(self,hero,"Info_Bud_2_DieLage_02_02"); //I'm satisfied with what they give us.
	AI_Output(hero,self,"Info_Bud_2_DieLage_15_03"); //No one sent me. I'm new here.
	AI_Output(self,hero,"Info_Bud_2_DieLage_02_04"); //A new one... New people get in trouble here all the time. I don't want to get involved in anything, all right?
};	

INSTANCE Info_Mod_BUD_2_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_BUD_2_Pickpocket_Condition;
	information	= Info_Mod_BUD_2_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_BUD_2_Pickpocket_Condition()
{
	C_Beklauen	(8 + r_max(12), ItMi_Gold, 10 + r_max(5));
};

FUNC VOID Info_Mod_BUD_2_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_BUD_2_Pickpocket);

	Info_AddChoice	(Info_Mod_BUD_2_Pickpocket, DIALOG_BACK, Info_Mod_BUD_2_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_BUD_2_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_BUD_2_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_BUD_2_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_BUD_2_Pickpocket);
};

FUNC VOID Info_Mod_BUD_2_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_BUD_2_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_BUD_2_Pickpocket);

		Info_AddChoice	(Info_Mod_BUD_2_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_BUD_2_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_BUD_2_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_BUD_2_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_BUD_2_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_BUD_2_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_BUD_2_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_BUD_2_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_BUD_2_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_BUD_2_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_BUD_2_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_BUD_2_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_BUD_2_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};
	
// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_Bud_2(var c_NPC slf)
{
	Info_Bud_2_EXIT.npc					= Hlp_GetInstanceID(slf);
	Info_Bud_2_EinerVonEuchWerden.npc	= Hlp_GetInstanceID(slf);
	Info_Bud_2_WichtigePersonen.npc		= Hlp_GetInstanceID(slf);
	Info_Bud_2_DasLager.npc				= Hlp_GetInstanceID(slf);
	Info_Bud_2_DieLage.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_BUD_2_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
