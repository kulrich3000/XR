// *************************************************************************
// 									EXIT
// *************************************************************************
INSTANCE DIA_VLK_8_EXIT(C_INFO)
{
	nr			= 999;
	condition	= DIA_VLK_8_EXIT_Condition;
	information	= DIA_VLK_8_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_VLK_8_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_VLK_8_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 									JOIN
// *************************************************************************
INSTANCE DIA_VLK_8_JOIN(C_INFO)
{
	nr			= 4;
	condition	= DIA_VLK_8_JOIN_Condition;
	information	= DIA_VLK_8_JOIN_Info;
	permanent	= TRUE;
	description = "I want to become a citizen of this town!";
};                       

FUNC INT DIA_VLK_8_JOIN_Condition()
{
	if (Mod_Gilde == 0)
	&& (Mod_IstLehrling == 0)
	{
		return TRUE;
	};
};

FUNC VOID DIA_VLK_8_JOIN_Info()
{	
	AI_Output (hero, self, "DIA_VLK_8_JOIN_15_00"); //I want to be a citizen of this town!
	AI_Output (self, hero, "DIA_VLK_8_JOIN_08_01"); //And why are you telling me this? Go to one of the master craftsmen in the lower town. Maybe you're lucky and they're looking for an apprentice.
};

INSTANCE DIA_VLK_8_Skinner(C_INFO)
{
	nr			= 4;
	condition	= DIA_VLK_8_Skinner_Condition;
	information	= DIA_VLK_8_Skinner_Info;
	permanent	= TRUE;
	description = "I've got something to lift the spirits here.";
};                       

FUNC INT DIA_VLK_8_Skinner_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Laufbursche))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Skinner_Laufbursche2))
	&& (Npc_KnowsInfo(hero, Info_Mod_Edgor_Skinner))
	&& (Npc_HasItems(hero, ItMi_Addon_Joint_01) >= 5)
	&& (Mod_SkinnerQuest == 1)
	{
		return TRUE;
	};
};

FUNC VOID DIA_VLK_8_Skinner_Info()
{	
	AI_Output (hero, self, "DIA_VLK_8_Skinner_15_00"); //I've got something to lift the spirits here.
	AI_Output (self, hero, "DIA_VLK_8_Skinner_06_01"); //Ahh, that lovely scent. More intense than what you usually get here at the harbour. How much fun is it going to cost?

	Mod_SkinnerQuest = 2;

	Info_ClearChoices	(DIA_VLK_8_Skinner);

	Info_AddChoice	(DIA_VLK_8_Skinner, "40 gold.", DIA_VLK_8_Skinner_C);
	Info_AddChoice	(DIA_VLK_8_Skinner, "Thirty gold.", DIA_VLK_8_Skinner_B);
	Info_AddChoice	(DIA_VLK_8_Skinner, "20 gold.", DIA_VLK_8_Skinner_A);
};

FUNC VOID DIA_VLK_8_Skinner_D()
{	
	AI_Output (self, hero, "DIA_VLK_8_Skinner_D_06_00"); //No matter how cheap. I'll take everything you got.

	Info_ClearChoices	(DIA_VLK_8_Skinner);
};

FUNC VOID DIA_VLK_8_Skinner_C()
{	
	AI_Output (hero, self, "DIA_VLK_8_Skinner_C_15_00"); //40 gold.

	DIA_VLK_8_Skinner_D();

	CreateInvItems	(self, ItMi_Gold, 40*Npc_HasItems(hero, ItMi_Addon_Joint_01));
	B_GiveInvItems	(self, hero, ItMi_Gold, 40*Npc_HasItems(hero, ItMi_Addon_Joint_01));

	Npc_RemoveInvItems	(hero, ItMi_Addon_Joint_01, Npc_HasItems(hero, ItMi_Addon_Joint_01));

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_BDT_SKINNER, "So I got rid of all the green novices in town.");

	Info_ClearChoices	(DIA_VLK_8_Skinner);
};

