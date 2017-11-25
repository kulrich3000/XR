INSTANCE Info_Mod_Cord_NW_Hi (C_INFO)
{
	npc		= Mod_528_SLD_Cord_NW;
	nr		= 1;
	condition	= Info_Mod_Cord_NW_Hi_Condition;
	information	= Info_Mod_Cord_NW_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi.";
};

FUNC INT Info_Mod_Cord_NW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cord_NW_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Cord_NW_Hi_15_00"); //Hi.
	AI_Output(self, hero, "Info_Mod_Cord_NW_Hi_14_01"); //What are you doing here? You're lucky we don't work for the Water Magicians anymore.
	AI_Output(self, hero, "Info_Mod_Cord_NW_Hi_14_02"); //They were pretty upset after you drained the magical energy from their ore heap.
	AI_Output(self, hero, "Info_Mod_Cord_NW_Hi_14_03"); //But it seems you've managed to destroy the magic barrier.
};

INSTANCE Info_Mod_Cord_NW_Irdorath (C_INFO)
{
	npc		= Mod_528_SLD_Cord_NW;
	nr		= 1;
	condition	= Info_Mod_Cord_NW_Irdorath_Condition;
	information	= Info_Mod_Cord_NW_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want to take the Paladin's ship to an island.";
};

FUNC INT Info_Mod_Cord_NW_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cord_NW_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Cord_NW_Irdorath_15_00"); //I want to take the Paladin's ship to an island to confront dark creatures and save the island.
	AI_Output(hero, self, "Info_Mod_Cord_NW_Irdorath_15_01"); //It's going to be a dangerous venture, and I need powerful men...
	AI_Output(self, hero, "Info_Mod_Cord_NW_Irdorath_14_02"); //What do you say?
	AI_Output(self, hero, "Info_Mod_Cord_NW_Irdorath_14_03"); //Sounds like an opportunity to swing the sword against real opponents and not only puncture holes in the air.
	AI_Output(self, hero, "Info_Mod_Cord_NW_Irdorath_14_04"); //I'll be on my way to the harbour right away.
	AI_Output(hero, self, "Info_Mod_Cord_NW_Irdorath_15_05"); //Uh, sure, I'll see you there when it starts.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "So, Fighter Cord won't refuse to accompany me to the island.");

	B_GivePlayerXP	(100);

	Mod_CordDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Cord_NW_Irdorath3 (C_INFO)
{
	npc		= Mod_528_SLD_Cord_NW;
	nr		= 1;
	condition	= Info_Mod_Cord_NW_Irdorath3_Condition;
	information	= Info_Mod_Cord_NW_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "I'm sorry, but it seems we're too many.";
};

