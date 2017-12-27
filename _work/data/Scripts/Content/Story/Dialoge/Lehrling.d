INSTANCE Info_Mod_Lehrling_Hi (C_INFO)
{
	npc		= Mod_7509_OUT_Lehrling_REL;
	nr		= 1;
	condition	= Info_Mod_Lehrling_Hi_Condition;
	information	= Info_Mod_Lehrling_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lehrling_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lehrling_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Lehrling_Hi_24_00"); //Hey, Grandpa!

	Info_ClearChoices	(Info_Mod_Lehrling_Hi);

	Info_AddChoice	(Info_Mod_Lehrling_Hi, "(ignore)", Info_Mod_Lehrling_Hi_B);
	Info_AddChoice	(Info_Mod_Lehrling_Hi, "Yes?", Info_Mod_Lehrling_Hi_A);
};

FUNC VOID Info_Mod_Lehrling_Hi_B()
{
	Info_ClearChoices	(Info_Mod_Lehrling_Hi);
};

FUNC VOID Info_Mod_Lehrling_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Lehrling_Hi_A_15_00"); //Yes?
	AI_Output(self, hero, "Info_Mod_Lehrling_Hi_A_24_01"); //You have a little time, don't you? Could do a job for me.

	Info_ClearChoices	(Info_Mod_Lehrling_Hi);

	Info_AddChoice	(Info_Mod_Lehrling_Hi, "Sorry, not interested.", Info_Mod_Lehrling_Hi_D);
	Info_AddChoice	(Info_Mod_Lehrling_Hi, "What do you want?", Info_Mod_Lehrling_Hi_C);
};

FUNC VOID Info_Mod_Lehrling_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Lehrling_Hi_D_15_00"); //Not interested.

	Info_ClearChoices	(Info_Mod_Lehrling_Hi);
};

FUNC VOID Info_Mod_Lehrling_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Lehrling_Hi_C_15_00"); //What do you want?
	AI_Output(self, hero, "Info_Mod_Lehrling_Hi_C_24_01"); //Yo, well, I lost a lot of pretty important paper the other day.
	AI_Output(self, hero, "Info_Mod_Lehrling_Hi_C_24_02"); //I just went to the farmer's house and put a little roof over their front door.
	AI_Output(self, hero, "Info_Mod_Lehrling_Hi_C_24_03"); //Within the lunch break I have the notes... in the direction of Kornfeld.
	AI_Output(self, hero, "Info_Mod_Lehrling_Hi_C_24_04"); //Then the farmer came and really scared me.... and I dropped the leaves.
	AI_Output(self, hero, "Info_Mod_Lehrling_Hi_C_24_05"); //It was too excited, so I forgot her there, I guess I understood.
	AI_Output(self, hero, "Info_Mod_Lehrling_Hi_C_24_06"); //Maybe you can check to see if you can find the pages.
	AI_Output(hero, self, "Info_Mod_Lehrling_Hi_C_15_07"); //How about an expense allowance?
	AI_Output(self, hero, "Info_Mod_Lehrling_Hi_C_24_08"); //I'm sure it would be worth a few bucks.

	Info_ClearChoices	(Info_Mod_Lehrling_Hi);

	Info_AddChoice	(Info_Mod_Lehrling_Hi, "Sorry, not interested.", Info_Mod_Lehrling_Hi_D);
	Info_AddChoice	(Info_Mod_Lehrling_Hi, "I'll take a look around.", Info_Mod_Lehrling_Hi_E);
};

FUNC VOID Info_Mod_Lehrling_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Lehrling_Hi_E_15_00"); //I'll take a look around.

	Info_ClearChoices	(Info_Mod_Lehrling_Hi);

	Log_CreateTopic	(TOPIC_MOD_KHORATA_DOKUMENTE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_DOKUMENTE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_DOKUMENTE, "The apprentice of the craftsman in Khorata has lost some' important' pages at the farm of Erhard.");

	Mod_REL_Dokumente = 1;
};

