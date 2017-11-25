INSTANCE Info_Mod_Morgan_Hi (C_INFO)
{
	npc		= Mod_938_PIR_Morgan_AW;
	nr		= 1;
	condition	= Info_Mod_Morgan_Hi_Condition;
	information	= Info_Mod_Morgan_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Morgan_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Morgan_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Morgan_Hi_07_01"); //I'm Morgan, one of the three enter-troop leaders.
	AI_Output(self, hero, "Info_Mod_Morgan_Hi_07_02"); //What do you want from me?
};

INSTANCE Info_Mod_Morgan_Entertrupp (C_INFO)
{
	npc		= Mod_938_PIR_Morgan_AW;
	nr		= 1;
	condition	= Info_Mod_Morgan_Entertrupp_Condition;
	information	= Info_Mod_Morgan_Entertrupp_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want to join your posse.";
};

FUNC INT Info_Mod_Morgan_Entertrupp_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgan_Hi))
	&& (Mod_InEntertrupp == 0)
	&& (Piraten_Dabei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morgan_Entertrupp_Info()
{
	AI_Output(hero, self, "Info_Mod_Morgan_Entertrupp_15_00"); //I want to join your posse.
	AI_Output(self, hero, "Info_Mod_Morgan_Entertrupp_07_01"); //If you want to join my rescue squad, you gotta get me something.
	AI_Output(hero, self, "Info_Mod_Morgan_Entertrupp_15_02"); //What should I get you?
	AI_Output(self, hero, "Info_Mod_Morgan_Entertrupp_07_03"); //You're going alligator hunting now. In the valley basin you should still meet some of the creatures.
	AI_Output(self, hero, "Info_Mod_Morgan_Entertrupp_07_04"); //Bring me four of their claws. Some people think a chain of alligator claws brings luck.
	AI_Output(hero, self, "Info_Mod_Morgan_Entertrupp_15_05"); //I want you to have your claws.

	Wld_InsertNpc	(Alligator, "FP_ROAM_WATERHOLE_13");
	Wld_InsertNpc	(Alligator, "FP_ROAM_WATERHOLE_09");
	Wld_InsertNpc	(Alligator, "ADW_PIRATECAMP_INSEL_01");

	Log_CreateTopic	(TOPIC_MOD_MORGAN_ENTERTRUPP, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MORGAN_ENTERTRUPP, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MORGAN_ENTERTRUPP, "I'm supposed to bring him four alligator claws.");
};

INSTANCE Info_Mod_Morgan_WieKrallen (C_INFO)
{
	npc		= Mod_938_PIR_Morgan_AW;
	nr		= 1;
	condition	= Info_Mod_Morgan_WieKrallen_Condition;
	information	= Info_Mod_Morgan_WieKrallen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Where can I learn to use claws?";
};

FUNC INT Info_Mod_Morgan_WieKrallen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgan_Entertrupp))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morgan_WieKrallen_Info()
{
	AI_Output(hero, self, "Info_Mod_Morgan_WieKrallen_15_00"); //Where can I learn to use claws?
	AI_Output(self, hero, "Info_Mod_Morgan_WieKrallen_07_01"); //I can teach you how to take those bastards' nails off.
};

INSTANCE Info_Mod_Morgan_KrallenZiehen (C_INFO)
{
	npc		= Mod_938_PIR_Morgan_AW;
	nr		= 1;
	condition	= Info_Mod_Morgan_KrallenZiehen_Condition;
	information	= Info_Mod_Morgan_KrallenZiehen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Take alligator claws (1 LP)";
};

