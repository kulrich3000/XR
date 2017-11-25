INSTANCE Info_Mod_Vincent_Hi (C_INFO)
{
	npc		= Mod_7379_OUT_Vincent_REL;
	nr		= 1;
	condition	= Info_Mod_Vincent_Hi_Condition;
	information	= Info_Mod_Vincent_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Vincent_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Vincent_Hi_Info()
{
	B_Say	(hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Vincent_Hi_36_01"); //Hey, I'm Vincent, a professional hunter.

	if (Mod_Schwierigkeit != 4)
	{
		AI_Output(self, hero, "Info_Mod_Vincent_Hi_36_02"); //If you want, you can learn from me to be more skillful.

		Log_CreateTopic	(TOPIC_MOD_LEHRER_RELENDEL, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_RELENDEL, "Hunter Vincent Vincent can help me handle the bow.");
	};
};

INSTANCE Info_Mod_Vincent_Landvermessung (C_INFO)
{
	npc		= Mod_7379_OUT_Vincent_REL;
	nr		= 1;
	condition	= Info_Mod_Vincent_Landvermessung_Condition;
	information	= Info_Mod_Vincent_Landvermessung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Anselm sent me.";
};

FUNC INT Info_Mod_Vincent_Landvermessung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vincent_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Anselm_Landvermessung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vincent_Landvermessung_Info()
{
	AI_Output(hero, self, "Info_Mod_Vincent_Landvermessung_15_00"); //Anselm sent me. He wants me to find out what area of Khorata's environs is.
	AI_Output(self, hero, "Info_Mod_Vincent_Landvermessung_36_01"); //(quietly) Hihihihihihihihihi....
	AI_Output(hero, self, "Info_Mod_Vincent_Landvermessung_15_02"); //What is it?
	AI_Output(self, hero, "Info_Mod_Vincent_Landvermessung_36_03"); //Hahahahahaha....
	AI_Output(hero, self, "Info_Mod_Vincent_Landvermessung_15_04"); //WAS IST???
	AI_Output(self, hero, "Info_Mod_Vincent_Landvermessung_36_05"); //Nothing, no, nothing at all... hohohoho.... You can't.... hehe... tell him Khorata's perimeter has an area of five square miles. (pause, then he starts snorting)
	AI_Output(hero, self, "Info_Mod_Vincent_Landvermessung_15_06"); //All right, then.

	B_LogEntry	(TOPIC_MOD_KHORATA_LANDVERMESSUNG, "Five square miles. How funny.");
};

INSTANCE Info_Mod_Vincent_Schweine (C_INFO)
{
	npc		= Mod_7379_OUT_Vincent_REL;
	nr		= 1;
	condition	= Info_Mod_Vincent_Schweine_Condition;
	information	= Info_Mod_Vincent_Schweine_Info;
	permanent	= 0;
	important	= 0;
	description	= "I hear you're not working right any more.";
};

FUNC INT Info_Mod_Vincent_Schweine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Henrik_Hi))
	&& (Mod_Henrik_Schweine == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vincent_Schweine_Info()
{
	AI_Output(hero, self, "Info_Mod_Vincent_Schweine_15_00"); //I hear you're not working right any more.
	AI_Output(self, hero, "Info_Mod_Vincent_Schweine_36_01"); //Maybe. Never mind! Hihihihi.
	AI_Output(hero, self, "Info_Mod_Vincent_Schweine_15_02"); //Somebody has to do your job.
	AI_Output(self, hero, "Info_Mod_Vincent_Schweine_36_03"); //Yes, really? I've got a great idea. You'll take over!
	AI_Output(self, hero, "Info_Mod_Vincent_Schweine_36_04"); //Here!

	B_GiveInvItems	(self, hero, ItRw_Bow_L_03, 1);

	AI_Output(self, hero, "Info_Mod_Vincent_Schweine_36_05"); //And here!

	B_GiveInvItems	(self, hero, ItRw_Arrow, 30);

	AI_Output(self, hero, "Info_Mod_Vincent_Schweine_36_06"); //And don't argue with me! Get away from me! (giggles)
};

INSTANCE Info_Mod_Vincent_Freudenspender (C_INFO)
{
	npc		= Mod_7379_OUT_Vincent_REL;
	nr		= 1;
	condition	= Info_Mod_Vincent_Freudenspender_Condition;
	information	= Info_Mod_Vincent_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "I'm sure you'll need some more delights.";
};                       

FUNC INT Info_Mod_Vincent_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Vincent_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Vincent_Freudenspender_15_00"); //I'm sure you'll need some more delights.
	AI_Output(self, hero, "Info_Mod_Vincent_Freudenspender_36_01"); //Right - haha! Then I don't have to go into town today.

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	Mod_Freudenspender	+= 1;
};

