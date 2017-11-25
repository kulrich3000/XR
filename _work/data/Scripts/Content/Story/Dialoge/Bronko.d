INSTANCE Info_Mod_Bronko_Hi (C_INFO)
{
	npc		= Mod_103_BAU_Bronko_NW;
	nr		= 1;
	condition	= Info_Mod_Bronko_Hi_Condition;
	information	= Info_Mod_Bronko_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bronko_Hi_Condition()
{
	if (!Npc_IsDead(Mod_541_NONE_Till_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bronko_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Bronko_Hi_06_00"); //You there, you got a minute?
	AI_Output(hero, self, "Info_Mod_Bronko_Hi_15_01"); //Of course it is.
	AI_Output(self, hero, "Info_Mod_Bronko_Hi_06_02"); //Tell Till to move his ass to the field. He's been taking his break all day.

	AI_StopProcessInfos	(self);

	Log_CreateTopic	(TOPIC_MOD_BRONKO_STREIT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BRONKO_STREIT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BRONKO_STREIT, "Apparently Till's running out of work. Let's see what he has to say.");
};

INSTANCE Info_Mod_Bronko_Streit02 (C_INFO)
{
	npc		= Mod_103_BAU_Bronko_NW;
	nr		= 1;
	condition	= Info_Mod_Bronko_Streit02_Condition;
	information	= Info_Mod_Bronko_Streit02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Till told you to do it yourself.";
};

FUNC INT Info_Mod_Bronko_Streit02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Till_Bronko))
	&& (!Npc_IsDead(Mod_541_NONE_Till_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bronko_Streit02_Info()
{
	AI_Output(hero, self, "Info_Mod_Bronko_Streit02_15_00"); //Till told you to do it yourself.
	AI_Output(self, hero, "Info_Mod_Bronko_Streit02_06_01"); //He should clean his nose first!

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_BRONKO_STREIT, "Let Till clean his nose first.");
};

INSTANCE Info_Mod_Bronko_Streit03 (C_INFO)
{
	npc		= Mod_103_BAU_Bronko_NW;
	nr		= 1;
	condition	= Info_Mod_Bronko_Streit03_Condition;
	information	= Info_Mod_Bronko_Streit03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Till wonders if you can add one and one together.";
};

FUNC INT Info_Mod_Bronko_Streit03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Till_Bronko02))
	&& (!Npc_IsDead(Mod_541_NONE_Till_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bronko_Streit03_Info()
{
	AI_Output(hero, self, "Info_Mod_Bronko_Streit03_15_00"); //Till wonders if you can add one and one together.
	AI_Output(self, hero, "Info_Mod_Bronko_Streit03_06_01"); //Of course I can! These are... um, eleven. Tell him that.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_BRONKO_STREIT, "Bronko put one and one together and figured out eleven.");
};

INSTANCE Info_Mod_Bronko_Streit04 (C_INFO)
{
	npc		= Mod_103_BAU_Bronko_NW;
	nr		= 1;
	condition	= Info_Mod_Bronko_Streit04_Condition;
	information	= Info_Mod_Bronko_Streit04_Info;
	permanent	= 0;
	important	= 0;
	description	= "You want me to tell you that you're a son of a bitch.";
};

FUNC INT Info_Mod_Bronko_Streit04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Till_Bronko03))
	&& (!Npc_IsDead(Mod_541_NONE_Till_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bronko_Streit04_Info()
{
	AI_Output(hero, self, "Info_Mod_Bronko_Streit04_15_00"); //You want me to tell you that you're a son of a bitch.
	AI_Output(self, hero, "Info_Mod_Bronko_Streit04_06_01"); //Like this? Is this from Till? He'll be in trouble. Tell him that.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_BRONKO_STREIT, "I'm supposed to tell Till he's in trouble.");
};

INSTANCE Info_Mod_Bronko_Ambient (C_INFO)
{
	npc		= Mod_103_BAU_Bronko_NW;
	nr		= 1;
	condition	= Info_Mod_Bronko_Ambient_Condition;
	information	= Info_Mod_Bronko_Ambient_Info;
	permanent	= 0;
	important	= 0;
	description	= "What kind of work did you do today?";
};

FUNC INT Info_Mod_Bronko_Ambient_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Till_Bronko04))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bronko_Ambient_Info()
{
	AI_Output(hero, self, "Info_Mod_Bronko_Ambient_15_00"); //What kind of work did you do today?
	AI_Output(self, hero, "Info_Mod_Bronko_Ambient_06_01"); //I generally ensure peace and security here. That requires my constant attention.
};

