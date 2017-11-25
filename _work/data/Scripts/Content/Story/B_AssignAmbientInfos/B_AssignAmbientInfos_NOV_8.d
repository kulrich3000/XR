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
	description = "Co musze zrobic, aby zostac magikiem?";
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
	AI_Output (hero, self, "DIA_NOV_8_JOIN_15_00"); //Co musze zrobic, aby zostac magikiem?
	AI_Output (self, hero, "DIA_NOV_8_JOIN_08_01"); //Zostaniesz elekt Innosem dopiero wtedy, gdy zezwola na to Wysokie Magicy Ognia.
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
	description = "Kto prowadzi klasztor?";
};                       

FUNC INT DIA_NOV_8_PEOPLE_Condition()
{
	return TRUE;
};

FUNC VOID DIA_NOV_8_PEOPLE_Info()
{	
	AI_Output (hero, self, "DIA_NOV_8_PEOPLE_15_00"); //Kto prowadzi klasztor?
	AI_Output (self, hero, "DIA_NOV_8_PEOPLE_08_01"); //Wysoki Radca Strazaków. Jest on uformowany przez trzech najsilniejszych magów naszego zakonu. Codziennie konsultuja sie ze soba w kosciele.
	AI_Output (self, hero, "DIA_NOV_8_PEOPLE_08_02"); //Wszyscy wybrani Innos "to magicy. Innos obdarzyl ich tym darem, aby mogli wyrazic Jego wole na ziemi.
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
	description = "Powiedz mi o tym klasztorze.";
};                       

FUNC INT DIA_NOV_8_LOCATION_Condition()
{
	return TRUE;
};

FUNC VOID DIA_NOV_8_LOCATION_Info()
{	
	AI_Output (hero, self, "DIA_NOV_8_LOCATION_15_00"); //Powiedz mi o tym klasztorze.
	AI_Output (self, hero, "DIA_NOV_8_LOCATION_08_01"); //Jest starozytna. Pochodzi przed pierwszym przed Rhobarem.
	AI_Output (self, hero, "DIA_NOV_8_LOCATION_08_02"); //Pod klasztorem znajduja sie katakumby. Rozciagaja sie one gleboko w glab góry.
	AI_Output (self, hero, "DIA_NOV_8_LOCATION_08_03"); //Ale tylko najwyzsi konsekrowani maja dostep do najnizszego poziomu.
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
