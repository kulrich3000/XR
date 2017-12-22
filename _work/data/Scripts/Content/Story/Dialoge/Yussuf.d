INSTANCE Info_Mod_Yussuf_Hi (C_INFO)
{
	npc		= Mod_7113_ASS_Yussuf_NW;
	nr		= 1;
	condition	= Info_Mod_Yussuf_Hi_Condition;
	information	= Info_Mod_Yussuf_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Day. I'm looking for Yussuf.";
};

FUNC INT Info_Mod_Yussuf_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Yussuf_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Yussuf_Hi_15_00"); //Day. I'm looking for Yussuf.
	AI_Output(self, hero, "Info_Mod_Yussuf_Hi_05_01"); //You're standing in front of him. What's happening?
	AI_Output(hero, self, "Info_Mod_Yussuf_Hi_15_02"); //I'm looking for voices for my recording.
	AI_Output(self, hero, "Info_Mod_Yussuf_Hi_05_03"); //That's a good thing, because I'm also looking for voices. Wants to join the warriors. I'm bored with these rogues here.
	AI_Output(hero, self, "Info_Mod_Yussuf_Hi_15_04"); //But you have to ask the warriors, not me.
	AI_Output(self, hero, "Info_Mod_Yussuf_Hi_05_05"); //It is. But you could help me with a difficult task.
	AI_Output(self, hero, "Info_Mod_Yussuf_Hi_05_06"); //If I get a vote for it, you get mine.

	Info_ClearChoices	(Info_Mod_Yussuf_Hi);

	Info_AddChoice	(Info_Mod_Yussuf_Hi, "That sounds good to me. We can do that.", Info_Mod_Yussuf_Hi_B);
	Info_AddChoice	(Info_Mod_Yussuf_Hi, "I don't know about that. But that is not correct.", Info_Mod_Yussuf_Hi_A);
};

FUNC VOID Info_Mod_Yussuf_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Yussuf_Hi_B_15_00"); //That sounds good to me. We can do that.
	AI_Output(self, hero, "Info_Mod_Yussuf_Hi_B_05_01"); //I'll call you when I need you.

	Info_ClearChoices	(Info_Mod_Yussuf_Hi);

	Log_CreateTopic	(TOPIC_MOD_ASS_YUSSUF_HILFE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_YUSSUF_HILFE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_YUSSUF_HILFE, "I get Yussuf's voice when I help him with one of his assignments. He wants to talk to me about it later....");

	Mod_ASS_Yussuf = 2;
};

FUNC VOID Info_Mod_Yussuf_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Yussuf_Hi_A_15_00"); //I don't know about that. But that is not correct.
	AI_Output(self, hero, "Info_Mod_Yussuf_Hi_A_05_01"); //And what are we crooks for?
	AI_Output(hero, self, "Info_Mod_Yussuf_Hi_A_15_02"); //No. I'd rather not. If that comes out, I'm dead.
	AI_Output(hero, self, "Info_Mod_Yussuf_Hi_A_15_03"); //Or do you think they'll just let me go like that again?
	AI_Output(self, hero, "Info_Mod_Yussuf_Hi_A_05_04"); //I don't think so. But then there's nothing with my voice. And shut up about this.
	AI_Output(hero, self, "Info_Mod_Yussuf_Hi_A_15_05"); //Sure.

	Info_ClearChoices	(Info_Mod_Yussuf_Hi);

	Mod_ASS_Yussuf = 1;
};

