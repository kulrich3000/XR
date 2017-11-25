// *************************************************************************
// 									Kapitel 1
// *************************************************************************


// *************************************************************************
// 									EXIT
// *************************************************************************

INSTANCE Info_Stt_12_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_Stt_12 (s.u.) jeweils gesetzt
	nr			= 999;
	condition	= Info_Stt_12_EXIT_Condition;
	information	= Info_Stt_12_EXIT_Info;
	permanent	= 1;
	description = "END";
};                       

FUNC INT Info_Stt_12_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Stt_12_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************

INSTANCE Info_Stt_12_EinerVonEuchWerden (C_INFO) // E1
{
	nr			= 4;
	condition	= Info_Stt_12_EinerVonEuchWerden_Condition;
	information	= Info_Stt_12_EinerVonEuchWerden_Info;
	permanent	= 1;
	description = "I'd like to join the shadow.";
};                       

FUNC INT Info_Stt_12_EinerVonEuchWerden_Condition()
{
	if (Schatten_Dabei == FALSE)
	&& (Gardist_Dabei == FALSE)
	&& (Erzbaron_Dabei == FALSE)
	{
		return TRUE;
	};
};

FUNC VOID Info_Stt_12_EinerVonEuchWerden_Info()
{
	AI_Output(hero,self,"Info_Stt_12_EinerVonEuchWerden_15_00"); //I would like to join the shadow.
	AI_Output(self,hero,"Info_Stt_12_EinerVonEuchWerden_12_01"); //Like this? Then you should know that Thorus will not tolerate failure. If you want to be one of us, you have to go through the fire for him!
	AI_Output(self,hero,"Info_Stt_12_EinerVonEuchWerden_12_02"); //Only half of those who tried have been accepted.
	AI_Output(hero,self,"Info_Stt_12_EinerVonEuchWerden_15_03"); //What happened to the rest of them?
	AI_Output(self,hero,"Info_Stt_12_EinerVonEuchWerden_12_04"); //Probably sitting in the New Camp eating rice. Hey hey hey hey.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************

INSTANCE Info_Stt_12_WichtigePersonen(C_INFO)
{
	nr			= 3;
	condition	= Info_Stt_12_WichtigePersonen_Condition;
	information	= Info_Stt_12_WichtigePersonen_Info;
	permanent	= 1;
	description = "Who's the boss here?";
};                       

FUNC INT Info_Stt_12_WichtigePersonen_Condition()
{
	return 1;
};

FUNC VOID Info_Stt_12_WichtigePersonen_Info()
{
	AI_Output(hero,self,"Info_Stt_12_WichtigePersonen_15_00"); //Who's the boss here?
	AI_Output(self,hero,"Info_Stt_12_WichtigePersonen_12_01"); //Thorus is our boss.
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************

INSTANCE Info_Stt_12_DasLager(C_INFO)
{
	nr			= 2;
	condition	= Info_Stt_12_DasLager_Condition;
	information	= Info_Stt_12_DasLager_Info;
	permanent	= 1;
	description = "I want to know what's available here at the camp.";
};                       

FUNC INT Info_Stt_12_DasLager_Condition()
{
	return 1;
};

FUNC VOID Info_Stt_12_DasLager_Info()
{
	AI_Output(hero,self,"Info_Stt_12_DasLager_15_00"); //I want to know what's available here at the camp.
	AI_Output(self,hero,"Info_Stt_12_DasLager_12_01"); //Why don't you ask the Buddlers? They don't have nothing to do all day anyway.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************

INSTANCE Info_Stt_12_DieLage(C_INFO) // E1
{
	nr			= 1;
	condition	= Info_Stt_12_DieLage_Condition;
	information	= Info_Stt_12_DieLage_Info;
	permanent	= 1;
	description = "What's the score?";
};                       

FUNC INT Info_Stt_12_DieLage_Condition()
{
	return 1;
};

FUNC VOID Info_Stt_12_DieLage_Info()
{
	AI_Output(hero,self,"Info_Stt_12_DieLage_15_00"); //What's the score?
	AI_Output(self,hero,"Info_Stt_12_DieLage_12_01"); //What exactly do you want from me?
};

INSTANCE Info_Mod_STT_12_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_STT_12_Pickpocket_Condition;
	information	= Info_Mod_STT_12_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_STT_12_Pickpocket_Condition()
{
	C_Beklauen	(30 + r_max(30), ItMi_Gold, 15 + r_max(5));
};

FUNC VOID Info_Mod_STT_12_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_STT_12_Pickpocket);

	Info_AddChoice	(Info_Mod_STT_12_Pickpocket, DIALOG_BACK, Info_Mod_STT_12_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_STT_12_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_STT_12_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_STT_12_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_STT_12_Pickpocket);
};

FUNC VOID Info_Mod_STT_12_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_STT_12_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_STT_12_Pickpocket);

		Info_AddChoice	(Info_Mod_STT_12_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_STT_12_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_STT_12_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_STT_12_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_STT_12_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_STT_12_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_STT_12_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_STT_12_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_STT_12_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_STT_12_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_STT_12_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_STT_12_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_STT_12_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};
	
// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_Stt_12(var c_NPC slf)
{
	Info_Stt_12_EXIT.npc				= Hlp_GetInstanceID(slf);
	Info_Stt_12_EinerVonEuchWerden.npc	= Hlp_GetInstanceID(slf);
	Info_Stt_12_WichtigePersonen.npc	= Hlp_GetInstanceID(slf);
	Info_Stt_12_DasLager.npc			= Hlp_GetInstanceID(slf);
	Info_Stt_12_DieLage.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_STT_12_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