INSTANCE Info_Mod_Vincent_Lernen_Bogen (C_INFO)
{
	npc		= Mod_7379_OUT_Vincent_REL;
	nr		= 1;
	condition	= Info_Mod_Vincent_Lernen_Bogen_Condition;
	information	= Info_Mod_Vincent_Lernen_Bogen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me to be more skilled at handling the bow.";
};

FUNC INT Info_Mod_Vincent_Lernen_Bogen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vincent_Hi))
	&& (hero.hitchance[NPC_TALENT_BOW] < 100)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Vincent_Lernen_Bogen_Info()
{
	AI_Output(hero, self, "Info_Mod_Vincent_Lernen_Bogen_15_00"); //Teach me to be more skilled at handling the bow.

	Info_ClearChoices	(Info_Mod_Vincent_Lernen_Bogen);
	
	Info_AddChoice	(Info_Mod_Vincent_Lernen_Bogen, "Back off.", Info_Mod_Vincent_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Vincent_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Vincent_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Vincent_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Vincent_Lernen_Bogen_1);
};

FUNC VOID Info_Mod_Vincent_Lernen_Bogen_BACK()
{
	Info_ClearChoices	(Info_Mod_Vincent_Lernen_Bogen);
};

FUNC VOID Info_Mod_Vincent_Lernen_Bogen_5()
{
	B_TeachFightTalentPercent_New (self, hero, NPC_TALENT_BOW, 5, 100);

	Info_ClearChoices	(Info_Mod_Vincent_Lernen_Bogen);

	Info_AddChoice	(Info_Mod_Vincent_Lernen_Bogen, "Back off.", Info_Mod_Vincent_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Vincent_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Vincent_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Vincent_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Vincent_Lernen_Bogen_1);
};

FUNC VOID Info_Mod_Vincent_Lernen_Bogen_1()
{
	B_TeachFightTalentPercent (self, hero, NPC_TALENT_BOW, 1, 100);

	Info_ClearChoices	(Info_Mod_Vincent_Lernen_Bogen);

	Info_AddChoice	(Info_Mod_Vincent_Lernen_Bogen, "Back off.", Info_Mod_Vincent_Lernen_Bogen_BACK);
	Info_AddChoice	(Info_Mod_Vincent_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_BOW)), Info_Mod_Vincent_Lernen_Bogen_5);
	Info_AddChoice	(Info_Mod_Vincent_Lernen_Bogen, B_BuildLearnString(PRINT_LearnBow1, B_GetLearnCostTalent(hero, NPC_TALENT_BOW, 1)), Info_Mod_Vincent_Lernen_Bogen_1);
};

INSTANCE Info_Mod_Vincent_Pickpocket (C_INFO)
{
	npc		= Mod_7379_OUT_Vincent_REL;
	nr		= 1;
	condition	= Info_Mod_Vincent_Pickpocket_Condition;
	information	= Info_Mod_Vincent_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Vincent_Pickpocket_Condition()
{
	C_Beklauen	(58, ItRw_Arrow, 35);
};

FUNC VOID Info_Mod_Vincent_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Vincent_Pickpocket);

	Info_AddChoice	(Info_Mod_Vincent_Pickpocket, DIALOG_BACK, Info_Mod_Vincent_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Vincent_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Vincent_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Vincent_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Vincent_Pickpocket);
};

FUNC VOID Info_Mod_Vincent_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Vincent_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Vincent_Pickpocket);

		Info_AddChoice	(Info_Mod_Vincent_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Vincent_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Vincent_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Vincent_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Vincent_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Vincent_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Vincent_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Vincent_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Vincent_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Vincent_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Vincent_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Vincent_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Vincent_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Vincent_EXIT (C_INFO)
{
	npc		= Mod_7379_OUT_Vincent_REL;
	nr		= 1;
	condition	= Info_Mod_Vincent_EXIT_Condition;
	information	= Info_Mod_Vincent_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Vincent_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Vincent_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
