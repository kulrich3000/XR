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
	description = "ENDE";
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
	AI_Output(self,hero,"Info_sfb_1_KesselProblem_01_00"); //Hej.
};

INSTANCE Info_sfb_1_KesselProblem2 (C_INFO) 
{
	nr		= 1;
	condition	= Info_sfb_1_KesselProblem2_Condition;
	information	= Info_sfb_1_KesselProblem2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hej, slyszalem, ze groza ci dzikie zwierzeta i jeden z was zostal zabity.";
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

	AI_Output(self,hero,"Info_sfb_1_KesselProblem2_01_00"); //Tak, równiez o tym slyszalem. Wzielo mu to udzial w srodku nocy.
	AI_Output(self,hero,"Info_sfb_1_KesselProblem2_01_01"); //Po prostu opusciles nastepnego ranka.

	B_Say	(hero, self, "§KESSELPROBLEM02");

	AI_Output(self,hero,"Info_sfb_1_KesselProblem2_01_02"); //Tak, widzial to najemnik Bruce.
	AI_Output(self,hero,"Info_sfb_1_KesselProblem2_01_03"); //Gonil on bydlo i wyciagnal futro na uszy. Sluzy suce z prawej strony.
	AI_Output(self,hero,"Info_sfb_1_KesselProblem2_01_04"); //Nie sadzilabym, ze Bruce byl w stanie tego dokonac.
	AI_Output(self,hero,"Info_sfb_1_KesselProblem2_01_05"); //Zwlaszcza wieczorem czai sie jak borowina.

	B_Say	(hero, self, "§KESSELPROBLEM03");

	AI_Output(self,hero,"Info_sfb_1_KesselProblem2_01_06"); //Ohh..... Hej, czlowiek, zapomnij, nic nie powiedzialem.

	B_LogEntry	(TOPIC_MOD_NL_TALKESSELPROB, "Jak slyszalem od poszukiwacza, ofiare zabral noca biegacz cieni. Z wyjatkiem Bruce' a, nikt nie widzial ani nie slyszal niczego. Poszukiwacz wciaz zmumulowal sie w zwiazku z Bruce' em,'wieczorem' i 'bagnista'.");

	Mod_NL_TalkesselProblem = 1;
};

INSTANCE Info_sfb_1_EinerVonEuchWerden (C_INFO) 
{
	nr			= 4;
	condition	= Info_sfb_1_EinerVonEuchWerden_Condition;
	information	= Info_sfb_1_EinerVonEuchWerden_Info;
	permanent	= 1;
	description = "Jak moge dolaczyc do Stowarzyszenia Kandydatów?";
};                       

FUNC INT Info_sfb_1_EinerVonEuchWerden_Condition()
{
		return TRUE;
};

FUNC VOID Info_sfb_1_EinerVonEuchWerden_Info()
{
	AI_Output(hero,self,"Info_sfb_1_EinerVonEuchWerden_15_00"); //Jak moge dolaczyc do Stowarzyszenia Kandydatów?
	AI_Output(self,hero,"Info_sfb_1_EinerVonEuchWerden_01_01"); //Dolacz do nas? Nie mysl, ze nie pracujemy tutaj tylko dlatego, ze nie jestesmy zmuszeni.
	AI_Output(self,hero,"Info_sfb_1_EinerVonEuchWerden_01_02"); //Wiec jesli myslisz, ze mozesz sie tu lenic, jestes krzywy, mój przyjaciel.
	AI_Output(self,hero,"Info_sfb_1_EinerVonEuchWerden_01_03"); //Jesli nadal uwazasz, ze masz racje, znajdz piknik i zglos sie do straznika przed wejsciem do kopalni.
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
	description = "Kto jest tu odpowiedzialny?";
};                       

FUNC INT Info_sfb_1_WichtigePersonen_Condition()
{
	return 1;
};

FUNC VOID Info_sfb_1_WichtigePersonen_Info()
{
	AI_Output(hero,self,"Info_sfb_1_WichtigePersonen_15_00"); //Kto jest tu odpowiedzialny?
	AI_Output(self,hero,"Info_sfb_1_WichtigePersonen_01_01"); //Powiedziec? Rozejrzyj sie dookola. Z pewnoscia nie ludzie, którzy pracuja caly dzien, aby wydobyc wystarczajaco duzo rudy.
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
	description = "Jakie jest to miejsce?";
};                       

FUNC INT Info_sfb_1_DasLager_Condition()
{
	return 1;
};

FUNC VOID Info_sfb_1_DasLager_Info()
{
	AI_Output(hero,self,"Info_sfb_1_DasLager_15_00"); //Jakie jest to miejsce?
	AI_Output(self,hero,"Info_sfb_1_DasLager_01_01"); //Jak to wyglada? Jak palac królewski?
	AI_Output(self,hero,"Info_sfb_1_DasLager_01_02"); //Wiec jesli naprawde chcesz pracowac w Kopalni Wolnej Kopalni, bedziesz musial udowodnic tutaj w czajniku, ze mozemy Cie uzywac.
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
	description = "Jak wyglada?";
};                       

FUNC INT Info_sfb_1_DieLage_Condition()
{
	return 1;
};

FUNC VOID Info_sfb_1_DieLage_Info()
{
	AI_Output(hero,self,"Info_sfb_1_DieLage_15_00"); //Jak wyglada?
	AI_Output(self,hero,"Info_sfb_1_DieLage_01_01"); //Jak to wyglada gonna? Lagodny jak zawsze. Trudno sie ugryzc, zawsze cos do zrobienia.
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
