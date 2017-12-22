var int MerkLebenspunkteHeldAlrik;
var int MerkLebenspunkteAlrik;

INSTANCE Info_Mod_Alrik_Hi (C_INFO)
{
	npc		= Mod_547_NONE_Alrik_NW;
	nr		= 1;
	condition	= Info_Mod_Alrik_Hi_Condition;
	information	= Info_Mod_Alrik_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Alrik_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Alrik_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Alrik_Hi_09_01"); //I'm Alrik.

	if (Npc_GetDistToWP(self, "NW_CITY_PATH_HABOUR_16_01") < 1000)
	{
		AI_Output(self, hero, "Info_Mod_Alrik_Hi_09_02"); //I do show fights here sometimes.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Alrik_Hi_09_03"); //I sometimes do exhibition fights behind the warehouse in the harbour district.
	};

	AI_Output(self, hero, "Info_Mod_Alrik_Hi_09_04"); //You can challenge me sometime if you want.
	AI_Output(self, hero, "Info_Mod_Alrik_Hi_09_05"); //The stake is 100 gold coins for each participant.

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_1051_VLK_Buerger_NW, "START");
};

INSTANCE Info_Mod_Alrik_Regeln (C_INFO)
{
	npc		= Mod_547_NONE_Alrik_NW;
	nr		= 1;
	condition	= Info_Mod_Alrik_Regeln_Condition;
	information	= Info_Mod_Alrik_Regeln_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are there any rules in the fight?";
};

FUNC INT Info_Mod_Alrik_Regeln_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alrik_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alrik_Regeln_Info()
{
	AI_Output(hero, self, "Info_Mod_Alrik_Regeln_15_00"); //Are there any rules in the fight?
	AI_Output(self, hero, "Info_Mod_Alrik_Regeln_09_01"); //No magic, no long-range weapons. If your opponent is on the ground, you have won.
	AI_Output(self, hero, "Info_Mod_Alrik_Regeln_09_02"); //And tell nothing to the militia. (laughs)
};

INSTANCE Info_Mod_Alrik_Kap2 (C_INFO)
{
	npc		= Mod_547_NONE_Alrik_NW;
	nr		= 1;
	condition	= Info_Mod_Alrik_Kap2_Condition;
	information	= Info_Mod_Alrik_Kap2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alrik_Kap2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alrik_Hi))
	&& (Npc_GetDistToWP(self, "NW_CITY_PATH_HABOUR_16_01") < 1000)
	&& (Mod_AlrikSchaukampf == 1)
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alrik_Kap2_Info()
{
	AI_Output(self, hero, "Info_Mod_Alrik_Kap2_09_00"); //I've grown stronger. Let's try it again.

	Mod_AlrikSchaukampf = 0;
};

