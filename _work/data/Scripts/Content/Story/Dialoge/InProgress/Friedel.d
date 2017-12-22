INSTANCE Info_Mod_Friedel_Hi (C_INFO)
{
	npc		= Mod_7517_OUT_Friedel_REL;
	nr		= 1;
	condition	= Info_Mod_Friedel_Hi_Condition;
	information	= Info_Mod_Friedel_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Friedel_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Friedel_Hi_Info()
{
	B_Say	(hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Friedel_Hi_03_00"); //I'm Friedel, teaching the young men how to fight.

	if (Mod_Schwierigkeit != 4)
	{
		AI_Output(hero, self, "Info_Mod_Friedel_Hi_15_01"); //Can you teach me something?
		AI_Output(self, hero, "Info_Mod_Friedel_Hi_03_02"); //As long as you are inexperienced, I will be able to show you one or two tricks.

		Log_CreateTopic	(TOPIC_MOD_LEHRER_KHORATA, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_KHORATA, "Friedel can show me how to deal with one-handed people and help me become stronger.");
	};
};

INSTANCE Info_Mod_Friedel_Wettstreit (C_INFO)
{
	npc		= Mod_7517_OUT_Friedel_REL;
	nr		= 1;
	condition	= Info_Mod_Friedel_Wettstreit_Condition;
	information	= Info_Mod_Friedel_Wettstreit_Info;
	permanent	= 1;
	important	= 0;
	description	= "I'm here for the rat hunt.";
};

FUNC INT Info_Mod_Friedel_Wettstreit_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Friedel_Hi))
	&& (Mod_REL_Wettstreit == 1)
	&& (Mod_REL_Wettstreit_Tag < Wld_GetDay())
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Friedel_Wettstreit_Info()
{
	AI_Output(hero, self, "Info_Mod_Friedel_Wettstreit_15_00"); //I'm here for the rat hunt.
	AI_Output(self, hero, "Info_Mod_Friedel_Wettstreit_03_01"); //Nice! This would give us a third participant.
	AI_Output(self, hero, "Info_Mod_Friedel_Wettstreit_03_02"); //The other two will be my apprentice students taking their final exams in rat hunting.
	AI_Output(self, hero, "Info_Mod_Friedel_Wettstreit_03_03"); //Can we take off then?
	AI_Output(hero, self, "Info_Mod_Friedel_Wettstreit_15_04"); //I'd like to know the rules.
	AI_Output(self, hero, "Info_Mod_Friedel_Wettstreit_03_05"); //That can be arranged!
	AI_Output(self, hero, "Info_Mod_Friedel_Wettstreit_03_06"); //There's always rats all over the lake.
	AI_Output(self, hero, "Info_Mod_Friedel_Wettstreit_03_07"); //Participants start at the same time and must kill all the rats around the lake.
	AI_Output(self, hero, "Info_Mod_Friedel_Wettstreit_03_08"); //Whoever is most successful wins and receives a cash prize.
	AI_Output(self, hero, "Info_Mod_Friedel_Wettstreit_03_09"); //When you're ready, we can begin.

	Info_ClearChoices	(Info_Mod_Friedel_Wettstreit);

	Info_AddChoice	(Info_Mod_Friedel_Wettstreit, "I'll be right back.", Info_Mod_Friedel_Wettstreit_B);
	Info_AddChoice	(Info_Mod_Friedel_Wettstreit, "I'm ready.", Info_Mod_Friedel_Wettstreit_A);
};

FUNC VOID Info_Mod_Friedel_Wettstreit_B()
{
	AI_Output(hero, self, "Info_Mod_Friedel_Wettstreit_B_15_00"); //I'll be right back.

	Info_ClearChoices	(Info_Mod_Friedel_Wettstreit);
};

