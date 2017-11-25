var int MerkLebenspunkteTill;
var int MerkLebenspunkteHeldTill;

INSTANCE Info_Mod_Till_Hi (C_INFO)
{
	npc		= Mod_541_NONE_Till_NW;
	nr		= 1;
	condition	= Info_Mod_Till_Hi_Condition;
	information	= Info_Mod_Till_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Till_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Till_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Till_Hi_24_01"); //I'm Till, coming from Sekob's farm.
};

INSTANCE Info_Mod_Till_Bronko (C_INFO)
{
	npc		= Mod_541_NONE_Till_NW;
	nr		= 1;
	condition	= Info_Mod_Till_Bronko_Condition;
	information	= Info_Mod_Till_Bronko_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bronko told you to get your ass on the field.";
};

FUNC INT Info_Mod_Till_Bronko_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bronko_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Till_Bronko_Info()
{
	AI_Output(hero, self, "Info_Mod_Till_Bronko_15_00"); //Bronko told you to get your ass on the field.
	AI_Output(self, hero, "Info_Mod_Till_Bronko_24_01"); //Tell Bronko he can do it himself.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_BRONKO_STREIT, "Till counters Till. I guess I'll have to get ready for some running.");
};

INSTANCE Info_Mod_Till_Bronko02 (C_INFO)
{
	npc		= Mod_541_NONE_Till_NW;
	nr		= 1;
	condition	= Info_Mod_Till_Bronko02_Condition;
	information	= Info_Mod_Till_Bronko02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bronko says you should clean your nose first.";
};

FUNC INT Info_Mod_Till_Bronko02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bronko_Streit02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Till_Bronko02_Info()
{
	AI_Output(hero, self, "Info_Mod_Till_Bronko02_15_00"); //Bronko says you should clean your nose first.
	AI_Output(self, hero, "Info_Mod_Till_Bronko02_24_01"); //That pompous fool can't even add up one and one.
	AI_Output(hero, self, "Info_Mod_Till_Bronko02_15_02"); //Can you do that?
	AI_Output(self, hero, "Info_Mod_Till_Bronko02_24_03"); //It doesn't matter. You better ask Bronko.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_BRONKO_STREIT, "I'm supposed to ask Bronko what one and one means...");
};

INSTANCE Info_Mod_Till_Bronko03 (C_INFO)
{
	npc		= Mod_541_NONE_Till_NW;
	nr		= 1;
	condition	= Info_Mod_Till_Bronko03_Condition;
	information	= Info_Mod_Till_Bronko03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bronko added up one and one (...) )";
};

FUNC INT Info_Mod_Till_Bronko03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bronko_Streit03))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Till_Bronko03_Info()
{
	AI_Output(hero, self, "Info_Mod_Till_Bronko03_15_00"); //Bronko put one and one together and got eleven.
	AI_Output(self, hero, "Info_Mod_Till_Bronko03_24_01"); //Son of a bitch can do the math. But he's a son of a bitch. Tell him that.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_BRONKO_STREIT, "Now I'm supposed to tell Bronko he's a son of a bitch.");
};

INSTANCE Info_Mod_Till_Bronko04 (C_INFO)
{
	npc		= Mod_541_NONE_Till_NW;
	nr		= 1;
	condition	= Info_Mod_Till_Bronko04_Condition;
	information	= Info_Mod_Till_Bronko04_Info;
	permanent	= 0;
	important	= 0;
	description	= "You'll get to hear from Bronko in a minute.";
};

