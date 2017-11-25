INSTANCE Info_Mod_HofstaatTuersteher_Hi (C_INFO)
{
	npc		= Mod_7020_HS_Tuersteher_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatTuersteher_Hi_Condition;
	information	= Info_Mod_HofstaatTuersteher_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatTuersteher_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatTuersteher_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatTuersteher_Hi_29_00"); //Hey! You can't go through here!
	AI_Output(hero, self, "Info_Mod_HofstaatTuersteher_Hi_15_01"); //Why not?
	AI_Output(self, hero, "Info_Mod_HofstaatTuersteher_Hi_29_02"); //Only members of the court are allowed in!
	AI_Output(hero, self, "Info_Mod_HofstaatTuersteher_Hi_15_03"); //Court?
	AI_Output(self, hero, "Info_Mod_HofstaatTuersteher_Hi_29_04"); //Yeah, man! The rabble has no place in the castle!
	AI_Output(hero, self, "Info_Mod_HofstaatTuersteher_Hi_15_05"); //And how do I become a member of the court?
	AI_Output(self, hero, "Info_Mod_HofstaatTuersteher_Hi_29_06"); //First of all, you must obtain citizenship for our empire here.
	AI_Output(hero, self, "Info_Mod_HofstaatTuersteher_Hi_15_07"); //How do I become a citizen?
	AI_Output(self, hero, "Info_Mod_HofstaatTuersteher_Hi_29_08"); //You have two choices: marry one of us or open a shop.
	AI_Output(self, hero, "Info_Mod_HofstaatTuersteher_Hi_29_09"); //Oh, by the way, if you were planning to get married, I wouldn't stick to the peasants.
	AI_Output(hero, self, "Info_Mod_HofstaatTuersteher_Hi_15_10"); //Why not?
	AI_Output(self, hero, "Info_Mod_HofstaatTuersteher_Hi_29_11"); //Peasants are just rabble! You will be considered a rabble, but not a member of the state. To do this, you would have to move into a house with the farmer's wife...

	B_LogEntry	(TOPIC_MOD_SEKTE_FREUDENSPENDER, "The doorman of the castle says that I am not allowed to enter it until I am a member of the court. In order to achieve this, I have two options: I marry a farmyard governor or I open a shop. However, if I should marry a farmer's wife, then I have to move with her to the castle.");
};

INSTANCE Info_Mod_HofstaatTuersteher_NachFest (C_INFO)
{
	npc		= Mod_7020_HS_Tuersteher_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatTuersteher_NachFest_Condition;
	information	= Info_Mod_HofstaatTuersteher_NachFest_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatTuersteher_NachFest_Condition()
{
	if (Mod_SL_KingAtSwamp == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatTuersteher_NachFest_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatTuersteher_NachFest_29_00"); //Hey, aren't you the royal pool attendant? The King is looking for you.

	Log_CreateTopic	(TOPIC_MOD_SEKTE_KING, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SEKTE_KING, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SEKTE_KING, "The doorman thinks the King is looking for me. I should stop by his place.");

	AI_StopProcessInfos	(self);
};

const string HofstaatTuersteher_Checkpoint	= "REL_277";	//WP hinter City-Tor vom Spielstart aus!

instance Info_Mod_HofstaatTuersteher_FirstWarn (C_INFO)
{
	npc		= Mod_7020_HS_Tuersteher_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatTuersteher_FirstWarn_Condition;
	information	= Info_Mod_HofstaatTuersteher_FirstWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

func int Info_Mod_HofstaatTuersteher_FirstWarn_Condition()
{
	if (Npc_GetDistToWP(hero, HofstaatTuersteher_Checkpoint) <= 500) //NICHT von hinten!
	{
		Npc_SetRefuseTalk(self,5);
		return FALSE;
	};
	
	if ((self.aivar[AIV_Guardpassage_Status] == GP_NONE)
	&& (self.aivar[AIV_PASSGATE] == FALSE)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)	== TRUE)
	&& (Npc_RefuseTalk(self) == FALSE))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Esteban_AtVM))
	|| (Npc_KnowsInfo(hero, Info_Mod_Esteban_AtVM4)))
	{
		return TRUE;
	};
};

