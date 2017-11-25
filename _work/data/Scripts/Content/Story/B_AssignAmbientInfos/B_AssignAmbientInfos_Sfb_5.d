// *************************************************************************
// 									Kapitel 1
// *************************************************************************


// *************************************************************************
// 									Vor Gespräch
// *************************************************************************

INSTANCE Info_SFB_5_Pre(C_INFO)
{
	nr			= 1;
	condition	= Info_SFB_5_Pre_Condition;
	information	= Info_SFB_5_Pre_Info;
	permanent	= 0;
	important 	= 1;
};                       

FUNC INT Info_SFB_5_Pre_Condition()
{
	return 1;
};

FUNC VOID Info_SFB_5_Pre_Info()
{	
	AI_Output(self,hero,"Info_SFB_5_EinerVonEuchWerden_05_00"); //Witaj!
};

// *************************************************************************
// 									EXIT
// *************************************************************************

INSTANCE Info_SFB_5_EXIT(C_INFO)
{
	
	nr			= 999;
	condition	= Info_SFB_5_EXIT_Condition;
	information	= Info_SFB_5_EXIT_Info;
	permanent	= 1;
	description = "ENDE";
};                       

FUNC INT Info_SFB_5_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_SFB_5_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

INSTANCE Info_SFB_5_KesselProblem (C_INFO) 
{
	nr		= 1;
	condition	= Info_SFB_5_KesselProblem_Condition;
	information	= Info_SFB_5_KesselProblem_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_SFB_5_KesselProblem_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bruce_KesselProblem))
	&& (!Npc_KnowsInfo(hero, Info_SFB_2_KesselProblem))
	&& (!Npc_KnowsInfo(hero, Info_SFB_1_KesselProblem))
	{
		return TRUE;
	};
};

FUNC VOID Info_SFB_5_KesselProblem_Info()
{
	AI_Output(self,hero,"Info_SFB_5_KesselProblem_05_00"); //Hej.
};

INSTANCE Info_SFB_5_KesselProblem2 (C_INFO) 
{
	nr		= 1;
	condition	= Info_SFB_5_KesselProblem2_Condition;
	information	= Info_SFB_5_KesselProblem2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hej, slyszalem, ze groza ci dzikie zwierzeta i jeden z was zostal zabity.";
};                       

FUNC INT Info_SFB_5_KesselProblem2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bruce_KesselProblem))
	&& (!Npc_KnowsInfo(hero, Info_SFB_2_KesselProblem2))
	&& (!Npc_KnowsInfo(hero, Info_SFB_1_KesselProblem2))
	{
		return TRUE;
	};
};

