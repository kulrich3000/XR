// *************************************************************************
// 									EXIT
// *************************************************************************
INSTANCE DIA_BAU_1_EXIT(C_INFO)
{
	nr			= 999;
	condition	= DIA_BAU_1_EXIT_Condition;
	information	= DIA_BAU_1_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_BAU_1_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_BAU_1_EXIT_Info()
{	
	AI_Output(self, hero, "DIA_BAU_1_EXIT_01_00"); //A juicy grain shall grow in your fields.

	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 									JOIN
// *************************************************************************
INSTANCE DIA_BAU_1_JOIN(C_INFO)
{
	nr			= 4;
	condition	= DIA_BAU_1_JOIN_Condition;
	information	= DIA_BAU_1_JOIN_Info;
	permanent	= TRUE;
	description = "Tell me more about those mercenaries.";
};                       

FUNC INT DIA_BAU_1_JOIN_Condition()
{
	if (Npc_GetDistToWP(self, "BIGFARM") < 10000)
	{
		return TRUE;
	};
};

FUNC VOID DIA_BAU_1_JOIN_Info()
{	
	AI_Output (hero, self, "DIA_BAU_1_JOIN_15_00"); //I want to know more about the mercenaries.
	AI_Output (self, hero, "DIA_BAU_1_JOIN_01_01"); //I can only advise you to stay away from them.
	AI_Output (self, hero, "DIA_BAU_1_JOIN_01_02"); //If one of them doesn't like your face, he might just give you one on the nose.
	AI_Output (self, hero, "DIA_BAU_1_JOIN_01_03"); //You can complain to Lares afterwards, but it won't straighten your nose.
};

// *************************************************************************
// 									PEOPLE
// *************************************************************************
INSTANCE DIA_BAU_1_PEOPLE(C_INFO)
{
	nr			= 3;
	condition	= DIA_BAU_1_PEOPLE_Condition;
	information	= DIA_BAU_1_PEOPLE_Info;
	permanent	= TRUE;
	description = "Who's in charge here?";
};                       

FUNC INT DIA_BAU_1_PEOPLE_Condition()
{
	if (Npc_GetDistToWP(self, "BIGFARM") < 10000)
	{
		return TRUE;
	};
};

FUNC VOID DIA_BAU_1_PEOPLE_Info()
{	
	AI_Output (hero, self, "DIA_BAU_1_PEOPLE_15_00"); //Who's in charge here?
	AI_Output (self, hero, "DIA_BAU_1_PEOPLE_01_01"); //This is Onar's farm. He rules everything that happens here.
};

// *************************************************************************
// 									LOCATION
// *************************************************************************
INSTANCE DIA_BAU_1_LOCATION(C_INFO)
{
	nr			= 2;
	condition	= DIA_BAU_1_LOCATION_Condition;
	information	= DIA_BAU_1_LOCATION_Info;
	permanent	= TRUE;
	description = "So what is there here in this area?";
};                       

FUNC INT DIA_BAU_1_LOCATION_Condition()
{
	if (Npc_GetDistToWP(self, "BIGFARM") < 10000)
	{
		return TRUE;
	};
};

FUNC VOID DIA_BAU_1_LOCATION_Info()
{	
	AI_Output (hero, self, "DIA_BAU_1_LOCATION_15_00"); //What is it all about around here?
	AI_Output (self, hero, "DIA_BAU_1_LOCATION_01_01"); //Just fields and farms. And plenty of mercenaries. But they're almost all even in the east on Onar's farm.
	AI_Output (self, hero, "DIA_BAU_1_LOCATION_01_02"); //There's Sekobs' yard to the north.
	AI_Output (self, hero, "DIA_BAU_1_LOCATION_01_03"); //And in the southwest is the staircase to Bengar's farm.
};

INSTANCE Info_Mod_BAU_1_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_BAU_1_Pickpocket_Condition;
	information	= Info_Mod_BAU_1_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_BAU_1_Pickpocket_Condition()
{
	C_Beklauen	(8 + r_max(12), ItMi_Gold, 10 + r_max(5));
};

FUNC VOID Info_Mod_BAU_1_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_BAU_1_Pickpocket);

	Info_AddChoice	(Info_Mod_BAU_1_Pickpocket, DIALOG_BACK, Info_Mod_BAU_1_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_BAU_1_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_BAU_1_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_BAU_1_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_BAU_1_Pickpocket);
};

FUNC VOID Info_Mod_BAU_1_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_BAU_1_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_BAU_1_Pickpocket);

		Info_AddChoice	(Info_Mod_BAU_1_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_BAU_1_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_BAU_1_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_BAU_1_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_BAU_1_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_BAU_1_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_BAU_1_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_BAU_1_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_BAU_1_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_BAU_1_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_BAU_1_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_BAU_1_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_BAU_1_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};


// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_BAU_1 (var c_NPC slf)
{
	DIA_BAU_1_EXIT.npc					= Hlp_GetInstanceID(slf);
	DIA_BAU_1_JOIN.npc					= Hlp_GetInstanceID(slf);
	DIA_BAU_1_PEOPLE.npc				= Hlp_GetInstanceID(slf);
	DIA_BAU_1_LOCATION.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_BAU_1_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
