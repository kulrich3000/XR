INSTANCE Info_Mod_Lagerhauswache_Diebe (C_INFO)
{
	npc		= Mod_7611_OUT_Lagerhauswache_REL;
	nr		= 1;
	condition	= Info_Mod_Lagerhauswache_Diebe_Condition;
	information	= Info_Mod_Lagerhauswache_Diebe_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lagerhauswache_Diebe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_REL_Lagerhaus))
	&& (Npc_HasItems(hero, ItMi_Kiste) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lagerhauswache_Diebe_Info()
{
	AI_Output(self, hero, "Info_Mod_Lagerhauswache_Diebe_28_00"); //Wait a minute! Where are you going?
	AI_Output(hero, self, "Info_Mod_Lagerhauswache_Diebe_15_01"); //To the camp, dragging boxes.
	AI_Output(self, hero, "Info_Mod_Lagerhauswache_Diebe_28_02"); //And where's His box? Look, they're over there.
	AI_Output(self, hero, "Info_Mod_Lagerhauswache_Diebe_28_03"); //Come on, grab a load of pig feed... He's not paid to stand around.

	self.aivar[AIV_PASSGATE] = FALSE;
};

INSTANCE Info_Mod_Lagerhauswache_Diebe2 (C_INFO)
{
	npc		= Mod_7611_OUT_Lagerhauswache_REL;
	nr		= 1;
	condition	= Info_Mod_Lagerhauswache_Diebe2_Condition;
	information	= Info_Mod_Lagerhauswache_Diebe2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lagerhauswache_Diebe2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_REL_Lagerhaus))
	&& (Npc_HasItems(hero, ItMi_Kiste) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lagerhauswache_Diebe2_Info()
{
	AI_Output(self, hero, "Info_Mod_Lagerhauswache_Diebe2_28_00"); //Wait, he once.... ahh, a box full of pig feed for our camp.
	AI_Output(self, hero, "Info_Mod_Lagerhauswache_Diebe2_28_01"); //Come on, he moves on.

	self.aivar[AIV_PASSGATE] = TRUE;
};

INSTANCE Info_Mod_Lagerhauswache_Stadthalter (C_INFO)
{
	npc		= Mod_7611_OUT_Lagerhauswache_REL;
	nr		= 1;
	condition	= Info_Mod_Lagerhauswache_Stadthalter_Condition;
	information	= Info_Mod_Lagerhauswache_Stadthalter_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm the governor. Let me in!";
};

FUNC INT Info_Mod_Lagerhauswache_Stadthalter_Condition()
{
	if (Mod_Jim_Freudenspender == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lagerhauswache_Stadthalter_Info()
{
	AI_Output(hero, self, "Info_Mod_Lagerhauswache_Stadthalter_15_00"); //I'm the governor. Let me in!
	AI_Output(self, hero, "Info_Mod_Lagerhauswache_Stadthalter_28_01"); //Don't make a fool of me! I see from afar that no blue blood flows into His veins!
};

INSTANCE Info_Mod_Lagerhauswache_Duell (C_INFO)
{
	npc		= Mod_7611_OUT_Lagerhauswache_REL;
	nr		= 1;
	condition	= Info_Mod_Lagerhauswache_Duell_Condition;
	information	= Info_Mod_Lagerhauswache_Duell_Info;
	permanent	= 1;
	important	= 0;
	description	= "I challenge you to a duel!";
};

FUNC INT Info_Mod_Lagerhauswache_Duell_Condition()
{
	if (Mod_Jim_Freudenspender == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lagerhauswache_Duell_Info()
{
	AI_Output(hero, self, "Info_Mod_Lagerhauswache_Duell_15_00"); //I challenge you to a duel!
	AI_Output(self, hero, "Info_Mod_Lagerhauswache_Duell_28_01"); //A duel? For what reason?

	Info_ClearChoices	(Info_Mod_Lagerhauswache_Duell);

	Info_AddChoice	(Info_Mod_Lagerhauswache_Duell, "Your father defiled my family honor!", Info_Mod_Lagerhauswache_Duell_B);
	Info_AddChoice	(Info_Mod_Lagerhauswache_Duell, "Just like that!", Info_Mod_Lagerhauswache_Duell_A);
};

FUNC VOID Info_Mod_Lagerhauswache_Duell_B()
{
	AI_Output(hero, self, "Info_Mod_Lagerhauswache_Duell_B_15_00"); //Your father defiled my family honor!
	AI_Output(self, hero, "Info_Mod_Lagerhauswache_Duell_B_28_01"); //My father? No! My father was a righteous man!
	AI_Output(self, hero, "Info_Mod_Lagerhauswache_Duell_B_28_02"); //He dragged my family's reputation into the filth through his accusation. I can't let this go unpunished.
	AI_Output(self, hero, "Info_Mod_Lagerhauswache_Duell_B_28_03"); //He pulls out his gun!

	Info_ClearChoices	(Info_Mod_Lagerhauswache_Duell);

	Mod_Jim_Freudenspender = 2;

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_NONE, 0);
};

FUNC VOID Info_Mod_Lagerhauswache_Duell_A()
{
	AI_Output(hero, self, "Info_Mod_Lagerhauswache_Duell_A_15_00"); //Just like that!
	AI_Output(self, hero, "Info_Mod_Lagerhauswache_Duell_A_28_01"); //Oh, no, that's not why I can't neglect my duty.

	Info_ClearChoices	(Info_Mod_Lagerhauswache_Duell);
};

INSTANCE Info_Mod_Lagerhauswache_Bestechung (C_INFO)
{
	npc		= Mod_7611_OUT_Lagerhauswache_REL;
	nr		= 1;
	condition	= Info_Mod_Lagerhauswache_Bestechung_Condition;
	information	= Info_Mod_Lagerhauswache_Bestechung_Info;
	permanent	= 0;
	important	= 0;
	description	= "How about a little gold?";
};

FUNC INT Info_Mod_Lagerhauswache_Bestechung_Condition()
{
	if (Mod_Jim_Freudenspender == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lagerhauswache_Bestechung_Info()
{
	AI_Output(hero, self, "Info_Mod_Lagerhauswache_Bestechung_15_00"); //How about a little gold?
	AI_Output(self, hero, "Info_Mod_Lagerhauswache_Bestechung_28_01"); //Pah, don't insult me!
};

INSTANCE Info_Mod_Lagerhauswache_Umgehauen (C_INFO)
{
	npc		= Mod_7611_OUT_Lagerhauswache_REL;
	nr		= 1;
	condition	= Info_Mod_Lagerhauswache_Umgehauen_Condition;
	information	= Info_Mod_Lagerhauswache_Umgehauen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lagerhauswache_Umgehauen_Condition()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lagerhauswache_Umgehauen_Info()
{
	AI_Output(self, hero, "Info_Mod_Lagerhauswache_Umgehauen_28_00"); //Please, please, He no longer approach me. I ask Him for forgiveness for all the insults that have happened to Him through my family!

	// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
	self.aivar[AIV_ArenaFight] = AF_NONE;
		
	// ------ AIVAR resetten! ------	
	self.aivar[AIV_LastFightComment] = TRUE;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Lagerhauswache_Umgehauen2 (C_INFO)
{
	npc		= Mod_7611_OUT_Lagerhauswache_REL;
	nr		= 1;
	condition	= Info_Mod_Lagerhauswache_Umgehauen2_Condition;
	information	= Info_Mod_Lagerhauswache_Umgehauen2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lagerhauswache_Umgehauen2_Condition()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lagerhauswache_Umgehauen2_Info()
{
	AI_Output(self, hero, "Info_Mod_Lagerhauswache_Umgehauen2_28_00"); //What does He dare to address me again after his defeat? Remain He lie in the dust of the road!

	// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
	self.aivar[AIV_ArenaFight] = AF_NONE;
		
	// ------ AIVAR resetten! ------	
	self.aivar[AIV_LastFightComment] = TRUE;

	AI_StopProcessInfos	(self);
};

const string Lagerhauswache_Checkpoint	= "REL_CITY_144";	//WP hinter City-Tor vom Spielstart aus!

instance Info_Mod_Lagerhauswache_FirstWarn (C_INFO)
{
	npc		= Mod_7611_OUT_Lagerhauswache_REL;
	nr		= 1;
	condition	= Info_Mod_Lagerhauswache_FirstWarn_Condition;
	information	= Info_Mod_Lagerhauswache_FirstWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

func int Info_Mod_Lagerhauswache_FirstWarn_Condition()
{
	if (Npc_GetDistToWP(hero, Lagerhauswache_Checkpoint) <= 300) //NICHT von hinten!
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

func void Info_Mod_Lagerhauswache_FirstWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_Lagerhauswache_FirstWarn_28_00"); //He moderate in his pace! This warehouse is only open to our very best owner!

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(hero, Lagerhauswache_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_FirstWarnGiven;
};

// ************************************************************
// 				  	Guard_Passage - Second Warn
// ************************************************************

INSTANCE Info_Mod_Lagerhauswache_SecondWarn (C_INFO)
{
	npc		= Mod_7611_OUT_Lagerhauswache_REL;
	nr		= 1;
	condition	= Info_Mod_Lagerhauswache_SecondWarn_Condition;
	information	= Info_Mod_Lagerhauswache_SecondWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_Lagerhauswache_SecondWarn_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_FirstWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), self.wp)	== TRUE)
	&& (Npc_GetDistToWP(hero, Lagerhauswache_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50))) 
	{
		return TRUE;
	};
};

func void Info_Mod_Lagerhauswache_SecondWarn_Info()
{
	AI_Output (self, hero,"Info_Mod_Lagerhauswache_SecondWarn_28_00"); //I'll tell him one last time. One step further and He enters the world of pain!

	hero.aivar[AIV_LastDistToWP] = Npc_GetDistToWP (hero,Lagerhauswache_Checkpoint);
	self.aivar[AIV_Guardpassage_Status] = GP_SecondWarnGiven;	
	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 				  	Guard_Passage - Attack
// ************************************************************

INSTANCE Info_Mod_Lagerhauswache_Attack (C_INFO)
{
	npc		= Mod_7611_OUT_Lagerhauswache_REL;
	nr		= 1;
	condition	= Info_Mod_Lagerhauswache_Attack_Condition;
	information	= Info_Mod_Lagerhauswache_Attack_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       

FUNC INT Info_Mod_Lagerhauswache_Attack_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_SecondWarnGiven)
	&& (self.aivar[AIV_PASSGATE] == FALSE) 
	&& (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == TRUE)
	&& (Npc_GetDistToWP(hero,Lagerhauswache_Checkpoint) < (hero.aivar[AIV_LastDistToWP]-50)))
	{
		return TRUE;
	};
};

func void Info_Mod_Lagerhauswache_Attack_Info()
{
	hero.aivar[AIV_LastDistToWP] = 0;
	self.aivar[AIV_Guardpassage_Status] = GP_NONE;						//wird auch in ZS_Attack resettet
	
	AI_Output (self, hero,"Info_Mod_Lagerhauswache_Attack_28_00"); //He wanted it this way...

	AI_StopProcessInfos	(self);	

	B_Attack (self, hero, AR_GuardStopsIntruder, 0); 
};

INSTANCE Info_Mod_Lagerhauswache_EXIT (C_INFO)
{
	npc		= Mod_7611_OUT_Lagerhauswache_REL;
	nr		= 1;
	condition	= Info_Mod_Lagerhauswache_EXIT_Condition;
	information	= Info_Mod_Lagerhauswache_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lagerhauswache_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lagerhauswache_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
