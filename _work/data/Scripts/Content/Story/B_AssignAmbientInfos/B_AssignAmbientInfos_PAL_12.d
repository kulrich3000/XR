// *************************************************************************
// 									EXIT
// *************************************************************************
INSTANCE DIA_PAL_12_EXIT(C_INFO)
{
	nr			= 999;
	condition	= DIA_PAL_12_EXIT_Condition;
	information	= DIA_PAL_12_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_PAL_12_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_PAL_12_EXIT_Info()
{	
	AI_Output(self, hero, "DIA_PAL_12_EXIT_12_00"); //May Inno's fire lead us to victory!

	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 									JOIN
// *************************************************************************
INSTANCE DIA_PAL_12_JOIN(C_INFO)
{
	nr			= 4;
	condition	= DIA_PAL_12_JOIN_Condition;
	information	= DIA_PAL_12_JOIN_Info;
	permanent	= TRUE;
	description = "I want to become a paladin!";
};                       

FUNC INT DIA_PAL_12_JOIN_Condition()
{
	if (Mod_Gilde == 0)
	{
		return TRUE;
	};
};

FUNC VOID DIA_PAL_12_JOIN_Info()
{	
	AI_Output (hero, self, "DIA_PAL_12_JOIN_15_00"); //I want to be a Paladin!
	AI_Output (self, hero, "DIA_PAL_12_JOIN_12_01"); //You? Don't make me laugh! You're not even a member of the city guard.
	AI_Output (self, hero, "DIA_PAL_12_JOIN_12_02"); //If I didn't see what a stupid boy you are, I'd assume you were insulting me.
	AI_Output (self, hero, "DIA_PAL_12_JOIN_12_03"); //Only the best of the best are accepted as paladins among the faithful of the King and our Lord Innos.
};

// *************************************************************************
// 									PEOPLE
// *************************************************************************
INSTANCE DIA_PAL_12_PEOPLE(C_INFO)
{
	nr			= 3;
	condition	= DIA_PAL_12_PEOPLE_Condition;
	information	= DIA_PAL_12_PEOPLE_Info;
	permanent	= TRUE;
	description = "Who's in command here?";
};                       

FUNC INT DIA_PAL_12_PEOPLE_Condition()
{
	if (Mod_Gilde != 3)
	{
		return TRUE;
	};
};

FUNC VOID DIA_PAL_12_PEOPLE_Info()
{	
	AI_Output (hero, self, "DIA_PAL_12_PEOPLE_15_00"); //Who's in command here?
	AI_Output (self, hero, "DIA_PAL_12_PEOPLE_12_01"); //This is the Honorable Lord Hagen. But Lord Andre is responsible for all matters of the common people.
	AI_Output (self, hero, "DIA_PAL_12_PEOPLE_12_02"); //You'll find him in the barracks. Maybe you're lucky, and he'll dedicate a few minutes of his precious time to you.
};

// *************************************************************************
// 									LOCATION
// *************************************************************************
INSTANCE DIA_PAL_12_LOCATION(C_INFO)
{
	nr			= 2;
	condition	= DIA_PAL_12_LOCATION_Condition;
	information	= DIA_PAL_12_LOCATION_Info;
	permanent	= TRUE;
	description = "What are you paladins doing here in Khorinis?";
};                       

FUNC INT DIA_PAL_12_LOCATION_Condition()
{
	if (Kapitel == 1)
	{
		return TRUE;
	};
};

FUNC VOID DIA_PAL_12_LOCATION_Info()
{	
	AI_Output (hero, self, "DIA_PAL_12_LOCATION_15_00"); //What are you paladins doing here in khorinis?
	AI_Output (self, hero, "DIA_PAL_12_LOCATION_12_01"); //Those who ask such questions end up on the gallows rather quickly.
	AI_Output (self, hero, "DIA_PAL_12_LOCATION_12_02"); //If Lord Hagen can't afford ONE thing, this is to drop the knowledge of our mission into the hands of spies.
	AI_Output (self, hero, "DIA_PAL_12_LOCATION_12_03"); //So you better watch what you ask.
};

INSTANCE Info_Mod_PAL_12_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_PAL_12_Pickpocket_Condition;
	information	= Info_Mod_PAL_12_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_PAL_12_Pickpocket_Condition()
{
	C_Beklauen	(120 + r_max(30), ItMi_Gold, 60 + r_max(10));
};

FUNC VOID Info_Mod_PAL_12_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_PAL_12_Pickpocket);

	Info_AddChoice	(Info_Mod_PAL_12_Pickpocket, DIALOG_BACK, Info_Mod_PAL_12_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_PAL_12_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_PAL_12_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_PAL_12_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_PAL_12_Pickpocket);
};

FUNC VOID Info_Mod_PAL_12_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_PAL_12_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_PAL_12_Pickpocket);

		Info_AddChoice	(Info_Mod_PAL_12_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_PAL_12_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_PAL_12_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_PAL_12_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_PAL_12_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_PAL_12_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_PAL_12_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_PAL_12_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_PAL_12_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_PAL_12_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_PAL_12_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_PAL_12_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_PAL_12_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_PAL_12 (var c_NPC slf)
{
	DIA_PAL_12_EXIT.npc					= Hlp_GetInstanceID(slf);
	DIA_PAL_12_JOIN.npc					= Hlp_GetInstanceID(slf);
	DIA_PAL_12_PEOPLE.npc				= Hlp_GetInstanceID(slf);
	DIA_PAL_12_LOCATION.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_PAL_12_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
