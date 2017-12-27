// *************************************************************************
// 									Kapitel 1
// *************************************************************************


// *************************************************************************
// 									EXIT
// *************************************************************************

INSTANCE Info_sfb_1_EXIT(C_INFO)
{
	
	nr			= 999;
	condition	= Info_sfb_1_EXIT_Condition;
	information	= Info_sfb_1_EXIT_Info;
	permanent	= 1;
	description = "END";
};                       

FUNC INT Info_sfb_1_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_sfb_1_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************

INSTANCE Info_sfb_1_KesselProblem (C_INFO) 
{
	nr		= 1;
	condition	= Info_sfb_1_KesselProblem_Condition;
	information	= Info_sfb_1_KesselProblem_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_sfb_1_KesselProblem_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bruce_KesselProblem))
	&& (!Npc_KnowsInfo(hero, Info_SFB_2_KesselProblem))
	&& (!Npc_KnowsInfo(hero, Info_SFB_5_KesselProblem))
	{
		return TRUE;
	};
};

FUNC VOID Info_sfb_1_KesselProblem_Info()
{
	AI_Output(self,hero,"Info_sfb_1_KesselProblem_01_00"); //Hey.
};

INSTANCE Info_sfb_1_KesselProblem2 (C_INFO) 
{
	nr		= 1;
	condition	= Info_sfb_1_KesselProblem2_Condition;
	information	= Info_sfb_1_KesselProblem2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hey, I heard wild animals threaten you and one of you was killed.";
};                       

FUNC INT Info_sfb_1_KesselProblem2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bruce_KesselProblem))
	&& (!Npc_KnowsInfo(hero, Info_SFB_2_KesselProblem2))
	&& (!Npc_KnowsInfo(hero, Info_SFB_5_KesselProblem2))
	{
		return TRUE;
	};
};

FUNC VOID Info_sfb_1_KesselProblem2_Info()
{
	B_Say	(hero, self, "$KESSELPROBLEM01");

	AI_Output(self,hero,"Info_sfb_1_KesselProblem2_01_00"); //Yeah, I heard about that, too. It took him in the middle of the night.
	AI_Output(self,hero,"Info_sfb_1_KesselProblem2_01_01"); //Just left the next morning.

	B_Say	(hero, self, "§KESSELPROBLEM02");

	AI_Output(self,hero,"Info_sfb_1_KesselProblem2_01_02"); //Yeah, the mercenary Bruce saw it happen.
	AI_Output(self,hero,"Info_sfb_1_KesselProblem2_01_03"); //He was chasing the cattle, and he pulled his fur over his ears. Serves the bitch right.
	AI_Output(self,hero,"Info_sfb_1_KesselProblem2_01_04"); //I wouldn't have thought the Bruce was capable of it.
	AI_Output(self,hero,"Info_sfb_1_KesselProblem2_01_05"); //Particularly in the evening it stinks like a field of bogweed.

	B_Say	(hero, self, "§KESSELPROBLEM03");

	AI_Output(self,hero,"Info_sfb_1_KesselProblem2_01_06"); //Ohh... Hey, man, forget it, I didn't say anything.

	B_LogEntry	(TOPIC_MOD_NL_TALKESSELPROB, "As I heard from a prospector, the victim was taken at night by the shadow runner. Except for Bruce, no one saw or heard anything. The prospector still mumbled in connection with Bruce something of' evening' and' bogweed'.");

	Mod_NL_TalkesselProblem = 1;
};

INSTANCE Info_sfb_1_EinerVonEuchWerden (C_INFO) 
{
	nr			= 4;
	condition	= Info_sfb_1_EinerVonEuchWerden_Condition;
	information	= Info_sfb_1_EinerVonEuchWerden_Info;
	permanent	= 1;
	description = "How can I join the Association of prospectors?";
};                       

FUNC INT Info_sfb_1_EinerVonEuchWerden_Condition()
{
		return TRUE;
};

