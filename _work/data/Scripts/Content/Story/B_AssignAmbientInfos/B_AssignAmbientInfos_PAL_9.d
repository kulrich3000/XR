// *************************************************************************
// 									EXIT
// *************************************************************************
INSTANCE DIA_PAL_9_EXIT(C_INFO)
{
	nr			= 999;
	condition	= DIA_PAL_9_EXIT_Condition;
	information	= DIA_PAL_9_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_PAL_9_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_PAL_9_EXIT_Info()
{	
	AI_Output(self, hero, "DIA_PAL_9_EXIT_09_00"); //Niech ogien Inno doprowadzi nas do zwyciestwa!

	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 									JOIN
// *************************************************************************
INSTANCE DIA_PAL_9_JOIN(C_INFO)
{
	nr			= 4;
	condition	= DIA_PAL_9_JOIN_Condition;
	information	= DIA_PAL_9_JOIN_Info;
	permanent	= TRUE;
	description = "Jak moge zostac Paladinem?";
};                       

FUNC INT DIA_PAL_9_JOIN_Condition()
{
	if (Mod_Gilde == 0)
	{
		return TRUE;
	};
};

FUNC VOID DIA_PAL_9_JOIN_Info()
{	
	AI_Output (hero, self, "DIA_PAL_9_JOIN_15_00"); //Jak moge zostac Paladinem?
	AI_Output (self, hero, "DIA_PAL_9_JOIN_09_01"); //Wybrani sa ci, kt�rzy okaza sie godni poslugiwania Inno lub kr�lowi!
	AI_Output (self, hero, "DIA_PAL_9_JOIN_09_02"); //Innymi slowy, brane sa tylko najlepsze. Ale Ty jestes jeszcze daleko od tego, synu!
};

// *************************************************************************
// 									PEOPLE
// *************************************************************************
INSTANCE DIA_PAL_9_PEOPLE(C_INFO)
{
	nr			= 3;
	condition	= DIA_PAL_9_PEOPLE_Condition;
	information	= DIA_PAL_9_PEOPLE_Info;
	permanent	= TRUE;
	description = "Kto tu dowodzi?";
};                       

FUNC INT DIA_PAL_9_PEOPLE_Condition()
{
	if (Mod_Gilde != 3)
	{
		return TRUE;
	};
};

FUNC VOID DIA_PAL_9_PEOPLE_Info()
{	
	AI_Output (hero, self, "DIA_PAL_9_PEOPLE_15_00"); //Kto tu dowodzi?
	AI_Output (self, hero, "DIA_PAL_9_PEOPLE_09_01"); //Lord Hagen.
	AI_Output (hero, self, "DIA_PAL_9_PEOPLE_15_02"); //A co?
	AI_Output (self, hero, "DIA_PAL_9_PEOPLE_09_03"); //I nikt inny. Lord Hagen jest dow�dca na czele calej wyspy.
};

// *************************************************************************
// 									LOCATION
// *************************************************************************
INSTANCE DIA_PAL_9_LOCATION(C_INFO)
{
	nr			= 2;
	condition	= DIA_PAL_9_LOCATION_Condition;
	information	= DIA_PAL_9_LOCATION_Info;
	permanent	= TRUE;
	description = "Dlaczego przyjechales Paladyn�w do Khorinis?";
};                       

FUNC INT DIA_PAL_9_LOCATION_Condition()
{
	if (Kapitel == 1)
	{
		return TRUE;
	};
};

FUNC VOID DIA_PAL_9_LOCATION_Info()
{	
	AI_Output (hero, self, "DIA_PAL_9_LOCATION_15_00"); //Dlaczego przyjechales Paladyn�w do Khorinis?
	AI_Output (self, hero, "DIA_PAL_9_LOCATION_09_01"); //Zadna Twoja firma, chlopak! Wystarczy wiedziec, ze sluzymy Innosowi i Kr�lowi!
};

INSTANCE Info_Mod_PAL_9_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_PAL_9_Pickpocket_Condition;
	information	= Info_Mod_PAL_9_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_PAL_9_Pickpocket_Condition()
{
	C_Beklauen	(90 + r_max(30), ItMi_Gold, 35 + r_max(10));
};

FUNC VOID Info_Mod_PAL_9_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_PAL_9_Pickpocket);

	Info_AddChoice	(Info_Mod_PAL_9_Pickpocket, DIALOG_BACK, Info_Mod_PAL_9_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_PAL_9_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_PAL_9_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_PAL_9_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_PAL_9_Pickpocket);
};

FUNC VOID Info_Mod_PAL_9_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_PAL_9_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_PAL_9_Pickpocket);

		Info_AddChoice	(Info_Mod_PAL_9_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_PAL_9_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_PAL_9_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_PAL_9_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_PAL_9_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_PAL_9_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_PAL_9_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_PAL_9_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_PAL_9_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_PAL_9_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_PAL_9_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_PAL_9_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_PAL_9_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_PAL_9 (var c_NPC slf)
{
	DIA_PAL_9_EXIT.npc					= Hlp_GetInstanceID(slf);
	DIA_PAL_9_JOIN.npc					= Hlp_GetInstanceID(slf);
	DIA_PAL_9_PEOPLE.npc				= Hlp_GetInstanceID(slf);
	DIA_PAL_9_LOCATION.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_PAL_9_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