FUNC VOID Info_Mod_Friedel_Wettstreit_A()
{
	AI_Output(hero, self, "Info_Mod_Friedel_Wettstreit_A_15_00"); //I'm ready.
	AI_Output(self, hero, "Info_Mod_Friedel_Wettstreit_A_03_01"); //Then don't waste any time!

	Mod_REL_Wettstreit = 2;

	B_LogEntry	(TOPIC_MOD_KHORATA_WETTSTREIT, "I have to kill as many rats as possible on the lake shore.");

	Info_ClearChoices	(Info_Mod_Friedel_Wettstreit);

	AI_StopProcessInfos	(self);

	Mod_REL_Wettstreit_Tyrus = 0;
	Mod_REL_Wettstreit_Davon = 0;
	Mod_REL_Wettstreit_Hero = 0;

	B_StartOtherRoutine	(Mod_7519_OUT_Tyrus_REL, "RATTENJAGD");
	B_StartOtherRoutine	(Mod_7518_OUT_Davon_REL, "RATTENJAGD");

	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_381");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_381");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_381");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_381");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_381");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_381");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_381");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_381");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_381");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_381");

	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_380");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_380");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_380");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_380");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_380");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_380");

	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_378");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_378");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_378");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_378");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_378");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_378");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_378");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_378");

	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_376");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_376");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_376");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_376");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_376");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_376");
};

INSTANCE Info_Mod_Friedel_Wettstreit2 (C_INFO)
{
	npc		= Mod_7517_OUT_Friedel_REL;
	nr		= 1;
	condition	= Info_Mod_Friedel_Wettstreit2_Condition;
	information	= Info_Mod_Friedel_Wettstreit2_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Friedel_Wettstreit2_Condition()
{
	if (Mod_REL_Wettstreit == 2)
	&& ((Mod_REL_Wettstreit_Hero > 0)
	|| (Mod_REL_Wettstreit_Davon > 0)
	|| (Mod_REL_Wettstreit_Tyrus > 0))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Friedel_Wettstreit2_Info()
{
	if (Mod_REL_Wettstreit_Hero > Mod_REL_Wettstreit_Tyrus)
	&& (Mod_REL_Wettstreit_Hero > Mod_REL_Wettstreit_Davon)
	{
		AI_Output(self, hero, "Info_Mod_Friedel_Wettstreit2_03_00"); //All due respect, even I would have had a hard time with you.
		AI_Output(self, hero, "Info_Mod_Friedel_Wettstreit2_03_01"); //You shall be rewarded for this.

		B_GivePlayerXP	(50);

		B_GiveInvItems	(self, hero, ItMi_Gold, 100);

		Mod_REL_Wettstreit = 3;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Friedel_Wettstreit2_03_02"); //Today was not enough.

		if (Mod_REL_Wettstreit_Verloren == 0)
		{
			AI_Output(self, hero, "Info_Mod_Friedel_Wettstreit2_03_03"); //But since we have so many rats this year, we can still have a competition tomorrow. Maybe that will make you more successful.

			Mod_REL_Wettstreit_Tag = Wld_GetDay();

			Mod_REL_Wettstreit = 1;

			Mod_REL_Wettstreit_Verloren = 1;
		}
		else
		{
			B_SetTopicStatus	(TOPIC_MOD_KHORATA_WETTSTREIT, LOG_FAILED);

			Mod_REL_Wettstreit = 4;
		};
	};

	B_StartOtherRoutine	(Mod_7519_OUT_Tyrus_REL, "START");
	B_StartOtherRoutine	(Mod_7518_OUT_Davon_REL, "START");
};

INSTANCE Info_Mod_Friedel_Buerger (C_INFO)
{
	npc		= Mod_7517_OUT_Friedel_REL;
	nr		= 1;
	condition	= Info_Mod_Friedel_Buerger_Condition;
	information	= Info_Mod_Friedel_Buerger_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_Mod_Friedel_Buerger_Condition()
{
	if (Mod_REL_Buerger == 1)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Friedel_Buerger_Info()
{
	AI_Output(self, hero, "Info_Mod_Friedel_Buerger_03_00"); //A new one in our ranks. Here's your starting capital.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	if (Mod_Verhandlungsgeschick > 0)
	{
		AI_Output(hero, self, "Info_Mod_Friedel_Buerger_15_01"); //That's not much.

		if (self.aivar[AIV_Verhandlung] == TRUE)
		{
			AI_Output(self, hero, "Info_Mod_Friedel_Buerger_03_02"); //You got that right. But this has to do it!

			B_GiveInvItems	(self, hero, ItMi_Gold, 200);

			B_RaiseHandelsgeschick (3);
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Friedel_Buerger_03_03"); //I don't want that to be enough for the rest of your life! Go to work!
		};
	};
};

INSTANCE Info_Mod_Friedel_Unruhen (C_INFO)
{
	npc		= Mod_7517_OUT_Friedel_REL;
	nr		= 1;
	condition	= Info_Mod_Friedel_Unruhen_Condition;
	information	= Info_Mod_Friedel_Unruhen_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Let's beat up the miners. Come with me.";
};                       

FUNC INT Info_Mod_Friedel_Unruhen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lukas_Unruhen4))
	&& (Mod_REL_LukasS == 0)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Friedel_Unruhen_Info()
{
	AI_Output(hero, self, "Info_Mod_Friedel_Unruhen_15_00"); //Let's beat up the miners. Come with me.
	AI_Output(self, hero, "Info_Mod_Friedel_Unruhen_03_01"); //All right, even if it's not right.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWTOMINE");

	self.aivar[AIV_Partymember] = TRUE;
};

INSTANCE Info_Mod_Friedel_Freudenspender (C_INFO)
{
	npc		= Mod_7517_OUT_Friedel_REL;
	nr		= 1;
	condition	= Info_Mod_Friedel_Freudenspender_Condition;
	information	= Info_Mod_Friedel_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Do you want to give pleasure?";
};                       

FUNC INT Info_Mod_Friedel_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Friedel_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Friedel_Freudenspender_15_00"); //Do you want to give pleasure?
	AI_Output(self, hero, "Info_Mod_Friedel_Freudenspender_03_01"); //Are you kidding me? No, I don't want to!
};

INSTANCE Info_Mod_Friedel_Lernen (C_INFO)
{
	npc		= Mod_7517_OUT_Friedel_REL;
	nr		= 1;
	condition	= Info_Mod_Friedel_Lernen_Condition;
	information	= Info_Mod_Friedel_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to learn.";
};

FUNC INT Info_Mod_Friedel_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Friedel_Hi))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Friedel_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Friedel_Lernen_15_00"); //I want to learn.
	AI_Output(self, hero, "Info_Mod_Friedel_Lernen_03_01"); //What do you want to learn?

	Info_ClearChoices	(Info_Mod_Friedel_Lernen);

	Info_AddChoice	(Info_Mod_Friedel_Lernen, DIALOG_BACK, Info_Mod_Friedel_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Friedel_Lernen, "(single-handed combat)", Info_Mod_Friedel_Lernen_Einhand);
	Info_AddChoice	(Info_Mod_Friedel_Lernen, "(strength)", Info_Mod_Friedel_Lernen_Staerke);
};