FUNC VOID Info_sfb_1_EinerVonEuchWerden_Info()
{
	AI_Output(hero,self,"Info_sfb_1_EinerVonEuchWerden_15_00"); //How can I join the Association of prospectors?
	AI_Output(self,hero,"Info_sfb_1_EinerVonEuchWerden_01_01"); //Join us? Don't think we don't work here just because we're not forced.
	AI_Output(self,hero,"Info_sfb_1_EinerVonEuchWerden_01_02"); //So if you think you can laze around here, you're crooked, my friend.
	AI_Output(self,hero,"Info_sfb_1_EinerVonEuchWerden_01_03"); //If you still think you're right here, find a pickaxe and report to the guard outside the mine entrance.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************

INSTANCE Info_sfb_1_WichtigePersonen(C_INFO)
{
	nr			= 3;
	condition	= Info_sfb_1_WichtigePersonen_Condition;
	information	= Info_sfb_1_WichtigePersonen_Info;
	permanent	= 1;
	description = "Who's in charge here?";
};                       

FUNC INT Info_sfb_1_WichtigePersonen_Condition()
{
	return 1;
};

FUNC VOID Info_sfb_1_WichtigePersonen_Info()
{
	AI_Output(hero,self,"Info_sfb_1_WichtigePersonen_15_00"); //Who's in charge here?
	AI_Output(self,hero,"Info_sfb_1_WichtigePersonen_01_01"); //The say? Take a look around. Certainly not the people who work all day to extract enough ore.
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************

INSTANCE Info_sfb_1_DasLager(C_INFO)
{
	nr			= 2;
	condition	= Info_sfb_1_DasLager_Condition;
	information	= Info_sfb_1_DasLager_Info;
	permanent	= 1;
	description = "What is this place?";
};                       

FUNC INT Info_sfb_1_DasLager_Condition()
{
	return 1;
};

FUNC VOID Info_sfb_1_DasLager_Info()
{
	AI_Output(hero,self,"Info_sfb_1_DasLager_15_00"); //What is this place?
	AI_Output(self,hero,"Info_sfb_1_DasLager_01_01"); //What's it look like? Like the king's palace?
	AI_Output(self,hero,"Info_sfb_1_DasLager_01_02"); //So if you really want to work in the Free Mine, you'll have to prove here in the kettle that we can use you.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************

INSTANCE Info_sfb_1_DieLage(C_INFO) 
{
	nr			= 1;
	condition	= Info_sfb_1_DieLage_Condition;
	information	= Info_sfb_1_DieLage_Info;
	permanent	= 1;
	description = "How's it going?";
};                       

FUNC INT Info_sfb_1_DieLage_Condition()
{
	return 1;
};

FUNC VOID Info_sfb_1_DieLage_Info()
{
	AI_Output(hero,self,"Info_sfb_1_DieLage_15_00"); //How's it looking?
	AI_Output(self,hero,"Info_sfb_1_DieLage_01_01"); //What's it gonna look like? Shitty as ever. Hardly anything to bite, always something to do for it.
};

INSTANCE Info_Mod_SFB_1_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_SFB_1_Pickpocket_Condition;
	information	= Info_Mod_SFB_1_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_SFB_1_Pickpocket_Condition()
{
	C_Beklauen	(r_max(30), ItMi_Gold, 10 + r_max(5));
};

FUNC VOID Info_Mod_SFB_1_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_SFB_1_Pickpocket);

	Info_AddChoice	(Info_Mod_SFB_1_Pickpocket, DIALOG_BACK, Info_Mod_SFB_1_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_SFB_1_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_SFB_1_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_SFB_1_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_SFB_1_Pickpocket);
};

FUNC VOID Info_Mod_SFB_1_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_SFB_1_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_SFB_1_Pickpocket);

		Info_AddChoice	(Info_Mod_SFB_1_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_SFB_1_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_SFB_1_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_SFB_1_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_SFB_1_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_SFB_1_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_SFB_1_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_SFB_1_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_SFB_1_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_SFB_1_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_SFB_1_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_SFB_1_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_SFB_1_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};
	
// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_sfb_1(var c_NPC slf)
{
	
	Info_sfb_1_EXIT.npc			= Hlp_GetInstanceID(slf);
	Info_sfb_1_EinerVonEuchWerden.npc	= Hlp_GetInstanceID(slf);
	Info_sfb_1_WichtigePersonen.npc		= Hlp_GetInstanceID(slf);
	Info_sfb_1_DasLager.npc			= Hlp_GetInstanceID(slf);
	Info_sfb_1_DieLage.npc			= Hlp_GetInstanceID(slf);
	Info_sfb_1_KesselProblem.npc		= Hlp_GetInstanceID(slf);
	Info_sfb_1_KesselProblem2.npc		= Hlp_GetInstanceID(slf);
	Info_Mod_SFB_1_Pickpocket.npc		= Hlp_GetInstanceID(slf);
};
