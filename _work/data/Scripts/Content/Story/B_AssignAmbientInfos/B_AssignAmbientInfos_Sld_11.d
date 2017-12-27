// *************************************************************************
// 									Kapitel 1
// *************************************************************************


// *************************************************************************
// 									EXIT
// *************************************************************************

INSTANCE Info_Sld_11_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_Sld_11 (s.u.) jeweils gesetzt
	nr			= 999;
	condition	= Info_Sld_11_EXIT_Condition;
	information	= Info_Sld_11_EXIT_Info;
	permanent	= 1;
	description = "END";
};                       

FUNC INT Info_Sld_11_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Sld_11_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************

INSTANCE Info_Sld_11_EinerVonEuchWerden (C_INFO) // E1
{
	nr			= 4;
	condition	= Info_Sld_11_EinerVonEuchWerden_Condition;
	information	= Info_Sld_11_EinerVonEuchWerden_Info;
	permanent	= 1;
	description = "I want to be a mercenary.";
};                       

FUNC INT Info_Sld_11_EinerVonEuchWerden_Condition()
{
	if (Mod_Gilde == 0)
	{
		return TRUE;
	};
};

FUNC VOID Info_Sld_11_EinerVonEuchWerden_Info()
{
	AI_Output(hero,self,"Info_Sld_11_EinerVonEuchWerden_15_00"); //I want to be a mercenary.
	AI_Output(self,hero,"Info_Sld_11_EinerVonEuchWerden_11_01"); //It's not difficult. If you want to fight for our cause, Lee will take you.
	AI_Output(self,hero,"Info_Sld_11_EinerVonEuchWerden_11_02"); //But he only takes people who are good with the sword. What about you with that?
	AI_Output(hero,self,"Info_Sld_11_EinerVonEuchWerden_15_03"); //Well...
	AI_Output(self,hero,"Info_Sld_11_EinerVonEuchWerden_11_04"); //I thought you might. If you're serious, talk to Cord. He trained a freshman once.
	AI_Output(self,hero,"Info_Sld_11_EinerVonEuchWerden_11_05"); //Maybe you're lucky, and he'll bother you too.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************

INSTANCE Info_Sld_11_WichtigePersonen(C_INFO)
{
	nr			= 3;
	condition	= Info_Sld_11_WichtigePersonen_Condition;
	information	= Info_Sld_11_WichtigePersonen_Info;
	permanent	= 1;
	description = "Who's in charge here?";
};                       

FUNC INT Info_Sld_11_WichtigePersonen_Condition()
{
	return 1;
};

FUNC VOID Info_Sld_11_WichtigePersonen_Info()
{
	AI_Output(hero,self,"Info_Sld_11_WichtigePersonen_15_00"); //Who's in charge here?
	AI_Output(self,hero,"Info_Sld_11_WichtigePersonen_11_01"); //Basically, Lee handles everything. He's our leader.
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************

INSTANCE Info_Sld_11_DasLager(C_INFO)
{
	nr			= 2;
	condition	= Info_Sld_11_DasLager_Condition;
	information	= Info_Sld_11_DasLager_Info;
	permanent	= 1;
	description = "Is there a problem here in the camp?";
};                       

FUNC INT Info_Sld_11_DasLager_Condition()
{
	return 1;
};

FUNC VOID Info_Sld_11_DasLager_Info()
{
	AI_Output(hero,self,"Info_Sld_11_DasLager_15_00"); //Is there a problem here in the camp?
	AI_Output(self,hero,"Info_Sld_11_DasLager_11_01"); //Boy, there's always trouble here.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************

INSTANCE Info_Sld_11_DieLage(C_INFO) // E1
{
	nr			= 1;
	condition	= Info_Sld_11_DieLage_Condition;
	information	= Info_Sld_11_DieLage_Info;
	permanent	= 1;
	description = "Everything all right with you?";
};                       

FUNC INT Info_Sld_11_DieLage_Condition()
{
	return 1;
};

FUNC VOID Info_Sld_11_DieLage_Info()
{
	AI_Output(hero,self,"Info_Sld_11_DieLage_15_00"); //Everything okay with you?
	AI_Output(self,hero,"Info_Sld_11_DieLage_11_01"); //Everything is still calm...
	AI_Output(hero,self,"Info_Sld_11_DieLage_15_02"); //Still?
	AI_Output(self,hero,"Info_Sld_11_DieLage_11_03"); //If the former bandits keep attacking Artos' convoys, he and his army will stand in front of the gate.
	AI_Output(self,hero,"Info_Sld_11_DieLage_11_04"); //And it's not gonna be fun.
};

INSTANCE Info_Mod_SLD_11_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_SLD_11_Pickpocket_Condition;
	information	= Info_Mod_SLD_11_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_SLD_11_Pickpocket_Condition()
{
	C_Beklauen	(90 + r_max(30), ItMi_Gold, 35 + r_max(10));
};

FUNC VOID Info_Mod_SLD_11_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_SLD_11_Pickpocket);

	Info_AddChoice	(Info_Mod_SLD_11_Pickpocket, DIALOG_BACK, Info_Mod_SLD_11_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_SLD_11_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_SLD_11_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_SLD_11_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_SLD_11_Pickpocket);
};

FUNC VOID Info_Mod_SLD_11_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_SLD_11_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_SLD_11_Pickpocket);

		Info_AddChoice	(Info_Mod_SLD_11_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_SLD_11_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_SLD_11_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_SLD_11_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_SLD_11_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_SLD_11_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_SLD_11_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_SLD_11_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_SLD_11_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_SLD_11_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_SLD_11_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_SLD_11_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_SLD_11_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};
	
// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_Sld_11(var c_NPC slf)
{
	Info_Sld_11_EXIT.npc				= Hlp_GetInstanceID(slf);
	Info_Sld_11_EinerVonEuchWerden.npc	= Hlp_GetInstanceID(slf);
	Info_Sld_11_WichtigePersonen.npc	= Hlp_GetInstanceID(slf);
	Info_Sld_11_DasLager.npc			= Hlp_GetInstanceID(slf);
	Info_Sld_11_DieLage.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_SLD_11_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
