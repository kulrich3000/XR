INSTANCE Info_Mod_Richterhauswache_Blutkelch (C_INFO)
{
	npc		= Mod_1181_MIL_Tuerwache_NW;
	nr		= 1;
	condition	= Info_Mod_Richterhauswache_Blutkelch_Condition;
	information	= Info_Mod_Richterhauswache_Blutkelch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Richterhauswache_Blutkelch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Yussuf_Blutkelch3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Richterhauswache_Blutkelch_Info()
{
	AI_Output(self, hero, "Info_Mod_Richterhauswache_Blutkelch_07_00"); //Stop! Entrance for invited guests only.
	AI_Output(hero, self, "Info_Mod_Richterhauswache_Blutkelch_15_01"); //We want to make an entry in front of the judge.
	AI_Output(self, hero, "Info_Mod_Richterhauswache_Blutkelch_07_02"); //Then contact the governor or commander of the City Watch.
	AI_Output(hero, self, "Info_Mod_Richterhauswache_Blutkelch_15_03"); //They sent us here. It is a matter of internal security.
	AI_Output(self, hero, "Info_Mod_Richterhauswache_Blutkelch_07_04"); //I'll have to ask the judge first. You guys wait here!

	AI_StopProcessInfos	(self);

	AI_SetWalkmode 	(self, NPC_RUN);

	AI_GotoWP	(self, "NW_CITY_UPTOWN_JUDGE_05");

	AI_Wait	(hero, 2);

	AI_GotoWP	(hero, "NW_CITY_RICHTER_COOK");
	AI_GotoWP	(self, self.wp);
};

INSTANCE Info_Mod_Richterhauswache_Blutkelch2 (C_INFO)
{
	npc		= Mod_1181_MIL_Tuerwache_NW;
	nr		= 1;
	condition	= Info_Mod_Richterhauswache_Blutkelch2_Condition;
	information	= Info_Mod_Richterhauswache_Blutkelch2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Richterhauswache_Blutkelch2_Condition()
{
	if (Mod_ASS_Richter == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Richterhauswache_Blutkelch2_Info()
{
	AI_Output(self, hero, "Info_Mod_Richterhauswache_Blutkelch2_07_00"); //Well, where are you from? I didn't see you go in.
	AI_Output(hero, self, "Info_Mod_Richterhauswache_Blutkelch2_15_01"); //I'm just saying, domestic security. The case is over.
	AI_Output(self, hero, "Info_Mod_Richterhauswache_Blutkelch2_07_02"); //I don't understand.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_ASS_BLUTKELCH, "I have the cup. The Council should be satisfied.");

	B_StartOtherRoutine	(self,	"START");
	B_StartOtherRoutine	(Mod_7113_ASS_Yussuf_NW,	"FOLLOW");
};

INSTANCE Info_Mod_Richterhauswache_Pickpocket (C_INFO)
{
	npc		= Mod_1181_MIL_Tuerwache_NW;
	nr		= 1;
	condition	= Info_Mod_Richterhauswache_Pickpocket_Condition;
	information	= Info_Mod_Richterhauswache_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Richterhauswache_Pickpocket_Condition()
{
	C_Beklauen	(100, ItMi_Gold, 37);
};

FUNC VOID Info_Mod_Richterhauswache_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Richterhauswache_Pickpocket);

	Info_AddChoice	(Info_Mod_Richterhauswache_Pickpocket, DIALOG_BACK, Info_Mod_Richterhauswache_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Richterhauswache_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Richterhauswache_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Richterhauswache_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Richterhauswache_Pickpocket);
};

FUNC VOID Info_Mod_Richterhauswache_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Richterhauswache_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Richterhauswache_Pickpocket);

		Info_AddChoice	(Info_Mod_Richterhauswache_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Richterhauswache_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Richterhauswache_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Richterhauswache_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Richterhauswache_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Richterhauswache_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Richterhauswache_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Richterhauswache_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Richterhauswache_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Richterhauswache_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Richterhauswache_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Richterhauswache_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Richterhauswache_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Richterhauswache_EXIT (C_INFO)
{
	npc		= Mod_1181_MIL_Tuerwache_NW;
	nr		= 1;
	condition	= Info_Mod_Richterhauswache_EXIT_Condition;
	information	= Info_Mod_Richterhauswache_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Richterhauswache_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Richterhauswache_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
