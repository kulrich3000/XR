// *************************************************************************
// 									Kapitel 1
// *************************************************************************


// *************************************************************************
// 									EXIT
// *************************************************************************

INSTANCE Info_FM_SFB_10_EXIT(C_INFO)
{
	
	nr			= 999;
	condition	= Info_FM_SFB_10_EXIT_Condition;
	information	= Info_FM_SFB_10_EXIT_Info;
	permanent	= 1;
	description = "ENDE";
};                       

FUNC INT Info_FM_SFB_10_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_FM_SFB_10_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************

INSTANCE Info_FM_SFB_10_EinerVonEuchWerden (C_INFO) 
{
	nr			= 4;
	condition	= Info_FM_SFB_10_EinerVonEuchWerden_Condition;
	information	= Info_FM_SFB_10_EinerVonEuchWerden_Info;
	permanent	= 1;
	description = "Jak moge dolaczyc do Stowarzyszenia Kandydatów?";
};                       

FUNC INT Info_FM_SFB_10_EinerVonEuchWerden_Condition()
{
		return TRUE;
};

FUNC VOID Info_FM_SFB_10_EinerVonEuchWerden_Info()
{
	AI_Output(hero,self,"Info_FM_SFB_10_EinerVonEuchWerden_15_00"); //Jak moge dolaczyc do Stowarzyszenia Kandydatów?
	AI_Output(self,hero,"Info_FM_SFB_10_EinerVonEuchWerden_10_01"); //Dolacz do nas? Nie mysl, ze nie pracujemy tutaj tylko dlatego, ze nie jestesmy zmuszeni.
	AI_Output(self,hero,"Info_FM_SFB_10_EinerVonEuchWerden_10_02"); //Wiec jesli myslisz, ze mozesz sie tu lenic, jestes krzywy, mój przyjaciel.
	AI_Output(self,hero,"Info_FM_SFB_10_EinerVonEuchWerden_10_03"); //Jesli nadal uwazasz, ze masz racje, znajdz piknik i zglos sie do straznika przed wejsciem do kopalni.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************

INSTANCE Info_FM_SFB_10_WichtigePersonen(C_INFO)
{
	nr			= 3;
	condition	= Info_FM_SFB_10_WichtigePersonen_Condition;
	information	= Info_FM_SFB_10_WichtigePersonen_Info;
	permanent	= 1;
	description = "Kto jest tu odpowiedzialny?";
};                       

FUNC INT Info_FM_SFB_10_WichtigePersonen_Condition()
{
	return 1;
};

FUNC VOID Info_FM_SFB_10_WichtigePersonen_Info()
{
	AI_Output(hero,self,"Info_FM_SFB_10_WichtigePersonen_15_00"); //Kto jest tu odpowiedzialny?
	AI_Output(self,hero,"Info_FM_SFB_10_WichtigePersonen_10_01"); //Powiedziec? Rozejrzyj sie dookola. Z pewnoscia nie ludzie, którzy pracuja caly dzien, aby wydobyc wystarczajaco duzo rudy.
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************

INSTANCE Info_FM_SFB_10_DasLager(C_INFO)
{
	nr			= 2;
	condition	= Info_FM_SFB_10_DasLager_Condition;
	information	= Info_FM_SFB_10_DasLager_Info;
	permanent	= 1;
	description = "Jakie jest to miejsce?";
};                       

FUNC INT Info_FM_SFB_10_DasLager_Condition()
{
	return 1;
};

FUNC VOID Info_FM_SFB_10_DasLager_Info()
{
	AI_Output(hero,self,"Info_FM_SFB_10_DasLager_15_00"); //Jakie jest to miejsce?
	AI_Output(self,hero,"Info_FM_SFB_10_DasLager_10_01"); //Jak to wyglada? Jak palac królewski?
	AI_Output(self,hero,"Info_FM_SFB_10_DasLager_10_02"); //Wiec jesli naprawde chcesz pracowac w Wolnej Kopalni, nie powinienes mówic tyle, ale pracowac wiecej.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************

INSTANCE Info_FM_SFB_10_DieLage(C_INFO) 
{
	nr			= 1;
	condition	= Info_FM_SFB_10_DieLage_Condition;
	information	= Info_FM_SFB_10_DieLage_Info;
	permanent	= 1;
	description = "Jak wyglada?";
};                       

FUNC INT Info_FM_SFB_10_DieLage_Condition()
{
	return 1;
};

FUNC VOID Info_FM_SFB_10_DieLage_Info()
{
	AI_Output(hero,self,"Info_FM_SFB_10_DieLage_15_00"); //Jak wyglada?
	AI_Output(self,hero,"Info_FM_SFB_10_DieLage_10_01"); //Jak to wyglada gonna? Lagodny jak zawsze. Trudno sie ugryzc, zawsze cos do zrobienia.
};

INSTANCE Info_Mod_FM_SFB_10_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_FM_SFB_10_Pickpocket_Condition;
	information	= Info_Mod_FM_SFB_10_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_FM_SFB_10_Pickpocket_Condition()
{
	C_Beklauen	(8 + r_max(12), ItMi_Gold, 10 + r_max(5));
};

FUNC VOID Info_Mod_FM_SFB_10_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_FM_SFB_10_Pickpocket);

	Info_AddChoice	(Info_Mod_FM_SFB_10_Pickpocket, DIALOG_BACK, Info_Mod_FM_SFB_10_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_FM_SFB_10_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_FM_SFB_10_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_FM_SFB_10_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_FM_SFB_10_Pickpocket);
};

FUNC VOID Info_Mod_FM_SFB_10_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_FM_SFB_10_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_FM_SFB_10_Pickpocket);

		Info_AddChoice	(Info_Mod_FM_SFB_10_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_FM_SFB_10_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_FM_SFB_10_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_FM_SFB_10_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_FM_SFB_10_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_FM_SFB_10_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_FM_SFB_10_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_FM_SFB_10_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_FM_SFB_10_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_FM_SFB_10_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_FM_SFB_10_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_FM_SFB_10_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_FM_SFB_10_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};
	
// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_FM_SFB_10(var c_NPC slf)
{
	
	Info_FM_SFB_10_EXIT.npc					= Hlp_GetInstanceID(slf);
	Info_FM_SFB_10_EinerVonEuchWerden.npc	= Hlp_GetInstanceID(slf);
	Info_FM_SFB_10_WichtigePersonen.npc		= Hlp_GetInstanceID(slf);
	Info_FM_SFB_10_DasLager.npc				= Hlp_GetInstanceID(slf);
	Info_FM_SFB_10_DieLage.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_FM_SFB_10_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