FUNC VOID DIA_VLK_8_Skinner_B()
{	
	AI_Output (hero, self, "DIA_VLK_8_Skinner_B_15_00"); //Thirty gold.

	DIA_VLK_8_Skinner_D();

	CreateInvItems	(self, ItMi_Gold, 30*Npc_HasItems(hero, ItMi_Addon_Joint_01));
	B_GiveInvItems	(self, hero, ItMi_Gold, 30*Npc_HasItems(hero, ItMi_Addon_Joint_01));

	Npc_RemoveInvItems	(hero, ItMi_Addon_Joint_01, Npc_HasItems(hero, ItMi_Addon_Joint_01));

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_BDT_SKINNER, "So I got rid of all the green novices in town.");

	Info_ClearChoices	(DIA_VLK_8_Skinner);
};

FUNC VOID DIA_VLK_8_Skinner_A()
{	
	AI_Output (hero, self, "DIA_VLK_8_Skinner_A_15_00"); //20 gold.

	DIA_VLK_8_Skinner_D();

	CreateInvItems	(self, ItMi_Gold, 20*Npc_HasItems(hero, ItMi_Addon_Joint_01));
	B_GiveInvItems	(self, hero, ItMi_Gold, 20*Npc_HasItems(hero, ItMi_Addon_Joint_01));

	Npc_RemoveInvItems	(hero, ItMi_Addon_Joint_01, Npc_HasItems(hero, ItMi_Addon_Joint_01));

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_BDT_SKINNER, "So I got rid of all the green novices in town.");

	Info_ClearChoices	(DIA_VLK_8_Skinner);
};

INSTANCE Info_VLK_08_Flugblaetter (C_INFO) // E1
{
	nr			= 5;
	condition	= Info_VLK_08_Flugblaetter_Condition;
	information	= Info_VLK_08_Flugblaetter_Info;
	permanent	= 1;
	description = "I've got a flyer for you.";
};                       

FUNC INT Info_VLK_08_Flugblaetter_Condition()
{
	if (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (self.aivar[AIV_FLUGBLATTVERTEILT] == 0)
	{
		return TRUE;
	};
};

FUNC VOID Info_VLK_08_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_VLK_08_Flugblaetter_08_01"); //(uninterested) Aha.

	self.aivar[AIV_FLUGBLATTVERTEILT] = 1;

	Mod_Flugblaetter += 1;
};

INSTANCE Info_VLK_8_Rangar (C_INFO) // E1
{
	nr			= 6;
	condition	= Info_VLK_8_Rangar_Condition;
	information	= Info_VLK_8_Rangar_Info;
	permanent	= 0;
	description = "Did you already know...";
};                       

FUNC INT Info_VLK_8_Rangar_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Den_Problem))
	&& (!Npc_KnowsInfo(hero, Info_VLK_19_Rangar))
	&& (!Npc_KnowsInfo(hero, Info_VLK_6_Rangar))
	&& (!Npc_KnowsInfo(hero, Info_VLK_16_Rangar))
	&& (!Npc_KnowsInfo(hero, Info_VLK_21_Rangar))
	&& (Mod_DenVerpfiffen == 0)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andre_Rangar))
	{
		return TRUE;
	};
};

FUNC VOID Info_VLK_8_Rangar_Info()
{
	AI_Output(hero, self, "Info_Mod_VLK_8_Rangar_15_00"); //Did you know Rangar's having an affair?
	AI_Output(self, hero, "Info_Mod_VLK_8_Rangar_08_01"); //Really? With who?
	AI_Output(hero, self, "Info_Mod_VLK_8_Rangar_15_02"); //With one of Bromor's girls!
	AI_Output(self, hero, "Info_Mod_VLK_8_Rangar_08_03"); //Are you sure about this? I'll have to go on with that right away.

	Mod_DensGeruechtVerbreitet = TRUE;

	B_LogEntry	(TOPIC_MOD_DENSPROBLEM, "There's a rumor going around, so Den will be satisfied.");
};