FUNC INT Info_Mod_Till_Bronko04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bronko_Streit04))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Till_Bronko04_Info()
{
	AI_Output(hero, self, "Info_Mod_Till_Bronko04_15_00"); //You'll get to hear from Bronko in a minute.
	AI_Output(self, hero, "Info_Mod_Till_Bronko04_24_01"); //Tell the braggart to come here. Tell him that.
	AI_Output(hero, self, "Info_Mod_Till_Bronko04_15_02"); //Why don't you tell him yourself?
	AI_Output(self, hero, "Info_Mod_Till_Bronko04_24_03"); //I will, I will.

	B_LogEntry	(TOPIC_MOD_BRONKO_STREIT, "I settled the dispute by letting them go at each other. Silence at last. Maybe the loser has gold on him.");
	B_SetTopicStatus	(TOPIC_MOD_BRONKO_STREIT, LOG_SUCCESS);

	B_GivePlayerXP	(50);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	B_Attack	(self, Mod_103_BAU_Bronko_NW, AR_None, 0);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Till_InnosNase (C_INFO)
{
	npc		= Mod_541_NONE_Till_NW;
	nr		= 1;
	condition	= Info_Mod_Till_InnosNase_Condition;
	information	= Info_Mod_Till_InnosNase_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Till_InnosNase_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_AndreVermaechtnis2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Till_InnosNase_Info()
{
	AI_Output(self, hero, "Info_Mod_Till_InnosNase_24_00"); //Ahh, so now we can get started.
	AI_Output(self, hero, "Info_Mod_Till_InnosNase_24_01"); //You show us the way and we follow you and look around attentively.
	AI_Output(self, hero, "Info_Mod_Till_InnosNase_24_02"); //And the sooner we're done, the sooner we can get out of this stench.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ASSIS");
	B_StartOtherRoutine	(Mod_744_MIL_Pablo_NW, "ASSIS");
	B_StartOtherRoutine	(Mod_968_MIL_Bilgot_NW, "ASSIS");
	
	Mod_744_MIL_Pablo_NW.aivar[AIV_IGNORE_Theft] = TRUE;
	Mod_968_MIL_Bilgot_NW.aivar[AIV_IGNORE_Theft] = TRUE;
};

INSTANCE Info_Mod_Till_InnosNase2 (C_INFO)
{
	npc		= Mod_541_NONE_Till_NW;
	nr		= 1;
	condition	= Info_Mod_Till_InnosNase2_Condition;
	information	= Info_Mod_Till_InnosNase2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Till_InnosNase2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Halbtoter_Hi))
	&& (Npc_GetDistToWP(hero, "WP_ASSASSINE_08") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Till_InnosNase2_Info()
{
	AI_Output(self, hero, "Info_Mod_Till_InnosNase2_24_00"); //Well, sounds like the robot took care of those dark characters, whoever they were.
	AI_Output(self, hero, "Info_Mod_Till_InnosNase2_24_01"); //Must have been quite a fight. The cave even collapsed.
	AI_Output(self, hero, "Info_Mod_Till_InnosNase2_24_02"); //Well, anyway, the work is done and we can go, right?
	AI_Output(hero, self, "Info_Mod_Till_InnosNase2_15_03"); //Lord Hagen said the source should be removed.
	AI_Output(self, hero, "Info_Mod_Till_InnosNase2_24_04"); //Is that supposed to mean...? Ohh, nope.
	AI_Output(self, hero, "Info_Mod_Till_InnosNase2_24_05"); //Wouldn't the robot at least have been able to clean up after himself?
	AI_Output(self, hero, "Info_Mod_Till_InnosNase2_24_06"); //Now I get to do the crap.
	AI_Output(self, hero, "Info_Mod_Till_InnosNase2_24_07"); //And yet the farm was so beautiful...

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ASSIS2");
	B_StartOtherRoutine	(Mod_744_MIL_Pablo_NW, "ASSIS2");
	B_StartOtherRoutine	(Mod_968_MIL_Bilgot_NW, "ASSIS2");

	B_LogEntry	(TOPIC_MOD_MILIZ_NASE, "Apparently, the robot has killed some scoundrels in a nearby cave, who are now drowning. City guards will bring the problem underground.");

	B_KillNpc	(Mod_7681_ASS_Halbtoter_NW);
};

INSTANCE Info_Mod_Till_InnosNase3 (C_INFO)
{
	npc		= Mod_541_NONE_Till_NW;
	nr		= 1;
	condition	= Info_Mod_Till_InnosNase3_Condition;
	information	= Info_Mod_Till_InnosNase3_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Till_InnosNase3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Till_InnosNase))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Till_InnosNase2))
	&& (Npc_RefuseTalk(self) == FALSE)
	&& (Npc_GetDistToWP(hero, "NW_CITY_CONNECT_FOREST") > 1500)
	&& (Npc_GetDistToWP(hero, "WP_ASSASSINE_03") > 1500)
	&& (Npc_GetDistToWP(hero, "WP_ASSASSINE_04") > 1500)
	&& (Npc_GetDistToWP(hero, "WP_ASSASSINE_06") > 1500)
	&& (Npc_GetDistToWP(hero, "WP_ASSASSINE_07") > 1500)
	&& (Npc_GetDistToWP(hero, "WP_ASSASSINE_08") > 1500)
	&& (Npc_GetDistToWP(hero, "WP_ASSASSINE_09") > 1500)
	&& (Npc_GetDistToWP(hero, "WP_ASSASSINE_10") > 1500)
	&& (Npc_GetDistToWP(hero, "WP_ASSASSINE_11") > 1500)
	&& (Npc_GetDistToWP(hero, "WP_ASSASSINE_05") > 1500)
	&& (Npc_GetDistToWP(hero, "WP_ASSASSINE_02") > 1500)
	&& (Npc_GetDistToWP(hero, "WP_ASSASSINE_01") > 1500)
	&& (Npc_GetDistToWP(hero, "NW_CITY_TO_LIGHTHOUSE_04") > 1500)
	&& (Npc_GetDistToWP(hero, "NW_CITY_TO_LIGHTHOUSE_03") > 1500)
	&& (Npc_GetDistToWP(hero, "NW_CITY_TO_LIGHTHOUSE_02") > 1500)
	&& (Npc_GetDistToWP(hero, "NW_CITY_TO_LIGHTHOUSE_01") > 1500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Till_InnosNase3_Info()
{
	AI_Output(self, hero, "Info_Mod_Till_InnosNase3_24_00"); //There's no smell of putrefaction left here. We have to go back.

	AI_StopProcessInfos	(self);

	Npc_SetRefuseTalk (self, 30);
};

INSTANCE Info_Mod_Till_NachGildenstories (C_INFO)
{
	npc		= Mod_541_NONE_Till_NW;
	nr		= 1;
	condition	= Info_Mod_Till_NachGildenstories_Condition;
	information	= Info_Mod_Till_NachGildenstories_Info;
	permanent	= 0;
	important	= 0;
	description	= "Till?";
};

FUNC INT Info_Mod_Till_NachGildenstories_Condition()
{
	if (Mod_TillChange == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Till_NachGildenstories_Info()
{
	AI_Output(hero, self, "Info_Mod_Till_NachGildenstories_15_00"); //Till?

	if (hero.guild == GIL_VLK)
	|| (hero.guild == GIL_NOV)
	{
		AI_Output(self, hero, "Info_Mod_Till_NachGildenstories_24_01"); //What, you...? Ohh, forgive me, master.
	};

	if (hero.guild == GIL_VLK)
	{
		AI_Output(self, hero, "Info_Mod_Till_NachGildenstories_24_02"); //After you fire magicians rescued us all from these ice creatures, there was no doubt in my mind that I wanted to serve the monastery.
		AI_Output(self, hero, "Info_Mod_Till_NachGildenstories_24_03"); //To be a servant of Inno must be the greatest.
	}
	else if (hero.guild == GIL_NOV)
	{
		AI_Output(self, hero, "Info_Mod_Till_NachGildenstories_24_04"); //After you water magicians saved us all from these monsters, there was no doubt in my mind that I too would like to fight for your cause.
		AI_Output(self, hero, "Info_Mod_Till_NachGildenstories_24_05"); //To be a servant of Adanos must be the greatest.
	};

	if (hero.guild == GIL_VLK)
	|| (hero.guild == GIL_NOV)
	{
		AI_Output(hero, self, "Info_Mod_Till_NachGildenstories_15_06"); //Well, not always harmless.
	};

	if (hero.guild == GIL_VLK)
	{
		AI_Output(hero, self, "Info_Mod_Till_NachGildenstories_15_07"); //Some novices have lost their lives in the ice age.
	}
	else if (hero.guild == GIL_NOV)
	{
		AI_Output(hero, self, "Info_Mod_Till_NachGildenstories_15_08"); //Some of the fighters lost their lives in the grazing plateau.
	};

	if (hero.guild == GIL_VLK)
	|| (hero.guild == GIL_NOV)
	{
		AI_Output(self, hero, "Info_Mod_Till_NachGildenstories_24_09"); //What! What?!

		AI_TurnAway	(self, hero);
	};

	if (hero.guild == GIL_VLK)
	{
		AI_Output(self, hero, "Info_Mod_Till_NachGildenstories_24_10"); //That's why they took me to the monastery so quickly.
	}
	else if (hero.guild == GIL_NOV)
	{
		AI_Output(self, hero, "Info_Mod_Till_NachGildenstories_24_11"); //That's why they made me a novice so quickly.
	};

	if (hero.guild == GIL_VLK)
	|| (hero.guild == GIL_NOV)
	{
		AI_Output(self, hero, "Info_Mod_Till_NachGildenstories_24_12"); //If that goes well....
	};

	if (hero.guild == GIL_MIL)
	{
		AI_Output(self, hero, "Info_Mod_Till_NachGildenstories_24_13"); //What, you...? Ohh, the dragon slayer.
		AI_Output(self, hero, "Info_Mod_Till_NachGildenstories_24_14"); //After you mercenaries had freed us all from these dragons, there was no doubt in my mind that I too would like to fight at your side.
		AI_Output(self, hero, "Info_Mod_Till_NachGildenstories_24_15"); //To be a mercenary must be the greatest. And my father has nothing more to say to me now!
	};

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Till_ArenaFighter (C_INFO)
{
	npc		= Mod_541_NONE_Till_NW;
	nr		= 1;
	condition	= Info_Mod_Till_ArenaFighter_Condition;
	information	= Info_Mod_Till_ArenaFighter_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Till_ArenaFighter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Turnier1))
	&& (Mod_MilizTurnier == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Till_ArenaFighter_Info()
{
	AI_Output(self, hero, "Info_Mod_Till_ArenaFighter_24_00"); //Hey!
};

INSTANCE Info_Mod_Till_Kampf (C_INFO)
{
	npc		= Mod_541_NONE_Till_NW;
	nr		= 1;
	condition	= Info_Mod_Till_Kampf_Condition;
	information	= Info_Mod_Till_Kampf_Info;
	permanent	= 1;
	important	= 0;
	description	= "You're my first opponent in the tournament.";
};

FUNC INT Info_Mod_Till_Kampf_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Till_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Andre_Turnier1))
	&& (Mod_MilizTurnier	==	0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Till_Kampf_Info()
{
	AI_Output(hero, self, "Info_Mod_Till_Kampf_15_00"); //You're my first opponent in the tournament.
	AI_Output(self, hero, "Info_Mod_Till_Kampf_24_01"); //Are you one of the other candidates?
	AI_Output(hero, self, "Info_Mod_Till_Kampf_15_02"); //There's supposed to be.
	AI_Output(self, hero, "Info_Mod_Till_Kampf_24_03"); //All right, you ready?

	self.fight_tactic = FAI_HUMAN_STRONG;

	Info_ClearChoices	(Info_Mod_Till_Kampf);
	
	Info_AddChoice	(Info_Mod_Till_Kampf, "Not yet....", Info_Mod_Till_Kampf_Nein);
	Info_AddChoice	(Info_Mod_Till_Kampf, "Yeah, let's get started...", Info_Mod_Till_Kampf_Ja);
};

FUNC VOID Info_Mod_Till_Kampf_Nein()
{
	AI_Output(hero, self, "Info_Mod_Till_Kampf_Nein_15_00"); //Not yet....
	AI_Output(self, hero, "Info_Mod_Till_Kampf_Nein_24_01"); //Whatever you say. Come as soon as you're ready.

	Info_ClearChoices	(Info_Mod_Till_Kampf);
};

FUNC VOID Info_Mod_Till_Kampf_Ja()
{
	AI_Output(hero, self, "Info_Mod_Till_Kampf_Ja_15_00"); //Yeah, let's get started...
	AI_Output(self, hero, "Info_Mod_Till_Kampf_Ja_24_01"); //Here we go!

	Mod_MilizTurnier	=	1;

	AI_StopProcessInfos	(self);
	B_Attack	(self, hero, AR_NONE, 1);
};

INSTANCE Info_Mod_Till_KampfEnde (C_INFO)
{
	npc		= Mod_541_NONE_Till_NW;
	nr		= 1;
	condition	= Info_Mod_Till_KampfEnde_Condition;
	information	= Info_Mod_Till_KampfEnde_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Till_KampfEnde_Condition()
{
	if (Mod_MilizTurnier == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Till_KampfEnde_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Till_KampfEnde_24_00"); //You're really good. I'm going back to my father's farm, maybe we'll meet again sometime.

			Mod_MilizTurnier = 2;
			
			B_StartOtherRoutine	(Mod_541_NONE_Till_NW,	"PRESTART");
				
			B_LogEntry	(TOPIC_MOD_MILIZTURNIER, "I won my fight against Till. I should talk to Lord Andre now.");
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Till_KampfEnde_24_01"); //Well, that was nothing. Now I may become a member of the militia.

			Mod_MilizTurnier = 3;

			B_LogEntry	(TOPIC_MOD_MILIZTURNIER, "I lost my fight against Till. I should talk to Lord Andre now.");

			B_SetTopicStatus	(TOPIC_MOD_MILIZTURNIER, LOG_FAILED);
		}
		else //FIGHT_CANCEL
		{
			AI_Output (self, other,"Info_Mod_Till_KampfEnde_24_02"); //You ran away, and that's how I won. It's been a dumb thing for you.

			Mod_MilizTurnier = 3;

			B_LogEntry	(TOPIC_MOD_MILIZTURNIER, "I lost my fight against Till. I should talk to Lord Andre now.");

			B_SetTopicStatus	(TOPIC_MOD_MILIZTURNIER, LOG_FAILED);
		};
		
					
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};

	self.fight_tactic = FAI_HUMAN_COWARD;

	B_StartOtherRoutine	(Mod_1176_MIL_Miliz_NW, "START");
	B_StartOtherRoutine	(Mod_1177_MIL_Miliz_NW, "START");
	B_StartOtherRoutine	(Mod_1175_MIL_Miliz_NW, "START");
	B_StartOtherRoutine	(Mod_755_MIL_Wambo_NW, "START");
};

INSTANCE Info_Mod_Till_Pickpocket (C_INFO)
{
	npc		= Mod_541_NONE_Till_NW;
	nr		= 1;
	condition	= Info_Mod_Till_Pickpocket_Condition;
	information	= Info_Mod_Till_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Till_Pickpocket_Condition()
{
	C_Beklauen	(20, ItMi_Gold, 10);
};

FUNC VOID Info_Mod_Till_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Till_Pickpocket);

	Info_AddChoice	(Info_Mod_Till_Pickpocket, DIALOG_BACK, Info_Mod_Till_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Till_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Till_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Till_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Till_Pickpocket);
};

FUNC VOID Info_Mod_Till_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Till_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Till_Pickpocket);

		Info_AddChoice	(Info_Mod_Till_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Till_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Till_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Till_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Till_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Till_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Till_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Till_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Till_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Till_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Till_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Till_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Till_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Till_EXIT (C_INFO)
{
	npc		= Mod_541_NONE_Till_NW;
	nr		= 1;
	condition	= Info_Mod_Till_EXIT_Condition;
	information	= Info_Mod_Till_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Till_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Till_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
