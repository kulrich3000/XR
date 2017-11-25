// *************************************************************************
// 									EXIT
// *************************************************************************
INSTANCE DIA_BDT_MT_EXIT(C_INFO)
{
	nr			= 999;
	condition	= DIA_BDT_MT_EXIT_Condition;
	information	= DIA_BDT_MT_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_BDT_MT_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_BDT_MT_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

INSTANCE DIA_BDT_MT_Orkjagd(C_INFO)
{
	nr			= 4;
	condition	= DIA_BDT_MT_Orkjagd_Condition;
	information	= DIA_BDT_MT_Orkjagd_Info;
	permanent	= TRUE;
	description = "Jest jeszcze wiele do zrobienia. Przyjdz do obozu dzis wieczorem o p�lnocy.";
};                       

FUNC INT DIA_BDT_MT_Orkjagd_Condition()
{
	if (Mod_Banditen_Orkjagd < 5)
	&& (Mod_Orks_Morgahard == 1)
	&& (Npc_GetDistToWP(self, self.wp) < 300)
	{
		return TRUE;
	};
};

FUNC VOID DIA_BDT_MT_Orkjagd_Info()
{	
	AI_Output (hero, self, "DIA_BDT_MT_Orkjagd_15_00"); //Jest jeszcze wiele do zrobienia. Przyjdz do obozu dzis wieczorem o p�lnocy.
	AI_Output (self, hero, "DIA_BDT_MT_Orkjagd_01_01"); //Co o tym chodzi?
	
	Info_ClearChoices	(DIA_BDT_MT_Orkjagd);

	Info_AddChoice	(DIA_BDT_MT_Orkjagd, "Wystarczy zamknac sie i przyjsc dzis wieczorem na ob�z.", DIA_BDT_MT_Orkjagd_B);
	Info_AddChoice	(DIA_BDT_MT_Orkjagd, "Robimy polowania na orki.", DIA_BDT_MT_Orkjagd_A);
};

FUNC VOID DIA_BDT_MT_Orkjagd_B()
{	
	AI_Output (hero, self, "DIA_BDT_MT_Orkjagd_B_15_00"); //Wystarczy zamknac sie i przyjsc dzis wieczorem na ob�z. Zam�wienia Morgaharda.
	AI_Output (self, hero, "DIA_BDT_MT_Orkjagd_B_01_01"); //Wszystko w porzadku, moge sie domyslac. Do zobaczenia dzis wieczorem.
	
	Info_ClearChoices	(DIA_BDT_MT_Orkjagd);

	AI_StopProcessInfos	(self);

	Mod_Banditen_Orkjagd += 1;

	B_StartOtherRoutine	(self, "ORKJAGD");
};

FUNC VOID DIA_BDT_MT_Orkjagd_A()
{	
	AI_Output (hero, self, "DIA_BDT_MT_Orkjagd_A_15_00"); //Robimy polowania na orki.
	AI_Output (self, hero, "DIA_BDT_MT_Orkjagd_A_01_01"); //Lubisz polowac? Jestem bandyta, a nie mysliwym orkowym. No c�z, cokolwiek. Do zobaczenia dzis wieczorem.
	
	Info_ClearChoices	(DIA_BDT_MT_Orkjagd);

	AI_StopProcessInfos	(self);

	Mod_Banditen_Orkjagd += 1;

	B_StartOtherRoutine	(self, "ORKJAGD");
};

INSTANCE Info_Mod_BDT_MT_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_BDT_MT_Pickpocket_Condition;
	information	= Info_Mod_BDT_MT_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_BDT_MT_Pickpocket_Condition()
{
	C_Beklauen	(60 + r_max(30), ItMi_Gold, 20 + r_max(10));
};

FUNC VOID Info_Mod_BDT_MT_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_BDT_MT_Pickpocket);

	Info_AddChoice	(Info_Mod_BDT_MT_Pickpocket, DIALOG_BACK, Info_Mod_BDT_MT_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_BDT_MT_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_BDT_MT_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_BDT_MT_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_BDT_MT_Pickpocket);
};

FUNC VOID Info_Mod_BDT_MT_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_BDT_MT_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_BDT_MT_Pickpocket);

		Info_AddChoice	(Info_Mod_BDT_MT_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_BDT_MT_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_BDT_MT_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_BDT_MT_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_BDT_MT_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_BDT_MT_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_BDT_MT_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_BDT_MT_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_BDT_MT_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_BDT_MT_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_BDT_MT_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_BDT_MT_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_BDT_MT_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};


// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_BDT_MT (var c_NPC slf)
{
	DIA_BDT_MT_EXIT.npc					= Hlp_GetInstanceID(slf);
	DIA_BDT_MT_Orkjagd.npc					= Hlp_GetInstanceID(slf);
	Info_Mod_BDT_MT_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