// *************************************************************************
// 									PEOPLE
// *************************************************************************
INSTANCE DIA_VLK_8_PEOPLE(C_INFO)
{
	nr			= 3;
	condition	= DIA_VLK_8_PEOPLE_Condition;
	information	= DIA_VLK_8_PEOPLE_Info;
	permanent	= TRUE;
	description = "Who are the most important citizens in this town?";
};                       

FUNC INT DIA_VLK_8_PEOPLE_Condition()
{
	return TRUE;
};

FUNC VOID DIA_VLK_8_PEOPLE_Info()
{	
	AI_Output (hero, self, "DIA_VLK_8_PEOPLE_15_00"); //Who are the most important citizens of this city?
	AI_Output (self, hero, "DIA_VLK_8_PEOPLE_08_01"); //Except for the paladins... the master craftsmen from the lower town. They are all highly regarded.
};

// *************************************************************************
// 									LOCATION
// *************************************************************************
INSTANCE DIA_VLK_8_LOCATION(C_INFO)
{
	nr			= 2;
	condition	= DIA_VLK_8_LOCATION_Condition;
	information	= DIA_VLK_8_LOCATION_Info;
	permanent	= TRUE;
	description = "What interesting things are there to see here?";
};                       

FUNC INT DIA_VLK_8_LOCATION_Condition()
{
	return TRUE;
};

FUNC VOID DIA_VLK_8_LOCATION_Info()
{	
	AI_Output (hero, self, "DIA_VLK_8_LOCATION_15_00"); //What is there to see here?
	AI_Output (self, hero, "DIA_VLK_8_LOCATION_08_01"); //The big ship with which the paladins arrived is at the harbour. It's a giant barge! You need to take a look at this one.
	AI_Output (self, hero, "DIA_VLK_8_LOCATION_08_02"); //I can't imagine they'd leave you on it, though. The paladins guard the ship like the apple of their eyes.
	AI_Output (self, hero, "DIA_VLK_8_LOCATION_08_03"); //No wonder. It is the only seaworthy barge that is anchored here far and wide.
};

INSTANCE Info_Mod_VLK_8_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_VLK_8_Pickpocket_Condition;
	information	= Info_Mod_VLK_8_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_VLK_8_Pickpocket_Condition()
{
	C_Beklauen	(60 + r_max(30), ItMi_Gold, 20 + r_max(10));
};

FUNC VOID Info_Mod_VLK_8_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_VLK_8_Pickpocket);

	Info_AddChoice	(Info_Mod_VLK_8_Pickpocket, DIALOG_BACK, Info_Mod_VLK_8_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_VLK_8_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_VLK_8_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_VLK_8_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_VLK_8_Pickpocket);
};

FUNC VOID Info_Mod_VLK_8_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_VLK_8_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_VLK_8_Pickpocket);

		Info_AddChoice	(Info_Mod_VLK_8_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_VLK_8_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_VLK_8_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_VLK_8_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_VLK_8_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_VLK_8_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_VLK_8_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_VLK_8_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_VLK_8_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_VLK_8_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_VLK_8_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_VLK_8_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_VLK_8_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_VLK_8 (var c_NPC slf)
{
	DIA_VLK_8_EXIT.npc					= Hlp_GetInstanceID(slf);
	DIA_VLK_8_JOIN.npc					= Hlp_GetInstanceID(slf);
	DIA_VLK_8_Skinner.npc					= Hlp_GetInstanceID(slf);
	DIA_VLK_8_PEOPLE.npc				= Hlp_GetInstanceID(slf);
	DIA_VLK_8_LOCATION.npc				= Hlp_GetInstanceID(slf);
	Info_VLK_08_Flugblaetter.npc				= Hlp_GetInstanceID(slf);
	Info_VLK_8_Rangar.npc				= Hlp_GetInstanceID(slf);
	Info_Mod_VLK_8_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
