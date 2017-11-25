INSTANCE Info_Mod_Onar_Hi (C_INFO)
{
	npc		= Mod_791_BAU_Onar_NW;
	nr		= 1;
	condition	= Info_Mod_Onar_Hi_Condition;
	information	= Info_Mod_Onar_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Onar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Onar_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Onar_Hi_32_00"); //What the hell are you doing here?
};

INSTANCE Info_Mod_Onar_Ahnenkunde (C_INFO)
{
	npc		= Mod_791_BAU_Onar_NW;
	nr		= 1;
	condition	= Info_Mod_Onar_Ahnenkunde_Condition;
	information	= Info_Mod_Onar_Ahnenkunde_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you know anything about any part of an ornamental ring?";
};

FUNC INT Info_Mod_Onar_Ahnenkunde_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_VierErbauer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Onar_Ahnenkunde_Info()
{
	AI_Output(hero, self, "Info_Mod_Onar_Ahnenkunde_15_00"); //Do you know anything about any part of an ornamental ring?
	AI_Output(self, hero, "Info_Mod_Onar_Ahnenkunde_32_01"); //Why would I tell you anything?
	AI_Output(hero, self, "Info_Mod_Onar_Ahnenkunde_15_02"); //I know that your ancestor Onar, who probably founded this farm here, had it with him.
	AI_Output(self, hero, "Info_Mod_Onar_Ahnenkunde_32_03"); //You know about my ancestor? All right, I got this piece of stone, but I'm not gonna tell you where it is.

	B_LogEntry	(TOPIC_MOD_PORTAL, "Onar said he had the ornament, but wouldn't tell me where it was. I guess I'll have to turn his house upside down. I hope no one catches me doing this.");
};

INSTANCE Info_Mod_Onar_BelohnungMaria (C_INFO)
{
	npc		= Mod_791_BAU_Onar_NW;
	nr		= 1;
	condition	= Info_Mod_Onar_BelohnungMaria_Condition;
	information	= Info_Mod_Onar_BelohnungMaria_Info;
	permanent	= 0;
	important	= 0;
	description	= "Maria said I'd get you a reward of 400 gold coins.";
};

