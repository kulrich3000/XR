INSTANCE Info_Mod_Lothar_Hi (C_INFO)
{
	npc		= Mod_539_PAL_Lothar_NW;
	nr		= 1;
	condition	= Info_Mod_Lothar_Hi_Condition;
	information	= Info_Mod_Lothar_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lothar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lothar_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Lothar_Hi_01_00"); //A new face in the upper district?
	AI_Output(self, hero, "Info_Mod_Lothar_Hi_01_01"); //Behave yourself, the rich people here don't like it when you cause trouble.
};

INSTANCE Info_Mod_Lothar_News (C_INFO)
{
	npc		= Mod_539_PAL_Lothar_NW;
	nr		= 1;
	condition	= Info_Mod_Lothar_News_Condition;
	information	= Info_Mod_Lothar_News_Info;
	permanent	= 0;
	important	= 0;
	description	= "Did anything interesting happen here?";
};

FUNC INT Info_Mod_Lothar_News_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lothar_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lothar_News_Info()
{
	AI_Output(hero, self, "Info_Mod_Lothar_News_15_00"); //Did anything interesting happen here?
	AI_Output(self, hero, "Info_Mod_Lothar_News_01_01"); //Nothing that would concern anyone like you. However, if you brought me a beer, then....
	AI_Output(hero, self, "Info_Mod_Lothar_News_15_02"); //I see.
};

INSTANCE Info_Mod_Lothar_Bier (C_INFO)
{
	npc		= Mod_539_PAL_Lothar_NW;
	nr		= 1;
	condition	= Info_Mod_Lothar_Bier_Condition;
	information	= Info_Mod_Lothar_Bier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Have a beer (give beer)";
};

FUNC INT Info_Mod_Lothar_Bier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lothar_News))
	&& (Npc_HasItems(hero, ItFo_Beer) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lothar_Bier_Info()
{
	AI_Output(hero, self, "Info_Mod_Lothar_Bier_15_00"); //Have a beer.
	
	B_GiveInvItems	(hero, self, ItFo_Beer, 1);

	B_UseItem	(self, ItFo_Beer);

	AI_Output(self, hero, "Info_Mod_Lothar_Bier_01_01"); //Thanks.
	AI_Output(hero, self, "Info_Mod_Lothar_Bier_15_02"); //Is there any news now?
	AI_Output(self, hero, "Info_Mod_Lothar_Bier_01_03"); //Since you brought me a beer, I'll tell you something.
	AI_Output(self, hero, "Info_Mod_Lothar_Bier_01_04"); //A few days ago, our most valuable possession, a crystal, was stolen. We suspect the thieves are behind it.
	AI_Output(self, hero, "Info_Mod_Lothar_Bier_01_05"); //A member of the thief guild is called Diego, but we can't harm him because he is under the protection of the Water Magicians.

	Log_CreateTopic	(TOPIC_MOD_DIEGO_KRISTALL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DIEGO_KRISTALL, LOG_RUNNING);

	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_Auftrag))
	{
		B_LogEntry_More	(TOPIC_MOD_TORLOFSPIONAGE, TOPIC_MOD_DIEGO_KRISTALL, "Paladin Lothar told me they missed a precious crystal. This crystal will help me become a mercenary.", "A precious crystal of the paladins was stolen. I want Diego to know something about this. I should go see him.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_DIEGO_KRISTALL, "A precious crystal of the paladins was stolen. I want Diego to know something about this. I should go see him.");
	};

	B_GivePlayerXP	(150);

	B_Göttergefallen(1, 1);
};

INSTANCE Info_Mod_Lothar_Kristall (C_INFO)
{
	npc		= Mod_539_PAL_Lothar_NW;
	nr		= 1;
	condition	= Info_Mod_Lothar_Kristall_Condition;
	information	= Info_Mod_Lothar_Kristall_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have your crystal here.";
};