FUNC INT Info_Mod_Cord_NW_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cord_NW_Irdorath))
	&& (Mod_Irdorath == 0)
	&& (Mod_CordDabei == 1)
	&& (((Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15))
	|| (Mod_CedricDabei == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cord_NW_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Cord_NW_Irdorath3_15_00"); //I'm sorry, but it seems we're too many. I can't take you with me.
	AI_Output(self, hero, "Info_Mod_Cord_NW_Irdorath3_14_01"); //Too bad. I'll go back then. You know where to find me if there's ever gonna be a seat left.

	Mod_CordDabei = 0;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Cord_NW_Irdorath4 (C_INFO)
{
	npc		= Mod_528_SLD_Cord_NW;
	nr		= 1;
	condition	= Info_Mod_Cord_NW_Irdorath4_Condition;
	information	= Info_Mod_Cord_NW_Irdorath4_Info;
	permanent	= 1;
	important	= 0;
	description	= "I can give you a ride.";
};

FUNC INT Info_Mod_Cord_NW_Irdorath4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cord_NW_Irdorath))
	&& (Mod_Irdorath == 0)
	&& (Mod_CordDabei == 0)
	&& (Mod_CedricDabei == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cord_NW_Irdorath4_Info()
{
	AI_Output(hero, self, "Info_Mod_Cord_NW_Irdorath4_15_00"); //I can give you a ride. There's room on the ship.
	AI_Output(self, hero, "Info_Mod_Cord_NW_Irdorath4_14_01"); //Very well, I'll be back at the harbour.

	Mod_CordDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Cord_NW_Unheil (C_INFO)
{
	npc		= Mod_528_SLD_Cord_NW;
	nr		= 1;
	condition	= Info_Mod_Cord_NW_Unheil_Condition;
	information	= Info_Mod_Cord_NW_Unheil_Info;
	permanent	= 0;
	important	= 0;
	description	= "Have weird things been going on in the yard lately - apart from the monsters in the yards?";
};

FUNC INT Info_Mod_Cord_NW_Unheil_Condition()
{
	if (Mod_WM_Boeden == 14)
	|| (Mod_WM_Boeden == 13)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cord_NW_Unheil_Info()
{
	AI_Output(hero, self, "Info_Mod_Cord_NW_Unheil_15_00"); //Have weird things been going on in the yard lately - apart from the monsters in the yards?
	AI_Output(self, hero, "Info_Mod_Cord_NW_Unheil_14_01"); //Yeah, it's all jinxed. Every night when it gets dark, I suddenly feel so much fatigue that I have to close my eyes.
	AI_Output(self, hero, "Info_Mod_Cord_NW_Unheil_14_02"); //And then I wake up again and again after a short time and can continue training without difficulty.
	AI_Output(self, hero, "Info_Mod_Cord_NW_Unheil_14_03"); //I don't know what could be the reason.
};

INSTANCE Info_Mod_Cord_NW_WoWassermagier (C_INFO)
{
	npc		= Mod_528_SLD_Cord_NW;
	nr		= 1;
	condition	= Info_Mod_Cord_NW_WoWassermagier_Condition;
	information	= Info_Mod_Cord_NW_WoWassermagier_Info;
	permanent	= 0;
	important	= 0;
	description	= "What about the Water Magicians?";
};

FUNC INT Info_Mod_Cord_NW_WoWassermagier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cord_NW_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cord_NW_WoWassermagier_Info()
{
	AI_Output(hero, self, "Info_Mod_Cord_NW_WoWassermagier_15_00"); //What about the Water Magicians?
	AI_Output(self, hero, "Info_Mod_Cord_NW_WoWassermagier_14_01"); //After the barrier fell, they went into town. But then they made their way to an excavation site.
};

INSTANCE Info_Mod_Cord_NW_NahkampfJG (C_INFO)
{
	npc		= Mod_528_SLD_Cord_NW;
	nr		= 1;
	condition	= Info_Mod_Cord_NW_NahkampfJG_Condition;
	information	= Info_Mod_Cord_NW_NahkampfJG_Info;
	permanent	= 0;
	important	= 0;
	description	= "Rangers still need melee fighters.";
};

FUNC INT Info_Mod_Cord_NW_NahkampfJG_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_NahkampfJG))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cord_NW_NahkampfJG_Info()
{
	AI_Output(hero, self, "Info_Mod_Cord_NW_NahkampfJG_15_00"); //Rangers still need melee fighters.
	AI_Output(hero, self, "Info_Mod_Cord_NW_NahkampfJG_15_01"); //They don't know much about the sword. And in the Minental the bear is loose.
	AI_Output(hero, self, "Info_Mod_Cord_NW_NahkampfJG_15_02"); //At our camp at the Dark Forest also.
	AI_Output(self, hero, "Info_Mod_Cord_NW_NahkampfJG_14_03"); //What exactly is happening?
	AI_Output(hero, self, "Info_Mod_Cord_NW_NahkampfJG_15_04"); //Some black mage is obviously targeting the forest people.
	AI_Output(hero, self, "Info_Mod_Cord_NW_NahkampfJG_15_05"); //Nobody knows why. We've already lost five men.
	AI_Output(self, hero, "Info_Mod_Cord_NW_NahkampfJG_14_06"); //This is bad. But as you yourself know, here in Khorinis there is also some access.
	AI_Output(self, hero, "Info_Mod_Cord_NW_NahkampfJG_14_07"); //You can see dark figures running around everywhere.
	AI_Output(self, hero, "Info_Mod_Cord_NW_NahkampfJG_14_08"); //Hmm... I could lend you a man. For 500 gold.
	AI_Output(hero, self, "Info_Mod_Cord_NW_NahkampfJG_15_09"); //500 gold? Gold wasn't really thought of. You'll have to pay the man yourself.
	AI_Output(hero, self, "Info_Mod_Cord_NW_NahkampfJG_15_10"); //But I have an idea. How about I make sure you get a hunter in exchange for me? Is there anyone hunting with you?
	AI_Output(self, hero, "Info_Mod_Cord_NW_NahkampfJG_14_11"); //Actually, I don't. Our food comes from Onar. But you're right. An extra lump of meat wouldn't be wrong. Deal.
	AI_Output(hero, self, "Info_Mod_Cord_NW_NahkampfJG_15_12"); //And who...?
	AI_Output(self, hero, "Info_Mod_Cord_NW_NahkampfJG_14_13"); //In front of the entrance is a reserve guard. Sits mostly on the left side of the grass.
	AI_Output(self, hero, "Info_Mod_Cord_NW_NahkampfJG_14_14"); //His name is Hock. He should go with you.
	AI_Output(hero, self, "Info_Mod_Cord_NW_NahkampfJG_15_15"); //All clear. See you soon.
	AI_Output(self, hero, "Info_Mod_Cord_NW_NahkampfJG_14_16"); //Adanos with you.
};

INSTANCE Info_Mod_Cord_NW_Lehrer (C_INFO)
{
	npc		= Mod_528_SLD_Cord_NW;
	nr		= 1;
	condition	= Info_Mod_Cord_NW_Lehrer_Condition;
	information	= Info_Mod_Cord_NW_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me something?";
};

FUNC INT Info_Mod_Cord_NW_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cord_NW_Hi))
	&& ((Mod_Gilde == 4)
	|| (Mod_Gilde == 5)
	|| (Mod_Gilde == 19))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cord_NW_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Cord_NW_Lehrer_14_00"); //I can teach you how to handle one-handed and two-handed people.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_SOELDNER_ONAR, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_SOELDNER_ONAR, "Cord can teach me how to handle one-handed and two-handed people.");
};

