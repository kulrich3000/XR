// *************************************************************************
// 									EXIT
// *************************************************************************
INSTANCE DIA_NOV_3_EXIT(C_INFO)
{
	nr			= 999;
	condition	= DIA_NOV_3_EXIT_Condition;
	information	= DIA_NOV_3_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_NOV_3_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_NOV_3_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 									JOIN
// *************************************************************************
INSTANCE DIA_NOV_3_JOIN(C_INFO)
{
	nr			= 4;
	condition	= DIA_NOV_3_JOIN_Condition;
	information	= DIA_NOV_3_JOIN_Info;
	permanent	= TRUE;
	description = "I want to become a mage!";
};                       

FUNC INT DIA_NOV_3_JOIN_Condition()
{
	if (Mod_Gilde == 6)
	{
		return TRUE;
	};
};

FUNC VOID DIA_NOV_3_JOIN_Info()
{	
	AI_Output (hero, self, "DIA_NOV_3_JOIN_15_00"); //I want to be a magician!
	AI_Output (self, hero, "DIA_NOV_3_JOIN_03_01"); //That is what many novices want. But only very few are destined to get the chance to be accepted into the circle of fire as chosen ones.
	AI_Output (self, hero, "DIA_NOV_3_JOIN_03_02"); //Being a magician from the circle of fire is the highest honor that can be bestowed upon you in our order.
	AI_Output (self, hero, "DIA_NOV_3_JOIN_03_03"); //You're gonna have to work hard to get your chance.
};

// *************************************************************************
// 									PEOPLE
// *************************************************************************
INSTANCE DIA_NOV_3_PEOPLE(C_INFO)
{
	nr			= 5;
	condition	= DIA_NOV_3_PEOPLE_Condition;
	information	= DIA_NOV_3_PEOPLE_Info;
	permanent	= TRUE;
	description = "Who is the leader of this monastery?";
};                       

FUNC INT DIA_NOV_3_PEOPLE_Condition()
{
	return TRUE;
};

FUNC VOID DIA_NOV_3_PEOPLE_Info()
{	
	AI_Output (hero, self, "DIA_NOV_3_PEOPLE_15_00"); //Who runs this monastery?
	AI_Output (self, hero, "DIA_NOV_3_PEOPLE_03_01"); //We novices serve the magicians of the circle of fire. These, in turn, are led by the High Council of Fire Magicians, which consists of the three most powerful Fire Magicians of Khorinis.
	AI_Output (self, hero, "DIA_NOV_3_PEOPLE_03_02"); //But Parlan is responsible for all the needs of the novices. He is always in the yard and supervises the work of the novices.
};

// *************************************************************************
// 									LOCATION
// *************************************************************************
INSTANCE DIA_NOV_3_LOCATION(C_INFO)
{
	nr			= 6;
	condition	= DIA_NOV_3_LOCATION_Condition;
	information	= DIA_NOV_3_LOCATION_Info;
	permanent	= TRUE;
	description = "What can you tell me about this monastery?";
};                       

FUNC INT DIA_NOV_3_LOCATION_Condition()
{
	return TRUE;
};

FUNC VOID DIA_NOV_3_LOCATION_Info()
{	
	AI_Output (hero, self, "DIA_NOV_3_LOCATION_15_00"); //What can you tell me about this monastery?
	AI_Output (self, hero, "DIA_NOV_3_LOCATION_03_01"); //We grow our own humble catering here. We raise sheep and make wine.
	AI_Output (self, hero, "DIA_NOV_3_LOCATION_03_02"); //There is a library, but its use is reserved for magicians and novices.
	AI_Output (self, hero, "DIA_NOV_3_LOCATION_03_03"); //We other novices are primarily concerned with ensuring that the magicians from the circle of fire lack nothing.
};

INSTANCE Info_Mod_NOV_3_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_NOV_3_Pickpocket_Condition;
	information	= Info_Mod_NOV_3_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_NOV_3_Pickpocket_Condition()
{
	C_Beklauen	(30 + r_max(30), ItMi_Gold, 15 + r_max(5));
};

FUNC VOID Info_Mod_NOV_3_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_NOV_3_Pickpocket);

	Info_AddChoice	(Info_Mod_NOV_3_Pickpocket, DIALOG_BACK, Info_Mod_NOV_3_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_NOV_3_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_NOV_3_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_NOV_3_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_NOV_3_Pickpocket);
};

FUNC VOID Info_Mod_NOV_3_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_NOV_3_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_NOV_3_Pickpocket);

		Info_AddChoice	(Info_Mod_NOV_3_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_NOV_3_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_NOV_3_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_NOV_3_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_NOV_3_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_NOV_3_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_NOV_3_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_NOV_3_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_NOV_3_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_NOV_3_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_NOV_3_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_NOV_3_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_NOV_3_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_NOV_3 (var c_NPC slf)
{
	DIA_NOV_3_EXIT.npc					= Hlp_GetInstanceID(slf);
	DIA_NOV_3_JOIN.npc					= Hlp_GetInstanceID(slf);
	DIA_NOV_3_PEOPLE.npc				= Hlp_GetInstanceID(slf);
	DIA_NOV_3_LOCATION.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_NOV_3_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