FUNC INT Info_Mod_Morgan_KrallenZiehen_Condition()
{
	Info_Mod_Morgan_KrallenZiehen.description = B_BuildLearnString("take alligator claws", B_GetLearnCostTalent(hero, NPC_TALENT_TAKEANIMALTROPHY, TROPHY_AlligatorClaws));

	if (Npc_KnowsInfo(hero, Info_Mod_Morgan_WieKrallen))
	&& (Mod_InEntertrupp == 0)
	&& (PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_AlligatorClaws] == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morgan_KrallenZiehen_Info()
{
	if (B_TeachPlayerTalentTakeAnimalTrophy (self, hero, TROPHY_AlligatorClaws))
	{
		AI_Output(self, hero, "Info_Mod_Morgan_KrallenZiehen_07_00"); //It's basically quite simple. Just cut the claws out of the forefoot.
		AI_Output(self, hero, "Info_Mod_Morgan_KrallenZiehen_07_01"); //After that, scrape off the rest of the flesh and you'll have your claws.
	};
};

INSTANCE Info_Mod_Morgan_HierKrallen (C_INFO)
{
	npc		= Mod_938_PIR_Morgan_AW;
	nr		= 1;
	condition	= Info_Mod_Morgan_HierKrallen_Condition;
	information	= Info_Mod_Morgan_HierKrallen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here, your claws.";
};

FUNC INT Info_Mod_Morgan_HierKrallen_Condition()
{
	if (Npc_HasItems(hero, ItAt_AlligatorClaw) > 3)
	&& (Mod_InEntertrupp == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morgan_HierKrallen_Info()
{
	AI_Output(hero, self, "Info_Mod_Morgan_HierKrallen_15_00"); //Here, your claws.

	B_GiveInvItems	(hero, self, ItAt_AlligatorClaw, 4);

	AI_Output(self, hero, "Info_Mod_Morgan_HierKrallen_07_01"); //Very good, kid! You have my permission to do that.

	if (Mod_InEntertrupp == 0)
	{
		B_LogEntry_More	(TOPIC_MOD_PIRATEN_ENTERTRUPP, TOPIC_MOD_MORGAN_ENTERTRUPP, "I've got Morgan's permission to join an enterprise-group.", "Morgan's convinced of me.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_PIRATEN_ENTERTRUPP, "I've got Morgan's permission to join an enterprise-group.");
	};

	B_SetTopicStatus	(TOPIC_MOD_MORGAN_ENTERTRUPP, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	B_Göttergefallen(2, 1);
};

INSTANCE Info_Mod_Morgan_InEntertrupp (C_INFO)
{
	npc		= Mod_938_PIR_Morgan_AW;
	nr		= 1;
	condition	= Info_Mod_Morgan_InEntertrupp_Condition;
	information	= Info_Mod_Morgan_InEntertrupp_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want to join your posse.";
};

FUNC INT Info_Mod_Morgan_InEntertrupp_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgan_HierKrallen))
	&& (Mod_InEntertrupp == 0)
	&& ((Npc_KnowsInfo(hero, Info_Mod_Francis_Skip))
	|| (Mod_QuatschGrog == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morgan_InEntertrupp_Info()
{
	AI_Output(hero, self, "Info_Mod_Morgan_InEntertrupp_15_00"); //I want to join your posse.
	AI_Output(self, hero, "Info_Mod_Morgan_InEntertrupp_07_01"); //You've proven yourself useful as a pirate.
	AI_Output(self, hero, "Info_Mod_Morgan_InEntertrupp_07_02"); //From now on, you're in my squad.

	B_GivePlayerXP	(400);

	B_LogEntry	(TOPIC_MOD_PIRATEN_ENTERTRUPP, "I'm a member of Morgan's enlisted group now.");
	B_SetTopicStatus	(TOPIC_MOD_PIRATEN_ENTERTRUPP, LOG_SUCCESS);

	Mod_InEntertrupp = 1;

	B_Göttergefallen(2, 1);
	
	if (Npc_KnowsInfo(hero, Info_Mod_Morgan_Entertrupp))
	&& (Npc_KnowsInfo(hero, Info_Mod_Morgan_HierKrallen)) {
		B_SetTopicStatus(TOPIC_MOD_MORGAN_ENTERTRUPP, LOG_FAILED);
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Henry_Entertrupp))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Henry_HierGrog)) {
		B_SetTopicStatus(TOPIC_MOD_HENRY_ENTERTRUPP, LOG_FAILED);
	};
};

INSTANCE Info_Mod_Morgan_Lehrer (C_INFO)
{
	npc		= Mod_938_PIR_Morgan_AW;
	nr		= 1;
	condition	= Info_Mod_Morgan_Lehrer_Condition;
	information	= Info_Mod_Morgan_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me something?";
};

FUNC INT Info_Mod_Morgan_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgan_Hi))
	&& (Piraten_Dabei == TRUE)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morgan_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Morgan_Lehrer_07_01"); //I can teach you how to handle a hand.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_PIRATEN, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_PIRATEN, "Morgan can teach me how to deal with one-handed people.");
};

