// *************************************************************************
// 									Kapitel 1
// *************************************************************************


// *************************************************************************
// 									EXIT
// *************************************************************************

INSTANCE Info_ReisBau_2_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_ReisBau_2 (s.u.) jeweils gesetzt
	nr			= 999;
	condition	= Info_ReisBau_2_EXIT_Condition;
	information	= Info_ReisBau_2_EXIT_Info;
	permanent	= 1;
	description = "ENDE";
};                       

FUNC INT Info_ReisBau_2_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_ReisBau_2_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************

INSTANCE Info_ReisBau_2_WichtigePersonen(C_INFO)
{
	nr			= 3;
	condition	= Info_ReisBau_2_WichtigePersonen_Condition;
	information	= Info_ReisBau_2_WichtigePersonen_Info;
	permanent	= 1;
	description = "Czy jestes wolontariuszem na polu ryzu?";
};                       

FUNC INT Info_ReisBau_2_WichtigePersonen_Condition()
{
	return 1;
};

FUNC VOID Info_ReisBau_2_WichtigePersonen_Info()
{
	AI_Output(hero,self,"Info_ReisBau_2_WichtigePersonen_15_00"); //Czy jestes wolontariuszem na polu ryzu?
	AI_Output(self,hero,"Info_ReisBau_2_WichtigePersonen_02_01"); //Tak. Tak, panie posle. Lepiej jest pracowac dobrowolnie niz zbierac ryz na wioslach o ryz.
	AI_Output(hero,self,"Info_ReisBau_2_WichtigePersonen_15_02"); //Tak wiec tak....
};

INSTANCE Info_ReisBau_2_DankeProBauer(C_INFO)
{
	nr			= 3;
	condition	= Info_ReisBau_2_DankeProBauer_Condition;
	information	= Info_ReisBau_2_DankeProBauer_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_ReisBau_2_DankeProBauer_Condition()
{
	if (Mod_NL_ReislordProBauern == 1)
	&& (Wld_GetDay()-3 > Mod_NL_ReislordProBauern_Day)
	{
		return 1;
	};
};

FUNC VOID Info_ReisBau_2_DankeProBauer_Info()
{
	AI_Output(self,hero,"Info_ReisBau_2_DankeProBauer_02_00"); //Ach, tam jestescie. Dlaczego nie idziesz prosto do Horatio?
	AI_Output(self,hero,"Info_ReisBau_2_DankeProBauer_02_01"); //Dziekujemy panstwu troche za to.
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************

INSTANCE Info_ReisBau_2_DasLager(C_INFO)
{
	nr			= 2;
	condition	= Info_ReisBau_2_DasLager_Condition;
	information	= Info_ReisBau_2_DasLager_Info;
	permanent	= 1;
	description = "Co mozesz mi powiedziec o obozie?";
};                       

FUNC INT Info_ReisBau_2_DasLager_Condition()
{
	return 1;
};

FUNC VOID Info_ReisBau_2_DasLager_Info()
{
	AI_Output(hero,self,"Info_ReisBau_2_DasLager_15_00"); //Co mozesz mi powiedziec o obozie?
	AI_Output(self,hero,"Info_ReisBau_2_DasLager_02_01"); //Od czasu upadku zapory bariera stala sie znacznie bezpieczniejsza. Teraz bandyci albo dolaczyli do najemników, albo przeniesli sie do innego obozu.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************

INSTANCE Info_ReisBau_2_DieLage(C_INFO) // E1
{
	nr			= 1;
	condition	= Info_ReisBau_2_DieLage_Condition;
	information	= Info_ReisBau_2_DieLage_Info;
	permanent	= 1;
	description = "Wszystko jest w porzadku?";
};                       

FUNC INT Info_ReisBau_2_DieLage_Condition()
{
	return 1;
};

FUNC VOID Info_ReisBau_2_DieLage_Info()
{
	AI_Output(hero,self,"Info_ReisBau_2_DieLage_15_00"); //Wszystko jest w porzadku?
	AI_Output(self,hero,"Info_ReisBau_2_DieLage_02_01"); //Czego chcesz? Wladca ryzu wysyla ci? Pracuje codziennie!
	AI_Output(hero,self,"Info_ReisBau_2_DieLage_15_02"); //Nikt mnie nie wyslal - po prostu chce powiedziec troche.
};

INSTANCE Info_Mod_ReisBau_2_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_ReisBau_2_Pickpocket_Condition;
	information	= Info_Mod_ReisBau_2_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_ReisBau_2_Pickpocket_Condition()
{
	C_Beklauen	(r_max(30), ItMi_Gold, 10 + r_max(5));
};

FUNC VOID Info_Mod_ReisBau_2_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_ReisBau_2_Pickpocket);

	Info_AddChoice	(Info_Mod_ReisBau_2_Pickpocket, DIALOG_BACK, Info_Mod_ReisBau_2_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_ReisBau_2_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_ReisBau_2_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_ReisBau_2_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_ReisBau_2_Pickpocket);
};

FUNC VOID Info_Mod_ReisBau_2_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_ReisBau_2_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_ReisBau_2_Pickpocket);

		Info_AddChoice	(Info_Mod_ReisBau_2_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_ReisBau_2_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_ReisBau_2_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_ReisBau_2_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_ReisBau_2_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_ReisBau_2_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_ReisBau_2_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_ReisBau_2_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_ReisBau_2_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_ReisBau_2_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_ReisBau_2_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_ReisBau_2_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_ReisBau_2_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};
	
// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_ReisBau_2(var c_NPC slf)
{
	Info_ReisBau_2_EXIT.npc					= Hlp_GetInstanceID(slf);
	Info_ReisBau_2_WichtigePersonen.npc		= Hlp_GetInstanceID(slf);
	Info_ReisBau_2_DankeProBauer.npc		= Hlp_GetInstanceID(slf);
	Info_ReisBau_2_DasLager.npc				= Hlp_GetInstanceID(slf);
	Info_ReisBau_2_DieLage.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_ReisBau_2_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
