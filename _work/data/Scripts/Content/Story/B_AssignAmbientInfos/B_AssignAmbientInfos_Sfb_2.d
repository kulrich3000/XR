// *************************************************************************
// 									Kapitel 1
// *************************************************************************


// *************************************************************************
// 									Vor Gespräch
// *************************************************************************

INSTANCE Info_SFB_2_Pre(C_INFO)
{
	nr			= 1;
	condition	= Info_SFB_2_Pre_Condition;
	information	= Info_SFB_2_Pre_Info;
	permanent	= 0;
	important 	= 1;
};                       

FUNC INT Info_SFB_2_Pre_Condition()
{
	return 1;
};

FUNC VOID Info_SFB_2_Pre_Info()
{	
	AI_Output(self,hero,"Info_SFB_2_EinerVonEuchWerden_02_00"); //What are you doing here? I don't feel like getting into any trouble.
};

// *************************************************************************
// 									EXIT
// *************************************************************************

INSTANCE Info_SFB_2_EXIT(C_INFO)
{
	
	nr			= 999;
	condition	= Info_SFB_2_EXIT_Condition;
	information	= Info_SFB_2_EXIT_Info;
	permanent	= 1;
	description = "END";
};                       

FUNC INT Info_SFB_2_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_SFB_2_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************

INSTANCE Info_SFB_2_KesselProblem (C_INFO) 
{
	nr		= 1;
	condition	= Info_SFB_2_KesselProblem_Condition;
	information	= Info_SFB_2_KesselProblem_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_SFB_2_KesselProblem_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bruce_KesselProblem))
	&& (!Npc_KnowsInfo(hero, Info_SFB_1_KesselProblem))
	&& (!Npc_KnowsInfo(hero, Info_SFB_5_KesselProblem))
	{
		return TRUE;
	};
};

FUNC VOID Info_SFB_2_KesselProblem_Info()
{
	AI_Output(self,hero,"Info_SFB_2_KesselProblem_02_00"); //Hey.
};

INSTANCE Info_SFB_2_KesselProblem2 (C_INFO) 
{
	nr		= 1;
	condition	= Info_SFB_2_KesselProblem2_Condition;
	information	= Info_SFB_2_KesselProblem2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hey, I heard wild animals threaten you and one of you was killed.";
};                       

FUNC INT Info_SFB_2_KesselProblem2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bruce_KesselProblem))
	&& (!Npc_KnowsInfo(hero, Info_SFB_1_KesselProblem2))
	&& (!Npc_KnowsInfo(hero, Info_SFB_5_KesselProblem2))
	{
		return TRUE;
	};
};

FUNC VOID Info_SFB_2_KesselProblem2_Info()
{
	B_Say	(hero, self, "$KESSELPROBLEM01");

	AI_Output(self,hero,"Info_SFB_2_KesselProblem2_02_00"); //Yeah, I heard about that, too. It took him in the middle of the night.
	AI_Output(self,hero,"Info_SFB_2_KesselProblem2_02_01"); //Just left the next morning.

	B_Say	(hero, self, "§KESSELPROBLEM02");

	AI_Output(self,hero,"Info_SFB_2_KesselProblem2_02_02"); //Yeah, the mercenary Bruce saw it happen.
	AI_Output(self,hero,"Info_SFB_2_KesselProblem2_02_03"); //He was chasing the cattle, and he pulled his fur over his ears. Serves the bitch right.
	AI_Output(self,hero,"Info_SFB_2_KesselProblem2_02_04"); //I wouldn't have thought the Bruce was capable of it.
	AI_Output(self,hero,"Info_SFB_2_KesselProblem2_02_05"); //Particularly in the evening it stinks like a field of bogweed.

	B_Say	(hero, self, "§KESSELPROBLEM03");

	AI_Output(self,hero,"Info_SFB_2_KesselProblem2_02_06"); //Ohh... Hey, man, forget it, I didn't say anything.

	B_LogEntry	(TOPIC_MOD_NL_TALKESSELPROB, "As I heard from a prospector, the victim was taken at night by the shadow runner. Except for Bruce, no one saw or heard anything. The prospector still mumbled in connection with Bruce something of' evening' and' bogweed'.");

	Mod_NL_TalkesselProblem = 1;
};

INSTANCE Info_SFB_2_EinerVonEuchWerden (C_INFO) 
{
	nr			= 4;
	condition	= Info_SFB_2_EinerVonEuchWerden_Condition;
	information	= Info_SFB_2_EinerVonEuchWerden_Info;
	permanent	= 1;
	description = "What do I have to do to join you?";
};                       

FUNC INT Info_SFB_2_EinerVonEuchWerden_Condition()
{
	return TRUE;
};