INSTANCE Info_Mod_Morgan_Lernen (C_INFO)
{
	npc		= Mod_938_PIR_Morgan_AW;
	nr		= 1;
	condition	= Info_Mod_Morgan_Lernen_Condition;
	information	= Info_Mod_Morgan_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to learn.";
};

FUNC INT Info_Mod_Morgan_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgan_Lehrer))
	&& (Piraten_Dabei == TRUE)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morgan_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Morgan_Lernen_15_00"); //I want to learn.

	Info_ClearChoices	(Info_Mod_Morgan_Lernen);

	Info_AddChoice	(Info_Mod_Morgan_Lernen, DIALOG_BACK, Info_Mod_Morgan_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Morgan_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Morgan_Lernen_1H_5);
	Info_AddChoice	(Info_Mod_Morgan_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Morgan_Lernen_1H_1);
};

FUNC VOID Info_Mod_Morgan_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Morgan_Lernen);
};

FUNC VOID Info_Mod_Morgan_Lernen_1H_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_1H, 5, 60)
	{
		Info_ClearChoices	(Info_Mod_Morgan_Lernen);

		Info_AddChoice	(Info_Mod_Morgan_Lernen, DIALOG_BACK, Info_Mod_Morgan_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Morgan_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Morgan_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Morgan_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Morgan_Lernen_1H_1);
	};
};

FUNC VOID Info_Mod_Morgan_Lernen_1H_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_1H, 1, 60)
	{
		Info_ClearChoices	(Info_Mod_Morgan_Lernen);

		Info_AddChoice	(Info_Mod_Morgan_Lernen, DIALOG_BACK, Info_Mod_Morgan_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Morgan_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Morgan_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Morgan_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Morgan_Lernen_1H_1);
	};
};

INSTANCE Info_Mod_Morgan_Pickpocket (C_INFO)
{
	npc		= Mod_938_PIR_Morgan_AW;
	nr		= 1;
	condition	= Info_Mod_Morgan_Pickpocket_Condition;
	information	= Info_Mod_Morgan_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Morgan_Pickpocket_Condition()
{
	C_Beklauen	(58, ItMi_Gold, 17);
};

FUNC VOID Info_Mod_Morgan_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Morgan_Pickpocket);

	Info_AddChoice	(Info_Mod_Morgan_Pickpocket, DIALOG_BACK, Info_Mod_Morgan_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Morgan_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Morgan_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Morgan_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Morgan_Pickpocket);
};

FUNC VOID Info_Mod_Morgan_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Morgan_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Morgan_Pickpocket);

		Info_AddChoice	(Info_Mod_Morgan_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Morgan_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Morgan_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Morgan_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Morgan_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Morgan_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Morgan_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Morgan_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Morgan_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Morgan_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Morgan_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Morgan_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Morgan_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Morgan_EXIT (C_INFO)
{
	npc		= Mod_938_PIR_Morgan_AW;
	nr		= 1;
	condition	= Info_Mod_Morgan_EXIT_Condition;
	information	= Info_Mod_Morgan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Morgan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Morgan_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