INSTANCE Info_Mod_Bronko_Ambient01 (C_INFO)
{
	npc		= Mod_103_BAU_Bronko_NW;
	nr		= 1;
	condition	= Info_Mod_Bronko_Ambient01_Condition;
	information	= Info_Mod_Bronko_Ambient01_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bronko_Ambient01_Condition()
{
	if ((hero.guild == GIL_PAL)
	|| (hero.guild == GIL_VLK))
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bronko_Ambient01_Info()
{
	AI_Output(self, hero, "Info_Mod_Bronko_Ambient01_06_00"); //It is an honour for us to welcome such a faithful visit to our humble farm.
	AI_Output(self, hero, "Info_Mod_Bronko_Ambient01_06_01"); //Maybe you'd have the goodness to defend us against the predatory mercenaries?

	Info_ClearChoices	(Info_Mod_Bronko_Ambient01);

	Info_AddChoice	(Info_Mod_Bronko_Ambient01, "Pray to Innos, and he will help you.", Info_Mod_Bronko_Ambient01_B);
	Info_AddChoice	(Info_Mod_Bronko_Ambient01, "What's the problem?", Info_Mod_Bronko_Ambient01_A);
};

FUNC VOID Info_Mod_Bronko_Ambient01_B()
{
	AI_Output(hero, self, "Info_Mod_Bronko_Ambient01_B_15_00"); //Pray to Innos, and he will help you.

	Info_ClearChoices	(Info_Mod_Bronko_Ambient01);
};

FUNC VOID Info_Mod_Bronko_Ambient01_A()
{
	AI_Output(hero, self, "Info_Mod_Bronko_Ambient01_A_15_00"); //What's the problem?
	AI_Output(self, hero, "Info_Mod_Bronko_Ambient01_A_06_01"); //These villains eat away everything we grow. There must be an end to this!
	AI_Output(hero, self, "Info_Mod_Bronko_Ambient01_A_15_02"); //So should I erase Onar's farm?
	AI_Output(self, hero, "Info_Mod_Bronko_Ambient01_A_06_03"); //No, no, we don't have to go that far. It's enough when the mercenaries can't find any more supplies at our place.
	AI_Output(self, hero, "Info_Mod_Bronko_Ambient01_A_06_04"); //North of the lake on the way to Orlan's tavern you will find a cave.
	AI_Output(self, hero, "Info_Mod_Bronko_Ambient01_A_06_05"); //In the large entrance area you then put these five flour sacks into the big entrance area, and we will be helped for the time being.

	B_GiveInvItems	(self, hero, ItMi_Mehlsack_Bronko, 5);

	Log_CreateTopic	(TOPIC_MOD_BRONKO_MEHLSACK, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BRONKO_MEHLSACK, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BRONKO_MEHLSACK, "Bronko von Sekobs Hof entrusted me with flour sacks, which I was supposed to place in the entrance area of the cave north of the lake on the way to Orlan's tavern.");

	Mod_BronkoMehlsack = 1;

	Info_ClearChoices	(Info_Mod_Bronko_Ambient01);
};

INSTANCE Info_Mod_Bronko_Ambient02 (C_INFO)
{
	npc		= Mod_103_BAU_Bronko_NW;
	nr		= 1;
	condition	= Info_Mod_Bronko_Ambient02_Condition;
	information	= Info_Mod_Bronko_Ambient02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bronko_Ambient02_Condition()
{
	if (Mod_BronkoMehlsack > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bronko_Ambient02_Info()
{
	if (Mod_BronkoMehlsack == 2)
	{
		AI_Output(self, hero, "Info_Mod_Bronko_Ambient02_06_00"); //Are you finished? Now the bums can come. (laughs)
		AI_Output(self, hero, "Info_Mod_Bronko_Ambient02_06_01"); //You did a good job.

		B_GivePlayerXP	(100);

		B_Göttergefallen (1, 1);

		B_SetTopicStatus	(TOPIC_MOD_BRONKO_MEHLSACK, LOG_SUCCESS);

		CurrentNQ += 1;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Bronko_Ambient02_06_02"); //What do you think you're doing? You think I can't see you running straight for Onar's Pennerhof?
		AI_Output(self, hero, "Info_Mod_Bronko_Ambient02_06_03"); //Can't even rely on Innos anymore?

		B_SetTopicStatus	(TOPIC_MOD_BRONKO_MEHLSACK, LOG_FAILED);
	};
};

INSTANCE Info_Mod_Bronko_Lehrer (C_INFO)
{
	npc		= Mod_103_BAU_Bronko_NW;
	nr		= 1;
	condition	= Info_Mod_Bronko_Lehrer_Condition;
	information	= Info_Mod_Bronko_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me something?";
};

FUNC INT Info_Mod_Bronko_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bronko_Hi))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bronko_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Bronko_Lehrer_06_00"); //Well, I got a pretty good punch. Maybe I can help you get a little stronger.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_BAUERN, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_BAUERN, "Bronko can help me get stronger.");
};

INSTANCE Info_Mod_Bronko_Lernen (C_INFO)
{
	npc		= Mod_103_BAU_Bronko_NW;
	nr		= 1;
	condition	= Info_Mod_Bronko_Lernen_Condition;
	information	= Info_Mod_Bronko_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Show me how I'm getting stronger.";
};

FUNC INT Info_Mod_Bronko_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bronko_Lehrer))
	&& (hero.attribute[ATR_STRENGTH] < 100)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bronko_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Bronko_Lernen_15_00"); //Show me how to be stronger.

	Info_ClearChoices	(Info_Mod_Bronko_Lernen);

	Info_AddChoice	(Info_Mod_Bronko_Lernen, DIALOG_BACK, Info_Mod_Bronko_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Bronko_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Bronko_Lernen_5);
	Info_AddChoice	(Info_Mod_Bronko_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Bronko_Lernen_1);
};

