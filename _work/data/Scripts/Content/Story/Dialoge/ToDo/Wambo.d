INSTANCE Info_Mod_Wambo_Hi (C_INFO)
{
	npc		= Mod_755_MIL_Wambo_NW;
	nr		= 1;
	condition	= Info_Mod_Wambo_Hi_Condition;
	information	= Info_Mod_Wambo_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "You're the instructor here, right?";
};

FUNC INT Info_Mod_Wambo_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wambo_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Wambo_Hi_15_00"); //You're the instructor here, right?
	AI_Output(self, hero, "Info_Mod_Wambo_Hi_03_01"); //Right. The recruits learn the basics of one- and two-handedness with me.

	if (Mod_Schwierigkeit != 4)
	{
		Log_CreateTopic	(TOPIC_MOD_LEHRER_STADT, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_STADT, "Wambo can teach me how to handle one-handed and two-handed people.");
	};
};

INSTANCE Info_Mod_Wambo_AndreVermaechtnis (C_INFO)
{
	npc		= Mod_755_MIL_Wambo_NW;
	nr		= 1;
	condition	= Info_Mod_Wambo_AndreVermaechtnis_Condition;
	information	= Info_Mod_Wambo_AndreVermaechtnis_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wambo_AndreVermaechtnis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cassia_AndreVermaechtnis))
	&& (Mod_PAL_Diebesgilde == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wambo_AndreVermaechtnis_Info()
{
	AI_Output(self, hero, "Info_Mod_Wambo_AndreVermaechtnis_03_00"); //Huh, that's how the criminal pack still gets its fair verdict.
	AI_Output(self, hero, "Info_Mod_Wambo_AndreVermaechtnis_03_01"); //And the boys could finally see what the steel is for.

	B_LogEntry	(TOPIC_MOD_MILIZ_DIEBESGILDE, "I can tell Hagen that the thieves are finished.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_583_NONE_Hanna_NW, "KNAST");

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_744_MIL_Pablo_NW, "START");
	B_StartOtherRoutine	(Mod_564_MIL_Boltan_NW, "START");
	B_StartOtherRoutine	(Mod_596_MIL_Martin_NW, "START");
};

INSTANCE Info_Mod_Wambo_Asylanten (C_INFO)
{
	npc		= Mod_755_MIL_Wambo_NW;
	nr		= 1;
	condition	= Info_Mod_Wambo_Asylanten_Condition;
	information	= Info_Mod_Wambo_Asylanten_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have to get back to the Minental.";
};

FUNC INT Info_Mod_Wambo_Asylanten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wambo_Lehrer))
	&& (Mod_Wambo_Freund == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Hagen_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wambo_Asylanten_Info()
{
	AI_Output(hero, self, "Info_Mod_Wambo_Asylanten_15_00"); //I have to get back to the Minental.
	AI_Output(self, hero, "Info_Mod_Wambo_Asylanten_03_01"); //If you see Angar, give him this. That's all I could find of his wife.

	B_GiveInvItems	(self, hero, ItMi_AngarHalskette, 1);

	AI_Output(hero, self, "Info_Mod_Wambo_Asylanten_15_02"); //All right, I will.
	AI_Output(self, hero, "Info_Mod_Wambo_Asylanten_03_03"); //See you around.

	Log_CreateTopic	(TOPIC_MOD_WAMBO_ANGAR, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_WAMBO_ANGAR, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_WAMBO_ANGAR, "Wambo gave me a necklace for Angar to remind him of his wife.");
};

INSTANCE Info_Mod_Wambo_Angar (C_INFO)
{
	npc		= Mod_755_MIL_Wambo_NW;
	nr		= 1;
	condition	= Info_Mod_Wambo_Angar_Condition;
	information	= Info_Mod_Wambo_Angar_Info;
	permanent	= 0;
	important	= 0;
	description	= "Angar got the necklace.";
};

FUNC INT Info_Mod_Wambo_Angar_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Angar_Wambo))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wambo_Angar_Info()
{
	AI_Output(hero, self, "Info_Mod_Wambo_Angar_15_00"); //Angar got the necklace.
	AI_Output(self, hero, "Info_Mod_Wambo_Angar_03_01"); //And? What did he say?
	AI_Output(hero, self, "Info_Mod_Wambo_Angar_15_02"); //He was depressed, as expected. But he doesn't seem to hold you responsible.
	AI_Output(self, hero, "Info_Mod_Wambo_Angar_03_03"); //I have to see him sometime.
	AI_Output(self, hero, "Info_Mod_Wambo_Angar_03_04"); //I hope he makes it back here someday.
};