FUNC VOID Info_SFB_5_KesselProblem2_Info()
{
	B_Say	(hero, self, "$KESSELPROBLEM01");

	AI_Output(self,hero,"Info_SFB_5_KesselProblem2_05_00"); //Tak, równiez o tym slyszalem. Wzielo mu to udzial w srodku nocy.
	AI_Output(self,hero,"Info_SFB_5_KesselProblem2_05_01"); //Po prostu opusciles nastepnego ranka.

	B_Say	(hero, self, "§KESSELPROBLEM02");

	AI_Output(self,hero,"Info_SFB_5_KesselProblem2_05_02"); //Tak, widzial to najemnik Bruce.
	AI_Output(self,hero,"Info_SFB_5_KesselProblem2_05_03"); //Gonil on bydlo i wyciagnal futro na uszy. Sluzy suce z prawej strony.
	AI_Output(self,hero,"Info_SFB_5_KesselProblem2_05_04"); //Nie sadzilabym, ze Bruce byl w stanie tego dokonac.
	AI_Output(self,hero,"Info_SFB_5_KesselProblem2_05_05"); //Zwlaszcza wieczorem czai sie jak borowina.

	B_Say	(hero, self, "§KESSELPROBLEM03");

	AI_Output(self,hero,"Info_SFB_5_KesselProblem2_05_06"); //Ohh..... Hej, czlowiek, zapomnij, nic nie powiedzialem.

	B_LogEntry	(TOPIC_MOD_NL_TALKESSELPROB, "Jak slyszalem od poszukiwacza, ofiare zabral noca biegacz cieni. Z wyjatkiem Bruce' a, nikt nie widzial ani nie slyszal niczego. Poszukiwacz wciaz zmumulowal sie w zwiazku z Bruce' em,'wieczorem' i 'bagnista'.");

	Mod_NL_TalkesselProblem = 1;
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************

INSTANCE Info_SFB_5_EinerVonEuchWerden (C_INFO) 
{
	nr			= 4;
	condition	= Info_SFB_5_EinerVonEuchWerden_Condition;
	information	= Info_SFB_5_EinerVonEuchWerden_Info;
	permanent	= 1;
	description = "Co jesli chce sie zaangazowac?";
};                       

FUNC INT Info_SFB_5_EinerVonEuchWerden_Condition()
{
	return TRUE;
};

FUNC VOID Info_SFB_5_EinerVonEuchWerden_Info()
{
	AI_Output(hero,self,"Info_SFB_5_EinerVonEuchWerden_15_00"); //Co jesli chce sie zaangazowac?
	AI_Output(self,hero,"Info_SFB_5_EinerVonEuchWerden_05_01"); //Dolacz do nas tutaj? Jako co, jako nosiciel wody?
	AI_Output(hero,self,"Info_SFB_5_EinerVonEuchWerden_15_02"); //Nie, jako poszukiwacz?
	AI_Output(self,hero,"Info_SFB_5_EinerVonEuchWerden_05_03"); //Spójrz, pozwólcie, ze cos wam powiedziec, nikt nie bedzie WOLUNTARNYM poszukiwaczem.
	AI_Output(self,hero,"Info_SFB_5_EinerVonEuchWerden_05_04"); //Prosze jednak, jesli bezwzglednie chcecie.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************

INSTANCE Info_SFB_5_WichtigePersonen(C_INFO)
{
	nr			= 3;
	condition	= Info_SFB_5_WichtigePersonen_Condition;
	information	= Info_SFB_5_WichtigePersonen_Info;
	permanent	= 1;
	description = "Kto jest tu wazny?";
};                       

FUNC INT Info_SFB_5_WichtigePersonen_Condition()
{
	return 1;
};

FUNC VOID Info_SFB_5_WichtigePersonen_Info()
{
	AI_Output(hero,self,"Info_SFB_5_WichtigePersonen_15_00"); //Kto jest tu wazny?
	AI_Output(self,hero,"Info_SFB_5_WichtigePersonen_05_01"); //Kto jest tu wazny? Zaprawde!
	AI_Output(self,hero,"Info_SFB_5_WichtigePersonen_05_02"); //Ale mysle, ze chcesz wiedziec, kto jest tu odpowiedzialny.
	AI_Output(self,hero,"Info_SFB_5_WichtigePersonen_05_03"); //Cóz, mysle, ze powinniscie zwrócic sie do najemników.
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************

INSTANCE Info_SFB_5_DasLager(C_INFO)
{
	nr			= 2;
	condition	= Info_SFB_5_DasLager_Condition;
	information	= Info_SFB_5_DasLager_Info;
	permanent	= 1;
	description = "Co jest w obozie?";
};                       

FUNC INT Info_SFB_5_DasLager_Condition()
{
	return 1;
};

FUNC VOID Info_SFB_5_DasLager_Info()
{
	AI_Output(hero,self,"Info_SFB_5_DasLager_15_00"); //Co jest w obozie?
	AI_Output(self,hero,"Info_SFB_5_DasLager_05_01"); //W zaleznosci od tego, co sie z niej robi. Dla jednych jest duzo pracy, dla innych duzo zabawy.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************

INSTANCE Info_SFB_5_DieLage(C_INFO) 
{
	nr			= 1;
	condition	= Info_SFB_5_DieLage_Condition;
	information	= Info_SFB_5_DieLage_Info;
	permanent	= 1;
	description = "Jak tu wyglada zycie?";
};                       

FUNC INT Info_SFB_5_DieLage_Condition()
{
	return 1;
};

FUNC VOID Info_SFB_5_DieLage_Info()
{
	AI_Output(hero,self,"Info_SFB_5_DieLage_15_00"); //Wie ist das Leben hier?
	AI_Output(self,hero,"Info_SFB_5_DieLage_05_01"); //Toll!	
};

INSTANCE Info_Mod_SFB_5_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_SFB_5_Pickpocket_Condition;
	information	= Info_Mod_SFB_5_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_SFB_5_Pickpocket_Condition()
{
	C_Beklauen	(r_max(30), ItMi_Gold, 10 + r_max(5));
};

FUNC VOID Info_Mod_SFB_5_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_SFB_5_Pickpocket);

	Info_AddChoice	(Info_Mod_SFB_5_Pickpocket, DIALOG_BACK, Info_Mod_SFB_5_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_SFB_5_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_SFB_5_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_SFB_5_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_SFB_5_Pickpocket);
};

FUNC VOID Info_Mod_SFB_5_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_SFB_5_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_SFB_5_Pickpocket);

		Info_AddChoice	(Info_Mod_SFB_5_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_SFB_5_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_SFB_5_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_SFB_5_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_SFB_5_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_SFB_5_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_SFB_5_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_SFB_5_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_SFB_5_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_SFB_5_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_SFB_5_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_SFB_5_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_SFB_5_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};
// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_SFB_5(var c_NPC slf)
{

	Info_SFB_5_Pre.npc			= Hlp_GetInstanceID(slf);
	
	Info_SFB_5_EXIT.npc			= Hlp_GetInstanceID(slf);
	Info_SFB_5_EinerVonEuchWerden.npc	= Hlp_GetInstanceID(slf);
	Info_SFB_5_WichtigePersonen.npc		= Hlp_GetInstanceID(slf);
	Info_SFB_5_DasLager.npc			= Hlp_GetInstanceID(slf);
	Info_SFB_5_DieLage.npc			= Hlp_GetInstanceID(slf);
	Info_sfb_5_KesselProblem.npc		= Hlp_GetInstanceID(slf);
	Info_sfb_5_KesselProblem2.npc		= Hlp_GetInstanceID(slf);
	Info_Mod_SFB_5_Pickpocket.npc		= Hlp_GetInstanceID(slf);
};