INSTANCE Info_Mod_Alrik_Kap3 (C_INFO)
{
	npc		= Mod_547_NONE_Alrik_NW;
	nr		= 1;
	condition	= Info_Mod_Alrik_Kap3_Condition;
	information	= Info_Mod_Alrik_Kap3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alrik_Kap3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alrik_Hi))
	&& (Npc_GetDistToWP(self, "NW_CITY_PATH_HABOUR_16_01") < 1000)
	&& (Mod_AlrikSchaukampf == 1)
	&& (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alrik_Kap3_Info()
{
	AI_Output(self, hero, "Info_Mod_Alrik_Kap3_09_00"); //You're getting better known. How I'd like to finally defeat you.

	Mod_AlrikSchaukampf = 0;
};

INSTANCE Info_Mod_Alrik_Kap4 (C_INFO)
{
	npc		= Mod_547_NONE_Alrik_NW;
	nr		= 1;
	condition	= Info_Mod_Alrik_Kap4_Condition;
	information	= Info_Mod_Alrik_Kap4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alrik_Kap4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alrik_Hi))
	&& (Npc_GetDistToWP(self, "NW_CITY_PATH_HABOUR_16_01") < 1000)
	&& (Mod_AlrikSchaukampf == 1)
	&& (Kapitel >= 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alrik_Kap4_Info()
{
	AI_Output(self, hero, "Info_Mod_Alrik_Kap4_09_00"); //I've trained harder than ever in my life to grow up with you.

	Mod_AlrikSchaukampf = 0;
};

INSTANCE Info_Mod_Alrik_Kap5 (C_INFO)
{
	npc		= Mod_547_NONE_Alrik_NW;
	nr		= 1;
	condition	= Info_Mod_Alrik_Kap2_Condition;
	information	= Info_Mod_Alrik_Kap2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alrik_Kap5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alrik_Hi))
	&& (Npc_GetDistToWP(self, "NW_CITY_PATH_HABOUR_16_01") < 1000)
	&& (Mod_AlrikSchaukampf == 1)
	&& (Kapitel >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alrik_Kap5_Info()
{
	AI_Output(self, hero, "Info_Mod_Alrik_Kap5_09_00"); //(desperate) One last time I want to try it!

	Mod_AlrikSchaukampf = 0;
};

INSTANCE Info_Mod_Alrik_Schaukampf (C_INFO)
{
	npc		= Mod_547_NONE_Alrik_NW;
	nr		= 1;
	condition	= Info_Mod_Alrik_Schaukampf_Condition;
	information	= Info_Mod_Alrik_Schaukampf_Info;
	permanent	= 1;
	important	= 0;
	description	= "I challenge you.";
};

FUNC INT Info_Mod_Alrik_Schaukampf_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alrik_Hi))
	&& (Npc_GetDistToWP(self, "NW_CITY_PATH_HABOUR_16_01") < 1000)
	&& (Mod_AlrikSchaukampf == 0)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alrik_Schaukampf_Info()
{
	AI_Output(hero, self, "Info_Mod_Alrik_Schaukampf_15_00"); //I challenge you.

	B_GiveInvItems	(hero, self, ItMi_Gold, 100);
	Npc_RemoveInvItems(self, ItMi_Gold, 100);

	if (Kapitel == 1)
	{
		AI_Output(self, hero, "Info_Mod_Alrik_Schaukampf_09_01"); //That looks like an easy task to me.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Alrik_Schaukampf_09_02"); //A worthy opponent!
	};

	B_SetAttributesToChapter	(self, Kapitel);

	B_SetFightSkills	(self, 25);

	self.aivar[AIV_VictoryXPGiven] = FALSE;

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);

	Mod_AlrikSchaukampf = 1;

	self.aivar[AIV_ArenaFight] = AF_RUNNING;
};

INSTANCE Info_Mod_Alrik_Umgehauen (C_INFO)
{
	npc		= Mod_547_NONE_Alrik_NW;
	nr		= 1;
	condition	= Info_Mod_Alrik_Umgehauen_Condition;
	information	= Info_Mod_Alrik_Umgehauen_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Alrik_Umgehauen_Condition()
{
	if (self.aivar[AIV_ArenaFight] == AF_AFTER)
	&& (Mod_MilizTurnier != 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alrik_Umgehauen_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			if (Kapitel == 1)
			{
				AI_Output(self, hero, "Info_Mod_Alrik_Umgehauen_09_00"); //Boy, boy, I underestimated you.
			}
			else if (Kapitel == 2)
			|| (Kapitel == 4)
			{
				AI_Output(self, hero, "Info_Mod_Alrik_Umgehauen_09_01"); //Not again....
			}
			else if (Kapitel == 3)
			{
				AI_Output(self, hero, "Info_Mod_Alrik_Umgehauen_09_02"); //I'm not giving up!
			}
			else if (Kapitel == 5)
			{
				AI_Output(self, hero, "Info_Mod_Alrik_Umgehauen_09_03"); //That's all. I'm no match for you.
				AI_Output(self, hero, "Info_Mod_Alrik_Umgehauen_09_04"); //You are now so powerful that you could probably even mess with an army of demons.
			};

			B_GiveInvItems	(self, hero, ItMi_Gold, 200);		

			B_GivePlayerXP	(Kapitel*50);
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Alrik_Umgehauen_09_05"); //You're a good source of income. If you feel like another round, come back.

			Mod_AlrikSchaukampf = 0;
		};
							
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};
};

INSTANCE Info_Mod_Alrik_Flugblaetter (C_INFO)
{
	npc		= Mod_547_NONE_Alrik_NW;
	nr		= 1;
	condition	= Info_Mod_Alrik_Flugblaetter_Condition;
	information	= Info_Mod_Alrik_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've got a flyer for you.";
};

