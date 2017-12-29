INSTANCE Info_Mod_Rufus_Hi (C_INFO)
{
	npc		= Mod_1082_BAU_Rufus_MT;
	nr		= 1;
	condition	= Info_Mod_Rufus_Hi_Condition;
	information	= Info_Mod_Rufus_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Rufus_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lefty_RufusWeg))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rufus_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Rufus_Hi_02_00"); //What, who are you, what are you doing here?
	AI_Output(hero, self, "Info_Mod_Rufus_Hi_15_01"); //The question is: what are you doing here and where do you want to go?
	AI_Output(self, hero, "Info_Mod_Rufus_Hi_02_02"); //Um... Yeah, it's all right, I ran away from the rice field. I wanted to make my way to the end of the Mine Valley, but there are so many animals.

	self.flags = 0;

	Info_ClearChoices	(Info_Mod_Rufus_Hi);

	Info_AddChoice	(Info_Mod_Rufus_Hi, "I can help you get out of the Minental.", Info_Mod_Rufus_Hi_B);
	Info_AddChoice	(Info_Mod_Rufus_Hi, "Why don't we go back to the rice field?", Info_Mod_Rufus_Hi_A);
};

FUNC VOID Info_Mod_Rufus_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Rufus_Hi_B_15_00"); //I can help you get out of the Minental.
	AI_Output(self, hero, "Info_Mod_Rufus_Hi_B_02_01"); //Honestly? I wouldn't know how to make it up to you. All right, I'll follow you.

	Info_ClearChoices	(Info_Mod_Rufus_Hi);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "PASS");

	self.aivar[AIV_Partymember] = TRUE;

	Mod_SLD_Rufus = 1;
};

FUNC VOID Info_Mod_Rufus_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Rufus_Hi_A_15_00"); //Why don't we go back to the rice field?
	AI_Output(self, hero, "Info_Mod_Rufus_Hi_A_02_01"); //What?! Under no circumstances. You can't get me back there.

	Info_ClearChoices	(Info_Mod_Rufus_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);

	Mod_SLD_Rufus = 2;
};

