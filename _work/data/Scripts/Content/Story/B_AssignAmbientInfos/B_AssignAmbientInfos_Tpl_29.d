// *************************************************************************
// 									Kapitel 1
// *************************************************************************


// *************************************************************************
// 									EXIT
// *************************************************************************

INSTANCE Info_Tpl_29_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_Tpl_8 (s.u.) jeweils gesetzt
	nr			= 999;
	condition	= Info_Tpl_29_EXIT_Condition;
	information	= Info_Tpl_29_EXIT_Info;
	permanent	= 1;
	description = "ENDE";
};                       

FUNC INT Info_Tpl_29_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Tpl_29_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************

INSTANCE Info_Tpl_29_EinerVonEuchWerden (C_INFO) // E1
{
	nr			= 4;
	condition	= Info_Tpl_29_EinerVonEuchWerden_Condition;
	information	= Info_Tpl_29_EinerVonEuchWerden_Info;
	permanent	= 1;
	description = "Czy mozesz uzyc innego dobrego mezczyzny?";
};                       

FUNC INT Info_Tpl_29_EinerVonEuchWerden_Condition()
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

FUNC VOID Info_Tpl_29_EinerVonEuchWerden_Info()
{
	AI_Output(hero,self,"Info_Tpl_29_EinerVonEuchWerden_15_00"); //Czy mozesz uzyc innego dobrego mezczyzny?
	AI_Output(self,hero,"Info_Tpl_29_EinerVonEuchWerden_29_01"); //Zawsze szukamy dobrych ludzi. Ale trzeba ciezko nad soba pracowac. Tylko zaawansowany nowicjusz moze byc promowany do templariusza.
	AI_Output(self,hero,"Info_Tpl_29_EinerVonEuchWerden_29_02"); //Jest to najwyzszy zaszczyt dla nasladowcy braterstwa.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************

INSTANCE Info_Tpl_29_WichtigePersonen(C_INFO)
{
	nr			= 3;
	condition	= Info_Tpl_29_WichtigePersonen_Condition;
	information	= Info_Tpl_29_WichtigePersonen_Info;
	permanent	= 1;
	description = "Kto jest tu odpowiedzialny?";
};                       

FUNC INT Info_Tpl_29_WichtigePersonen_Condition()
{
	return 1;
};

FUNC VOID Info_Tpl_29_WichtigePersonen_Info()
{
	AI_Output(hero,self,"Info_Tpl_29_WichtigePersonen_15_00"); //Kto jest tu odpowiedzialny?
	AI_Output(self,hero,"Info_Tpl_29_WichtigePersonen_29_01"); //Robimy wszystko, co mówi nam guru. Naszym obowiazkiem jest sluzyc im.
	AI_Output(self,hero,"Info_Tpl_29_WichtigePersonen_15_02"); //Kim jest twój guru?
	AI_Output(self,hero,"Info_Tpl_29_WichtigePersonen_29_03"); //Cor Cadar jest Najwyzszym Guru. Ponizej niego, Cor Angar i kilka innych.
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************

INSTANCE Info_Tpl_29_DasLager(C_INFO)
{
	nr			= 2;
	condition	= Info_Tpl_29_DasLager_Condition;
	information	= Info_Tpl_29_DasLager_Info;
	permanent	= 1;
	description = "Co mozesz mi powiedziec o tym obozie?";
};                       

FUNC INT Info_Tpl_29_DasLager_Condition()
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

FUNC VOID Info_Tpl_29_DasLager_Info()
{
	AI_Output(hero,self,"Info_Tpl_29_DasLager_15_00"); //Co mozesz mi powiedziec o tym obozie?
	AI_Output(self,hero,"Info_Tpl_29_DasLager_29_01"); //Jako swiezo upieczony czlowiek, mozesz zostac prawie wszedzie. Niewiernych jednak zakazuje sie wstepu do swiatyni.
	AI_Output(hero,self,"Info_Tpl_29_DasLager_29_02"); //Pozostan tam, gdzie jestes. I nie przeszkadzac naszym panom w medytacji.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************

INSTANCE Info_Tpl_29_DieLage(C_INFO) // E1
{
	nr			= 1;
	condition	= Info_Tpl_29_DieLage_Condition;
	information	= Info_Tpl_29_DieLage_Info;
	permanent	= 1;
	description = "Jak wyglada?";
};                       

FUNC INT Info_Tpl_29_DieLage_Condition()
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

FUNC VOID Info_Tpl_29_DieLage_Info()
{
	AI_Output(hero,self,"Info_Tpl_29_DieLage_15_00"); //Jak wyglada?
	AI_Output(self,hero,"Info_Tpl_29_DieLage_29_01"); //Ostrzegam cie. Nie badz lekcewazony. Rozmawiasz z wybranym Opiekunem Proroków.
};

INSTANCE Info_Mod_TPL_29_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_TPL_29_Pickpocket_Condition;
	information	= Info_Mod_TPL_29_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_TPL_29_Pickpocket_Condition()
{
	C_Beklauen	(150 + r_max(30), ItMi_Gold, 90 + r_max(20));
};

FUNC VOID Info_Mod_TPL_29_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_TPL_29_Pickpocket);

	Info_AddChoice	(Info_Mod_TPL_29_Pickpocket, DIALOG_BACK, Info_Mod_TPL_29_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_TPL_29_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_TPL_29_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_TPL_29_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_TPL_29_Pickpocket);
};

FUNC VOID Info_Mod_TPL_29_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_TPL_29_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_TPL_29_Pickpocket);

		Info_AddChoice	(Info_Mod_TPL_29_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_TPL_29_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_TPL_29_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_TPL_29_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_TPL_29_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_TPL_29_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_TPL_29_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_TPL_29_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_TPL_29_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_TPL_29_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_TPL_29_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_TPL_29_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_TPL_29_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};
	
// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_Tpl_29(var c_NPC slf)
{
	Info_Tpl_29_EXIT.npc					= Hlp_GetInstanceID(slf);
	Info_Tpl_29_EinerVonEuchWerden.npc	= Hlp_GetInstanceID(slf);
	Info_Tpl_29_WichtigePersonen.npc		= Hlp_GetInstanceID(slf);
	Info_Tpl_29_DasLager.npc				= Hlp_GetInstanceID(slf);
	Info_Tpl_29_DieLage.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_TPL_29_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