FUNC INT Info_Mod_Alrik_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Alrik_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alrik_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Alrik_Flugblaetter_09_01"); //Oh, thank you. Thank you. Let's see....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Alrik_Flugblaetter_09_02"); //Ah yes. Maybe I'll stop by Matteo's.

	Mod_Flugblaetter += 1;

	Npc_RemoveInvItems	(self, MatteoFlugblaetter, 1);
};

INSTANCE Info_Mod_Alrik_ArenaFighter (C_INFO)
{
	npc		= Mod_547_NONE_Alrik_NW;
	nr		= 1;
	condition	= Info_Mod_Alrik_ArenaFighter_Condition;
	information	= Info_Mod_Alrik_ArenaFighter_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alrik_ArenaFighter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Turnier2))
	&& (Mod_MilizTurnier == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alrik_ArenaFighter_Info()
{
	AI_Output(self, hero, "Info_Mod_Alrik_ArenaFighter_09_00"); //Hey!
};

INSTANCE Info_Mod_Alrik_Kampf (C_INFO)
{
	npc		= Mod_547_NONE_Alrik_NW;
	nr		= 1;
	condition	= Info_Mod_Alrik_Kampf_Condition;
	information	= Info_Mod_Alrik_Kampf_Info;
	permanent	= 1;
	important	= 0;
	description	= "You're my second opponent in the tournament.";
};

FUNC INT Info_Mod_Alrik_Kampf_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alrik_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Andre_Turnier2))
	&& (Mod_MilizTurnier == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alrik_Kampf_Info()
{
	AI_Output(hero, self, "Info_Mod_Alrik_Kampf_15_00"); //You're my second opponent in the tournament.
	AI_Output(self, hero, "Info_Mod_Alrik_Kampf_09_01"); //Okay, you ready?

	Info_ClearChoices	(Info_Mod_Alrik_Kampf);
	
	Info_AddChoice	(Info_Mod_Alrik_Kampf, "Not yet....", Info_Mod_Alrik_Kampf_Nein);
	Info_AddChoice	(Info_Mod_Alrik_Kampf, "Yeah, let's get started...", Info_Mod_Alrik_Kampf_Ja);
};

FUNC VOID Info_Mod_Alrik_Kampf_Nein()
{
	AI_Output(hero, self, "Info_Mod_Alrik_Kampf_Nein_15_00"); //Not yet....
	AI_Output(self, hero, "Info_Mod_Alrik_Kampf_Nein_09_01"); //Okay, come as soon as you're ready.

	Info_ClearChoices	(Info_Mod_Alrik_Kampf);
};

FUNC VOID Info_Mod_Alrik_Kampf_Ja()
{
	AI_Output(hero, self, "Info_Mod_Alrik_Kampf_Ja_15_00"); //Yeah, let's get started...
	AI_Output(self, hero, "Info_Mod_Alrik_Kampf_Ja_09_01"); //Okay.

	Mod_MilizTurnier = 5;

	AI_StopProcessInfos	(self);
	B_Attack	(self, hero, AR_NONE, 1);

	self.aivar[AIV_VictoryXPGiven] = FALSE;
};

INSTANCE Info_Mod_Alrik_KampfEnde (C_INFO)
{
	npc		= Mod_547_NONE_Alrik_NW;
	nr		= 1;
	condition	= Info_Mod_Alrik_KampfEnde_Condition;
	information	= Info_Mod_Alrik_KampfEnde_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alrik_KampfEnde_Condition()
{
	if (Mod_MilizTurnier == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alrik_KampfEnde_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Alrik_KampfEnde_09_00"); //You're really good. You should come and work out with me sometime.

			Mod_MilizTurnier = 6;
			
			B_StartOtherRoutine	(Mod_547_NONE_Alrik_NW,	"START");
				
			B_LogEntry	(TOPIC_MOD_MILIZTURNIER, "I won my fight against Alrik. I should talk to Lord Andre now.");
	
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Alrik_KampfEnde_09_01"); //Well, that was nothing. Now I may become a member of the militia. If you want, you can come to my place sometime and we can work out together.

			Mod_MilizTurnier = 7;

			B_LogEntry	(TOPIC_MOD_MILIZTURNIER, "I lost my fight against Alrik. I should talk to Lord Andre now.");

			B_SetTopicStatus	(TOPIC_MOD_MILIZTURNIER, LOG_FAILED);
		}
		else //FIGHT_CANCEL
		{
			AI_Output (self, other,"Info_Mod_Alrik_KampfEnde_09_02"); //You ran away, and that's how I won. It's been a dumb thing for you.

			Mod_MilizTurnier = 7;

			B_LogEntry	(TOPIC_MOD_MILIZTURNIER, "I lost my fight against Alrik. I should talk to Lord Andre now.");

			B_SetTopicStatus	(TOPIC_MOD_MILIZTURNIER, LOG_FAILED);
		};
		
					
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};

	B_StartOtherRoutine	(Mod_1176_MIL_Miliz_NW, "START");
	B_StartOtherRoutine	(Mod_1177_MIL_Miliz_NW, "START");
	B_StartOtherRoutine	(Mod_1175_MIL_Miliz_NW, "START");
	B_StartOtherRoutine	(Mod_755_MIL_Wambo_NW, "START");
};

INSTANCE Info_Mod_Alrik_Lehrer (C_INFO)
{
	npc		= Mod_547_NONE_Alrik_NW;
	nr		= 1;
	condition	= Info_Mod_Alrik_Lehrer_Condition;
	information	= Info_Mod_Alrik_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me something?";
};

FUNC INT Info_Mod_Alrik_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alrik_Hi))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alrik_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Alrik_Lehrer_09_00"); //I can teach you how to handle a hand.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_STADT, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_STADT, "Alrik can teach me how to deal with one-handed people.");
};

