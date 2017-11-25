INSTANCE Info_Mod_Margarethe_Hi (C_INFO)
{
	npc		= Mod_7365_OUT_Margarethe_REL;
	nr		= 1;
	condition	= Info_Mod_Margarethe_Hi_Condition;
	information	= Info_Mod_Margarethe_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "You don't look happy.";
};

FUNC INT Info_Mod_Margarethe_Hi_Condition()
{
	if (Kapitel >= 2) {
		return 1;
	};
};

FUNC VOID Info_Mod_Margarethe_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Margarethe_Hi_15_00"); //You don't look happy.
	AI_Output(self, hero, "Info_Mod_Margarethe_Hi_17_01"); //They've taken her away! Locked up! Chained! (sobbing)
	AI_Output(hero, self, "Info_Mod_Margarethe_Hi_15_02"); //Take it easy now.
	AI_Output(self, hero, "Info_Mod_Margarethe_Hi_17_03"); //(breathes deeply) Anna.... she's my sister.... There was a lot of rumor that she was a witch... Beliar's dedication.
	AI_Output(self, hero, "Info_Mod_Margarethe_Hi_17_04"); //It always hits the herbalists! Someone must have denounced her...
	AI_Output(self, hero, "Info_Mod_Margarethe_Hi_17_05"); //I was just with her when they came. (sobbing)

	Info_ClearChoices	(Info_Mod_Margarethe_Hi);

	Info_AddChoice	(Info_Mod_Margarethe_Hi, "Do you know who denounced Anna?", Info_Mod_Margarethe_Hi_B);
	Info_AddChoice	(Info_Mod_Margarethe_Hi, "Who came?", Info_Mod_Margarethe_Hi_A);
};

FUNC VOID Info_Mod_Margarethe_Hi_C()
{
	Info_ClearChoices	(Info_Mod_Margarethe_Hi);

	Info_AddChoice	(Info_Mod_Margarethe_Hi, "Anna will not have been taken away without reason.", Info_Mod_Margarethe_Hi_E);
	Info_AddChoice	(Info_Mod_Margarethe_Hi, "What can we do?", Info_Mod_Margarethe_Hi_D);
};

FUNC VOID Info_Mod_Margarethe_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Margarethe_Hi_E_15_00"); //Anna will not have been taken away without reason. I will be careful not to go against the law.
	AI_Output(self, hero, "Info_Mod_Margarethe_Hi_E_17_01"); //You're as stupid as the others! Get away from me!
	
	Info_ClearChoices	(Info_Mod_Margarethe_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Margarethe_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Margarethe_Hi_D_15_00"); //What can we do?
	AI_Output(self, hero, "Info_Mod_Margarethe_Hi_D_17_01"); //Tell Ulrich about it. He's Anna and my brother... he lives a few blocks away.
	AI_Output(self, hero, "Info_Mod_Margarethe_Hi_D_17_02"); //I, I don't know what else to do.... She's probably being tortured now, Anna, we have to do something about it!
	AI_Output(hero, self, "Info_Mod_Margarethe_Hi_D_15_03"); //We'll be all right.
	
	Log_CreateTopic	(TOPIC_MOD_KHORATA_HEXENWAHN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_HEXENWAHN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_HEXENWAHN, "Maria's sister Anna has been called a witch by the inhabitants of Khorata and has been confiscated for this reason. Mary asked me to tell her brother Ulrich, who lives near Anna, about it and to find a way to help Anna.");

	Info_ClearChoices	(Info_Mod_Margarethe_Hi);

	Mod_AnnaQuest = 3;
};

FUNC VOID Info_Mod_Margarethe_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Margarethe_Hi_B_15_00"); //Do you know who denounced Anna?
	AI_Output(self, hero, "Info_Mod_Margarethe_Hi_B_17_01"); //No, I don't know. (bitter) It would be unbelievable for almost every simple-minded man here to believe the fairy tales of witches.

	Mod_AnnaQuest += 1;
	
	if (Mod_AnnaQuest == 1)
	{
		Info_ClearChoices	(Info_Mod_Margarethe_Hi);

		Info_AddChoice	(Info_Mod_Margarethe_Hi, "Who came?", Info_Mod_Margarethe_Hi_A);
	}
	else
	{
		Info_Mod_Margarethe_Hi_C();
	};
};

