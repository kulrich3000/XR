// *************************************************************************
// 									EXIT
// *************************************************************************
INSTANCE DIA_NOV_8_EXIT(C_INFO)
{
	nr			= 999;
	condition	= DIA_NOV_8_EXIT_Condition;
	information	= DIA_NOV_8_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_NOV_8_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_NOV_8_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 									JOIN
// *************************************************************************
INSTANCE DIA_NOV_8_JOIN(C_INFO)
{
	nr			= 4;
	condition	= DIA_NOV_8_JOIN_Condition;
	information	= DIA_NOV_8_JOIN_Info;
	permanent	= TRUE;
	description = "What must I do to become a magician?";
};                       

FUNC INT DIA_NOV_8_JOIN_Condition()
{
	if (Mod_Gilde == 6)
	{
		return TRUE;
	};
};

FUNC VOID DIA_NOV_8_JOIN_Info()
{	
	AI_Output (hero, self, "DIA_NOV_8_JOIN_15_00"); //What do I have to do to become a magician?
	AI_Output (self, hero, "DIA_NOV_8_JOIN_08_01"); //You will become an Elect Innos only when the High Magicians of Fire allow it.
};

// *************************************************************************
// 									PEOPLE
// *************************************************************************
INSTANCE DIA_NOV_8_PEOPLE(C_INFO)
{
	nr			= 5;
	condition	= DIA_NOV_8_PEOPLE_Condition;
	information	= DIA_NOV_8_PEOPLE_Info;
	permanent	= TRUE;
	description = "Who is in charge of this monastery?";
};                       

FUNC INT DIA_NOV_8_PEOPLE_Condition()
{
	return TRUE;
};

FUNC VOID DIA_NOV_8_PEOPLE_Info()
{	
	AI_Output (hero, self, "DIA_NOV_8_PEOPLE_15_00"); //Who runs the monastery?
	AI_Output (self, hero, "DIA_NOV_8_PEOPLE_08_01"); //The High Counsel of Fire Magicians. It is formed by the three most powerful magicians of our order. They consult each other daily in the church.
	AI_Output (self, hero, "DIA_NOV_8_PEOPLE_08_02"); //The Elected Innos' are all magicians. Innos has endowed them with this gift so that they can assert his will on earth.
};

// *************************************************************************
// 									LOCATION
// *************************************************************************
INSTANCE DIA_NOV_8_LOCATION(C_INFO)
{
	nr			= 6;
	condition	= DIA_NOV_8_LOCATION_Condition;
	information	= DIA_NOV_8_LOCATION_Info;
	permanent	= TRUE;
	description = "Tell me about this monastery.";
};                       

FUNC INT DIA_NOV_8_LOCATION_Condition()
{
	return TRUE;
};

FUNC VOID DIA_NOV_8_LOCATION_Info()
{	
	AI_Output (hero, self, "DIA_NOV_8_LOCATION_15_00"); //Tell me about this monastery.
	AI_Output (self, hero, "DIA_NOV_8_LOCATION_08_01"); //It's ancient. It dates back to before Rhobar, the first one.
	AI_Output (self, hero, "DIA_NOV_8_LOCATION_08_02"); //Beneath the monastery are the catacombs. They extend deep into the mountain.
	AI_Output (self, hero, "DIA_NOV_8_LOCATION_08_03"); //But only the highest consecrated persons have access to the lowest level.
};

INSTANCE Info_Mod_NOV_8_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_NOV_8_Pickpocket_Condition;
	information	= Info_Mod_NOV_8_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_NOV_8_Pickpocket_Condition()
{
	C_Beklauen	(60 + r_max(30), ItMi_Gold, 20 + r_max(10));
};

FUNC VOID Info_Mod_NOV_8_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_NOV_8_Pickpocket);

	Info_AddChoice	(Info_Mod_NOV_8_Pickpocket, DIALOG_BACK, Info_Mod_NOV_8_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_NOV_8_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_NOV_8_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_NOV_8_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_NOV_8_Pickpocket);
};

FUNC VOID Info_Mod_NOV_8_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_NOV_8_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_NOV_8_Pickpocket);

		Info_AddChoice	(Info_Mod_NOV_8_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_NOV_8_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_NOV_8_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_NOV_8_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_NOV_8_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_NOV_8_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_NOV_8_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_NOV_8_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_NOV_8_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_NOV_8_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_NOV_8_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_NOV_8_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_NOV_8_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_NOV_8 (var c_NPC slf)
{
	DIA_NOV_8_EXIT.npc					= Hlp_GetInstanceID(slf);
	DIA_NOV_8_JOIN.npc					= Hlp_GetInstanceID(slf);
	DIA_NOV_8_PEOPLE.npc				= Hlp_GetInstanceID(slf);
	DIA_NOV_8_LOCATION.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_NOV_8_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
