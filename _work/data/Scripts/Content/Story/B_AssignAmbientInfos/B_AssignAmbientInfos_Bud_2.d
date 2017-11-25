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
	description = "ENDE";
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
	description = "Chce dolaczyc do Ciebie.";
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
	AI_Output(hero,self,"Info_Bud_2_EinerVonEuchWerden_15_00"); //Chce dolaczyc do Ciebie.
	AI_Output(self,hero,"Info_Bud_2_EinerVonEuchWerden_02_01"); //Ktos taki jak Ty moze wkrótce mieszkac w zamku.
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
	description = "Kto jest tu odpowiedzialny?";
};                       

FUNC INT Info_Bud_2_WichtigePersonen_Condition()
{
	return 1;
};

FUNC VOID Info_Bud_2_WichtigePersonen_Info()
{
	AI_Output(hero,self,"Info_Bud_2_WichtigePersonen_15_00"); //Kto jest tu odpowiedzialny?
	AI_Output(self,hero,"Info_Bud_2_WichtigePersonen_02_01"); //Tutaj w pierscieniu zewnetrznym Fletcher i Bloodwyn gromadza pieniadze na ochrone. Polowa nalezy do wszystkich.
	AI_Output(self,hero,"Info_Bud_2_WichtigePersonen_02_02"); //Jesli jestes z nimi dobry, nic nie moze Ci sie przydarzyc.
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
	description = "Chce wiedziec wiecej o tym obozie.";
};                       

FUNC INT Info_Bud_2_DasLager_Condition()
{
	return 1;
};

FUNC VOID Info_Bud_2_DasLager_Info()
{
	AI_Output(hero,self,"Info_Bud_2_DasLager_15_00"); //Chce wiedziec wiecej o tym obozie.
	AI_Output(self,hero,"Info_Bud_2_DasLager_02_01"); //Nastepnie powinienes porozmawiac z cieniami, oni moga ci powiedziec, co chcesz wiedziec. Badz jednak ostrozny. Wiekszosc z nich nie mozna ufac.
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
	description = "Jak tu wyglada zycie?";
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
	AI_Output(hero,self,"Info_Bud_2_DieLage_15_00"); //Jak tu wyglada zycie?
	AI_Output(self,hero,"Info_Bud_2_DieLage_02_01"); //Jesli Er Barons Cie wysle, powiedz im, ze nie chce miec zadnych problemów. Nie mówie nikomu nic.
	AI_Output(self,hero,"Info_Bud_2_DieLage_02_02"); //Jestem zadowolony z tego, co nam daja.
	AI_Output(hero,self,"Info_Bud_2_DieLage_15_03"); //Nikt mnie nie wyslal. Jestem tu nowy.
	AI_Output(self,hero,"Info_Bud_2_DieLage_02_04"); //Nowy.... Nowi ludzie caly czas wpadaja w klopoty. Nie chce sie w nic zaangazowac, prawda?
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