FUNC VOID Info_SFB_2_EinerVonEuchWerden_Info()
{
	AI_Output(hero,self,"Info_SFB_2_EinerVonEuchWerden_15_00"); //What do I have to do to join you?
	AI_Output(self,hero,"Info_SFB_2_EinerVonEuchWerden_02_01"); //I can't help you there. I'm just a little shit around here.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************

INSTANCE Info_SFB_2_WichtigePersonen(C_INFO)
{
	nr			= 3;
	condition	= Info_SFB_2_WichtigePersonen_Condition;
	information	= Info_SFB_2_WichtigePersonen_Info;
	permanent	= 1;
	description = "Who's got something to say?";
};                       

FUNC INT Info_SFB_2_WichtigePersonen_Condition()
{
	return 1;
};

FUNC VOID Info_SFB_2_WichtigePersonen_Info()
{
	AI_Output(hero,self,"Info_SFB_2_WichtigePersonen_15_00"); //Who's got something to say?
	AI_Output(self,hero,"Info_SFB_2_WichtigePersonen_02_01"); //Here in the boiler, the mercenaries are in charge.
	AI_Output(self,hero,"Info_SFB_2_WichtigePersonen_02_02"); //So take good care of who you're messing with.
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************

INSTANCE Info_SFB_2_DasLager(C_INFO)
{
	nr			= 2;
	condition	= Info_SFB_2_DasLager_Condition;
	information	= Info_SFB_2_DasLager_Info;
	permanent	= 1;
	description = "I want to know more about this camp.";
};                       

FUNC INT Info_SFB_2_DasLager_Condition()
{
	return 1;
};

FUNC VOID Info_SFB_2_DasLager_Info()
{
	AI_Output(hero,self,"Info_SFB_2_DasLager_15_00"); //I want to know more about this camp.
	AI_Output(self,hero,"Info_SFB_2_DasLager_02_01"); //I don't know if I can help you with that, talk to the mercenaries.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************

INSTANCE Info_SFB_2_DieLage(C_INFO) 
{
	nr			= 1;
	condition	= Info_SFB_2_DieLage_Condition;
	information	= Info_SFB_2_DieLage_Info;
	permanent	= 1;
	description = "What's life like here?";
};                       

FUNC INT Info_SFB_2_DieLage_Condition()
{
	return 1;
};

FUNC VOID Info_SFB_2_DieLage_Info()
{
	AI_Output(hero,self,"Info_SFB_2_DieLage_15_00"); //How's life here?
	AI_Output(self,hero,"Info_SFB_2_DieLage_02_01"); //I don't want to complain. We all have our share to bear.
	AI_Output(self,hero,"Info_SFB_2_DieLage_02_02"); //But at least it's better here than in the old camp.
	AI_Output(self,hero,"Info_SFB_2_DieLage_02_03"); //Are you from the old camp?
	AI_Output(self,hero,"Info_SFB_2_DieLage_02_04"); //If you're from the old camp, I don't want any trouble!
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_SFB_2_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_SFB_2_Pickpocket_Condition;
	information	= Info_Mod_SFB_2_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_SFB_2_Pickpocket_Condition()
{
	C_Beklauen	(r_max(30), ItMi_Gold, 10 + r_max(5));
};

FUNC VOID Info_Mod_SFB_2_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_SFB_2_Pickpocket);

	Info_AddChoice	(Info_Mod_SFB_2_Pickpocket, DIALOG_BACK, Info_Mod_SFB_2_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_SFB_2_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_SFB_2_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_SFB_2_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_SFB_2_Pickpocket);
};

FUNC VOID Info_Mod_SFB_2_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_SFB_2_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_SFB_2_Pickpocket);

		Info_AddChoice	(Info_Mod_SFB_2_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_SFB_2_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_SFB_2_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_SFB_2_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_SFB_2_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_SFB_2_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_SFB_2_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_SFB_2_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_SFB_2_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_SFB_2_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_SFB_2_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_SFB_2_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_SFB_2_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};
	
// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_SFB_2(var c_NPC slf)
{

	Info_SFB_2_Pre.npc					= Hlp_GetInstanceID(slf);
	
	Info_SFB_2_EXIT.npc					= Hlp_GetInstanceID(slf);
	Info_SFB_2_EinerVonEuchWerden.npc	= Hlp_GetInstanceID(slf);
	Info_SFB_2_WichtigePersonen.npc		= Hlp_GetInstanceID(slf);
	Info_SFB_2_DasLager.npc				= Hlp_GetInstanceID(slf);
	Info_SFB_2_DieLage.npc				= Hlp_GetInstanceID(slf);
	Info_sfb_2_KesselProblem.npc		= Hlp_GetInstanceID(slf);
	Info_sfb_2_KesselProblem2.npc		= Hlp_GetInstanceID(slf);
	Info_Mod_SFB_2_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