FUNC INT Info_Mod_Onar_BelohnungMaria_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Onar_Hi))
	&& (Mod_WM_MariaGeheilt == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Onar_BelohnungMaria_Info()
{
	AI_Output(hero, self, "Info_Mod_Onar_BelohnungMaria_15_00"); //Mary said that I would receive a reward of 400 gold coins from you after I have cured her of her suffering.
	AI_Output(self, hero, "Info_Mod_Onar_BelohnungMaria_32_01"); //What?! 400 gold?! Shall I go to the dogs?! You'll get 200 from me and no more coins.

	B_GiveInvItems	(self, hero, ItMi_Gold, 200);
};

INSTANCE Info_Mod_Onar_Wasili_01 (C_INFO)
{
	npc		= Mod_791_BAU_Onar_NW;
	nr		= 1;
	condition	= Info_Mod_Onar_Wasili_01_Condition;
	information	= Info_Mod_Onar_Wasili_01_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want Wasili back on the farm.";
};

FUNC INT Info_Mod_Onar_Wasili_01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Onar_Hi))
	&& (Mod_WM_WasiliQuest == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Onar_Wasili_01_Info()
{
	AI_Output(hero, self, "Info_Mod_Onar_Wasili_01_15_00"); //I want Wasili back on the farm.
	AI_Output(self, hero, "Info_Mod_Onar_Wasili_01_32_01"); //What?! What do you want anyway?! Give me one reason why I should give my consent.

	Info_ClearChoices	(Info_Mod_Onar_Wasili_01);

	if (Npc_KnowsInfo(hero, Info_Mod_Maria_BelohnungWasili))
	{
		Info_AddChoice	(Info_Mod_Onar_Wasili_01, "Because otherwise I'll tell Maria about the maidservants.", Info_Mod_Onar_Wasili_01_D);
	};

	Info_AddChoice	(Info_Mod_Onar_Wasili_01, "Because I'm gonna break your teeth.", Info_Mod_Onar_Wasili_01_C);

	if (Npc_HasItems(hero, ItMi_Gold) >= 400)
	{
		Info_AddChoice	(Info_Mod_Onar_Wasili_01, "Because I'll give you 400 gold coins.", Info_Mod_Onar_Wasili_01_B);
	};

	Info_AddChoice	(Info_Mod_Onar_Wasili_01, "Just out of kindness.", Info_Mod_Onar_Wasili_01_A);
};

FUNC VOID Info_Mod_Onar_Wasili_01_D()
{
	AI_Output(hero, self, "Info_Mod_Onar_Wasili_01_D_15_00"); //Because otherwise I'll tell Maria about the maidservants.
	AI_Output(self, hero, "Info_Mod_Onar_Wasili_01_D_32_01"); //What?! You son of a bitch, how do you know about that? I'll pay you back sometime.
	AI_Output(hero, self, "Info_Mod_Onar_Wasili_01_D_15_02"); //So, what now?
	AI_Output(self, hero, "Info_Mod_Onar_Wasili_01_D_32_03"); //Yeah, you leave me no other choice. The scoundrel is allowed back to the yard.

	B_StartOtherRoutine	(Mod_100_BAU_Wasili_NW, "START");

	Mod_WM_WasiliQuest = 4;

	B_GivePlayerXP	(200);

	B_SetTopicStatus	(TOPIC_MOD_ADANOS_WASILI, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Onar_Wasili_01);
};

FUNC VOID Info_Mod_Onar_Wasili_01_C()
{
	AI_Output(hero, self, "Info_Mod_Onar_Wasili_01_C_15_00"); //Because I'm gonna break your teeth.
	AI_Output(self, hero, "Info_Mod_Onar_Wasili_01_C_32_01"); //What?! Guards! Guards!

	Mod_WM_WasiliQuest = 5;

	Info_ClearChoices	(Info_Mod_Onar_Wasili_01);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

FUNC VOID Info_Mod_Onar_Wasili_01_B()
{
	AI_Output(hero, self, "Info_Mod_Onar_Wasili_01_B_15_00"); //Because I'll give you 400 gold coins.
	AI_Output(self, hero, "Info_Mod_Onar_Wasili_01_B_32_01"); //(slightly calmer) That is indeed a reason. All right, the rascal can come back to the yard.

	B_GiveInvItems	(hero, self, ItMi_Gold, 400);

	B_StartOtherRoutine	(Mod_100_BAU_Wasili_NW, "START");

	Mod_WM_WasiliQuest = 4;

	B_GivePlayerXP	(200);

	B_SetTopicStatus	(TOPIC_MOD_ADANOS_WASILI, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Onar_Wasili_01);
};

FUNC VOID Info_Mod_Onar_Wasili_01_A()
{
	AI_Output(hero, self, "Info_Mod_Onar_Wasili_01_A_15_00"); //Just out of kindness.
	AI_Output(self, hero, "Info_Mod_Onar_Wasili_01_A_32_01"); //(very irritated) Friendliness?! Free is only death. Now get the hell out of here.

	Info_ClearChoices	(Info_Mod_Onar_Wasili_01);
};

INSTANCE Info_Mod_Onar_Umgehauen (C_INFO)
{
	npc		= Mod_791_BAU_Onar_NW;
	nr		= 1;
	condition	= Info_Mod_Onar_Umgehauen_Condition;
	information	= Info_Mod_Onar_Umgehauen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Onar_Umgehauen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Onar_Wasili_01))
	&& (Mod_WM_WasiliQuest == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Onar_Umgehauen_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Onar_Umgehauen_32_00"); //You son of a bitch, you're gonna pay for this...
			AI_Output(hero, self, "Info_Mod_Onar_Umgehauen_15_01"); //So, what now?
			AI_Output(self, hero, "Info_Mod_Onar_Umgehauen_32_02"); //(irred) Yes, damn it, he may come back, that rascal. Now get out of here!

			B_StartOtherRoutine	(Mod_100_BAU_Wasili_NW, "START");

			Mod_WM_WasiliQuest = 4;

			B_GivePlayerXP	(200);

			B_SetTopicStatus	(TOPIC_MOD_ADANOS_WASILI, LOG_SUCCESS);
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Onar_Umgehauen_32_03"); //Well, that was nothing.
		};
							
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};
};

