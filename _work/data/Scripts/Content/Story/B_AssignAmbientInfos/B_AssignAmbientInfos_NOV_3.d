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
	description = "Chce byc magikiem!";
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
	AI_Output (hero, self, "DIA_NOV_3_JOIN_15_00"); //Chce byc magikiem!
	AI_Output (self, hero, "DIA_NOV_3_JOIN_03_01"); //Tego wlasnie pragnie wielu nowicjuszy. Ale tylko nieliczni maja szanse dostac szanse na to, by zostac przyjeci w krag ognia jako wybrani.
	AI_Output (self, hero, "DIA_NOV_3_JOIN_03_02"); //Bycie czarodziejem z kregu ognia jest najwyzszym zaszczytem, który moze byc Ci dany w naszym porzadku.
	AI_Output (self, hero, "DIA_NOV_3_JOIN_03_03"); //Musisz ciezko pracowac, aby uzyskac szanse.
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
	description = "Kto prowadzi ten klasztor?";
};                       

FUNC INT DIA_NOV_3_PEOPLE_Condition()
{
	return TRUE;
};

FUNC VOID DIA_NOV_3_PEOPLE_Info()
{	
	AI_Output (hero, self, "DIA_NOV_3_PEOPLE_15_00"); //Kto prowadzi ten klasztor?
	AI_Output (self, hero, "DIA_NOV_3_PEOPLE_03_01"); //My, nowicjusze, sluzymy magikom z kregu ognia. Te z kolei kierowane sa przez Najwyzsza Rade Strazaków, która sklada sie z trzech najsilniejszych Strazaków Khorinis.
	AI_Output (self, hero, "DIA_NOV_3_PEOPLE_03_02"); //Ale parlamentarzysta jest odpowiedzialny za wszystkie potrzeby nowicjuszy. Zawsze jest na podwórku i nadzoruje prace nowicjuszy.
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
	description = "Co mozesz mi powiedziec o tym klasztorze?";
};                       

FUNC INT DIA_NOV_3_LOCATION_Condition()
{
	return TRUE;
};

FUNC VOID DIA_NOV_3_LOCATION_Info()
{	
	AI_Output (hero, self, "DIA_NOV_3_LOCATION_15_00"); //Co mozesz mi powiedziec o tym klasztorze?
	AI_Output (self, hero, "DIA_NOV_3_LOCATION_03_01"); //Rozwijamy tu wlasny pokorny catering. Chowamy owce i produkujemy wino.
	AI_Output (self, hero, "DIA_NOV_3_LOCATION_03_02"); //Istnieje biblioteka, ale jej wykorzystanie jest zastrzezone dla magów i nowicjuszy.
	AI_Output (self, hero, "DIA_NOV_3_LOCATION_03_03"); //Inni nowicjusze troszcza sie przede wszystkim o to, aby magicy z kregu ognia nie mieli nic zlego.
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
