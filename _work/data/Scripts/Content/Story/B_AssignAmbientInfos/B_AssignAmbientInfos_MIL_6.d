// *************************************************************************
// 									EXIT
// *************************************************************************
INSTANCE DIA_MIL_6_EXIT(C_INFO)
{
	nr			= 999;
	condition	= DIA_MIL_6_EXIT_Condition;
	information	= DIA_MIL_6_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_MIL_6_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_MIL_6_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 									JOIN
// *************************************************************************
INSTANCE DIA_MIL_6_JOIN(C_INFO)
{
	nr			= 4;
	condition	= DIA_MIL_6_JOIN_Condition;
	information	= DIA_MIL_6_JOIN_Info;
	permanent	= TRUE;
	description = "What do I have to do to join the militia?";
};                       

FUNC INT DIA_MIL_6_JOIN_Condition()
{
	if (Mod_Gilde == 0)
	{
		return TRUE;
	};
};

FUNC VOID DIA_MIL_6_JOIN_Info()
{	
	AI_Output (hero, self, "DIA_MIL_6_JOIN_15_00"); //What do I have to do to join the militia?
	AI_Output (self, hero, "DIA_MIL_6_JOIN_06_01"); //Go to Lord Andre and talk to him. He takes care of the newcomers.
};

// *************************************************************************
// 									PEOPLE
// *************************************************************************
INSTANCE DIA_MIL_6_PEOPLE(C_INFO)
{
	nr			= 3;
	condition	= DIA_MIL_6_PEOPLE_Condition;
	information	= DIA_MIL_6_PEOPLE_Info;
	permanent	= TRUE;
	description = "Tell me about these paladins.";
};                       

FUNC INT DIA_MIL_6_PEOPLE_Condition()
{
	if (Mod_Gilde != 3)
	{
		return TRUE;
	};	
};

FUNC VOID DIA_MIL_6_PEOPLE_Info()
{	
	AI_Output (hero, self, "DIA_MIL_6_PEOPLE_15_00"); //Tell me about the paladin.
	AI_Output (self, hero, "DIA_MIL_6_PEOPLE_06_01"); //They control the whole town. The upper quarter in particular is closely monitored.
	AI_Output (self, hero, "DIA_MIL_6_PEOPLE_06_02"); //You're not letting anyone in there anymore. Except the townspeople and the militia, of course.
	AI_Output (self, hero, "DIA_MIL_6_PEOPLE_06_03"); //There are also some paladins at the harbour who guard the ship. But they're anything but talkative.
};

// *************************************************************************
// 									LOCATION
// *************************************************************************
INSTANCE DIA_MIL_6_LOCATION(C_INFO)
{
	nr			= 2;
	condition	= DIA_MIL_6_LOCATION_Condition;
	information	= DIA_MIL_6_LOCATION_Info;
	permanent	= TRUE;
	description = "What is there to know about this town?";
};                       

FUNC INT DIA_MIL_6_LOCATION_Condition()
{
	return TRUE;
};

FUNC VOID DIA_MIL_6_LOCATION_Info()
{	
	AI_Output (hero, self, "DIA_MIL_6_LOCATION_15_00"); //What's there to know about this town?
	AI_Output (self, hero, "DIA_MIL_6_LOCATION_06_01"); //The Paladins are in control of the entire city. The entire militia is subordinate to them.
	AI_Output (self, hero, "DIA_MIL_6_LOCATION_06_02"); //The commander of the militia is Lord Andre, who is also the judge.
	AI_Output (self, hero, "DIA_MIL_6_LOCATION_06_03"); //If you ever get into conflict with the law, you'll have to justify yourself to him.
	AI_Output (self, hero, "DIA_MIL_6_LOCATION_06_04"); //But he's quite gracious, by all accounts. Most of the cases he gets away with a fine.
	
};

INSTANCE Info_Mod_MIL_6_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_MIL_6_Pickpocket_Condition;
	information	= Info_Mod_MIL_6_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_MIL_6_Pickpocket_Condition()
{
	C_Beklauen	(30 + r_max(30), ItMi_Gold, 15 + r_max(5));
};

FUNC VOID Info_Mod_MIL_6_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_MIL_6_Pickpocket);

	Info_AddChoice	(Info_Mod_MIL_6_Pickpocket, DIALOG_BACK, Info_Mod_MIL_6_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_MIL_6_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_MIL_6_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_MIL_6_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_MIL_6_Pickpocket);
};

FUNC VOID Info_Mod_MIL_6_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_MIL_6_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_MIL_6_Pickpocket);

		Info_AddChoice	(Info_Mod_MIL_6_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_MIL_6_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_MIL_6_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_MIL_6_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_MIL_6_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_MIL_6_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_MIL_6_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_MIL_6_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_MIL_6_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_MIL_6_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_MIL_6_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_MIL_6_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_MIL_6_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_MIL_6 (var c_NPC slf)
{
	DIA_MIL_6_EXIT.npc					= Hlp_GetInstanceID(slf);
	DIA_MIL_6_JOIN.npc					= Hlp_GetInstanceID(slf);
	DIA_MIL_6_PEOPLE.npc				= Hlp_GetInstanceID(slf);
	DIA_MIL_6_LOCATION.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_MIL_6_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