INSTANCE Info_Mod_Wambo_TurnierSieg (C_INFO)
{
	npc		= Mod_755_MIL_Wambo_NW;
	nr		= 1;
	condition	= Info_Mod_Wambo_TurnierSieg_Condition;
	information	= Info_Mod_Wambo_TurnierSieg_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wambo_TurnierSieg_Condition()
{
	if (Mod_MilizTurnier == 13)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wambo_TurnierSieg_Info()
{
	AI_Output(self, hero, "Info_Mod_Wambo_TurnierSieg_03_00"); //You're a tough dog if you stand up to Gidan yourself.
	AI_Output(self, hero, "Info_Mod_Wambo_TurnierSieg_03_01"); //We need someone like you here.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Wambo_TurnierNiederlage (C_INFO)
{
	npc		= Mod_755_MIL_Wambo_NW;
	nr		= 1;
	condition	= Info_Mod_Wambo_TurnierNiederlage_Condition;
	information	= Info_Mod_Wambo_TurnierNiederlage_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wambo_TurnierNiederlage_Condition()
{
	if (Mod_MilizTurnier == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wambo_TurnierNiederlage_Info()
{
	AI_Output(self, hero, "Info_Mod_Wambo_TurnierNiederlage_03_00"); //Your fighting technique could use a little fine-tuning.
	AI_Output(self, hero, "Info_Mod_Wambo_TurnierNiederlage_03_01"); //I can certainly show you something else.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Wambo_Paladin (C_INFO)
{
	npc		= Mod_755_MIL_Wambo_NW;
	nr		= 1;
	condition	= Info_Mod_Wambo_Paladin_Condition;
	information	= Info_Mod_Wambo_Paladin_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wambo_Paladin_Condition()
{
	if (Mod_Gilde == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wambo_Paladin_Info()
{
	AI_Output(self, hero, "Info_Mod_Wambo_Paladin_03_00"); //Well, you're a paladin now.
	AI_Output(self, hero, "Info_Mod_Wambo_Paladin_03_01"); //I don't remember anyone rising faster than you.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Wambo_Hauptmann (C_INFO)
{
	npc		= Mod_755_MIL_Wambo_NW;
	nr		= 1;
	condition	= Info_Mod_Wambo_Hauptmann_Condition;
	information	= Info_Mod_Wambo_Hauptmann_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wambo_Hauptmann_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_AndreVermaechtnis8))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wambo_Hauptmann_Info()
{
	AI_Output(self, hero, "Info_Mod_Wambo_Hauptmann_03_00"); //I have to get used to hearing you now.
	AI_Output(hero, self, "Info_Mod_Wambo_Hauptmann_15_01"); //60 push-ups for that stupid pickup line!
	AI_Output(self, hero, "Info_Mod_Wambo_Hauptmann_03_02"); //Yes, sir!
	AI_Output(hero, self, "Info_Mod_Wambo_Hauptmann_15_03"); //It's working already.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Wambo_Lehrer (C_INFO)
{
	npc		= Mod_755_MIL_Wambo_NW;
	nr		= 1;
	condition	= Info_Mod_Wambo_Lehrer_Condition;
	information	= Info_Mod_Wambo_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me something?";
};

FUNC INT Info_Mod_Wambo_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wambo_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wambo_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_03_01"); //You're from the Minental, aren't you?

	Info_ClearChoices	(Info_Mod_Wambo_Lehrer);

	Info_AddChoice	(Info_Mod_Wambo_Lehrer, "No. I'm just new here.", Info_Mod_Wambo_Lehrer_B);
	Info_AddChoice	(Info_Mod_Wambo_Lehrer, "Yeah.", Info_Mod_Wambo_Lehrer_A);
};

FUNC VOID Info_Mod_Wambo_Lehrer_B()
{
	AI_Output(hero, self, "Info_Mod_Wambo_Lehrer_B_15_00"); //No. I'm just new here.
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_B_03_01"); //I see. If you're not with the militia and I'm supposed to teach you, it'll cost you 50 pieces of gold.

	Info_ClearChoices	(Info_Mod_Wambo_Lehrer);
};

FUNC VOID Info_Mod_Wambo_Lehrer_A()
{
	AI_Output(hero, self, "Info_Mod_Wambo_Lehrer_A_15_00"); //Yeah.
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_A_03_01"); //Then I will teach you if you wish.
	AI_Output(hero, self, "Info_Mod_Wambo_Lehrer_A_15_02"); //How do I get the honour?
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_A_03_03"); //It's a long story.
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_A_03_04"); //I feel obliged to help the detainees as best I can.

	Mod_Wambo_Freund = 1;

	Info_ClearChoices	(Info_Mod_Wambo_Lehrer);

	Info_AddChoice	(Info_Mod_Wambo_Lehrer, "All right, all right. But you better show me how to fight.", Info_Mod_Wambo_Lehrer_D);
	Info_AddChoice	(Info_Mod_Wambo_Lehrer, "What is this story?", Info_Mod_Wambo_Lehrer_C);
};

FUNC VOID Info_Mod_Wambo_Lehrer_D()
{
	AI_Output(hero, self, "Info_Mod_Wambo_Lehrer_D_15_00"); //All right, all right. But you better show me how to fight.

	Info_ClearChoices	(Info_Mod_Wambo_Lehrer);
};

FUNC VOID Info_Mod_Wambo_Lehrer_C()
{
	AI_Output(hero, self, "Info_Mod_Wambo_Lehrer_C_15_00"); //What is this story?
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_C_03_01"); //I had a good friend once.
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_C_03_02"); //He was a fighter, not only at the practice area, but in his heart.
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_C_03_03"); //However, he had long been in contact with a misbelieving sect whose content of faith had something to do with pirates.
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_C_03_04"); //After the barrier had been created, it was suddenly considered a crime, and so he was condemned to slave away there.
	AI_Output(hero, self, "Info_Mod_Wambo_Lehrer_C_15_05"); //Did your friend have a name?
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_C_03_06"); //Angar was his name.
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_C_03_07"); //I promised him I'd look after his wife for the time he was imprisoned.
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_C_03_08"); //If I kept my promise, she might still be alive.
	AI_Output(hero, self, "Info_Mod_Wambo_Lehrer_C_15_09"); //Oh.
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_C_03_10"); //I know the circumstances under which some of the detainees were turned into criminals.
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_C_03_11"); //While I have not actively done anything about it, I want to do my part in helping to bring it back into our community.
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_C_03_12"); //If you should ever return to the Minental, I would be grateful if you would let me know in advance.
	AI_Output(hero, self, "Info_Mod_Wambo_Lehrer_C_15_13"); //No problem.
	AI_Output(self, hero, "Info_Mod_Wambo_Lehrer_C_03_14"); //Then let us now return to your original will.

	Info_ClearChoices	(Info_Mod_Wambo_Lehrer);
};

INSTANCE Info_Mod_Wambo_Lernen (C_INFO)
{
	npc		= Mod_755_MIL_Wambo_NW;
	nr		= 1;
	condition	= Info_Mod_Wambo_Lernen_Condition;
	information	= Info_Mod_Wambo_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me how to handle one- and two-handed people.";
};

FUNC INT Info_Mod_Wambo_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wambo_Lehrer))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wambo_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Wambo_Lernen_15_00"); //Teach me how to handle one- and two-handed people.

	if (Mod_Wambo_Freund == 0)
	{
		if (Npc_HasItems(hero, ItMi_Gold) >= 50)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 50);

			Mod_Wambo_Freund = 2;

			Info_ClearChoices	(Info_Mod_Wambo_Lernen);

			Info_AddChoice	(Info_Mod_Wambo_Lernen, DIALOG_BACK, Info_Mod_Wambo_Lernen_BACK);
			Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Wambo_Lernen_2H_5);
			Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Wambo_Lernen_2H_1);
			Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Wambo_Lernen_1H_5);
			Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Wambo_Lernen_1H_1);
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Wambo_Lernen_03_00"); //Without the gold, I won't train you.
		};
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Wambo_Lernen);

		Info_AddChoice	(Info_Mod_Wambo_Lernen, DIALOG_BACK, Info_Mod_Wambo_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Wambo_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Wambo_Lernen_2H_1);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Wambo_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Wambo_Lernen_1H_1);
	};
};

