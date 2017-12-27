// *************************************************************************
// 									Kapitel 1
// *************************************************************************


// *************************************************************************
// 									EXIT
// *************************************************************************

INSTANCE Info_grd_7_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_grd_7 (s.u.) jeweils gesetzt
	nr			= 999;
	condition	= Info_grd_7_EXIT_Condition;
	information	= Info_grd_7_EXIT_Info;
	permanent	= 1;
	description = DIALOG_ENDE;
};                       

FUNC INT Info_grd_7_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_grd_7_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************

INSTANCE Info_grd_7_EinerVonEuchWerden (C_INFO) // E1
{
	nr			= 1;
	condition	= Info_grd_7_EinerVonEuchWerden_Condition;
	information	= Info_grd_7_EinerVonEuchWerden_Info;
	permanent	= 1;
	description = "What do I have to do to help Thorus' guardsmen (... )";
};                       

FUNC INT Info_grd_7_EinerVonEuchWerden_Condition()
{
	if	(Schatten_Dabei == FALSE)
	&&	(Gardist_Dabei == FALSE)
	&&  (Erzbaron_Dabei == FALSE)
	{
		return TRUE;
	};
};

FUNC VOID Info_grd_7_EinerVonEuchWerden_Info()
{
	AI_Output(hero,self,"Info_grd_7_EinerVonEuchWerden_15_00"); //What do I have to do to join Thorus' guards?
	AI_Output(self,hero,"Info_grd_7_EinerVonEuchWerden_07_01"); //You?! You're fun for me. Coming in here and wanting to go straight to the top, huh?
	AI_Output(self,hero,"Info_grd_7_EinerVonEuchWerden_07_02"); //Thorus only makes the best of his men to be guardsmen.
	AI_Output(self,hero,"Info_grd_7_EinerVonEuchWerden_07_03"); //You'll have to start like everyone else and prove your loyalty as a shadow.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************

INSTANCE Info_grd_7_WichtigePersonen(C_INFO)
{
	nr			= 1;
	condition	= Info_grd_7_WichtigePersonen_Condition;
	information	= Info_grd_7_WichtigePersonen_Info;
	permanent	= 1;
	description = "Who's in charge here?";
};                       

FUNC INT Info_grd_7_WichtigePersonen_Condition()
{	
	if (Schatten_Dabei == FALSE)
	&& (Gardist_Dabei == FALSE)
	&& (Erzbaron_Dabei == FALSE)
	{
		return 1;
	};
};
FUNC VOID Info_grd_7_WichtigePersonen_Info()
{
	AI_Output(hero,self,"Info_grd_7_WichtigePersonen_15_00"); //Who's in charge here?
	AI_Output(self,hero,"Info_grd_7_WichtigePersonen_07_01"); //Thorus controls everything in the warehouse.
	AI_Output(self,hero,"Info_grd_7_WichtigePersonen_07_02"); //If you want to be admitted here, he's the man you need to talk to.
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************

INSTANCE Info_grd_7_DasLager(C_INFO)
{
	nr			= 1;
	condition	= Info_grd_7_DasLager_Condition;
	information	= Info_grd_7_DasLager_Info;
	permanent	= 1;
	description = "Do all the people here work for the ore barons?";
};                       

FUNC INT Info_grd_7_DasLager_Condition()
{	
	if (Schatten_Dabei == FALSE)
	&& (Gardist_Dabei == FALSE)
	&& (Erzbaron_Dabei == FALSE)
	{
		return 1;
	};
};
FUNC VOID Info_grd_7_DasLager_Info()
{
	AI_Output(hero,self,"Info_grd_7_DasLager_15_00"); //Do all the people here work for Thorus?
	AI_Output(self,hero,"Info_grd_7_DasLager_07_01"); //No. Most of these are simple diggers.
	AI_Output(self,hero,"Info_grd_7_DasLager_07_02"); //Only we guardsmen and the shadows are Thorus' people.
	Info_ClearChoices(Info_grd_7_DasLager);
	Info_AddChoice(Info_grd_7_DasLager, "BACK", Info_grd_7_DasLager_Zurueck);
	Info_AddChoice(Info_grd_7_DasLager, "What are the guards doing?", Info_grd_7_DasLager_Gardisten);
	Info_AddChoice(Info_grd_7_DasLager, "What is the task of the shadows?", Info_grd_7_DasLager_Schatten);
	Info_AddChoice(Info_grd_7_DasLager, "What are the Buddlers for?", Info_grd_7_DasLager_Buddler);
};

FUNC VOID Info_grd_7_DasLager_ZURUECK()
{
	Info_ClearChoices(Info_grd_7_DasLager);
};

FUNC VOID Info_grd_7_DasLager_Gardisten()
{
	AI_Output(hero,self,"Info_grd_7_DasLager_WasIstAerger_15_00"); //What are the guards doing?
	AI_Output(self,hero,"Info_grd_7_DasLager_WasIstAerger_07_01"); //We guard the camp and protect the diggers.
	AI_Output(self,hero,"Info_grd_7_DasLager_WasIstAerger_07_02"); //With the pay Thorus pays us and the protection money we get from the Buddhists, you can get your time around pretty well.
};

FUNC VOID Info_grd_7_DasLager_Schatten()
{
	AI_Output(hero,self,"Info_grd_7_DasLager_Schatten_15_00"); //What is the task of the shadows?
	AI_Output(self,hero,"Info_grd_7_DasLager_Schatten_07_01"); //The shadows ensure that Thorus' orders are carried out.
	AI_Output(self,hero,"Info_grd_7_DasLager_Schatten_07_02"); //Most of them are sycophants who want to work their way up, but if you want to be something here, that's the only way.
	AI_Output(self,hero,"Info_grd_7_DasLager_Schatten_07_03"); //If you have done your job long enough without failing, you can become one of us.
	AI_Output(self,hero,"Info_grd_7_DasLager_Schatten_07_04"); //Once you become one of Thorus' men, no one in the colony will be able to hurt you, kid!
};

FUNC VOID Info_grd_7_DasLager_Buddler()
{
	AI_Output(hero,self,"Info_grd_7_DasLager_Buddler_15_00"); //What are the Buddlers for?
	AI_Output(self,hero,"Info_grd_7_DasLager_Buddler_07_01"); //Good question! The scumbags were supposed to be in the old mine.
	AI_Output(self,hero,"Info_grd_7_DasLager_Buddler_07_02"); //They used to come when they were in the mine for a while to spend their share.
	AI_Output(self,hero,"Info_grd_7_DasLager_Buddler_07_03"); //When everything was wasted, we went back to the mine. Most of them lived like this.
	AI_Output(self,hero,"Info_grd_7_DasLager_Buddler_07_04"); //But now that the mine has collapsed, the diggers stay here all the time. You should talk to Thorus if you haven't already.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************

INSTANCE Info_grd_7_DieLage(C_INFO) // E1
{
	nr			= 1;
	condition	= Info_grd_7_DieLage_Condition;
	information	= Info_grd_7_DieLage_Info;
	permanent	= 1;
	description = "How's it going?";
};                       

FUNC INT Info_grd_7_DieLage_Condition()
{	
	if (Schatten_Dabei == FALSE)
	&& (Gardist_Dabei == FALSE)
	&& (Erzbaron_Dabei == FALSE)
	{
		return 1;
	};
};
FUNC VOID Info_grd_7_DieLage_Info()
{
	AI_Output(hero,self,"Info_grd_7_DieLage_15_00"); //What's the score?
	AI_Output(self,hero,"Info_grd_7_DieLage_07_01"); //For you? As long as you're not in our camp, nobody takes you seriously, kid!
};

INSTANCE Info_Mod_GRD_7_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_GRD_7_Pickpocket_Condition;
	information	= Info_Mod_GRD_7_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_GRD_7_Pickpocket_Condition()
{
	C_Beklauen	(60 + r_max(30), ItMi_Gold, 20 + r_max(10));
};

FUNC VOID Info_Mod_GRD_7_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_GRD_7_Pickpocket);

	Info_AddChoice	(Info_Mod_GRD_7_Pickpocket, DIALOG_BACK, Info_Mod_GRD_7_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_GRD_7_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_GRD_7_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_GRD_7_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_GRD_7_Pickpocket);
};

FUNC VOID Info_Mod_GRD_7_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_GRD_7_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_GRD_7_Pickpocket);

		Info_AddChoice	(Info_Mod_GRD_7_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_GRD_7_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_GRD_7_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_GRD_7_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_GRD_7_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_GRD_7_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_GRD_7_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_GRD_7_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_GRD_7_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_GRD_7_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_GRD_7_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_GRD_7_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_GRD_7_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};
	
// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_grd_7(var c_NPC slf)
{
	Info_grd_7_EXIT.npc					= Hlp_GetInstanceID(slf);
	Info_grd_7_EinerVonEuchWerden.npc	= Hlp_GetInstanceID(slf);
	Info_grd_7_WichtigePersonen.npc		= Hlp_GetInstanceID(slf);
	Info_grd_7_DasLager.npc				= Hlp_GetInstanceID(slf);
	Info_grd_7_DieLage.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_GRD_7_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
