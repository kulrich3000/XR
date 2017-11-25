// *************************************************************************
// 									EXIT
// *************************************************************************
INSTANCE DIA_VLK_1_EXIT(C_INFO)
{
	nr			= 999;
	condition	= DIA_VLK_1_EXIT_Condition;
	information	= DIA_VLK_1_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_VLK_1_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_VLK_1_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 									JOIN
// *************************************************************************
INSTANCE DIA_VLK_1_JOIN(C_INFO)
{
	nr			= 4;
	condition	= DIA_VLK_1_JOIN_Condition;
	information	= DIA_VLK_1_JOIN_Info;
	permanent	= TRUE;
	description = "How can I become a citizen of this city?";
};                       

FUNC INT DIA_VLK_1_JOIN_Condition()
{
	if (Mod_Gilde == 0)
	&& (Mod_IstLehrling == 0)
	{
		return TRUE;
	};
};

FUNC VOID DIA_VLK_1_JOIN_Info()
{	
	AI_Output (hero, self, "DIA_VLK_1_JOIN_15_00"); //How can I become a citizen of this city?
	AI_Output (self, hero, "DIA_VLK_1_JOIN_01_01"); //Get yourself a decent job! Anyone who has a permanent job here in Khorinis is a citizen of the city.
};

INSTANCE DIA_VLK_1_Skinner(C_INFO)
{
	nr			= 4;
	condition	= DIA_VLK_1_Skinner_Condition;
	information	= DIA_VLK_1_Skinner_Info;
	permanent	= TRUE;
	description = "I've got something to lift the spirits here.";
};                       

FUNC INT DIA_VLK_1_Skinner_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Laufbursche))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Skinner_Laufbursche2))
	&& (Npc_KnowsInfo(hero, Info_Mod_Edgor_Skinner))
	&& (Npc_HasItems(hero, ItMi_Addon_Joint_01) > 0)
	&& (Mod_SkinnerQuest == 1)
	{
		return TRUE;
	};
};

FUNC VOID DIA_VLK_1_Skinner_Info()
{	
	AI_Output (hero, self, "DIA_VLK_1_Skinner_15_00"); //I've got something to lift the spirits here.
	AI_Output (self, hero, "DIA_VLK_1_Skinner_06_01"); //Ahh, that lovely scent. More intense than what you usually get here at the harbour. How much fun is it going to cost?

	Mod_SkinnerQuest = 2;

	Info_ClearChoices	(DIA_VLK_1_Skinner);

	Info_AddChoice	(DIA_VLK_1_Skinner, "40 gold.", DIA_VLK_1_Skinner_C);
	Info_AddChoice	(DIA_VLK_1_Skinner, "Thirty gold.", DIA_VLK_1_Skinner_B);
	Info_AddChoice	(DIA_VLK_1_Skinner, "20 gold.", DIA_VLK_1_Skinner_A);
};

FUNC VOID DIA_VLK_1_Skinner_D()
{	
	AI_Output (self, hero, "DIA_VLK_1_Skinner_D_06_00"); //No matter how cheap. I'll take everything you got.

	Info_ClearChoices	(DIA_VLK_1_Skinner);
};

FUNC VOID DIA_VLK_1_Skinner_C()
{	
	AI_Output (hero, self, "DIA_VLK_1_Skinner_C_15_00"); //40 gold.

	DIA_VLK_1_Skinner_D();

	CreateInvItems	(self, ItMi_Gold, 40*Npc_HasItems(hero, ItMi_Addon_Joint_01));
	B_GiveInvItems	(self, hero, ItMi_Gold, 40*Npc_HasItems(hero, ItMi_Addon_Joint_01));

	Npc_RemoveInvItems	(hero, ItMi_Addon_Joint_01, Npc_HasItems(hero, ItMi_Addon_Joint_01));

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_BDT_SKINNER, "So I got rid of all the green novices in town.");

	Info_ClearChoices	(DIA_VLK_1_Skinner);
};