FUNC VOID Info_Mod_Friedel_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Friedel_Lernen);
};

FUNC VOID Info_Mod_Friedel_Lernen_Einhand()
{
	Info_ClearChoices	(Info_Mod_Friedel_Lernen);

	Info_AddChoice		(Info_Mod_Friedel_Lernen, DIALOG_BACK, Info_Mod_Friedel_Lernen_Einhand_BACK);
	Info_AddChoice		(Info_Mod_Friedel_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H))		,Info_Mod_Friedel_Lernen_Einhand_5);
	Info_AddChoice		(Info_Mod_Friedel_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1))		,Info_Mod_Friedel_Lernen_Einhand_1);
};

FUNC VOID Info_Mod_Friedel_Lernen_Einhand_BACK()
{
	Info_ClearChoices	(Info_Mod_Friedel_Lernen);

	Info_AddChoice	(Info_Mod_Friedel_Lernen, DIALOG_BACK, Info_Mod_Friedel_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Friedel_Lernen, "(single-handed combat)", Info_Mod_Friedel_Lernen_Einhand);
	Info_AddChoice	(Info_Mod_Friedel_Lernen, "(strength)", Info_Mod_Friedel_Lernen_Staerke);
};

FUNC VOID Info_Mod_Friedel_Lernen_Einhand_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_1H, 5, 100)
	{
		Info_ClearChoices	(Info_Mod_Friedel_Lernen);

		Info_AddChoice		(Info_Mod_Friedel_Lernen, DIALOG_BACK, Info_Mod_Friedel_Lernen_Einhand_BACK);
		Info_AddChoice		(Info_Mod_Friedel_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H))		,Info_Mod_Friedel_Lernen_Einhand_5);
		Info_AddChoice		(Info_Mod_Friedel_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1))		,Info_Mod_Friedel_Lernen_Einhand_1);
	};
};