INSTANCE Info_Mod_Cord_NW_Lernen (C_INFO)
{
	npc		= Mod_528_SLD_Cord_NW;
	nr		= 1;
	condition	= Info_Mod_Cord_NW_Lernen_Condition;
	information	= Info_Mod_Cord_NW_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to learn.";
};

FUNC INT Info_Mod_Cord_NW_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cord_NW_Lehrer))
	&& ((Mod_Gilde == 5)
	|| (Mod_Gilde == 4)
	|| (Mod_Gilde == 19))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cord_NW_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Cord_NW_Lernen_15_00"); //I want to learn.

	Info_ClearChoices	(Info_Mod_Cord_NW_Lernen);

	Info_AddChoice	(Info_Mod_Cord_NW_Lernen, DIALOG_BACK, Info_Mod_Cord_NW_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Cord_NW_Lernen_2H_5);
	Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Cord_NW_Lernen_2H_1);
	Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Cord_NW_Lernen_1H_5);
	Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Cord_NW_Lernen_1H_1);
};

FUNC VOID Info_Mod_Cord_NW_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Cord_NW_Lernen);
};

FUNC VOID Info_Mod_Cord_NW_Lernen_2H_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_2H, 5, 100)
	{
		Info_ClearChoices	(Info_Mod_Cord_NW_Lernen);

		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, DIALOG_BACK, Info_Mod_Cord_NW_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Cord_NW_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Cord_NW_Lernen_2H_1);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Cord_NW_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Cord_NW_Lernen_1H_1);
	};
};

FUNC VOID Info_Mod_Cord_NW_Lernen_2H_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_2H, 1, 100)
	{
		Info_ClearChoices	(Info_Mod_Cord_NW_Lernen);

		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, DIALOG_BACK, Info_Mod_Cord_NW_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Cord_NW_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Cord_NW_Lernen_2H_1);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Cord_NW_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Cord_NW_Lernen_1H_1);
	};
};

FUNC VOID Info_Mod_Cord_NW_Lernen_1H_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_1H, 5, 100)
	{
		Info_ClearChoices	(Info_Mod_Cord_NW_Lernen);

		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, DIALOG_BACK, Info_Mod_Cord_NW_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Cord_NW_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Cord_NW_Lernen_2H_1);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Cord_NW_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Cord_NW_Lernen_1H_1);
	};
};

FUNC VOID Info_Mod_Cord_NW_Lernen_1H_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_1H, 1, 100)
	{
		Info_ClearChoices	(Info_Mod_Cord_NW_Lernen);

		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, DIALOG_BACK, Info_Mod_Cord_NW_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Cord_NW_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Cord_NW_Lernen_2H_1);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Cord_NW_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Cord_NW_Lernen_1H_1);
	};
};

INSTANCE Info_Mod_Cord_Pickpocket (C_INFO)
{
	npc		= Mod_528_SLD_Cord_NW;
	nr		= 1;
	condition	= Info_Mod_Cord_Pickpocket_Condition;
	information	= Info_Mod_Cord_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Cord_Pickpocket_Condition()
{
	C_Beklauen	(125, ItMi_Gold, 65);
};

FUNC VOID Info_Mod_Cord_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Cord_Pickpocket);

	Info_AddChoice	(Info_Mod_Cord_Pickpocket, DIALOG_BACK, Info_Mod_Cord_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Cord_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Cord_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Cord_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Cord_Pickpocket);
};

FUNC VOID Info_Mod_Cord_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Cord_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Cord_Pickpocket);

		Info_AddChoice	(Info_Mod_Cord_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Cord_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Cord_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Cord_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Cord_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Cord_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Cord_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Cord_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Cord_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Cord_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Cord_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Cord_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Cord_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Cord_NW_EXIT (C_INFO)
{
	npc		= Mod_528_SLD_Cord_NW;
	nr		= 1;
	condition	= Info_Mod_Cord_NW_EXIT_Condition;
	information	= Info_Mod_Cord_NW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cord_NW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cord_NW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