FUNC VOID DIA_VLK_1_Skinner_B()
{	
	AI_Output (hero, self, "DIA_VLK_1_Skinner_B_15_00"); //Thirty gold.

	DIA_VLK_1_Skinner_D();

	CreateInvItems	(self, ItMi_Gold, 30*Npc_HasItems(hero, ItMi_Addon_Joint_01));
	B_GiveInvItems	(self, hero, ItMi_Gold, 30*Npc_HasItems(hero, ItMi_Addon_Joint_01));

	Npc_RemoveInvItems	(hero, ItMi_Addon_Joint_01, Npc_HasItems(hero, ItMi_Addon_Joint_01));

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_BDT_SKINNER, "So I got rid of all the green novices in town.");

	Info_ClearChoices	(DIA_VLK_1_Skinner);
};

FUNC VOID DIA_VLK_1_Skinner_A()
{	
	AI_Output (hero, self, "DIA_VLK_1_Skinner_A_15_00"); //20 gold.

	DIA_VLK_1_Skinner_D();

	CreateInvItems	(self, ItMi_Gold, 20*Npc_HasItems(hero, ItMi_Addon_Joint_01));
	B_GiveInvItems	(self, hero, ItMi_Gold, 20*Npc_HasItems(hero, ItMi_Addon_Joint_01));

	Npc_RemoveInvItems	(hero, ItMi_Addon_Joint_01, Npc_HasItems(hero, ItMi_Addon_Joint_01));

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_BDT_SKINNER, "So I got rid of all the green novices in town.");

	Info_ClearChoices	(DIA_VLK_1_Skinner);
};

INSTANCE Info_VLK_1_Flugblaetter (C_INFO) // E1
{
	nr			= 5;
	condition	= Info_VLK_1_Flugblaetter_Condition;
	information	= Info_VLK_1_Flugblaetter_Info;
	permanent	= 1;
	description = "I've got a flyer for you.";
};                       

FUNC INT Info_VLK_1_Flugblaetter_Condition()
{
	if (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (self.aivar[AIV_FLUGBLATTVERTEILT] == 0)
	{
		return TRUE;
	};
};

FUNC VOID Info_VLK_1_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_VLK_1_Flugblaetter_01_01"); //Let me see...

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_VLK_1_Flugblaetter_01_02"); //Ahh Matteo. I shop with him every day anyway.

	self.aivar[AIV_FLUGBLATTVERTEILT] = 1;

	Mod_Flugblaetter += 1;
};

INSTANCE Info_VLK_1_Rangar (C_INFO) // E1
{
	nr			= 6;
	condition	= Info_VLK_1_Rangar_Condition;
	information	= Info_VLK_1_Rangar_Info;
	permanent	= 0;
	description = "Did you already know...";
};                       

FUNC INT Info_VLK_1_Rangar_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Den_Problem))
	&& (!Npc_KnowsInfo(hero, Info_VLK_16_Rangar))
	&& (!Npc_KnowsInfo(hero, Info_VLK_6_Rangar))
	&& (!Npc_KnowsInfo(hero, Info_VLK_8_Rangar))
	&& (!Npc_KnowsInfo(hero, Info_VLK_17_Rangar))
	&& (Mod_DenVerpfiffen == 0)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andre_Rangar))
	{
		return TRUE;
	};
};

FUNC VOID Info_VLK_1_Rangar_Info()
{
	AI_Output(hero, self, "Info_Mod_VLK_1_Rangar_15_00"); //Did you know Rangar's having an affair?
	AI_Output(self, hero, "Info_Mod_VLK_1_Rangar_01_01"); //Really? With who?
	AI_Output(hero, self, "Info_Mod_VLK_1_Rangar_15_02"); //With one of Bromor's girls!
	AI_Output(self, hero, "Info_Mod_VLK_1_Rangar_01_03"); //Are you sure about this? I'll have to go on with that right away.

	Mod_DensGeruechtVerbreitet = TRUE;

	B_LogEntry	(TOPIC_MOD_DENSPROBLEM, "There's a rumor going around, so Den will be satisfied.");
};

