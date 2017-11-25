// *************************************************************************
// 									Kapitel 1
// *************************************************************************


// *************************************************************************
// 									EXIT
// *************************************************************************

INSTANCE Info_Sld_8_EXIT(C_INFO)
{
	// npc wird in B_AssignAmbientInfos_Sld_8 (s.u.) jeweils gesetzt
	nr			= 999;
	condition	= Info_Sld_8_EXIT_Condition;
	information	= Info_Sld_8_EXIT_Info;
	permanent	= 1;
	description = "END";
};                       

FUNC INT Info_Sld_8_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Sld_8_EXIT_Info()
{	
	AI_Output(self, hero, "DIA_SLD_8_EXIT_08_00"); //Don't die on us!

	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 								Einer von Euch werden
// *************************************************************************

INSTANCE Info_Sld_8_EinerVonEuchWerden (C_INFO) // E1
{
	nr			= 4;
	condition	= Info_Sld_8_EinerVonEuchWerden_Condition;
	information	= Info_Sld_8_EinerVonEuchWerden_Info;
	permanent	= 1;
	description = "Can you guys use another good man?";
};                       

FUNC INT Info_Sld_8_EinerVonEuchWerden_Condition()
{
	if (Mod_Gilde == 0)
	{
		return TRUE;
	};
};

FUNC VOID Info_Sld_8_EinerVonEuchWerden_Info()
{
	AI_Output(other,self,"Info_Sld_8_EinerVonEuchWerden_15_00"); //Can you guys use another good man?
	AI_Output(self,other,"Info_Sld_8_EinerVonEuchWerden_08_01"); //Lee's not gonna let any of the mercenaries who haven't been here for a while and gained experience.
	AI_Output(self,other,"Info_Sld_8_EinerVonEuchWerden_08_02"); //If you want to stay here in the camp, you'll have to deal with Lares in Khorinis first.
};

// *************************************************************************
// 							Wichtige Personen
// *************************************************************************

INSTANCE Info_Sld_8_WichtigePersonen(C_INFO)
{
	nr			= 3;
	condition	= Info_Sld_8_WichtigePersonen_Condition;
	information	= Info_Sld_8_WichtigePersonen_Info;
	permanent	= 1;
	description = "Who's in charge here?";
};                       

FUNC INT Info_Sld_8_WichtigePersonen_Condition()
{
	return 1;
};

FUNC VOID Info_Sld_8_WichtigePersonen_Info()
{
	AI_Output(other,self,"Info_Sld_8_WichtigePersonen_15_00"); //Who's in charge here?
	AI_Output(self,other,"Info_Sld_8_WichtigePersonen_08_01"); //We mercenaries all follow Lee. Most of the men here are simply men who couldn't or didn't want to stay in the old camp.
	AI_Output(self,other,"Info_Sld_8_WichtigePersonen_08_02"); //Here everyone cooks his own soup. The boys only agree on one thing: we're here to collect all the ore from the mine. We can put a lot of pressure on the king later.
};

// *************************************************************************
// 								Das Lager (Orts-Infos)
// *************************************************************************

INSTANCE Info_Sld_8_DasLager(C_INFO)
{
	nr			= 2;
	condition	= Info_Sld_8_DasLager_Condition;
	information	= Info_Sld_8_DasLager_Info;
	permanent	= 1;
	description = "What can you tell me about this camp?";
};                       

FUNC INT Info_Sld_8_DasLager_Condition()
{	
	if (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Sld_8_DasLager_Info()
{
	AI_Output(other,self,"Info_Sld_8_DasLager_15_00"); //What can you tell me about this camp?
	AI_Output(self,other,"Info_Sld_8_DasLager_08_01"); //Watch your back while you're here. There's a lot of cutthroats out in camp.
	AI_Output(self,other,"Info_Sld_8_DasLager_08_02"); //There's a series of unwritten laws here. First, only the mercenaries come into the realm of mages.
	AI_Output(self,other,"Info_Sld_8_DasLager_08_03"); //Secondly, anyone who tries to get to the ore heap is a dead man. Thirdly, I would not try to go to the pub on the lake.
	AI_Output(self,other,"Info_Sld_8_DasLager_08_04"); //It belongs to the former bandits and they don't like it when green guys like you show up.
};

// *************************************************************************
// 									Die Lage
// *************************************************************************

INSTANCE Info_Sld_8_DieLage(C_INFO) // E1
{
	nr			= 1;
	condition	= Info_Sld_8_DieLage_Condition;
	information	= Info_Sld_8_DieLage_Info;
	permanent	= 1;
	description = "How's it looking?";
};                       

FUNC INT Info_Sld_8_DieLage_Condition()
{
	return 1;
};

FUNC VOID Info_Sld_8_DieLage_Info()
{
	AI_Output(other,self,"Info_Sld_8_DieLage_15_00"); //How's it looking?
	AI_Output(self,other,"Info_Sld_8_DieLage_08_01"); //As always - we make sure that no one gets too close to the ore.
};

INSTANCE Info_Mod_SLD_8_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_SLD_8_Pickpocket_Condition;
	information	= Info_Mod_SLD_8_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_SLD_8_Pickpocket_Condition()
{
	C_Beklauen	(60 + r_max(30), ItMi_Gold, 20 + r_max(10));
};

FUNC VOID Info_Mod_SLD_8_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_SLD_8_Pickpocket);

	Info_AddChoice	(Info_Mod_SLD_8_Pickpocket, DIALOG_BACK, Info_Mod_SLD_8_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_SLD_8_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_SLD_8_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_SLD_8_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_SLD_8_Pickpocket);
};

FUNC VOID Info_Mod_SLD_8_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_SLD_8_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_SLD_8_Pickpocket);

		Info_AddChoice	(Info_Mod_SLD_8_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_SLD_8_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_SLD_8_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_SLD_8_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_SLD_8_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_SLD_8_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_SLD_8_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_SLD_8_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_SLD_8_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_SLD_8_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_SLD_8_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_SLD_8_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_SLD_8_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};
	
// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_Sld_8(var c_NPC slf)
{
	Info_Sld_8_EXIT.npc					= Hlp_GetInstanceID(slf);
	Info_Sld_8_EinerVonEuchWerden.npc	= Hlp_GetInstanceID(slf);
	Info_Sld_8_WichtigePersonen.npc		= Hlp_GetInstanceID(slf);
	Info_Sld_8_DasLager.npc				= Hlp_GetInstanceID(slf);
	Info_Sld_8_DieLage.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_Sld_8_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