FUNC VOID Info_Mod_Bronko_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Bronko_Lernen);
};

FUNC VOID Info_Mod_Bronko_Lernen_5()
{
	B_TeachAttributePoints_New	(self, hero, ATR_STRENGTH, 5, 100);
	
	Info_ClearChoices	(Info_Mod_Bronko_Lernen);

	Info_AddChoice	(Info_Mod_Bronko_Lernen, DIALOG_BACK, Info_Mod_Bronko_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Bronko_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Bronko_Lernen_5);
	Info_AddChoice	(Info_Mod_Bronko_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Bronko_Lernen_1);
};

FUNC VOID Info_Mod_Bronko_Lernen_1()
{
	B_TeachAttributePoints	(self, hero, ATR_STRENGTH, 1, 100);

	Info_ClearChoices	(Info_Mod_Bronko_Lernen);

	Info_AddChoice	(Info_Mod_Bronko_Lernen, DIALOG_BACK, Info_Mod_Bronko_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Bronko_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Bronko_Lernen_5);
	Info_AddChoice	(Info_Mod_Bronko_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH), Info_Mod_Bronko_Lernen_1);
};

INSTANCE Info_Mod_Bronko_Pickpocket (C_INFO)
{
	npc		= Mod_103_BAU_Bronko_NW;
	nr		= 1;
	condition	= Info_Mod_Bronko_Pickpocket_Condition;
	information	= Info_Mod_Bronko_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Bronko_Pickpocket_Condition()
{
	C_Beklauen	(15, ItMi_Gold, 11);
};

FUNC VOID Info_Mod_Bronko_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bronko_Pickpocket);

	Info_AddChoice	(Info_Mod_Bronko_Pickpocket, DIALOG_BACK, Info_Mod_Bronko_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bronko_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bronko_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bronko_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bronko_Pickpocket);
};

FUNC VOID Info_Mod_Bronko_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bronko_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bronko_Pickpocket);

		Info_AddChoice	(Info_Mod_Bronko_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bronko_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bronko_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bronko_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bronko_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bronko_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bronko_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bronko_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bronko_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bronko_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bronko_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bronko_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bronko_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bronko_EXIT (C_INFO)
{
	npc		= Mod_103_BAU_Bronko_NW;
	nr		= 1;
	condition	= Info_Mod_Bronko_EXIT_Condition;
	information	= Info_Mod_Bronko_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bronko_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bronko_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