INSTANCE Info_Mod_Alrik_Lernen (C_INFO)
{
	npc		= Mod_547_NONE_Alrik_NW;
	nr		= 1;
	condition	= Info_Mod_Alrik_Lernen_Condition;
	information	= Info_Mod_Alrik_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to learn.";
};

FUNC INT Info_Mod_Alrik_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alrik_Lehrer))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alrik_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Alrik_Lernen_15_00"); //I want to learn.

	Info_ClearChoices	(Info_Mod_Alrik_Lernen);

	Info_AddChoice	(Info_Mod_Alrik_Lernen, DIALOG_BACK, Info_Mod_Alrik_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Alrik_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Alrik_Lernen_1H_5);
	Info_AddChoice	(Info_Mod_Alrik_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Alrik_Lernen_1H_1);
};

FUNC VOID Info_Mod_Alrik_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Alrik_Lernen);
};

FUNC VOID Info_Mod_Alrik_Lernen_1H_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_1H, 5, 60)
	{
		Info_ClearChoices	(Info_Mod_Alrik_Lernen);

		Info_AddChoice	(Info_Mod_Alrik_Lernen, DIALOG_BACK, Info_Mod_Alrik_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Alrik_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Alrik_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Alrik_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Alrik_Lernen_1H_1);
	};
};

FUNC VOID Info_Mod_Alrik_Lernen_1H_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_1H, 1, 60)
	{
		Info_ClearChoices	(Info_Mod_Alrik_Lernen);

		Info_AddChoice	(Info_Mod_Alrik_Lernen, DIALOG_BACK, Info_Mod_Alrik_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Alrik_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Alrik_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Alrik_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Alrik_Lernen_1H_1);
	};
};

INSTANCE Info_Mod_Alrik_Pickpocket (C_INFO)
{
	npc		= Mod_547_NONE_Alrik_NW;
	nr		= 1;
	condition	= Info_Mod_Alrik_Pickpocket_Condition;
	information	= Info_Mod_Alrik_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Alrik_Pickpocket_Condition()
{
	C_Beklauen	(36, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Alrik_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Alrik_Pickpocket);

	Info_AddChoice	(Info_Mod_Alrik_Pickpocket, DIALOG_BACK, Info_Mod_Alrik_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Alrik_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Alrik_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Alrik_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Alrik_Pickpocket);
};

FUNC VOID Info_Mod_Alrik_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Alrik_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Alrik_Pickpocket);

		Info_AddChoice	(Info_Mod_Alrik_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Alrik_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Alrik_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Alrik_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Alrik_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Alrik_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Alrik_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Alrik_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Alrik_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Alrik_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Alrik_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Alrik_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Alrik_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Alrik_EXIT (C_INFO)
{
	npc		= Mod_547_NONE_Alrik_NW;
	nr		= 1;
	condition	= Info_Mod_Alrik_EXIT_Condition;
	information	= Info_Mod_Alrik_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Alrik_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Alrik_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