INSTANCE Info_Mod_Lehrling_Dokumente (C_INFO)
{
	npc		= Mod_7509_OUT_Lehrling_REL;
	nr		= 1;
	condition	= Info_Mod_Lehrling_Dokumente_Condition;
	information	= Info_Mod_Lehrling_Dokumente_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here are your notes.";
};

FUNC INT Info_Mod_Lehrling_Dokumente_Condition()
{
	if (Mod_REL_Dokumente == 5)
	&& (Npc_HasItems(hero, ItWr_Lehrling01) == 1)
	&& (Npc_HasItems(hero, ItWr_Lehrling02) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lehrling_Dokumente_Info()
{
	AI_Output(hero, self, "Info_Mod_Lehrling_Dokumente_15_00"); //Here are your notes.

	Npc_RemoveInvItems	(hero, ItWr_Lehrling01, 1);
	Npc_RemoveInvItems	(hero, ItWr_Lehrling02, 1);

	B_ShowGivenThings	("Sheets given to the apprentice");

	AI_Output(self, hero, "Info_Mod_Lehrling_Dokumente_24_01"); //Thanks, dude! Here's ten coins.

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	AI_Output(hero, self, "Info_Mod_Lehrling_Dokumente_15_02"); //Little bit little... Mika asked for 200.
	AI_Output(self, hero, "Info_Mod_Lehrling_Dokumente_24_03"); //What?! I don't have that much!
	AI_Output(hero, self, "Info_Mod_Lehrling_Dokumente_15_04"); //Then think of something.
	AI_Output(self, hero, "Info_Mod_Lehrling_Dokumente_24_05"); //Man, I'm trying! All right, you get my gold chains, okay?

	B_GiveInvItems	(self, hero, ItMi_GoldNecklace, 2);

	AI_Output(hero, self, "Info_Mod_Lehrling_Dokumente_15_06"); //I don't care about him.

	B_LogEntry	(TOPIC_MOD_KHORATA_DOKUMENTE, "The apprentice has his possessions back.");
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_DOKUMENTE, LOG_SUCCESS);
	
	B_GivePlayerXP(150);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_27);
};

INSTANCE Info_Mod_Lehrling_Cutter (C_INFO)
{
	npc		= Mod_7509_OUT_Lehrling_REL;
	nr		= 1;
	condition	= Info_Mod_Lehrling_Cutter_Condition;
	information	= Info_Mod_Lehrling_Cutter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you give me the documents?";
};

FUNC INT Info_Mod_Lehrling_Cutter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lehrling_Dokumente))
	&& (Npc_KnowsInfo(hero, Info_Mod_Cutter_Anbau))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lehrling_Cutter_Info()
{
	AI_Output(hero, self, "Info_Mod_Lehrling_Cutter_15_00"); //Can you give me the documents?
	AI_Output(self, hero, "Info_Mod_Lehrling_Cutter_24_01"); //Huh? You just brought her back to me?
	AI_Output(hero, self, "Info_Mod_Lehrling_Cutter_15_02"); //I could use them myself now.
	AI_Output(self, hero, "Info_Mod_Lehrling_Cutter_24_03"); //You can have it for 50 bucks.

	Info_ClearChoices	(Info_Mod_Lehrling_Cutter);

	Info_AddChoice	(Info_Mod_Lehrling_Cutter, "It's not worth it to me.", Info_Mod_Lehrling_Cutter_C);
	if (Npc_HasItems(hero, ItMi_Gold) >= 50)
	{
		Info_AddChoice	(Info_Mod_Lehrling_Cutter, "All right, here's the gold.", Info_Mod_Lehrling_Cutter_B);
	};
	if (Mod_Verhandlungsgeschick > 0)
	{
		Info_AddChoice	(Info_Mod_Lehrling_Cutter, "I've already helped you so much...", Info_Mod_Lehrling_Cutter_A);
	};
};

FUNC VOID Info_Mod_Lehrling_Cutter_C()
{
	AI_Output(hero, self, "Info_Mod_Lehrling_Cutter_C_15_00"); //It's not worth it to me.

	Info_ClearChoices	(Info_Mod_Lehrling_Cutter);
};

