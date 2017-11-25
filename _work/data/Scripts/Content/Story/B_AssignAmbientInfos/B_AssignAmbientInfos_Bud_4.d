// *************************************************************************
// 									Kapitel 1
// *************************************************************************


// *************************************************************************
// 									EXIT
// *************************************************************************

INSTANCE Info_Bud_4_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_Bud_4 (s.u.) jeweils gesetzt
	nr			= 999;
	condition	= Info_Bud_4_EXIT_Condition;
	information	= Info_Bud_4_EXIT_Info;
	permanent	= 1;
	description = "ENDE";
};                       

FUNC INT Info_Bud_4_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Bud_4_EXIT_Info()
{	
	AI_Output(hero,self,"Info_Bud_4_EinerVonEuchWerden_15_00"); //Dzieki. Teraz nalezy zachowac ostroznosc.
	AI_Output(self,hero,"Info_Bud_4_EinerVonEuchWerden_04_01"); //Chlopiec trzymaj podbródek.
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************

INSTANCE Info_Bud_4_EinerVonEuchWerden (C_INFO) // E1
{
	nr			= 4;
	condition	= Info_Bud_4_EinerVonEuchWerden_Condition;
	information	= Info_Bud_4_EinerVonEuchWerden_Info;
	permanent	= 1;
	description = "Co musze zrobic, aby dostac sie do tego obozu?";
};                       

FUNC INT Info_Bud_4_EinerVonEuchWerden_Condition()
{
	if (Schatten_Dabei == FALSE)
	&& (Gardist_Dabei == FALSE)
	&& (Erzbaron_Dabei == FALSE)
	{
		return TRUE;
	};
};

FUNC VOID Info_Bud_4_EinerVonEuchWerden_Info()
{
	AI_Output(hero,self,"Info_Bud_4_EinerVonEuchWerden_15_01"); //Co musze zrobic, aby zostac dopuszczonym do tego obozu?
	AI_Output(self,hero,"Info_Bud_4_EinerVonEuchWerden_04_04"); //Masz na mysli jako cien czy straznik? To nie jest latwe, dziecko. Musisz zdac kilka testów zanim stary Thorus wprowadzi Cie do Thorusa.
	AI_Output(self,hero,"Info_Bud_4_EinerVonEuchWerden_04_02"); //I trzeba byc dobrym z ludzmi tutaj. Ale tak dlugo, jak nie jestes czescia obozu, nikt cie nie traktuje powaznie.
	AI_Output(self,hero,"Info_Bud_4_EinerVonEuchWerden_04_03"); //Gdybym byl panem, zapytalbym w cieniu. Znajdziesz wsród nich osobe, która Ci pomoze. Oczywiscie, w zamian.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************

INSTANCE Info_Bud_4_WichtigePersonen(C_INFO)
{
	nr			= 3;
	condition	= Info_Bud_4_WichtigePersonen_Condition;
	information	= Info_Bud_4_WichtigePersonen_Info;
	permanent	= 1;
	description = "Czy sa tutaj ludzie, których powinienem wiedziec?";
};                       

FUNC INT Info_Bud_4_WichtigePersonen_Condition()
{
	return 1;
};

FUNC VOID Info_Bud_4_WichtigePersonen_Info()
{
	AI_Output(hero,self,"Info_Bud_4_WichtigePersonen_15_00"); //Czy sa tutaj ludzie, których powinienem wiedziec?
	AI_Output(self,hero,"Info_Bud_4_WichtigePersonen_04_01"); //Jako nowy facet nie powinienes sie balaganu z Gravo. Jest tylko kopaczem, ale ma polaczenia z arcybaronami.
	AI_Output(self,hero,"Info_Bud_4_WichtigePersonen_04_02"); //Jesli kiedykolwiek masz problem z ludzmi Thorusa, on pomoze Ci go kupic.
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************

INSTANCE Info_Bud_4_DasLager(C_INFO)
{
	nr			= 2;
	condition	= Info_Bud_4_DasLager_Condition;
	information	= Info_Bud_4_DasLager_Info;
	permanent	= 1;
	description = "Jakie sa interesujace miejsca?";
};                       

FUNC INT Info_Bud_4_DasLager_Condition()
{
	if (Schatten_Dabei == FALSE)
	&& (Gardist_Dabei == FALSE)
	&& (Erzbaron_Dabei == FALSE)
	{
		return TRUE;
	};
};

FUNC VOID Info_Bud_4_DasLager_Info()
{
	AI_Output(hero,self,"Info_Bud_4_DasLager_15_00"); //Jakie sa interesujace miejsca?
	AI_Output(self,hero,"Info_Bud_4_DasLager_04_01"); //Nalezy wisiec wokól strefy wejscia miedzy brama pólnocna a brama zamkowa.
	AI_Output(self,hero,"Info_Bud_4_DasLager_04_02"); //Jesli masz szczescie, Thorus da ci zadanie - wtedy mozesz sie udowodnic. Z pewnoscia nie jest zle byc jednym z ludzi Thorusa.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************

INSTANCE Info_Bud_4_DieLage(C_INFO) // E1
{
	nr			= 1;
	condition	= Info_Bud_4_DieLage_Condition;
	information	= Info_Bud_4_DieLage_Info;
	permanent	= 1;
	description = "Kazdy ma racje?";
};                       

FUNC INT Info_Bud_4_DieLage_Condition()
{
	return 1;
};

FUNC VOID Info_Bud_4_DieLage_Info()
{
	AI_Output(hero,self,"Info_Bud_4_DieLage_15_00"); //Kazdy ma racje?
	AI_Output(self,hero,"Info_Bud_4_DieLage_04_01"); //Tak samo jasne jak 20 lat temu. Od tamtej pory nie zaszlo wiele zmian.
};

INSTANCE Info_Mod_BUD_4_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_BUD_4_Pickpocket_Condition;
	information	= Info_Mod_BUD_4_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_BUD_4_Pickpocket_Condition()
{
	C_Beklauen	(8 + r_max(12), ItMi_Gold, 10 + r_max(5));
};

FUNC VOID Info_Mod_BUD_4_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_BUD_4_Pickpocket);

	Info_AddChoice	(Info_Mod_BUD_4_Pickpocket, DIALOG_BACK, Info_Mod_BUD_4_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_BUD_4_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_BUD_4_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_BUD_4_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_BUD_4_Pickpocket);
};

FUNC VOID Info_Mod_BUD_4_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_BUD_4_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_BUD_4_Pickpocket);

		Info_AddChoice	(Info_Mod_BUD_4_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_BUD_4_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_BUD_4_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_BUD_4_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_BUD_4_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_BUD_4_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_BUD_4_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_BUD_4_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_BUD_4_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_BUD_4_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_BUD_4_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_BUD_4_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_BUD_4_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};
	
// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_Bud_4(var c_NPC slf)
{
	Info_Bud_4_EXIT.npc					= Hlp_GetInstanceID(slf);
	Info_Bud_4_EinerVonEuchWerden.npc	= Hlp_GetInstanceID(slf);
	Info_Bud_4_WichtigePersonen.npc		= Hlp_GetInstanceID(slf);
	Info_Bud_4_DasLager.npc				= Hlp_GetInstanceID(slf);
	Info_Bud_4_DieLage.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_BUD_4_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