FUNC INT Info_Mod_Lothar_Kristall_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lothar_Bier))
	&& (Mod_Gilde	==	0)
	&& (Npc_HasItems(hero, Mod_PaladinKristall) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lothar_Kristall_Info()
{
	AI_Output(hero, self, "Info_Mod_Lothar_Kristall_15_00"); //I have your crystal here.

	B_GiveInvItems	(hero, self, Mod_PaladinKristall, 1);

	AI_Output(self, hero, "Info_Mod_Lothar_Kristall_01_01"); //So you took the thieves' booty from them. Take the crystal to Lord Andre, he will take you into the ranks of the militia.

	B_GiveInvItems	(self, hero, Mod_PaladinKristall, 1);

	B_LogEntry	(TOPIC_MOD_MILIZ, "Lothar says Lord Andre will take me in if I bring him the crystal.");

	B_Göttergefallen(1, 1);

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Lothar_Ornament (C_INFO)
{
	npc		= Mod_539_PAL_Lothar_NW;
	nr		= 1;
	condition	= Info_Mod_Lothar_Ornament_Condition;
	information	= Info_Mod_Lothar_Ornament_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you have a piece of a stone ring?";
};

FUNC INT Info_Mod_Lothar_Ornament_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lothar_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Nefarius_VierErbauer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lothar_Ornament_Info()
{
	AI_Output(hero, self, "Info_Mod_Lothar_Ornament_15_00"); //Do you have a piece of a stone ring?
	AI_Output(self, hero, "Info_Mod_Lothar_Ornament_01_01"); //Larius, the governor, deals with old relics of the city.

	B_LogEntry	(TOPIC_MOD_PORTAL, "Larius, the governor, is said to deal with old relics of the city.");
};

INSTANCE Info_Mod_Lothar_Lehrer (C_INFO)
{
	npc		= Mod_539_PAL_Lothar_NW;
	nr		= 1;
	condition	= Info_Mod_Lothar_Lehrer_Condition;
	information	= Info_Mod_Lothar_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me something?";
};

FUNC INT Info_Mod_Lothar_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lothar_Hi))
	&& (Mod_Gilde == 3)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lothar_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Lothar_Lehrer_01_00"); //I can help you get stronger.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_STADT, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_STADT, "Lothar can help me become stronger.");
};

INSTANCE Info_Mod_Lothar_Lernen (C_INFO)
{
	npc		= Mod_539_PAL_Lothar_NW;
	nr		= 1;
	condition	= Info_Mod_Lothar_Lernen_Condition;
	information	= Info_Mod_Lothar_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me something.";
};

FUNC INT Info_Mod_Lothar_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lothar_Lehrer))
	&& ((Mod_Gilde == 3)
	|| (Mod_Gilde == 4))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lothar_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Lothar_Lernen_15_00"); //Teach me something.
	AI_Output(self, hero, "Info_Mod_Lothar_Lernen_01_01"); //What do you want to learn?

	Info_ClearChoices	(Info_Mod_Lothar_Lernen);

	Info_AddChoice 		(Info_Mod_Lothar_Lernen, DIALOG_BACK, Info_Mod_Lothar_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Lothar_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	, Info_Mod_Lothar_Lernen_Staerke_5);
	Info_AddChoice		(Info_Mod_Lothar_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	, Info_Mod_Lothar_Lernen_Staerke_1);
};

FUNC VOID Info_Mod_Lothar_Lernen_BACK()
{
	Info_ClearChoices (Info_Mod_Lothar_Lernen);
};

FUNC VOID Info_Mod_Lothar_Lernen_Staerke_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_STRENGTH, 5, 200);
	
	Info_ClearChoices	(Info_Mod_Lothar_Lernen);

	Info_AddChoice 		(Info_Mod_Lothar_Lernen, DIALOG_BACK, Info_Mod_Lothar_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Lothar_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	, Info_Mod_Lothar_Lernen_Staerke_5);
	Info_AddChoice		(Info_Mod_Lothar_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	, Info_Mod_Lothar_Lernen_Staerke_1);
};

FUNC VOID Info_Mod_Lothar_Lernen_Staerke_1()
{
	B_TeachAttributePoints (self, hero, ATR_STRENGTH, 1, 200);
	
	Info_ClearChoices	(Info_Mod_Lothar_Lernen);

	Info_AddChoice 		(Info_Mod_Lothar_Lernen, DIALOG_BACK, Info_Mod_Lothar_Lernen_BACK);
	Info_AddChoice		(Info_Mod_Lothar_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	, Info_Mod_Lothar_Lernen_Staerke_5);
	Info_AddChoice		(Info_Mod_Lothar_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	, Info_Mod_Lothar_Lernen_Staerke_1);
};

INSTANCE Info_Mod_Lothar_Pickpocket (C_INFO)
{
	npc		= Mod_539_PAL_Lothar_NW;
	nr		= 1;
	condition	= Info_Mod_Lothar_Pickpocket_Condition;
	information	= Info_Mod_Lothar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Lothar_Pickpocket_Condition()
{
	C_Beklauen	(135, ItFo_Beer, 3);
};

FUNC VOID Info_Mod_Lothar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Lothar_Pickpocket);

	Info_AddChoice	(Info_Mod_Lothar_Pickpocket, DIALOG_BACK, Info_Mod_Lothar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Lothar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Lothar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Lothar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Lothar_Pickpocket);
};

FUNC VOID Info_Mod_Lothar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Lothar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Lothar_Pickpocket);

		Info_AddChoice	(Info_Mod_Lothar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Lothar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Lothar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Lothar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Lothar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Lothar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Lothar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Lothar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Lothar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Lothar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Lothar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Lothar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Lothar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Lothar_EXIT (C_INFO)
{
	npc		= Mod_539_PAL_Lothar_NW;
	nr		= 1;
	condition	= Info_Mod_Lothar_EXIT_Condition;
	information	= Info_Mod_Lothar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lothar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lothar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
