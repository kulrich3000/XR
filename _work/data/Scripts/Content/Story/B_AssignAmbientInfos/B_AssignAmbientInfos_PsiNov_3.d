// *************************************************************************
// 									Kapitel 1
// *************************************************************************


// *************************************************************************
// 									EXIT
// *************************************************************************

INSTANCE Info_PsiNov_3_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_PsiNov_3 (s.u.) jeweils gesetzt
	nr			= 999;
	condition	= Info_PsiNov_3_EXIT_Condition;
	information	= Info_PsiNov_3_EXIT_Info;
	permanent	= 1;
	description = "END";
};                       

FUNC INT Info_PsiNov_3_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_PsiNov_3_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************

INSTANCE Info_PsiNov_3_EinerVonEuchWerden (C_INFO) // E1
{
	nr			= 4;
	condition	= Info_PsiNov_3_EinerVonEuchWerden_Condition;
	information	= Info_PsiNov_3_EinerVonEuchWerden_Info;
	permanent	= 1;
	description = "How can I join this camp?";
};                       

FUNC INT Info_PsiNov_3_EinerVonEuchWerden_Condition()
{
	if (SumpfNovize_Dabei == FALSE)
	&& (Templer_Dabei == FALSE)
	&& (HoherTempler_Dabei == FALSE)
	&& (Guru_Dabei == FALSE)
	&& (HoherGuru_Dabei == FALSE)
	{
		return TRUE;
	};
};

FUNC VOID Info_PsiNov_3_EinerVonEuchWerden_Info()
{
	AI_Output(hero,self,"Info_PsiNov_3_EinerVonEuchWerden_15_00"); //How can I join this camp?
	AI_Output(self,hero,"Info_PsiNov_3_EinerVonEuchWerden_03_01"); //It's very simple. You just gotta let go, man.
	AI_Output(self,hero,"Info_PsiNov_3_EinerVonEuchWerden_03_02"); //Talk to the gurus, they will guide you!
};

INSTANCE Info_PsiNov_3_Sumpfkrautruestung (C_INFO) // E1
{
	nr			= 4;
	condition	= Info_PsiNov_3_Sumpfkrautruestung_Condition;
	information	= Info_PsiNov_3_Sumpfkrautruestung_Info;
	permanent	= 0;
	important = 1;
};                       

FUNC INT Info_PsiNov_3_Sumpfkrautruestung_Condition()
{
	var C_Item RuessiCheck;
	RuessiCheck = Npc_GetEquippedArmor(hero);

	if (Hlp_IsItem(RuessiCheck, ItAr_Sumpfkraut) == TRUE)
	{
		return TRUE;
	};
};

FUNC VOID Info_PsiNov_3_Sumpfkrautruestung_Info()
{
	AI_Output(self,hero,"Info_PsiNov_3_Sumpfkrautruestung_03_00"); //Man, that smells like a whole field of swampweed.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************

INSTANCE Info_PsiNov_3_WichtigePersonen(C_INFO)
{
	nr			= 3;
	condition	= Info_PsiNov_3_WichtigePersonen_Condition;
	information	= Info_PsiNov_3_WichtigePersonen_Info;
	permanent	= 1;
	description = "Who's the boss here?";
};                       

FUNC INT Info_PsiNov_3_WichtigePersonen_Condition()
{
	return 1;
};

FUNC VOID Info_PsiNov_3_WichtigePersonen_Info()
{
	AI_Output(hero,self,"Info_PsiNov_3_WichtigePersonen_15_00"); //Who's the boss here?
	AI_Output(self,hero,"Info_PsiNov_3_WichtigePersonen_03_01"); //Cor Cadar and Cor Angar!
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************

INSTANCE Info_PsiNov_3_DasLager(C_INFO)
{
	nr			= 2;
	condition	= Info_PsiNov_3_DasLager_Condition;
	information	= Info_PsiNov_3_DasLager_Info;
	permanent	= 1;
	description = "What are the places of interest?";
};                       

FUNC INT Info_PsiNov_3_DasLager_Condition()
{
	return 1;
};

FUNC VOID Info_PsiNov_3_DasLager_Info()
{
	AI_Output(hero,self,"Info_PsiNov_3_DasLager_15_00"); //What are the places of interest?
	AI_Output(self,hero,"Info_PsiNov_3_DasLager_03_01"); //There is Fortuno, he distributes free swampweed for all followers of the sect.
	AI_Output(self,hero,"Info_PsiNov_3_DasLager_03_02"); //You can find it under Cor Kalom's old alchemy lab.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************

INSTANCE Info_PsiNov_3_DieLage(C_INFO) // E1
{
	nr			= 1;
	condition	= Info_PsiNov_3_DieLage_Condition;
	information	= Info_PsiNov_3_DieLage_Info;
	permanent	= 1;
	description = "What's the score?";
};                       

FUNC INT Info_PsiNov_3_DieLage_Condition()
{
	return 1;
};

FUNC VOID Info_PsiNov_3_DieLage_Info()
{
	AI_Output(hero,self,"Info_PsiNov_3_DieLage_15_00"); //What's the score?
	AI_Output(self,hero,"Info_PsiNov_3_DieLage_03_01"); //I'm totally high, man!
};

INSTANCE Info_Mod_PsiNov_3_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_PsiNov_3_Pickpocket_Condition;
	information	= Info_Mod_PsiNov_3_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_PsiNov_3_Pickpocket_Condition()
{
	C_Beklauen	(60 + r_max(30), ItMi_Gold, 20 + r_max(10));
};

FUNC VOID Info_Mod_PsiNov_3_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_PsiNov_3_Pickpocket);

	Info_AddChoice	(Info_Mod_PsiNov_3_Pickpocket, DIALOG_BACK, Info_Mod_PsiNov_3_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_PsiNov_3_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_PsiNov_3_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_PsiNov_3_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_PsiNov_3_Pickpocket);
};

FUNC VOID Info_Mod_PsiNov_3_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_PsiNov_3_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_PsiNov_3_Pickpocket);

		Info_AddChoice	(Info_Mod_PsiNov_3_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_PsiNov_3_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_PsiNov_3_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_PsiNov_3_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_PsiNov_3_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_PsiNov_3_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_PsiNov_3_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_PsiNov_3_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_PsiNov_3_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_PsiNov_3_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_PsiNov_3_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_PsiNov_3_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_PsiNov_3_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};
	
// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_PsiNov_3(var c_NPC slf)
{
	Info_PsiNov_3_EXIT.npc					= Hlp_GetInstanceID(slf);
	Info_PsiNov_3_EinerVonEuchWerden.npc	= Hlp_GetInstanceID(slf);
	Info_PsiNov_3_Sumpfkrautruestung.npc	= Hlp_GetInstanceID(slf);
	Info_PsiNov_3_WichtigePersonen.npc		= Hlp_GetInstanceID(slf);
	Info_PsiNov_3_DasLager.npc				= Hlp_GetInstanceID(slf);
	Info_PsiNov_3_DieLage.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_PsiNov_3_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