func void Info_Mod_HofstaatTuersteher_FirstWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_HofstaatTuersteher_FirstWarn_29_00"); //HALT! You're not allowed in here yet.

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(hero, HofstaatTuersteher_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_FirstWarnGiven;
};

// ************************************************************
// 				  	Guard_Passage - Second Warn
// ************************************************************

INSTANCE Info_Mod_HofstaatTuersteher_SecondWarn (C_INFO)
{
	npc		= Mod_7020_HS_Tuersteher_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatTuersteher_SecondWarn_Condition;
	information	= Info_Mod_HofstaatTuersteher_SecondWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_HofstaatTuersteher_SecondWarn_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_FirstWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)	== TRUE)
	&& (Npc_GetDistToWP(hero, HofstaatTuersteher_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50))) 
	{
		return TRUE;
	};
};

func void Info_Mod_HofstaatTuersteher_SecondWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_HofstaatTuersteher_SecondWarn_29_00"); //I'll tell you one last time. One more step and you'll enter the world of pain!

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP (hero,HofstaatTuersteher_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_SecondWarnGiven;	
	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 				  	Guard_Passage - Attack
// ************************************************************

INSTANCE Info_Mod_HofstaatTuersteher_Attack (C_INFO)
{
	npc		= Mod_7020_HS_Tuersteher_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatTuersteher_Attack_Condition;
	information	= Info_Mod_HofstaatTuersteher_Attack_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_HofstaatTuersteher_Attack_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_SecondWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == TRUE)
	&& (Npc_GetDistToWP(hero,HofstaatTuersteher_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50)))
	{
		return TRUE;
	};
};

func void Info_Mod_HofstaatTuersteher_Attack_Info()
{
	hero.aivar[AIV_LastDistToWP] = 0;
	self.aivar[AIV_Guardpassage_Status] = GP_NONE;						//wird auch in ZS_Attack resettet
	
	AI_Output (self, hero,"Info_Mod_HofstaatTuersteher_Attack_29_00"); //You asked for it...

	AI_StopProcessInfos	(self);	

	B_Attack (self, hero, AR_GuardStopsIntruder, 0); 
};

INSTANCE Info_Mod_HofstaatTuersteher_Pickpocket (C_INFO)
{
	npc		= Mod_7020_HS_Tuersteher_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatTuersteher_Pickpocket_Condition;
	information	= Info_Mod_HofstaatTuersteher_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_HofstaatTuersteher_Pickpocket_Condition()
{
	C_Beklauen	(75, ItMi_Gold, 28);
};

FUNC VOID Info_Mod_HofstaatTuersteher_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HofstaatTuersteher_Pickpocket);

	Info_AddChoice	(Info_Mod_HofstaatTuersteher_Pickpocket, DIALOG_BACK, Info_Mod_HofstaatTuersteher_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HofstaatTuersteher_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HofstaatTuersteher_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HofstaatTuersteher_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HofstaatTuersteher_Pickpocket);
};

FUNC VOID Info_Mod_HofstaatTuersteher_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HofstaatTuersteher_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HofstaatTuersteher_Pickpocket);

		Info_AddChoice	(Info_Mod_HofstaatTuersteher_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HofstaatTuersteher_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HofstaatTuersteher_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HofstaatTuersteher_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HofstaatTuersteher_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HofstaatTuersteher_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HofstaatTuersteher_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HofstaatTuersteher_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HofstaatTuersteher_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HofstaatTuersteher_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HofstaatTuersteher_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HofstaatTuersteher_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HofstaatTuersteher_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HofstaatTuersteher_EXIT (C_INFO)
{
	npc		= Mod_7020_HS_Tuersteher_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatTuersteher_EXIT_Condition;
	information	= Info_Mod_HofstaatTuersteher_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatTuersteher_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatTuersteher_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