INSTANCE Info_Mod_Rufus_WrongGuide (C_INFO)
{
	npc		= Mod_1082_BAU_Rufus_MT;
	nr		= 1;
	condition	= Info_Mod_Rufus_WrongGuide_Condition;
	information	= Info_Mod_Rufus_WrongGuide_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Rufus_WrongGuide_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Rufus_Hi))
	&& (Mod_SLD_Rufus == 1)
	&& (Npc_GetDistToWP(hero, "OW_PATH_07_21_GUARD_MIDDLE") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rufus_WrongGuide_Info()
{
	AI_Output(self, hero, "Info_Mod_Rufus_WrongGuide_02_00"); //Hey, wait, this way to the new camp.

	Info_ClearChoices	(Info_Mod_Rufus_WrongGuide);

	Info_AddChoice	(Info_Mod_Rufus_WrongGuide, "I changed my mind. We're going back to the rice field.", Info_Mod_Rufus_WrongGuide_B);
	Info_AddChoice	(Info_Mod_Rufus_WrongGuide, "Excuse me, the other way.", Info_Mod_Rufus_WrongGuide_A);
};

FUNC VOID Info_Mod_Rufus_WrongGuide_B()
{
	AI_Output(hero, self, "Info_Mod_Rufus_WrongGuide_B_15_00"); //I changed my mind. We're going back to the rice field.
	
	Info_ClearChoices	(Info_Mod_Rufus_WrongGuide);

	AI_StopProcessInfos	(self);

	self.aivar[AIV_Partymember] = FALSE;

	B_Attack	(self, hero, AR_None, 0);

	Mod_SLD_Rufus = 2;
};

FUNC VOID Info_Mod_Rufus_WrongGuide_A()
{
	AI_Output(hero, self, "Info_Mod_Rufus_WrongGuide_A_15_00"); //Excuse me, the other way.
	
	Info_ClearChoices	(Info_Mod_Rufus_WrongGuide);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Rufus_WrongGuide02 (C_INFO)
{
	npc		= Mod_1082_BAU_Rufus_MT;
	nr		= 1;
	condition	= Info_Mod_Rufus_WrongGuide02_Condition;
	information	= Info_Mod_Rufus_WrongGuide02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Rufus_WrongGuide02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Rufus_WrongGuide))
	&& (Mod_SLD_Rufus == 1)
	&& (Npc_GetDistToWP(hero, "OW_PATH_07_21_GUARD_MIDDLE") < 800)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rufus_WrongGuide02_Info()
{
	AI_Output(self, hero, "Info_Mod_Rufus_WrongGuide02_02_00"); //You gotta be kidding me. Well, wait!

	AI_StopProcessInfos	(self);

	self.aivar[AIV_Partymember] = FALSE;

	B_Attack	(self, hero, AR_None, 0);

	Mod_SLD_Rufus = 2;
};

INSTANCE Info_Mod_Rufus_Umgehauen (C_INFO)
{
	npc		= Mod_1082_BAU_Rufus_MT;
	nr		= 1;
	condition	= Info_Mod_Rufus_Umgehauen_Condition;
	information	= Info_Mod_Rufus_Umgehauen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Rufus_Umgehauen_Condition()
{
	if (Mod_SLD_Rufus == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rufus_Umgehauen_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Rufus_Umgehauen_02_00"); //Damn it, my bones....
			AI_Output(hero, self, "Info_Mod_Rufus_Umgehauen_15_01"); //Well, how about some work on the rice field?
			AI_Output(self, hero, "Info_Mod_Rufus_Umgehauen_02_02"); //Hell, yeah, I'm going back.

			Mod_SLD_Rufus = 3;

			B_StartOtherRoutine	(self, "START");
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Rufus_Umgehauen_02_03"); //Well, that was nothing.

			B_StartOtherRoutine	(self, "FLUCHT");
		};
							
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};
};

INSTANCE Info_Mod_Rufus_RightGuide (C_INFO)
{
	npc		= Mod_1082_BAU_Rufus_MT;
	nr		= 1;
	condition	= Info_Mod_Rufus_RightGuide_Condition;
	information	= Info_Mod_Rufus_RightGuide_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Rufus_RightGuide_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Rufus_Hi))
	&& (Mod_SLD_Rufus == 1)
	&& (Npc_GetDistToWP(hero, "OW_PATH_1_16_8") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rufus_RightGuide_Info()
{
	AI_Output(self, hero, "Info_Mod_Rufus_RightGuide_02_00"); //Thank you very much. I couldn't have done it without you. There's not much I can give you... but here.

	B_GiveInvItems	(self, hero, ItRi_WaermeRing, 1);

	AI_Output(self, hero, "Info_Mod_Rufus_RightGuide_02_01"); //I found this ring in the colony in a lake before my time. It was as if he had always given me warmth and confidence on cold days. Take care, now.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");

	self.aivar[AIV_Partymember] = FALSE;

	Mod_SLD_Rufus = 4;

	B_SetTopicStatus	(TOPIC_MOD_SLD_RUFUS, LOG_FAILED);

	B_GivePlayerXP	(400);
};

INSTANCE Info_Mod_Rufus_Heiltrank (C_INFO)
{
	npc		= Mod_1082_BAU_Rufus_MT;
	nr		= 1;
	condition	= Info_Mod_Rufus_Heiltrank_Condition;
	information	= Info_Mod_Rufus_Heiltrank_Info;
	permanent	= 1;
	important	= 0;
	description	= "(give healing potion)";
};

FUNC INT Info_Mod_Rufus_Heiltrank_Condition()
{
	if (self.aivar[AIV_Partymember] == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rufus_Heiltrank_Info()
{
	Info_ClearChoices	(Info_Mod_Rufus_Heiltrank);

	Info_AddChoice	(Info_Mod_Rufus_Heiltrank, DIALOG_BACK, Info_Mod_Rufus_Heiltrank_BACK);

	if (Npc_HasItems(hero, ItPo_Health_Addon_04) >= 1)
	{
		Info_AddChoice	(Info_Mod_Rufus_Heiltrank, "Essence of Healing", Info_Mod_Rufus_Heiltrank_Health_04);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Rufus_Heiltrank, "Elixir of Healing", Info_Mod_Rufus_Heiltrank_Health_03);
	};
	if (Npc_HasItems(hero, ItPo_Health_02) >= 1)
	{
		Info_AddChoice	(Info_Mod_Rufus_Heiltrank, "Extract of Healing", Info_Mod_Rufus_Heiltrank_Health_02);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Rufus_Heiltrank, "Essence of Healing", Info_Mod_Rufus_Heiltrank_Health_01);
	};
	if (Npc_HasItems(hero, ItPo_Health_07) >= 1)
	{
		Info_AddChoice	(Info_Mod_Rufus_Heiltrank, "Drink of light healing", Info_Mod_Rufus_Heiltrank_Health_07);
	};
	if (Npc_HasItems(hero, ItPo_Health_06) >= 1)
	{
		Info_AddChoice	(Info_Mod_Rufus_Heiltrank, "Light healing potion", Info_Mod_Rufus_Heiltrank_Health_06);
	};
	if (Npc_HasItems(hero, ItPo_Health_05) >= 1)
	{
		Info_AddChoice	(Info_Mod_Rufus_Heiltrank, "Potion of Quick Healing", Info_Mod_Rufus_Heiltrank_Health_05);
	};
};

FUNC VOID Info_Mod_Rufus_Heiltrank_BACK ()
{
	Info_ClearChoices	(Info_Mod_Rufus_Heiltrank);
};

FUNC VOID Info_Mod_Rufus_Heiltrank_Health_04 ()
{
	Info_ClearChoices	(Info_Mod_Rufus_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

FUNC VOID Info_Mod_Rufus_Heiltrank_Health_03 ()
{
	Info_ClearChoices	(Info_Mod_Rufus_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_03, 1);

	B_UseItem	(self, ItPo_Health_03);
};

FUNC VOID Info_Mod_Rufus_Heiltrank_Health_02 ()
{
	Info_ClearChoices	(Info_Mod_Rufus_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_02, 1);

	B_UseItem	(self, ItPo_Health_02);
};

FUNC VOID Info_Mod_Rufus_Heiltrank_Health_01 ()
{
	Info_ClearChoices	(Info_Mod_Rufus_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);
};

FUNC VOID Info_Mod_Rufus_Heiltrank_Health_07 ()
{
	Info_ClearChoices	(Info_Mod_Rufus_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_07, 1);

	B_UseItem	(self, ItPo_Health_07);
};

FUNC VOID Info_Mod_Rufus_Heiltrank_Health_06 ()
{
	Info_ClearChoices	(Info_Mod_Rufus_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_06, 1);

	B_UseItem	(self, ItPo_Health_06);
};

FUNC VOID Info_Mod_Rufus_Heiltrank_Health_05 ()
{
	Info_ClearChoices	(Info_Mod_Rufus_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_05, 1);

	B_UseItem	(self, ItPo_Health_05);
};

INSTANCE Info_Mod_Rufus_Pickpocket (C_INFO)
{
	npc		= Mod_1082_BAU_Rufus_MT;
	nr		= 1;
	condition	= Info_Mod_Rufus_Pickpocket_Condition;
	information	= Info_Mod_Rufus_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Rufus_Pickpocket_Condition()
{
	C_Beklauen	(25, ItPl_Riceplant, 3);
};

FUNC VOID Info_Mod_Rufus_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Rufus_Pickpocket);

	Info_AddChoice	(Info_Mod_Rufus_Pickpocket, DIALOG_BACK, Info_Mod_Rufus_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Rufus_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Rufus_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Rufus_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Rufus_Pickpocket);
};

FUNC VOID Info_Mod_Rufus_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Rufus_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Rufus_Pickpocket);

		Info_AddChoice	(Info_Mod_Rufus_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Rufus_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Rufus_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Rufus_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Rufus_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Rufus_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Rufus_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Rufus_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Rufus_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Rufus_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Rufus_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Rufus_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Rufus_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Rufus_EXIT (C_INFO)
{
	npc		= Mod_1082_BAU_Rufus_MT;
	nr		= 1;
	condition	= Info_Mod_Rufus_EXIT_Condition;
	information	= Info_Mod_Rufus_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Rufus_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Rufus_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
