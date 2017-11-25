INSTANCE Info_Mod_Khaled_Hi (C_INFO)
{
	npc		= Mod_788_SLD_Khaled_MT;
	nr		= 1;
	condition	= Info_Mod_Khaled_Hi_Condition;
	information	= Info_Mod_Khaled_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Khaled_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Khaled_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Khaled_Hi_11_00"); //Stop, only mercenaries and prospectors are allowed in.

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(hero, Khaled_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_FirstWarnGiven;
};

INSTANCE Info_Mod_Khaled_Sumpfi (C_INFO)
{
	npc		= Mod_788_SLD_Khaled_MT;
	nr		= 1;
	condition	= Info_Mod_Khaled_Sumpfi_Condition;
	information	= Info_Mod_Khaled_Sumpfi_Info;
	permanent	= 0;
	important	= 0;
	description	= "There's a guy from the swamp camp in there.";
};

FUNC INT Info_Mod_Khaled_Sumpfi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Khaled_Sumpfi_Info()
{
	AI_Output(hero, self, "Info_Mod_Khaled_Sumpfi_15_00"); //There's a guy from the swamp camp in there.
	AI_Output(self, hero, "Info_Mod_Khaled_Sumpfi_11_01"); //I don't care, I'm only responsible for making sure that only people who are allowed in get in.
	AI_Output(hero, self, "Info_Mod_Khaled_Sumpfi_15_02"); //But how...
	AI_Output(self, hero, "Info_Mod_Khaled_Sumpfi_11_03"); //I'm not interested. Since I've been guarding this place, no one has come in that can't get in.
};

INSTANCE Info_Mod_Khaled_Soeldner (C_INFO)
{
	npc		= Mod_788_SLD_Khaled_MT;
	nr		= 1;
	condition	= Info_Mod_Khaled_Soeldner_Condition;
	information	= Info_Mod_Khaled_Soeldner_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm a mercenary.";
};

FUNC INT Info_Mod_Khaled_Soeldner_Condition()
{
	if (hero.guild == GIL_MIL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Khaled_Soeldner_Info()
{
	AI_Output(hero, self, "Info_Mod_Khaled_Soeldner_15_00"); //I'm a mercenary.
	AI_Output(self, hero, "Info_Mod_Khaled_Soeldner_11_01"); //It's okay, you're allowed in.

	self.aivar[AIV_PASSGATE] = TRUE;
};

INSTANCE Info_Mod_Khaled_KenneLee (C_INFO)
{
	npc		= Mod_788_SLD_Khaled_MT;
	nr		= 1;
	condition	= Info_Mod_Khaled_KenneLee_Condition;
	information	= Info_Mod_Khaled_KenneLee_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've known Lee before.";
};

FUNC INT Info_Mod_Khaled_KenneLee_Condition()
{
	if (hero.guild != GIL_MIL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Khaled_KenneLee_Info()
{
	AI_Output(hero, self, "Info_Mod_Khaled_KenneLee_15_00"); //I've known Lee before.
	AI_Output(self, hero, "Info_Mod_Khaled_KenneLee_11_01"); //Sure, anyone can say that. You can't get in here without his express permission.

	Log_CreateTopic	(TOPIC_MOD_NLINKNEIPE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NLINKNEIPE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NLINKNEIPE, "As long as I am not a mercenary or prospector, I need Lee's express permission to enter the bar of the New Camp.");
};

INSTANCE Info_Mod_Khaled_KenneLee2 (C_INFO)
{
	npc		= Mod_788_SLD_Khaled_MT;
	nr		= 1;
	condition	= Info_Mod_Khaled_KenneLee2_Condition;
	information	= Info_Mod_Khaled_KenneLee2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm a prospector now. Here is the proof.";
};

FUNC INT Info_Mod_Khaled_KenneLee2_Condition()
{
	if (Npc_HasItems(hero, ItWr_LeeInKneipe) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Khaled_KenneLee2_Info()
{
	AI_Output(hero, self, "Info_Mod_Khaled_KenneLee2_15_00"); //I'm a prospector now. Here is the proof.
	AI_Output(self, hero, "Info_Mod_Khaled_KenneLee2_11_01"); //Let me have a look.

	B_GiveInvItems	(hero, self, ItWr_LeeInKneipe, 1);

	B_USEFAKESCROLL();

	AI_Output(self, hero, "Info_Mod_Khaled_KenneLee2_11_02"); //Hmm, actually, you did swing your pickaxe for us.
	AI_Output(self, hero, "Info_Mod_Khaled_KenneLee2_11_03"); //All right, you can go in. Have a good time.

	B_SetTopicStatus	(TOPIC_MOD_NLINKNEIPE, LOG_SUCCESS);

	B_GivePlayerXP	(50);

	self.aivar[AIV_PASSGATE] = TRUE;
};

const string Khaled_Checkpoint	= "NC_TAVERN_IN";	//WP hinter City-Tor vom Spielstart aus!

instance Info_Mod_Khaled_FirstWarn (C_INFO)
{
	npc		= Mod_788_SLD_Khaled_MT;
	nr		= 1;
	condition	= Info_Mod_Khaled_FirstWarn_Condition;
	information	= Info_Mod_Khaled_FirstWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

func int Info_Mod_Khaled_FirstWarn_Condition()
{
	if (Npc_GetDistToWP(hero, Khaled_Checkpoint) <= 700) //NICHT von hinten!
	{
		Npc_SetRefuseTalk(self,5);
		return FALSE;
	};
	
	if ((self.aivar[AIV_Guardpassage_Status] == GP_NONE)
	&& (self.aivar[AIV_PASSGATE] == FALSE)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)	== TRUE)
	&& (Npc_RefuseTalk(self) == FALSE))
	{
		return TRUE;
	};
};

func void Info_Mod_Khaled_FirstWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_Khaled_FirstWarn_11_00"); //HALT!

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(hero, Khaled_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_FirstWarnGiven;
};

// ************************************************************
// 				  	Guard_Passage - Second Warn
// ************************************************************

INSTANCE Info_Mod_Khaled_SecondWarn (C_INFO)
{
	npc		= Mod_788_SLD_Khaled_MT;
	nr		= 1;
	condition	= Info_Mod_Khaled_SecondWarn_Condition;
	information	= Info_Mod_Khaled_SecondWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_Khaled_SecondWarn_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_FirstWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)	== TRUE)
	&& (Npc_GetDistToWP(hero, Khaled_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50))) 
	{
		return TRUE;
	};
};

func void Info_Mod_Khaled_SecondWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_Khaled_SecondWarn_11_00"); //I'll tell you one last time. One more step and you'll enter the world of pain!

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP (hero,Khaled_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_SecondWarnGiven;	
	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 				  	Guard_Passage - Attack
// ************************************************************

INSTANCE Info_Mod_Khaled_Attack (C_INFO)
{
	npc		= Mod_788_SLD_Khaled_MT;
	nr		= 1;
	condition	= Info_Mod_Khaled_Attack_Condition;
	information	= Info_Mod_Khaled_Attack_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_Khaled_Attack_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_SecondWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == TRUE)
	&& (Npc_GetDistToWP(hero,Khaled_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50)))
	{
		return TRUE;
	};
};

func void Info_Mod_Khaled_Attack_Info()
{
	hero.aivar[AIV_LastDistToWP] = 0;
	self.aivar[AIV_Guardpassage_Status] = GP_NONE;						//wird auch in ZS_Attack resettet
	
	AI_Output (self, hero,"Info_Mod_Khaled_Attack_11_00"); //You asked for it...

	AI_StopProcessInfos	(self);	

	B_Attack (self, hero, AR_GuardStopsIntruder, 0); 
};

INSTANCE Info_Mod_Khaled_Pickpocket (C_INFO)
{
	npc		= Mod_788_SLD_Khaled_MT;
	nr		= 1;
	condition	= Info_Mod_Khaled_Pickpocket_Condition;
	information	= Info_Mod_Khaled_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Khaled_Pickpocket_Condition()
{
	C_Beklauen	(107, ItMi_Gold, 43);
};

FUNC VOID Info_Mod_Khaled_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Khaled_Pickpocket);

	Info_AddChoice	(Info_Mod_Khaled_Pickpocket, DIALOG_BACK, Info_Mod_Khaled_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Khaled_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Khaled_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Khaled_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Khaled_Pickpocket);
};

FUNC VOID Info_Mod_Khaled_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Khaled_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Khaled_Pickpocket);

		Info_AddChoice	(Info_Mod_Khaled_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Khaled_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Khaled_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Khaled_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Khaled_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Khaled_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Khaled_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Khaled_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Khaled_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Khaled_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Khaled_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Khaled_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Khaled_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Khaled_EXIT (C_INFO)
{
	npc		= Mod_788_SLD_Khaled_MT;
	nr		= 1;
	condition	= Info_Mod_Khaled_EXIT_Condition;
	information	= Info_Mod_Khaled_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Khaled_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Khaled_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