INSTANCE Info_Mod_Yussuf_Blutkelch (C_INFO)
{
	npc		= Mod_7113_ASS_Yussuf_NW;
	nr		= 1;
	condition	= Info_Mod_Yussuf_Blutkelch_Condition;
	information	= Info_Mod_Yussuf_Blutkelch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Yussuf_Blutkelch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Karim_Hi))
	|| (Npc_KnowsInfo(hero, Info_Mod_Aiman_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Yussuf_Blutkelch_Info()
{
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch_05_00"); //What are you doing here? You don't have my vote yet.
	AI_Output(hero, self, "Info_Mod_Yussuf_Blutkelch_15_01"); //I served Shakir so well that he gave me your vote and sent me straight to Masut.
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch_05_02"); //Old geek! But then we could work together this time.
	AI_Output(hero, self, "Info_Mod_Yussuf_Blutkelch_15_03"); //I suppose we could. I have to take a blood cup from the judge in Khorinis.
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch_05_04"); //That's a good thing. I have to go downtown, too.
	AI_Output(hero, self, "Info_Mod_Yussuf_Blutkelch_15_05"); //And what do you have to do?
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch_05_06"); //I'm here to plunder the crates in the yard from merchant Matteo. The High Council suspects clothes in there, we could use them.
	AI_Output(hero, self, "Info_Mod_Yussuf_Blutkelch_15_07"); //Isn't there a guard there?
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch_05_08"); //Yeah, but that's no problem for me.
	AI_Output(hero, self, "Info_Mod_Yussuf_Blutkelch_15_09"); //Do you have a disguise?
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch_05_10"); //Of course it is. Let's get going. We'll check on the clothes first.

	B_LogEntry	(TOPIC_MOD_ASS_BLUTKELCH, "I met Yussuf. This time we want to work together. He's to get civilian clothes from merchant Matteo's farm.");

	CreateInvItems	(self, ItAr_Vlk_M, 1);

	AI_UnequipArmor	(self);

	AI_EquipArmor	(self, ItAr_Vlk_M);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");
};

INSTANCE Info_Mod_Yussuf_Blutkelch2 (C_INFO)
{
	npc		= Mod_7113_ASS_Yussuf_NW;
	nr		= 1;
	condition	= Info_Mod_Yussuf_Blutkelch2_Condition;
	information	= Info_Mod_Yussuf_Blutkelch2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Yussuf_Blutkelch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Yussuf_Blutkelch))
	&& (Npc_GetDistToWP(hero, "NW_CITY_MERCHANT_TRADE_02_B") < 750)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Yussuf_Blutkelch2_Info()
{
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch2_05_00"); //The knight here might notice something. You have to distract him. I'll do the rest.
	AI_Output(hero, self, "Info_Mod_Yussuf_Blutkelch2_15_01"); //No problem.

	B_LogEntry	(TOPIC_MOD_ASS_BLUTKELCH, "I have to distract Garond so that Yussuf can get the clothes out of the camp.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Yussuf_Blutkelch3 (C_INFO)
{
	npc		= Mod_7113_ASS_Yussuf_NW;
	nr		= 1;
	condition	= Info_Mod_Yussuf_Blutkelch3_Condition;
	information	= Info_Mod_Yussuf_Blutkelch3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Yussuf_Blutkelch3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garond_Blutkelch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Yussuf_Blutkelch3_Info()
{
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch3_05_00"); //That was an easy one. Let's get out of here before somebody else notices.
	AI_Output(hero, self, "Info_Mod_Yussuf_Blutkelch3_15_01"); //Why don't we go straight to the upper town?
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch3_05_02"); //You know where the judge is?
	AI_Output(hero, self, "Info_Mod_Yussuf_Blutkelch3_15_03"); //Certainly. He's got a guard at the house, though.
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch3_05_04"); //I could distract them this time.
	AI_Output(hero, self, "Info_Mod_Yussuf_Blutkelch3_15_05"); //Good idea. Come on, let's go!

	B_LogEntry	(TOPIC_MOD_ASS_BLUTKELCH, "Yussuf's got the clothes, now we have to see the judge.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_500_PAL_Garond_NW,	"PRESTART");
};

INSTANCE Info_Mod_Yussuf_Blutkelch4 (C_INFO)
{
	npc		= Mod_7113_ASS_Yussuf_NW;
	nr		= 1;
	condition	= Info_Mod_Yussuf_Blutkelch4_Condition;
	information	= Info_Mod_Yussuf_Blutkelch4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Yussuf_Blutkelch4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Richterhauswache_Blutkelch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Yussuf_Blutkelch4_Info()
{
	AI_Output(self, hero, "DEFAULT"); //
	AI_Output(hero, self, "Info_Mod_Yussuf_Blutkelch4_15_00"); //When the guard returns, you'll have to distract them. I'm going inside.
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch4_05_01"); //I understand.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self,	"RICHTER");
	B_StartOtherRoutine	(Mod_1181_MIL_Tuerwache_NW,	"RICHTER");
};

INSTANCE Info_Mod_Yussuf_Blutkelch5 (C_INFO)
{
	npc		= Mod_7113_ASS_Yussuf_NW;
	nr		= 1;
	condition	= Info_Mod_Yussuf_Blutkelch5_Condition;
	information	= Info_Mod_Yussuf_Blutkelch5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Yussuf_Blutkelch5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Richterhauswache_Blutkelch2))
	&& (Npc_GetDistToWP(hero, "NW_CITY_UPTOWN_PATH_05_B") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Yussuf_Blutkelch5_Info()
{
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch5_05_00"); //We fooled him pretty good. How's the judge?
	AI_Output(hero, self, "Info_Mod_Yussuf_Blutkelch5_15_01"); //Not good. He is now before his judge.
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch5_05_02"); //You're a hell of a guy.
	AI_Output(hero, self, "Info_Mod_Yussuf_Blutkelch5_15_03"); //You can take that literally. (laughs)
};

INSTANCE Info_Mod_Yussuf_Blutkelch6 (C_INFO)
{
	npc		= Mod_7113_ASS_Yussuf_NW;
	nr		= 1;
	condition	= Info_Mod_Yussuf_Blutkelch6_Condition;
	information	= Info_Mod_Yussuf_Blutkelch6_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Yussuf_Blutkelch6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Yussuf_Blutkelch5))
	&& (Npc_GetDistToWP(hero, "WP_ASSASSINE_13") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Yussuf_Blutkelch6_Info()
{
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch6_05_00"); //I'm gonna drop my clothes off.
	AI_Output(hero, self, "Info_Mod_Yussuf_Blutkelch6_15_01"); //And I'm going to the High Council. See you another time.
	AI_Output(self, hero, "Info_Mod_Yussuf_Blutkelch6_05_02"); //Bye, now!

	AI_UnEquipArmor	(self);

	AI_EquipArmor	(self, ItAr_Assassine_01);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Yussuf_Assassinengold (C_INFO)
{
	npc		= Mod_7113_ASS_Yussuf_NW;
	nr		= 1;
	condition	= Info_Mod_Yussuf_Assassinengold_Condition;
	information	= Info_Mod_Yussuf_Assassinengold_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Yussuf_Assassinengold_Condition()
{
	if (Mod_ASS_Assassinengold == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Yussuf_Assassinengold_Info()
{
	AI_Output(self, hero, "Info_Mod_Yussuf_Assassinengold_05_00"); //Son of a gun! You're the star of the camp. How do you do that?
	AI_Output(hero, self, "Info_Mod_Yussuf_Assassinengold_15_01"); //Have you ever heard of motivation?
	AI_Output(self, hero, "Info_Mod_Yussuf_Assassinengold_05_02"); //Eh. No.
	AI_Output(hero, self, "Info_Mod_Yussuf_Assassinengold_15_03"); //I thought you might.
};

INSTANCE Info_Mod_Yussuf_Pickpocket (C_INFO)
{
	npc		= Mod_7113_ASS_Yussuf_NW;
	nr		= 1;
	condition	= Info_Mod_Yussuf_Pickpocket_Condition;
	information	= Info_Mod_Yussuf_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Yussuf_Pickpocket_Condition()
{
	C_Beklauen	(82, ItMi_Gold, 26);
};

FUNC VOID Info_Mod_Yussuf_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Yussuf_Pickpocket);

	Info_AddChoice	(Info_Mod_Yussuf_Pickpocket, DIALOG_BACK, Info_Mod_Yussuf_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Yussuf_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Yussuf_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Yussuf_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Yussuf_Pickpocket);
};

FUNC VOID Info_Mod_Yussuf_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Yussuf_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Yussuf_Pickpocket);

		Info_AddChoice	(Info_Mod_Yussuf_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Yussuf_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Yussuf_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Yussuf_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Yussuf_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Yussuf_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Yussuf_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Yussuf_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Yussuf_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Yussuf_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Yussuf_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Yussuf_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Yussuf_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Yussuf_EXIT (C_INFO)
{
	npc		= Mod_7113_ASS_Yussuf_NW;
	nr		= 1;
	condition	= Info_Mod_Yussuf_EXIT_Condition;
	information	= Info_Mod_Yussuf_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Yussuf_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Yussuf_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
