INSTANCE Info_Mod_Dalton_Hi (C_INFO)
{
	npc		= Mod_7515_OUT_Dalton_REL;
	nr		= 1;
	condition	= Info_Mod_Dalton_Hi_Condition;
	information	= Info_Mod_Dalton_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dalton_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dalton_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Dalton_Hi_04_00"); //Hey, you!
	AI_Output(self, hero, "Info_Mod_Dalton_Hi_04_01"); //You look like a battle-hardened knight to me. Can you help me?
	AI_Output(hero, self, "Info_Mod_Dalton_Hi_15_02"); //What's this about?
	AI_Output(self, hero, "Info_Mod_Dalton_Hi_04_03"); //I'm worried about my son Ivan. He's grown up now, but fears animals like a weakling.
	AI_Output(self, hero, "Info_Mod_Dalton_Hi_04_04"); //I'd like him to follow in my footsteps as a lumberjack.
	AI_Output(self, hero, "Info_Mod_Dalton_Hi_04_05"); //I'm too old to go hunting, but you could take him with you and take away his fear, couldn't you?

	Info_ClearChoices	(Info_Mod_Dalton_Hi);

	Info_AddChoice	(Info_Mod_Dalton_Hi, "Not interested.", Info_Mod_Dalton_Hi_B);
	Info_AddChoice	(Info_Mod_Dalton_Hi, "What's in it for me?", Info_Mod_Dalton_Hi_A);
};

FUNC VOID Info_Mod_Dalton_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Dalton_Hi_B_15_00"); //Not interested.

	Info_ClearChoices	(Info_Mod_Dalton_Hi);
};

FUNC VOID Info_Mod_Dalton_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Dalton_Hi_A_15_00"); //What's in it for me?
	AI_Output(self, hero, "Info_Mod_Dalton_Hi_A_04_01"); //Thank you, of course.
	AI_Output(hero, self, "Info_Mod_Dalton_Hi_A_15_02"); //Then I'll try to feed on your gratitude.
	AI_Output(self, hero, "Info_Mod_Dalton_Hi_A_04_03"); //Haha. All right, you get bread and apples.
	AI_Output(hero, self, "Info_Mod_Dalton_Hi_A_15_04"); //If I have to.
	AI_Output(self, hero, "Info_Mod_Dalton_Hi_A_04_05"); //Keep left at the Khorata gate until you meet a field where I recently felled the trees.
	AI_Output(self, hero, "Info_Mod_Dalton_Hi_A_04_06"); //Graslandscavengers have spread there. They'd be a good exercise for my son.

	Log_CreateTopic	(TOPIC_MOD_KHORATA_HASENFUSS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_HASENFUSS, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_HASENFUSS, "I'm to hunt down Graslandscavenger not far from the city gate of Khorata with Dalton's son Ivan.");

	Mod_REL_Hasenfuss = 1;

	Info_ClearChoices	(Info_Mod_Dalton_Hi);

	Wld_InsertNpc	(Scavenger_Demon_Dalton_01,	"FP_ROAM_SCAVENGER_DALTON_01");
	Wld_InsertNpc	(Scavenger_Demon_Dalton_02,	"FP_ROAM_SCAVENGER_DALTON_02");
	Wld_InsertNpc	(Scavenger_Demon_Dalton_03,	"FP_ROAM_SCAVENGER_DALTON_03");
	Wld_InsertNpc	(Scavenger_Demon_Dalton_04,	"FP_ROAM_SCAVENGER_DALTON_04");
};

