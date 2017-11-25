// *************************************************************************
// 									Kapitel 1
// *************************************************************************


// *************************************************************************
// 									EXIT
// *************************************************************************

INSTANCE Info_Stt_10_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_Stt_10 (s.u.) jeweils gesetzt
	nr			= 999;
	condition	= Info_Stt_10_EXIT_Condition;
	information	= Info_Stt_10_EXIT_Info;
	permanent	= 1;
	description = "END";
};                       

FUNC INT Info_Stt_10_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Stt_10_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************

INSTANCE Info_Stt_10_EinerVonEuchWerden (C_INFO) // E1
{
	nr			= 4;
	condition	= Info_Stt_10_EinerVonEuchWerden_Condition;
	information	= Info_Stt_10_EinerVonEuchWerden_Info;
	permanent	= 1;
	description = "I want to be a guardsman.";
};                       

FUNC INT Info_Stt_10_EinerVonEuchWerden_Condition()
{
	if (Schatten_Dabei == FALSE)
	&& (Gardist_Dabei == FALSE)
	&& (Erzbaron_Dabei == FALSE)
	{
		return TRUE;
	};
};

FUNC VOID Info_Stt_10_EinerVonEuchWerden_Info()
{
	AI_Output(hero,self,"Info_Stt_10_EinerVonEuchWerden_15_00"); //I want to be a guardsman.
	AI_Output(self,hero,"Info_Stt_10_EinerVonEuchWerden_10_01"); //Like this? Have you talked to Thorus yet?
	
	Info_ClearChoices(Info_Stt_10_EinerVonEuchWerden);
	Info_AddChoice(Info_Stt_10_EinerVonEuchWerden, "No.", Info_Stt_10_EinerVonEuchWerden_Nein);
	Info_AddChoice(Info_Stt_10_EinerVonEuchWerden, "Yeah.", Info_Stt_10_EinerVonEuchWerden_Ja);
};

FUNC VOID Info_Stt_10_EinerVonEuchWerden_Nein()
{
	AI_Output(hero,self,"Info_Stt_10_EinerVonEuchWerden_Nein_15_00"); //Not yet, so far.
	AI_Output(self,hero,"Info_Stt_10_EinerVonEuchWerden_Nein_10_01"); //Then do it, you'll find him at the entrance to the castle.
	Info_ClearChoices(Info_Stt_10_EinerVonEuchWerden);
};

FUNC VOID Info_Stt_10_EinerVonEuchWerden_Ja()
{
	AI_Output(hero,self,"Info_Stt_10_EinerVonEuchWerden_Ja_15_00"); //Yes, I have.
	AI_Output(self,hero,"Info_Stt_10_EinerVonEuchWerden_Ja_10_01"); //Good. Just do what he says. That didn't hurt me either. Not really, anyway.
	Info_ClearChoices(Info_Stt_10_EinerVonEuchWerden);
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************

INSTANCE Info_Stt_10_WichtigePersonen(C_INFO)
{
	nr			= 3;
	condition	= Info_Stt_10_WichtigePersonen_Condition;
	information	= Info_Stt_10_WichtigePersonen_Info;
	permanent	= 1;
	description = "Which of these people should I know?";
};                       

FUNC INT Info_Stt_10_WichtigePersonen_Condition()
{
	return 1;
};

FUNC VOID Info_Stt_10_WichtigePersonen_Info()
{
	AI_Output(hero,self,"Info_Stt_10_WichtigePersonen_15_00"); //Which of these people should I know?
	AI_Output(self,hero,"Info_Stt_10_WichtigePersonen_10_01"); //If you ever have any problems with the guards, go to Gravo. You'll find him at the wash place near the castle gate. He cares about people in trouble. Especially for newcomers, this happens faster than you think.
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************

INSTANCE Info_Stt_10_DasLager(C_INFO)
{
	nr			= 2;
	condition	= Info_Stt_10_DasLager_Condition;
	information	= Info_Stt_10_DasLager_Info;
	permanent	= 1;
	description = "What can you tell me about the camp?";
};                       

FUNC INT Info_Stt_10_DasLager_Condition()
{
	return 1;
};

FUNC VOID Info_Stt_10_DasLager_Info()
{
	AI_Output(hero,self,"Info_Stt_10_DasLager_15_00"); //What can you tell me about the camp?
	AI_Output(self,hero,"Info_Stt_10_DasLager_10_01"); //The marketplace is probably the most interesting one here. If you're looking for something special, you'll get almost everything.
	AI_Output(self,hero,"Info_Stt_10_DasLager_10_02"); //It is the place under the big roof in the south of the outer ring.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************

INSTANCE Info_Stt_10_DieLage(C_INFO) // E1
{
	nr			= 1;
	condition	= Info_Stt_10_DieLage_Condition;
	information	= Info_Stt_10_DieLage_Info;
	permanent	= 1;
	description = "Hi!";
};                       

FUNC INT Info_Stt_10_DieLage_Condition()
{
	return 1;
};

FUNC VOID Info_Stt_10_DieLage_Info()
{
	AI_Output(hero,self,"Info_Stt_10_DieLage_15_00"); //Hi!
	AI_Output(self,hero,"Info_Stt_10_DieLage_10_01"); //What do you want?
};

INSTANCE Info_Mod_STT_10_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_STT_10_Pickpocket_Condition;
	information	= Info_Mod_STT_10_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_STT_10_Pickpocket_Condition()
{
	C_Beklauen	(60 + r_max(30), ItMi_Gold, 20 + r_max(10));
};

FUNC VOID Info_Mod_STT_10_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_STT_10_Pickpocket);

	Info_AddChoice	(Info_Mod_STT_10_Pickpocket, DIALOG_BACK, Info_Mod_STT_10_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_STT_10_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_STT_10_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_STT_10_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_STT_10_Pickpocket);
};

FUNC VOID Info_Mod_STT_10_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_STT_10_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_STT_10_Pickpocket);

		Info_AddChoice	(Info_Mod_STT_10_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_STT_10_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_STT_10_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_STT_10_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_STT_10_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_STT_10_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_STT_10_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_STT_10_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_STT_10_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_STT_10_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_STT_10_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_STT_10_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_STT_10_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};
	
// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_Stt_10(var c_NPC slf)
{
	Info_Stt_10_EXIT.npc				= Hlp_GetInstanceID(slf);
	Info_Stt_10_EinerVonEuchWerden.npc	= Hlp_GetInstanceID(slf);
	Info_Stt_10_WichtigePersonen.npc	= Hlp_GetInstanceID(slf);
	Info_Stt_10_DasLager.npc			= Hlp_GetInstanceID(slf);
	Info_Stt_10_DieLage.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_STT_10_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