FUNC VOID Info_Mod_Margarethe_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Margarethe_Hi_A_15_00"); //Who came?
	AI_Output(self, hero, "Info_Mod_Margarethe_Hi_A_17_01"); //The sons of bitches! and then she was taken to prison. I was trying to help....

	Mod_AnnaQuest += 1;
	
	if (Mod_AnnaQuest == 1)
	{
		Info_ClearChoices	(Info_Mod_Margarethe_Hi);

		Info_AddChoice	(Info_Mod_Margarethe_Hi, "Do you know who denounced Anna?", Info_Mod_Margarethe_Hi_B);
	}
	else
	{
		Info_Mod_Margarethe_Hi_C();
	};
};

INSTANCE Info_Mod_Margarethe_AnnaBefreit (C_INFO)
{
	npc		= Mod_7365_OUT_Margarethe_REL;
	nr		= 1;
	condition	= Info_Mod_Margarethe_AnnaBefreit_Condition;
	information	= Info_Mod_Margarethe_AnnaBefreit_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Margarethe_AnnaBefreit_Condition()
{
	if (Mod_AnnaQuest == 9)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Margarethe_AnnaBefreit_Info()
{
	AI_Output(self, hero, "Info_Mod_Margarethe_AnnaBefreit_17_00"); //The rumor is spreading all over town! Did you really kill them all?
	AI_Output(hero, self, "Info_Mod_Margarethe_AnnaBefreit_15_01"); //Yeah.
	AI_Output(self, hero, "Info_Mod_Margarethe_AnnaBefreit_17_02"); //Oh Adanos, we still have terrible things to do!
};

INSTANCE Info_Mod_Margarethe_UlrichKO (C_INFO)
{
	npc		= Mod_7365_OUT_Margarethe_REL;
	nr		= 1;
	condition	= Info_Mod_Margarethe_UlrichKO_Condition;
	information	= Info_Mod_Margarethe_UlrichKO_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Margarethe_UlrichKO_Condition()
{
	if (Mod_AnnaQuest == 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Margarethe_UlrichKO_Info()
{
	AI_Output(self, hero, "Info_Mod_Margarethe_UlrichKO_17_00"); //The rumor is spreading all over town! Ulrich really wanted to kill them all?
	AI_Output(hero, self, "Info_Mod_Margarethe_UlrichKO_15_01"); //Yeah.
	AI_Output(self, hero, "Info_Mod_Margarethe_UlrichKO_17_02"); //I can't blame you for your decision, but I don't approve of it.
};

INSTANCE Info_Mod_Margarethe_Freudenspender (C_INFO)
{
	npc		= Mod_7365_OUT_Margarethe_REL;
	nr		= 1;
	condition	= Info_Mod_Margarethe_Freudenspender_Condition;
	information	= Info_Mod_Margarethe_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Would you like to buy me some delights?";
};                       

FUNC INT Info_Mod_Margarethe_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Margarethe_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Margarethe_Freudenspender_15_00"); //Would you like to buy me some delights?
	AI_Output(self, hero, "Info_Mod_Margarethe_Freudenspender_17_01"); //My advice is destroy it. It doesn't do any good.
};

INSTANCE Info_Mod_Margarethe_Pickpocket (C_INFO)
{
	npc		= Mod_7365_OUT_Margarethe_REL;
	nr		= 1;
	condition	= Info_Mod_Margarethe_Pickpocket_Condition;
	information	= Info_Mod_Margarethe_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90_Female;
};

FUNC INT Info_Mod_Margarethe_Pickpocket_Condition()
{
	C_Beklauen	(65, ItMi_Gold, 25);
};

FUNC VOID Info_Mod_Margarethe_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Margarethe_Pickpocket);

	Info_AddChoice	(Info_Mod_Margarethe_Pickpocket, DIALOG_BACK, Info_Mod_Margarethe_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Margarethe_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Margarethe_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Margarethe_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Margarethe_Pickpocket);
};

FUNC VOID Info_Mod_Margarethe_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Margarethe_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Margarethe_Pickpocket);

		Info_AddChoice	(Info_Mod_Margarethe_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Margarethe_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Margarethe_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Margarethe_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Margarethe_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Margarethe_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Margarethe_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Margarethe_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Margarethe_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Margarethe_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Margarethe_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Margarethe_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Margarethe_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Margarethe_EXIT (C_INFO)
{
	npc		= Mod_7365_OUT_Margarethe_REL;
	nr		= 1;
	condition	= Info_Mod_Margarethe_EXIT_Condition;
	information	= Info_Mod_Margarethe_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Margarethe_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Margarethe_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