INSTANCE Info_Mod_Dalton_Hasenfuss (C_INFO)
{
	npc		= Mod_7515_OUT_Dalton_REL;
	nr		= 1;
	condition	= Info_Mod_Dalton_Hasenfuss_Condition;
	information	= Info_Mod_Dalton_Hasenfuss_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dalton_Hasenfuss_Condition()
{
	if (Mod_REL_Hasenfuss == 7)
	|| (Mod_REL_Hasenfuss == 8)
	|| (Mod_REL_Hasenfuss == 9)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dalton_Hasenfuss_Info()
{
	if (Mod_REL_Hasenfuss == 7)
	{
		AI_Output(self, hero, "Info_Mod_Dalton_Hasenfuss_04_00"); //What have you done?! I heard Ivan is now living on Erhard's farm and I don't want to talk to me anymore. This is all your doing!
	}
	else if (Mod_REL_Hasenfuss == 8)
	{
		AI_Output(self, hero, "Info_Mod_Dalton_Hasenfuss_04_01"); //Ivan's still bragging about your trip. Thanks for your help, I'm in your debt.

		CreateInvItems	(hero, ItFo_Bread, 1);
		CreateInVItems	(hero, ItFo_Apple, 2);

		B_ShowGivenThings	("Bread and 2 apples preserved");

		B_GivePlayerXP	(100);

		B_SetTopicStatus	(TOPIC_MOD_KHORATA_HASENFUSS, LOG_SUCCESS);

		CurrentNQ += 1;

		Mod_REL_QuestCounter += 1;

		B_StartOtherRoutine	(Mod_7514_OUT_Ivan_REL, "START");
	}
	else if (Mod_REL_Hasenfuss == 9)
	{
		AI_Output(self, hero, "Info_Mod_Dalton_Hasenfuss_04_02"); //Thank you for your efforts to bring Ivan closer to hunting, even if they didn't seem to bring anything to bear.

		CreateInvItems	(hero, ItFo_Bread, 1);
		CreateInVItems	(hero, ItFo_Apple, 2);

		B_ShowGivenThings	("Bread and 2 apples preserved");

		B_GivePlayerXP	(50);

		B_SetTopicStatus	(TOPIC_MOD_KHORATA_HASENFUSS, LOG_SUCCESS);

		CurrentNQ += 1;

		Mod_REL_QuestCounter += 1;
	};
};

INSTANCE Info_Mod_Dalton_Freudenspender (C_INFO)
{
	npc		= Mod_7515_OUT_Dalton_REL;
	nr		= 1;
	condition	= Info_Mod_Dalton_Freudenspender_Condition;
	information	= Info_Mod_Dalton_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "I'm happy to have you here...";
};                       

FUNC INT Info_Mod_Dalton_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Dalton_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Dalton_Freudenspender_15_00"); //I'm happy to have you here...
	AI_Output(self, hero, "Info_Mod_Dalton_Freudenspender_04_01"); //Then let something grow over! You can always use it.

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	Mod_Freudenspender += 1;
};

INSTANCE Info_Mod_Dalton_Pickpocket (C_INFO)
{
	npc		= Mod_7515_OUT_Dalton_REL;
	nr		= 1;
	condition	= Info_Mod_Dalton_Pickpocket_Condition;
	information	= Info_Mod_Dalton_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Dalton_Pickpocket_Condition()
{
	C_Beklauen	(65, ItMi_Gold, 27);
};

FUNC VOID Info_Mod_Dalton_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Dalton_Pickpocket);

	Info_AddChoice	(Info_Mod_Dalton_Pickpocket, DIALOG_BACK, Info_Mod_Dalton_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Dalton_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Dalton_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Dalton_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Dalton_Pickpocket);
};

FUNC VOID Info_Mod_Dalton_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Dalton_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Dalton_Pickpocket);

		Info_AddChoice	(Info_Mod_Dalton_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Dalton_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Dalton_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Dalton_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Dalton_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Dalton_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Dalton_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Dalton_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Dalton_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Dalton_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Dalton_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Dalton_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Dalton_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Dalton_EXIT (C_INFO)
{
	npc		= Mod_7515_OUT_Dalton_REL;
	nr		= 1;
	condition	= Info_Mod_Dalton_EXIT_Condition;
	information	= Info_Mod_Dalton_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Dalton_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dalton_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