FUNC VOID Info_Mod_Wambo_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Wambo_Lernen);
};

FUNC VOID Info_Mod_Wambo_Lernen_2H_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_2H, 5, 60)
	{
		Info_ClearChoices	(Info_Mod_Wambo_Lernen);

		Info_AddChoice	(Info_Mod_Wambo_Lernen, DIALOG_BACK, Info_Mod_Wambo_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Wambo_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Wambo_Lernen_2H_1);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Wambo_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Wambo_Lernen_1H_1);
	};
};

FUNC VOID Info_Mod_Wambo_Lernen_2H_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_2H, 1, 60)
	{
		Info_ClearChoices	(Info_Mod_Wambo_Lernen);

		Info_AddChoice	(Info_Mod_Wambo_Lernen, DIALOG_BACK, Info_Mod_Wambo_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Wambo_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Wambo_Lernen_2H_1);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Wambo_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Wambo_Lernen_1H_1);
	};
};

FUNC VOID Info_Mod_Wambo_Lernen_1H_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_1H, 5, 60)
	{
		Info_ClearChoices	(Info_Mod_Wambo_Lernen);

		Info_AddChoice	(Info_Mod_Wambo_Lernen, DIALOG_BACK, Info_Mod_Wambo_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Wambo_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Wambo_Lernen_2H_1);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Wambo_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Wambo_Lernen_1H_1);
	};
};