FUNC VOID Info_Mod_Lehrling_Cutter_B()
{
	AI_Output(hero, self, "Info_Mod_Lehrling_Cutter_B_15_00"); //All right, here's the gold.

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Lehrling_Cutter_B_24_01"); //Great, thanks, man!

	CreateInvItems	(hero, ItWr_Lehrling01, 1);
	CreateInvItems	(hero, ItWr_Lehrling02, 1);

	B_ShowGivenThings	("Getting the apprentice's sheets");

	Info_ClearChoices	(Info_Mod_Lehrling_Cutter);
};

FUNC VOID Info_Mod_Lehrling_Cutter_A()
{
	AI_Output(hero, self, "Info_Mod_Lehrling_Cutter_A_15_00"); //I've helped you so much already....

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Lehrling_Cutter_A_24_01"); //That's kind of true. All right, take it.

		CreateInvItems	(hero, ItWr_Lehrling01, 1);
		CreateInvItems	(hero, ItWr_Lehrling02, 1);

		B_ShowGivenThings	("Getting the apprentice's sheets");
	
		B_GivePlayerXP	(10);

		B_RaiseHandelsgeschick (2);

		Info_ClearChoices	(Info_Mod_Lehrling_Cutter);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Lehrling_Cutter_A_24_02"); //Yo, dude, but... No, I don't give them away cheaper.

		Info_ClearChoices	(Info_Mod_Lehrling_Cutter);

		Info_AddChoice	(Info_Mod_Lehrling_Cutter, "It's not worth it to me.", Info_Mod_Lehrling_Cutter_C);

		if (Npc_HasItems(hero, ItMi_Gold) >= 50)
		{
			Info_AddChoice	(Info_Mod_Lehrling_Cutter, "All right, here's the gold.", Info_Mod_Lehrling_Cutter_B);
		};
	};
};

INSTANCE Info_Mod_Lehrling_Freudenspender (C_INFO)
{
	npc		= Mod_7509_OUT_Lehrling_REL;
	nr		= 1;
	condition	= Info_Mod_Lehrling_Freudenspender_Condition;
	information	= Info_Mod_Lehrling_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Do you think you can tolerate giver of joy?";
};                       

FUNC INT Info_Mod_Lehrling_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Lehrling_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Lehrling_Freudenspender_15_00"); //Do you think you can tolerate giver of joy?
	AI_Output(self, hero, "Info_Mod_Lehrling_Freudenspender_24_01"); //What a question! You got something?
	AI_Output(hero, self, "Info_Mod_Lehrling_Freudenspender_15_02"); //Sure thing.
	AI_Output(self, hero, "Info_Mod_Lehrling_Freudenspender_24_03"); //I'm in your debt.

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	Mod_Freudenspender	+= 1;
};

INSTANCE Info_Mod_Lehrling_Pickpocket (C_INFO)
{
	npc		= Mod_7509_OUT_Lehrling_REL;
	nr		= 1;
	condition	= Info_Mod_Lehrling_Pickpocket_Condition;
	information	= Info_Mod_Lehrling_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Lehrling_Pickpocket_Condition()
{
	C_Beklauen	(51, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_Lehrling_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Lehrling_Pickpocket);

	Info_AddChoice	(Info_Mod_Lehrling_Pickpocket, DIALOG_BACK, Info_Mod_Lehrling_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Lehrling_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Lehrling_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Lehrling_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Lehrling_Pickpocket);
};

FUNC VOID Info_Mod_Lehrling_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Lehrling_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Lehrling_Pickpocket);

		Info_AddChoice	(Info_Mod_Lehrling_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Lehrling_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Lehrling_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Lehrling_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Lehrling_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Lehrling_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Lehrling_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Lehrling_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Lehrling_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Lehrling_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Lehrling_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Lehrling_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Lehrling_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Lehrling_EXIT (C_INFO)
{
	npc		= Mod_7509_OUT_Lehrling_REL;
	nr		= 1;
	condition	= Info_Mod_Lehrling_EXIT_Condition;
	information	= Info_Mod_Lehrling_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lehrling_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lehrling_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