FUNC VOID Info_Mod_Friedel_Lernen_Einhand_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_1H, 1, 100)
	{
		Info_ClearChoices	(Info_Mod_Friedel_Lernen);

		Info_AddChoice		(Info_Mod_Friedel_Lernen, DIALOG_BACK, Info_Mod_Friedel_Lernen_Einhand_BACK);
		Info_AddChoice		(Info_Mod_Friedel_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H))		,Info_Mod_Friedel_Lernen_Einhand_5);
		Info_AddChoice		(Info_Mod_Friedel_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1))		,Info_Mod_Friedel_Lernen_Einhand_1);
	};
};	

FUNC VOID Info_Mod_Friedel_Lernen_Staerke()
{
	Info_ClearChoices	(Info_Mod_Friedel_Lernen);

	Info_AddChoice 		(Info_Mod_Friedel_Lernen, DIALOG_BACK, Info_Mod_Friedel_Lernen_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Friedel_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Friedel_Lernen_Staerke_5);
	Info_AddChoice		(Info_Mod_Friedel_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Friedel_Lernen_Staerke_1);
};

FUNC VOID Info_Mod_Friedel_Lernen_Staerke_BACK()
{
	Info_ClearChoices	(Info_Mod_Friedel_Lernen);

	Info_AddChoice	(Info_Mod_Friedel_Lernen, DIALOG_BACK, Info_Mod_Friedel_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Friedel_Lernen, "(single-handed combat)", Info_Mod_Friedel_Lernen_Einhand);
	Info_AddChoice	(Info_Mod_Friedel_Lernen, "(strength)", Info_Mod_Friedel_Lernen_Staerke);
};

FUNC VOID Info_Mod_Friedel_Lernen_Staerke_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_STRENGTH, 5, 200);
	
	Info_ClearChoices	(Info_Mod_Friedel_Lernen);

	Info_AddChoice 		(Info_Mod_Friedel_Lernen, DIALOG_BACK, Info_Mod_Friedel_Lernen_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Friedel_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Friedel_Lernen_Staerke_5);
	Info_AddChoice		(Info_Mod_Friedel_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Friedel_Lernen_Staerke_1);
};

FUNC VOID Info_Mod_Friedel_Lernen_Staerke_1()
{
	B_TeachAttributePoints	(self, hero, ATR_STRENGTH, 1, 200);

	Info_ClearChoices	(Info_Mod_Friedel_Lernen);

	Info_AddChoice 		(Info_Mod_Friedel_Lernen, DIALOG_BACK, Info_Mod_Friedel_Lernen_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Friedel_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Friedel_Lernen_Staerke_5);
	Info_AddChoice		(Info_Mod_Friedel_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Friedel_Lernen_Staerke_1);
};

INSTANCE Info_Mod_Friedel_Pickpocket (C_INFO)
{
	npc		= Mod_7517_OUT_Friedel_REL;
	nr		= 1;
	condition	= Info_Mod_Friedel_Pickpocket_Condition;
	information	= Info_Mod_Friedel_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Friedel_Pickpocket_Condition()
{
	C_Beklauen	(83, ItMi_Gold, 27);
};

FUNC VOID Info_Mod_Friedel_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Friedel_Pickpocket);

	Info_AddChoice	(Info_Mod_Friedel_Pickpocket, DIALOG_BACK, Info_Mod_Friedel_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Friedel_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Friedel_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Friedel_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Friedel_Pickpocket);
};

FUNC VOID Info_Mod_Friedel_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Friedel_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Friedel_Pickpocket);

		Info_AddChoice	(Info_Mod_Friedel_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Friedel_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Friedel_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Friedel_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Friedel_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Friedel_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Friedel_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Friedel_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Friedel_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Friedel_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Friedel_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Friedel_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Friedel_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Friedel_EXIT (C_INFO)
{
	npc		= Mod_7517_OUT_Friedel_REL;
	nr		= 1;
	condition	= Info_Mod_Friedel_EXIT_Condition;
	information	= Info_Mod_Friedel_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Friedel_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Friedel_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