FUNC VOID Info_Mod_Wambo_Lernen_1H_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_1H, 1, 60)
	{
		Info_ClearChoices	(Info_Mod_Wambo_Lernen);

		Info_AddChoice	(Info_Mod_Wambo_Lernen, DIALOG_BACK, Info_Mod_Wambo_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Wambo_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Wambo_Lernen_2H_1);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Wambo_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Wambo_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Wambo_Lernen_1H_1);
	};
};

INSTANCE Info_Mod_Wambo_Pickpocket (C_INFO)
{
	npc		= Mod_755_MIL_Wambo_NW;
	nr		= 1;
	condition	= Info_Mod_Wambo_Pickpocket_Condition;
	information	= Info_Mod_Wambo_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Wambo_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Wambo_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Wambo_Pickpocket);

	Info_AddChoice	(Info_Mod_Wambo_Pickpocket, DIALOG_BACK, Info_Mod_Wambo_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Wambo_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Wambo_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Wambo_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Wambo_Pickpocket);
};

FUNC VOID Info_Mod_Wambo_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Wambo_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Wambo_Pickpocket);

		Info_AddChoice	(Info_Mod_Wambo_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Wambo_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Wambo_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Wambo_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Wambo_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Wambo_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Wambo_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Wambo_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Wambo_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Wambo_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Wambo_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Wambo_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Wambo_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Wambo_EXIT (C_INFO)
{
	npc		= Mod_755_MIL_Wambo_NW;
	nr		= 1;
	condition	= Info_Mod_Wambo_EXIT_Condition;
	information	= Info_Mod_Wambo_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Wambo_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wambo_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