// *************************************************************************
// 									PEOPLE
// *************************************************************************
INSTANCE DIA_VLK_1_PEOPLE(C_INFO)
{
	nr			= 3;
	condition	= DIA_VLK_1_PEOPLE_Condition;
	information	= DIA_VLK_1_PEOPLE_Info;
	permanent	= TRUE;
	description = "Who are the important personalities here?";
};                       

FUNC INT DIA_VLK_1_PEOPLE_Condition()
{
	return TRUE;
};

FUNC VOID DIA_VLK_1_PEOPLE_Info()
{	
	AI_Output (hero, self, "DIA_VLK_1_PEOPLE_15_00"); //Who are the important personalities here?
	AI_Output (self, hero, "DIA_VLK_1_PEOPLE_01_01"); //Lord Hagen has control of the city. However, the governor is Larius.
	AI_Output (self, hero, "DIA_VLK_1_PEOPLE_01_02"); //Then there's another judge. Of course, Lord Hagen also has the rights of these two.
	AI_Output (self, hero, "DIA_VLK_1_PEOPLE_01_03"); //Lord Andre is the right hand of Lord Hagen.
	AI_Output (self, hero, "DIA_VLK_1_PEOPLE_01_04"); //Anyone who is guilty of anything here in the city must answer to him.
};

// *************************************************************************
// 									LOCATION
// *************************************************************************
INSTANCE DIA_VLK_1_LOCATION(C_INFO)
{
	nr			= 2;
	condition	= DIA_VLK_1_LOCATION_Condition;
	information	= DIA_VLK_1_LOCATION_Info;
	permanent	= TRUE;
	description = "What's interesting in this town?";
};                       

FUNC INT DIA_VLK_1_LOCATION_Condition()
{
	return TRUE;
};

FUNC VOID DIA_VLK_1_LOCATION_Info()
{	
	AI_Output (hero, self, "DIA_VLK_1_LOCATION_15_00"); //What's interesting in this town?
	AI_Output (self, hero, "DIA_VLK_1_LOCATION_01_01"); //Here you can buy almost everything you can imagine. Either from the merchants on the market square or in the lower town.
	AI_Output (self, hero, "DIA_VLK_1_LOCATION_01_02"); //But almost everything you can buy here costs a little something.
	AI_Output (self, hero, "DIA_VLK_1_LOCATION_01_03"); //If you don't have a lot of money, maybe Lehmar, the money lender, can help you. His house is at the beginning of the port district when you come from the lower town.
};

INSTANCE Info_Mod_VLK_1_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_VLK_1_Pickpocket_Condition;
	information	= Info_Mod_VLK_1_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_VLK_1_Pickpocket_Condition()
{
	C_Beklauen	(30 + r_max(30), ItMi_Gold, 15 + r_max(5));
};

FUNC VOID Info_Mod_VLK_1_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_VLK_1_Pickpocket);

	Info_AddChoice	(Info_Mod_VLK_1_Pickpocket, DIALOG_BACK, Info_Mod_VLK_1_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_VLK_1_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_VLK_1_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_VLK_1_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_VLK_1_Pickpocket);
};

FUNC VOID Info_Mod_VLK_1_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_VLK_1_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_VLK_1_Pickpocket);

		Info_AddChoice	(Info_Mod_VLK_1_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_VLK_1_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_VLK_1_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_VLK_1_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_VLK_1_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_VLK_1_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_VLK_1_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_VLK_1_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_VLK_1_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_VLK_1_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_VLK_1_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_VLK_1_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_VLK_1_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_VLK_1 (var c_NPC slf)
{
	DIA_VLK_1_EXIT.npc					= Hlp_GetInstanceID(slf);
	DIA_VLK_1_JOIN.npc					= Hlp_GetInstanceID(slf);
	DIA_VLK_1_Skinner.npc					= Hlp_GetInstanceID(slf);
	DIA_VLK_1_PEOPLE.npc				= Hlp_GetInstanceID(slf);
	DIA_VLK_1_LOCATION.npc				= Hlp_GetInstanceID(slf);
	Info_VLK_1_Flugblaetter.npc				= Hlp_GetInstanceID(slf);
	Info_VLK_1_Rangar.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_VLK_1_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
