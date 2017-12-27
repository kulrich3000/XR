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
	AI_Output(self, hero, "DIA_PAL_9_EXIT_09_00"); //May Inno's fire lead us to victory!

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
	description = "How can I become a paladin?";
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
	AI_Output (hero, self, "DIA_PAL_9_JOIN_15_00"); //How can I become Paladin?
	AI_Output (self, hero, "DIA_PAL_9_JOIN_09_01"); //Those who prove themselves worthy in the service of Inno or the king are chosen!
	AI_Output (self, hero, "DIA_PAL_9_JOIN_09_02"); //In other words, only the best are taken. But you're still a long way from that, son!
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
	description = "Who's in command here?";
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
	AI_Output (hero, self, "DIA_PAL_9_PEOPLE_15_00"); //Who's in command here?
	AI_Output (self, hero, "DIA_PAL_9_PEOPLE_09_01"); //Lord Hagen.
	AI_Output (hero, self, "DIA_PAL_9_PEOPLE_15_02"); //And?
	AI_Output (self, hero, "DIA_PAL_9_PEOPLE_09_03"); //And no one else. Lord Hagen is the commander in chief of the entire island.
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
	description = "Why have you paladins come to Khorinis?";
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
	AI_Output (hero, self, "DIA_PAL_9_LOCATION_15_00"); //Why did you come Paladins to Khorinis?
	AI_Output (self, hero, "DIA_PAL_9_LOCATION_09_01"); //None of your business, lad! It must be enough for you to know that we are serving Innos and the King!
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
