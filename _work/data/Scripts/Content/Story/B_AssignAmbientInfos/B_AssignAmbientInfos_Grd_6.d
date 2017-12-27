// *************************************************************************
// 									Kapitel 1
// *************************************************************************


// *************************************************************************
// 									EXIT
// *************************************************************************

INSTANCE Info_Grd_6_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_Grd_6 (s.u.) jeweils gesetzt
	nr			= 999;
	condition	= Info_Grd_6_EXIT_Condition;
	information	= Info_Grd_6_EXIT_Info;
	permanent	= 1;
	description = DIALOG_ENDE;
};                       

FUNC INT Info_Grd_6_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Grd_6_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************

INSTANCE Info_Grd_6_EinerVonEuchWerden (C_INFO) // E1
{
	nr			= 1;
	condition	= Info_Grd_6_EinerVonEuchWerden_Condition;
	information	= Info_Grd_6_EinerVonEuchWerden_Info;
	permanent	= 1;
	description = "I want to be a guardsman.";
};                       

FUNC INT Info_Grd_6_EinerVonEuchWerden_Condition()
{
	if	(Gardist_Dabei == FALSE)
	&&	(Erzbaron_Dabei == FALSE)
	&& (Schatten_Dabei == FALSE)
	{
		return TRUE;
	};
};

FUNC VOID Info_Grd_6_EinerVonEuchWerden_Info()
{
	AI_Output(hero,self,"Info_Grd_6_EinerVonEuchWerden_15_00"); //Can you guys use another good man?
	AI_Output(self,hero,"Info_Grd_6_EinerVonEuchWerden_06_01"); //Newbie, huh? If you're looking for a camp to take you in, try the cult spinners, they'll take anyone.
	AI_Output(self,hero,"Info_Grd_6_EinerVonEuchWerden_06_02"); //We don't take everyone!
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************

INSTANCE Info_Grd_6_WichtigePersonen(C_INFO)
{
	nr			= 1;
	condition	= Info_Grd_6_WichtigePersonen_Condition;
	information	= Info_Grd_6_WichtigePersonen_Info;
	permanent	= 1;
	description = "Who's in charge here?";
};                       

FUNC INT Info_Grd_6_WichtigePersonen_Condition()
{
	return 1;
};

FUNC VOID Info_Grd_6_WichtigePersonen_Info()
{
	AI_Output(hero,self,"Info_Grd_6_WichtigePersonen_15_00"); //Who's in charge here?
	AI_Output(self,hero,"Info_Grd_6_WichtigePersonen_06_01"); //Thorus will take care of everything.
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************

INSTANCE Info_Grd_6_DasLager(C_INFO)
{
	nr			= 1;
	condition	= Info_Grd_6_DasLager_Condition;
	information	= Info_Grd_6_DasLager_Info;
	permanent	= 1;
	description = "I'm new here. What's going on?";
};                       

FUNC INT Info_Grd_6_DasLager_Condition()
{	
	if (Schatten_Dabei == FALSE)
	&& (Gardist_Dabei == FALSE)
	&& (Erzbaron_Dabei == FALSE)
	{
		return 1;
	};
};
FUNC VOID Info_Grd_6_DasLager_Info()
{
	AI_Output(hero,self,"Info_Grd_6_DasLager_15_00"); //I'm new here.
	AI_Output(self,hero,"Info_Grd_6_DasLager_06_01"); //I see that.
	AI_Output(hero,self,"Info_Grd_6_DasLager_15_02"); //What's going on?
	AI_Output(self,hero,"Info_Grd_6_DasLager_06_03"); //Whoever's in trouble is gonna get a beating.
	Info_ClearChoices(Info_Grd_6_DasLager);
	Info_AddChoice(Info_Grd_6_DasLager, "I see.", Info_Grd_6_DasLager_Verstehe);
	Info_AddChoice(Info_Grd_6_DasLager, "What do you mean, trouble?", Info_Grd_6_DasLager_WasIstAerger);
};

FUNC VOID Info_Grd_6_DasLager_Verstehe()
{
	AI_Output(hero,self,"Info_Grd_6_DasLager_Verstehe_15_00"); //I see.
	Info_ClearChoices(Info_Grd_6_DasLager);
};

FUNC VOID Info_Grd_6_DasLager_WasIstAerger()
{
	AI_Output(hero,self,"Info_Grd_6_DasLager_WasIstAerger_15_00"); //What do you mean, trouble?
	AI_Output(self,hero,"Info_Grd_6_DasLager_WasIstAerger_06_01"); //Most of the Buddlers pay us to protect them.
	AI_Output(self,hero,"Info_Grd_6_DasLager_WasIstAerger_06_02"); //You mess with one of them, you'll get to know us.
	AI_Output(self,hero,"Info_Grd_6_DasLager_WasIstAerger_06_03"); //I catch you poking around in strange huts...
	AI_Output(hero,self,"Info_Grd_6_DasLager_WasIstAerger_15_04"); //It's all right, I get it.
	Info_ClearChoices(Info_Grd_6_DasLager);
};

// *************************************************************************
// 									Die Lage
// *************************************************************************

INSTANCE Info_Grd_6_DieLage(C_INFO) // E1
{
	nr			= 1;
	condition	= Info_Grd_6_DieLage_Condition;
	information	= Info_Grd_6_DieLage_Info;
	permanent	= 1;
	description = "How's it going?";
};                       

FUNC INT Info_Grd_6_DieLage_Condition()
{
	return 1;
};

FUNC VOID Info_Grd_6_DieLage_Info()
{
	AI_Output(hero,self,"Info_Grd_6_DieLage_15_00"); //How's it looking?
	AI_Output(self,hero,"Info_Grd_6_DieLage_06_01"); //You want to make trouble?
};

INSTANCE Info_Mod_GRD_6_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_GRD_6_Pickpocket_Condition;
	information	= Info_Mod_GRD_6_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_GRD_6_Pickpocket_Condition()
{
	C_Beklauen	(90 + r_max(30), ItMi_Gold, 35 + r_max(10));
};

FUNC VOID Info_Mod_GRD_6_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_GRD_6_Pickpocket);

	Info_AddChoice	(Info_Mod_GRD_6_Pickpocket, DIALOG_BACK, Info_Mod_GRD_6_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_GRD_6_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_GRD_6_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_GRD_6_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_GRD_6_Pickpocket);
};

FUNC VOID Info_Mod_GRD_6_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_GRD_6_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_GRD_6_Pickpocket);

		Info_AddChoice	(Info_Mod_GRD_6_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_GRD_6_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_GRD_6_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_GRD_6_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_GRD_6_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_GRD_6_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_GRD_6_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_GRD_6_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_GRD_6_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_GRD_6_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_GRD_6_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_GRD_6_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_GRD_6_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};
	
// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_GRD_6(var c_NPC slf)
{
	Info_Grd_6_EXIT.npc					= Hlp_GetInstanceID(slf);
	Info_Grd_6_EinerVonEuchWerden.npc	= Hlp_GetInstanceID(slf);
	Info_Grd_6_WichtigePersonen.npc		= Hlp_GetInstanceID(slf);
	Info_Grd_6_DasLager.npc				= Hlp_GetInstanceID(slf);
	Info_Grd_6_DieLage.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_GRD_6_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