INSTANCE Info_Mod_Onar_Wasili_02 (C_INFO)
{
	npc		= Mod_791_BAU_Onar_NW;
	nr		= 1;
	condition	= Info_Mod_Onar_Wasili_02_Condition;
	information	= Info_Mod_Onar_Wasili_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Onar_Wasili_02_Condition()
{
	if (Mod_WM_WasiliSchnaps == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Onar_Wasili_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Onar_Wasili_02_32_00"); //Oh, my fucking stomach. That pain, that pressure and that nausea.
	AI_Output(self, hero, "Info_Mod_Onar_Wasili_02_32_01"); //You're out on the road a lot. You have to help me and get me a cure, like the old herb witch.
	AI_Output(hero, self, "Info_Mod_Onar_Wasili_02_15_02"); //Why would I help you?
	AI_Output(self, hero, "Info_Mod_Onar_Wasili_02_32_03"); //Yeah, say what you want.

	Info_ClearChoices	(Info_Mod_Onar_Wasili_02);

	if (Mod_WM_WasiliQuest == 3)
	{
		Info_AddChoice	(Info_Mod_Onar_Wasili_02, "Let Wasili take his old position on the farm.", Info_Mod_Onar_Wasili_02_B);
	};

	Info_AddChoice	(Info_Mod_Onar_Wasili_02, "400 gold.", Info_Mod_Onar_Wasili_02_A);
};

FUNC VOID Info_Mod_Onar_Wasili_02_B()
{
	AI_Output(hero, self, "Info_Mod_Onar_Wasili_02_B_15_00"); //Let Wasili take his old position on the farm.
	AI_Output(self, hero, "Info_Mod_Onar_Wasili_02_B_32_01"); //What the ragamuffin returned to the yard....
	AI_Output(hero, self, "Info_Mod_Onar_Wasili_02_C_15_02"); //All right, then, don't--
	AI_Output(self, hero, "Info_Mod_Onar_Wasili_02_B_32_03"); //It's all right, he can go back. Now hurry up.
	
	B_StartOtherRoutine	(Mod_100_BAU_Wasili_NW, "START");

	Mod_WM_WasiliQuest = 4;

	B_GivePlayerXP	(250);

	B_LogEntry	(TOPIC_MOD_ADANOS_WASILI, "After enjoying the prepared schnapps, Onar complains about stomach pain. I'm supposed to get him a cure at Sagitta's.");

	B_SetTopicStatus	(TOPIC_MOD_ADANOS_WASILI, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Onar_Wasili_02);
};

FUNC VOID Info_Mod_Onar_Wasili_02_A()
{
	AI_Output(hero, self, "Info_Mod_Onar_Wasili_02_A_15_00"); //400 gold.
	AI_Output(self, hero, "Info_Mod_Onar_Wasili_02_A_32_01"); //What?! You throat-sectional....
	AI_Output(hero, self, "Info_Mod_Onar_Wasili_02_C_15_02"); //All right, then, don't--
	AI_Output(self, hero, "Info_Mod_Onar_Wasili_02_A_32_03"); //It's all right, man. Here's the gold, and now hurry up.

	B_GiveInvItems	(self, hero, ItMi_Gold, 400);

	B_LogEntry	(TOPIC_MOD_ADANOS_WASILI, "After enjoying the prepared schnapps, Onar complains about stomach pain. I'm supposed to get him a cure at Sagitta's.");

	Info_ClearChoices	(Info_Mod_Onar_Wasili_02);
};

INSTANCE Info_Mod_Onar_Wasili_03 (C_INFO)
{
	npc		= Mod_791_BAU_Onar_NW;
	nr		= 1;
	condition	= Info_Mod_Onar_Wasili_03_Condition;
	information	= Info_Mod_Onar_Wasili_03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here, this should help you.";
};

FUNC INT Info_Mod_Onar_Wasili_03_Condition()
{
	if (Npc_HasItems(hero, ItPo_OnarsTrank) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Onar_Wasili_03_Info()
{
	AI_Output(hero, self, "Info_Mod_Onar_Wasili_03_15_00"); //Here, this should help you.
	AI_Output(self, hero, "Info_Mod_Onar_Wasili_03_32_01"); //Ahh, finally. Give me that.

	B_GiveInvItems	(hero, self, ItPo_OnarsTrank, 1);

	B_UseItem	(self, ItPo_OnarsTrank);

	AI_Output(self, hero, "Info_Mod_Onar_Wasili_03_32_02"); //Ahh, I'm much better now. What are you standing there for? Don't you have something to do?

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Onar_Wasili_03_15_03"); //Yeah, you can tell he's getting better.

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Onar_Dieb (C_INFO)
{
	npc		= Mod_791_BAU_Onar_NW;
	nr		= 1;
	condition	= Info_Mod_Onar_Dieb_Condition;
	information	= Info_Mod_Onar_Dieb_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Onar_Dieb_Condition()
{
	if (Kapitel >= 2)
	&& (Npc_KnowsInfo(hero, Info_Mod_Onar_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Onar_Dieb_Info()
{
	AI_Output(self, hero, "Info_Mod_Onar_Dieb_32_00"); //Hey you!
	AI_Output(hero, self, "Info_Mod_Onar_Dieb_15_01"); //What's up?
	AI_Output(self, hero, "Info_Mod_Onar_Dieb_32_02"); //I've got something to do for you.
	AI_Output(self, hero, "Info_Mod_Onar_Dieb_32_03"); //More and more goods from the warehouse have been missing lately.
	AI_Output(self, hero, "Info_Mod_Onar_Dieb_32_04"); //Find the thief and bring it back to me.

	Npc_ExchangeRoutine	(Mod_785_BAU_Gunnar_NW, "DIEB");

	Log_CreateTopic	(TOPIC_MOD_BAUER_DIEB, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BAUER_DIEB, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BAUER_DIEB, "One of the farmers steals goods from Onar's warehouse. I'm supposed to grab him and bring the stuff back.");
};

INSTANCE Info_Mod_Onar_Dieb_Erwischt (C_INFO)
{
	npc		= Mod_791_BAU_Onar_NW;
	nr		= 1;
	condition	= Info_Mod_Onar_Dieb_Erwischt_Condition;
	information	= Info_Mod_Onar_Dieb_Erwischt_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got the stuff.";
};

FUNC INT Info_Mod_Onar_Dieb_Erwischt_Condition()
{
	if (Mod_Gunnar_Partner == FALSE)
	&& (Npc_HasItems(hero, ItFo_MuttonRaw) >= 20)
	&& (Npc_HasItems(hero, ItFo_Cheese) >= 6)
	&& (Npc_HasItems(hero, ItFo_Water) >= 10)
	&& (Npc_KnowsInfo(hero, Info_Mod_Gunnar_Flucht))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Onar_Dieb_Erwischt_Info()
{
	AI_Output(hero, self, "Info_Mod_Onar_Dieb_Erwischt_15_00"); //I got the stuff.
	AI_Output(self, hero, "Info_Mod_Onar_Dieb_Erwischt_32_01"); //Very good. Very good. Give it to me.

	Npc_RemoveInvItems	(hero, ItFo_MuttonRaw, 20);
	Npc_RemoveInvItems	(hero, ItFo_Cheese, 6);
	Npc_RemoveInvItems	(hero, ItFo_Water, 10);

	B_ShowGivenThings	("20 raw meat, 6 cheese and 10 water added");

	B_LogEntry	(TOPIC_MOD_BAUER_DIEB, "I brought the things to Onar.");

	AI_Output(self, hero, "Info_Mod_Onar_Dieb_Erwischt_32_02"); //Here's your reward.

	B_GivePlayerXP	(100);

	B_Göttergefallen(2, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	B_SetTopicStatus	(TOPIC_MOD_BAUER_DIEB, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Onar_BauernFuerAkil (C_INFO)
{
	npc		= Mod_791_BAU_Onar_NW;
	nr		= 1;
	condition	= Info_Mod_Onar_BauernFuerAkil_Condition;
	information	= Info_Mod_Onar_BauernFuerAkil_Info;
	permanent	= 0;
	important	= 0;
	description	= "The farmer Telbor wants to put Akil's farm back into operation.";
};

FUNC INT Info_Mod_Onar_BauernFuerAkil_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Onar_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Telbor_PilgerTot))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Onar_BauernFuerAkil_Info()
{
	AI_Output(hero, self, "Info_Mod_Onar_BauernFuerAkil_15_00"); //The farmer Telbor wants to put Akil's farm back into operation.
	AI_Output(self, hero, "Info_Mod_Onar_BauernFuerAkil_32_01"); //And what do I care?
	AI_Output(hero, self, "Info_Mod_Onar_BauernFuerAkil_15_02"); //He needs two more farmhands and a maid to help him there.
	AI_Output(hero, self, "Info_Mod_Onar_BauernFuerAkil_15_03"); //Surely you can spare someone for the farm.
	AI_Output(self, hero, "Info_Mod_Onar_BauernFuerAkil_32_04"); //Hmm. All right, I'll send three of my men to Akil's farm. There's certainly something to get.
};

INSTANCE Info_Mod_Onar_Pickpocket (C_INFO)
{
	npc		= Mod_791_BAU_Onar_NW;
	nr		= 1;
	condition	= Info_Mod_Onar_Pickpocket_Condition;
	information	= Info_Mod_Onar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Onar_Pickpocket_Condition()
{
	C_Beklauen	(100, ItMi_Gold, 43);
};

FUNC VOID Info_Mod_Onar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Onar_Pickpocket);

	Info_AddChoice	(Info_Mod_Onar_Pickpocket, DIALOG_BACK, Info_Mod_Onar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Onar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Onar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Onar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Onar_Pickpocket);
};

FUNC VOID Info_Mod_Onar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Onar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Onar_Pickpocket);

		Info_AddChoice	(Info_Mod_Onar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Onar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Onar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Onar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Onar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Onar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Onar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Onar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Onar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Onar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Onar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Onar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Onar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Onar_EXIT (C_INFO)
{
	npc		= Mod_791_BAU_Onar_NW;
	nr		= 1;
	condition	= Info_Mod_Onar_EXIT_Condition;
	information	= Info_Mod_Onar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Onar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Onar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
